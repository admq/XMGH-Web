var st = {
    version: 1.0,
    init: function() {
        $("#reply_btn").click(function () {
            var reply = $("textarea[name='reply']").val();
            var topicid = $(this).attr("tid");
            if(!reply) {
                alert("请填写完整");
                return;
            }
            common.postJson('/xmgh/topic/reply', {content:reply, topicid:topicid}, function(data) {
                var item = data;
                var inner = '<div class="comment">'+
                    '<a class="avatar">'+
                        '<img src="/xmgh/admin/resource/images/elliot.jpg">'+
                    '</a>'+
                    '<div class="content">'+
                        '<a class="author">'+item.author+'</a>'+
                        '<div class="metadata">'+
                            '<div class="date">'+item.time+'</div>'+
                            '<div class="rating"><i class="star icon"></i> 5 Faves </div>'+
                        '</div>'+
                        '<div class="text">'+item.content+'</div>'+
                    '</div>'+
                '</div>';

                $('.ui .comments').prepend(inner);
                $("textarea[name='reply']").val("");
            });
        });
    }

}

$(document).ready(function() {
    st.init();
});