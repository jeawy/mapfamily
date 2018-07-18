/*
 * common jquery functions
 *
 */
function getCookie(name) {
    var cookieValue = null;
    if (document.cookie && document.cookie != '') {
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var cookie = jQuery.trim(cookies[i]);
            // Does this cookie string begin with the name we want?
            if (cookie.substring(0, name.length + 1) == (name + '=')) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }
    return cookieValue;
}

(function($){
    function getWidth() {
        if (self.innerWidth) {
            return self.innerWidth;
        }
        
        if (document.documentElement && document.documentElement.clientHeight) {
            return document.documentElement.clientWidth;
        }
        
        if (document.body) {
            return document.body.clientWidth;
        }
    }
    
    function getHeight() {
        if (self.innerHeight) {
            return self.innerHeight;
        }
        
        if (document.documentElement && document.documentElement.clientHeight) {
            return document.documentElement.clientHeight;
        }
        
        if (document.body) {
            return document.body.clientHeight;
        }
    }
     $.fn.extend({ 
                setBackgroundImg: function(urlPath) { 
                    var obj = $(this); 
                    urlPath = $.trim(urlPath || this.text());
                    if (!urlPath) {
                        return;
                    }
                     
                    obj.css("position", "fixed");
                    obj.css("top", "0"); 
                    obj.css("z-index", "-1000");
                    obj.css("background-repeat", "no-repeat");
                    obj.css("background-size", "100% 100%"); 
                 
                    
                    obj.css("height", getHeight());
                    obj.css("width", getWidth()); 
                    obj.css("background-image", urlPath); 
            }
     });
})(jQuery);
function fixedFooter(){//页面过小时，底部固定
    var docHeight=$('body').height();//整个网页的高度
    var windowHeight= $(window).height();//浏览器可视窗口的高度
    if(docHeight<windowHeight){
        $('.footer').css({'position':'fixed','bottom':'0px','width':'100%'});
    }
}
