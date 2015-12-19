/**
 * Created by larry on 15/12/19.
 */
var ul = {
    version: 1.0,
    postDate: {},
    init: function() {
        ul.loadAllUser();
        ul.loadSchool();
        ul.loadRole();
        $("#addUser_btn").click(function() {
            $("#addUser").modal('show');
        });
        $("#addUser_submit_btn").click(function() {
            ul.saveUser("addUser");
            $("#addUser").modal('show');
        });

        $("#edit_btn").click(function (){
            $('#userDisplay input').removeAttr("readonly");
            $("#save_btn").click(function() {
                ul.saveUser('userDisplay');
                $("#save_btn").unbind();
                $('#userDisplay').modal('hide');
            });
        });
        $("#del_btn").click(function() {
            if(confirm("确认删除?")) {
                var id = $('#userDisplay input[name="id"]').val();
                common.postJson("/xmgh/user/del", {id: id}, function (data) {
                    if (data && data.success == "true") {
                        alert("成功");
                        window.location.reload();
                    } else {
                        alert("失败");
                    }
                });
            }
        });
    },
    loadAllUser: function() {
        ul.postDate.pageNum = common.pageObj.currentPage;
        ul.postDate = {
            pageSize: common.pageObj.pageSize,
            pageNum: common.pageObj.currentPage
        }
        common.postJson("/xmgh/user/getUsersByConditionInJsonWithPaginate",ul.postDate, function(data) {
            if(data) {
                common.pageObj.pageCount = data.totalPage;
                common.pageObj.pageSize = data.pageSize;
                ul.appendUser(data.list);
                common.paginate(ul.loadAllUser);
            } else {
                alert("加载失败");
            }
        });
    },
    loadUserByCondition: function() {

    },
    loadSchool: function() {
        common.getJson("/xmgh/school/getSchools", function(data) {
            $.each(data, function(index, item) {
                $('.field .menu').append('<div class="item" data-value="'+item.id+'">'+item.name+'('+item.countryname+')'+'</div>');
            });
            $('.ui.selection.dropdown')
                .dropdown();
        });
    },
    loadRole: function() {
        common.getJson("/xmgh/user/getRoles", function(data) {
            $('#role_menu').empty();
            $.each(data, function(index, item) {
                $('#role_menu').append('<div class="item" data-value="'+item.id+'">'+item.name+'</div>');
            });
            $('.ui.selection.dropdown')
                .dropdown();
        });
    },
    appendUser: function (data) {
        $("#user_list").empty();
        var html = $("#user_tpl").html();
        var stepnum=0;
        $.each(data, function(index, item) {
            var inn = html
                .replace(/v_id/, item.id)
                .replace(/v_name/, item.name)
                .replace(/v_tel/, item.tel? item.tel:'-');
            $("#user_list").append(inn);
        });
        $("#user_list .item").click(function() {
            var id = $(this).attr("userid");
            common.postJson("/xmgh/user/findByID", {id:id}, function(data) {
                $('#userDisplay input').attr("readonly", "readonly");
                $('#userDisplay .text').text("无所在学校");

                $('#userDisplay input[name="id"]').val(data.id);
                $('#userDisplay input[name="name"]').val(data.name);
                $('#userDisplay input[name="realname"]').val(data.realname);
                $('#userDisplay input[name="identity"]').val(data.identity);
                $('#userDisplay input[name="tel"]').val(data.tel);
                $('#userDisplay input[name="address"]').val(data.address);
                if(data.schoolid && data.schoolName) {
                    $('#userDisplay input[name="schoolid"]').val(data.schoolid);
                    $('#userDisplay .text').text(data.schoolName);
                }

                $('#userDisplay').modal('show');
            });
        });
    },
    saveUser: function(dis) {
        var param = {};
        param['id'] =$('#'+dis+' input[name="id"]').val();
        param['name'] =$('#'+dis+' input[name="name"]').val();
        param['realname'] =$('#'+dis+' input[name="realname"]').val();
        param['identity'] =$('#'+dis+' input[name="identity"]').val();
        param['tel'] =$('#'+dis+' input[name="tel"]').val();
        param['address'] =$('#'+dis+' input[name="address"]').val();
        param['school'] =$('#'+dis+' input[name="schoolid"]').val();

        param['role'] = $('#'+dis+' input[name="roleid"]').val();

        common.postJson("/xmgh/user/addOrUpdate", param, function(data) {
            if(data && data.success == 'true') {
                alert("成功");
                window.location.reload();
            } else {
                alert("失败");
            }
        });
    }
}

$(document).ready(function() {
    ul.init();
});