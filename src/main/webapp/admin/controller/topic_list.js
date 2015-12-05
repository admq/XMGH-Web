var tl = {
    version: 1.0,
    init: function() {
        $('.item .button').click(function(e) {
            if(!confirm('sure?')) return;
            var tid = $(this).attr("tid");
            common.postJson("/xmgh/topic/del",{id:tid}, function(data) {
               if(data.success == 'true') {
                    $(this).parent().parent().remove();
               }
            });
        });
    }

}

$(document).ready(function() {
    tl.init();
});