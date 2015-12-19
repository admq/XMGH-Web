/**
 * Created by larry on 10/14/15.
 */

var common = {
    version: 1.0,
    pageObj: {
        pageCount: 0,
        currentPage: 1,
        pageSize: 10
    },
    getJson: function(url, cb) {
        $.ajax({
            url: url,
            method: 'get',
            type: 'json',
            success: function (data) {
                cb(data);
            }
        });
    },

    postJson: function(url, para, cb) {
        $.ajax({
            url: url,
            method: 'post',
            data: para,
            type: 'json',
            success: function (data) {
                cb(data);
            }
        });
    },

    //分页
    paginate: function(cb) {
        var pageCount = common.pageObj.pageCount;
        var currentPage = common.pageObj.currentPage;
        var halfPageCount = Math.ceil(pageCount/2);
        console.log('-'+halfPageCount+'-')
        var pre = false, ne = false;
        var html = '';
        html += '<div class="ui pagination menu">';
        if(currentPage > 1) {
            html += '<a class="icon item" num="'+(currentPage-1)+'"><i class="icon left arrow"></i></a>';
        } else {
            html += '<a class="icon disabled item"><i class="icon left arrow"></i></a>';
        }
        for (var i=1; i<= pageCount; i++) {
            if(i==currentPage) {
                html += '<a class="active item" num="'+i+'">'+i+'</a>';
            } else if(Math.abs(i-halfPageCount)>(halfPageCount-2)) {
                html += '<a class="item" num="'+i+'">'+i+'</a>';
            } else if(Math.abs(i-currentPage)<2) {
                html += '<a class="item" num="'+i+'">'+i+'</a>';
            } else if(i < currentPage && !pre) {
                html += '<div class="disabled item">...</div>';
                pre = true;
            } else if(i > currentPage && !ne){
                html += '<div class="disabled item">...</div>';
                ne = true;
            }
        }
        if(!pageCount || currentPage >= pageCount) {
            html += '<a class="icon disabled item"><i class="icon right arrow"></i></a>';
        } else {
            html += '<a class="icon item" num="'+(currentPage+1)+'"><i class="icon right arrow"></i></a>';
        }
        html += '</div>';

        $('#pagination').empty();

        $('#pagination').append(html);
        $('#pagination .item[num]').click(function() {
            common.pageObj.currentPage = parseInt($(this).attr('num'));
            cb();
        });
    }

}