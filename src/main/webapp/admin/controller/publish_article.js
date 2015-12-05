/**
 * Created by larry on 10/18/15.
 */
var pal = {
    version: 1.0,
    init: function() {
        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('textarea[name="content"]', {
                resizeType : 1,
                allowPreviewEmoticons : false,
                allowImageUpload : true,
                items : [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                    'insertunorderedlist', '|', 'emoticons', 'image', 'link', 'fullscreen']
            });

            //load article type
            pal.loadArticleType();
        });

        $("#add_articleType_btn").click(function() {
            $('.ui.modal')
                .modal('show');
        });
        $("#addArticleType_hide_btn").click(function() {
            $('.ui.modal')
                .modal('hide');
        });
        $("#addArticleType_submit_btn").click(function() {
            var name = $('input[name="name"]').val();
            common.postJson('/xmgh/article/addArticleType',{name:name},function(data) {
                if(data.success) {
                    alert("成功");
                    pal.loadArticleType();
                    $('.ui.modal')
                        .modal('hide');
                }
            })
        });
    },

    loadArticleType: function() {
        common.getJson('/xmgh/article/getArticleTypes', function(data) {
            var menu = $('.field .menu');
            menu.empty();
            $.each(data, function(index, item) {
                menu.append('<div class="item" data-value="'+item.id+'">'+item.name+'</div>');
                if(index == 0)  {
                    $('.field .selection .text').text(item.name);
                    $('.field input[name="articletype"]').val(item.id);
                }
            });
            $('.ui.selection.dropdown')
                .dropdown();
        })
    }


}

$(document).ready(function() {
    pal.init();
});