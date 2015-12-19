var tl = {
    version: 1.0,
    init: function() {
        //tl.initEditor();

        $("#add_topic_btn").click(function() {
            $('.ui.modal')
                .modal('show');

        });

        $('.item .button').click(function(e) {
            if(!confirm('sure?')) return;
            var tid = $(this).attr("tid");
            common.postJson("/xmgh/topic/del",{id:tid}, function(data) {
               if(data.success == 'true') {
                    $("#topic_"+tid).remove();
               }
            });
        });
    },
    initEditor: function() {
        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('#content123', {
                resizeType : 1,
                allowPreviewEmoticons : false,
                allowImageUpload : true,
                items : [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                    'insertunorderedlist', '|', 'emoticons', 'image', 'link', 'fullscreen']
            });
        });
    }

}

$(document).ready(function() {
    tl.init();
});