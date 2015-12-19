/**
 * Created by larry on 15/12/17.
 */
var scl = {
    version: 1.0,
    postDate: {},
    init: function() {
        scl.loadCountry();
        scl.loadAllSchool();
        $("#addSchool_btn").click(function() {
            $('.ui.modal')
                .modal('show');
        });

        $("#addSchool_submit_btn").click(function () {
            var name = $('input[name="name"]').val();
            var shortname = $('input[name="shortname"]').val();
            var englishname = $('input[name="englishname"]').val();
            var countryid = $('input[name="countryid"]').val();
            common.postJson('/xmgh/school/addOrUpdate',{name:name, englishname:englishname, shortname:shortname, countryid:countryid},function(data) {
                if(data.success) {
                    alert("成功");
                    ///pal.loadArticleType();
                    $('.ui.modal')
                        .modal('hide');
                }
            })
        });
    },
    loadCountry: function() {
        common.getJson("/xmgh/country/getAllCountry", function(data) {
            $.each(data, function(index, item) {
                var tx = '<a class="item" href="javascript:void(0);" countryID="'+item.id+'"><i class="rocket icon"></i> '+item.name+'</a>';
                $('#country').append(tx);
                $('.field .menu').append('<div class="item" data-value="'+item.id+'">'+item.name+'</div>');
            });
            $('#country .item[countryID]').click(function () {
                var countryID = $(this).attr("countryID");
                common.pageObj.currentPage = 1;
                scl.postDate = {
                    paraStr: JSON.stringify({
                        countryid:'i_'+countryID
                    }),
                    pageSize: common.pageObj.pageSize,
                    pageNum: common.pageObj.currentPage
                }
                scl.loadSchoolByCondition();
                $('#country .active_item').removeClass("active_item");
                $(this).addClass("active_item");
            });

            $('.ui.selection.dropdown')
                .dropdown();
        });
    },
    loadSchoolByCondition: function() {
        scl.postDate.pageNum = common.pageObj.currentPage;
        common.postJson('/xmgh/school/getSchoolsByConditionInJsonWithPaginate', scl.postDate, function(data) {
            common.pageObj.pageCount = data.totalPage;
            common.pageObj.pageSize = data.pageSize;
            scl.appendSchool(data.list);
            common.paginate(scl.loadSchoolByCondition);
        });
    },
    loadAllSchool: function() {
        common.postJson('/xmgh/school/getSchoolsByConditionInJsonWithPaginate', {pageNum:common.pageObj.currentPage, pageSize:common.pageObj.pageSize}, function(data) {
            common.pageObj.pageCount = data.totalPage;
            common.pageObj.pageSize = data.pageSize;
            scl.appendSchool(data.list);
            common.paginate(scl.loadAllSchool);
        });
    },
    appendSchool: function(data) {
        $('#school_list').empty();
        var html = $('#dis_tmpl').html();
        $.each(data, function(index, item) {
            var inn = html
                .replace(/v_name/, item.name)
                .replace(/v_rank/, item.rank)
                //.replace(/v_href/, '/xmgh/article/seeArticle?id='+item.id)
                .replace(/v_del/, 'scl.delSchool('+item.id+')')
               // .replace(/v_hot/, item.hot);
            $('#school_list').append(inn);
        });
    },
    delSchool: function(id) {
        if(confirm("确认删除?")) {
            common.postJson("/xmgh/school/del", {id: id}, function (data) {
                if (data && data.success == 'true') {
                    alert("删除成功");
                } else {
                    alert("删除失败");
                }
            });
        }
    }
}

$(document).ready(function() {
    scl.init();
});