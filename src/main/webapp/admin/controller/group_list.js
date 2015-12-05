/**
 * Created by larry on 10/13/15.
 */
var gl = {
    version: 1.0,
    postDate: {},
    init: function() {
        gl.loadAllGroup();
        gl.loadSchoole();
        $("#add_group_btn").click(function() {
                $('.ui.modal')
                .modal('show');
        });
        $("#addGroup_hide_btn").click(function() {
            $('.ui.modal')
                .modal('hide');
        });
        $("#addGroup_submit_btn").click(function(event) {
            gl.submitForm();
        });
    },

    submitForm: function() {
        var name = $('input[name="name"]').val();
        var schoolid = $('input[name="schoolid"]').val();
        var describe = $('textarea[name="describe"]').val();
        if(!name || !schoolid || !describe) {
            alert('请填写完整')
            return;
        }
        var param = {
            name:name,
            schoolid:schoolid,
            describe:describe
        };
        $.ajax({
            url: '/xmgh/group/addOrUpdate',
            method: 'post',
            data:param,
            success: function(data) {
               if(data.success) {
                   $('.ui.modal')
                       .modal('hide');
                   gl.loadAllGroup();
               }
            }
        });
    },

    loadSchoole: function() {
        $.ajax({
            url: '/xmgh/school/getSchools',
            method: 'get',
            type: 'json',
            success: function(data) {
                $.each(data, function(index, item) {
                    $('#select_school').append('<div class="item" data-value="'+item.id+'">'+item.name+'</div>');
                    $('#s_select_school').append('<div class="item" data-value="'+item.id+'">'+item.name+'</div>');
                });
                $('.ui.selection.dropdown')
                    .dropdown();
            }
        });
    },

    loadGroupByCondition: function() {
        gl.postDate.pageNum = common.pageObj.currentPage;
        common.postJson('/xmgh/article/getGroupByConditionInJsonWithPaginate', gl.postDate, function(data) {
            common.pageObj.pageCount = data.totglPage;
            common.pageObj.pageSize = data.pageSize;
            gl.appendGroup(data.list);
            common.paginate(gl.loadGroupByCondition);
        });
    },

    loadAllGroup: function() {
        common.postJson('/xmgh/group/getGroupsPaginate', {pageNum:common.pageObj.currentPage, pageSize:common.pageObj.pageSize}, function(data) {
            common.pageObj.pageCount = data.totglPage;
            common.pageObj.pageSize = data.pageSize;
            gl.appendGroup(data.list);
            common.paginate(gl.loadAllGroup);
        });
    },

    appendGroup: function(data) {
        $('#group_list').empty();
        var html = $('#dis_tmpl').html();
        $.each(data, function(index, item) {
            var inn = html
                .replace(/v_name/, item.name+'&nbsp;&nbsp;&nbsp;&nbsp;('+item.schoolname+')')
                .replace(/v_describe/, item.describe? item.describe:'')
                .replace(/v_href/, '/xmgh/group/goInGroup?id='+item.id)
                .replace(/v_del/, 'gl.delGroup('+item.id+')');
            $('#group_list').append(inn);
        });
    },

    delGroup: function(id) {
        if(confirm('sure?')) {
            common.getJson('/xmgh/group/del?id=' + id, function (data) {
                gl.loadAllGroup();
            });
        }
    }
}

$(document).ready(function() {
    gl.init();
});