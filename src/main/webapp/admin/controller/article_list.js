/**
 * Created by larry on 10/13/15.
 */
var al = {
    version: 1.0,
    postDate: {},
    init: function() {
        al.loadArticleType();
        al.loadAllArticle();
    },

    loadArticleType: function() {
        common.getJson('/xmgh/article/getArticleTypes', function(data) {
            $.each(data, function(index, item) {
                var tx = '<a class="item" href="javascript:void(0);" articleType="'+item.id+'"><i class="rocket icon"></i> '+item.name+'</a>';
                $('#alType').append(tx);
            });
            // 绑定点击事件
            $('#alType .item[articleType]').unbind().click(function() {
                var articleType = $(this).attr("articleType");
                common.pageObj.currentPage = 1;
                al.postDate = {
                    paraStr: JSON.stringify({
                        type:'i_'+articleType
                    }),
                    pageSize: common.pageObj.pageSize,
                    pageNum: common.pageObj.currentPage
                }
                al.loadArticleByCondition();
            });
        });
    },

    loadArticleByCondition: function() {
        al.postDate.pageNum = common.pageObj.currentPage;
        common.postJson('/xmgh/article/getArticleByConditionInJsonWithPaginate', al.postDate, function(data) {
            common.pageObj.pageCount = data.totalPage;
            common.pageObj.pageSize = data.pageSize;
            al.appendArticle(data.list);
            common.paginate(al.loadArticleByCondition);
        });
    },

    loadAllArticle: function() {
        common.postJson('/xmgh/article/getArticlesPaginate', {pageNum:common.pageObj.currentPage, pageSize:common.pageObj.pageSize}, function(data) {
            common.pageObj.pageCount = data.totalPage;
            common.pageObj.pageSize = data.pageSize;
            al.appendArticle(data.list);
            common.paginate(al.loadAllArticle);
        });
    },

    appendArticle: function(data) {
        $('#article_list').empty();
        var html = $('#dis_tmpl').html();
        $.each(data, function(index, item) {
            var inn = html
                .replace(/v_title/, item.title)
                .replace(/v_describe/, item.time)
                .replace(/v_href/, '/xmgh/article/seeArticle?id='+item.id)
                .replace(/v_del/, 'al.delArticle('+item.id+')')
                .replace(/v_hot/, item.hot);
            $('#article_list').append(inn);
        });
    },

    delArticle: function(id) {
        if(confirm('sure?')) {
            common.getJson('/xmgh/article/del?id=' + id, function (data) {});
        }
    }
}

$(document).ready(function() {
    al.init();
});