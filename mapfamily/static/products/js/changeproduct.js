 
 
//  规格设置    >>> 添加
var rule_el, name, price, rule, inventory,newhtml,html;
 
 
//  发表+存稿按钮    >>> 点击事件
$('.submit ').click(function () {
    //loading样式
    var options = {
        theme: "sk-doc",
        message: '提交中...',
        backgroundColor: "#000",
        textColor: "white"
    };
    HoldOn.open(options);//loadding函数调用
    var categoryid = $('#sel-category').val();
    var title = $('#title').val();
    var desc = $('#desc').val();
    var detail = CKEDITOR.instances['id_detail'].getData(); 
   
    var product = $('#productid'); 

    data = {
        'method': 'create',
        'categoryid': categoryid,
        'title': title, 
        'description': desc, 
        'detail': detail, 
        'status': $(this).attr('status'),
        'csrfmiddlewaretoken': getCookie('csrftoken'),
    };
    if (product.length > 0) {
        //3
        data['id'] = product.val();
        data['method'] = 'put'; //修改产品
    }

    var html = '<div class="alert alert-danger" role="alert">####</div>';
    $.ajax({
        type: 'post',
        url: '/product/products/',
        data: data,
        success: function (result) {
            HoldOn.close();
            $('.msg').append(html.replace('####', result['msg']));
        },
        error: function () {
            HoldOn.close();
            // 500
            alert('server is down!')
        }
    })
});
  

//  内容简介    >>> 输入字数监听     
$(".ta-wrap input").on('keyup input', function (event) {

    var val = $(this).val();
    var len = val.length;
    var count = $(this).siblings('span');

    if (len == 0) { count.text("0/50"); return; }
    if (len > 50) {
        len = 50;
        $(this).val(val.substring(0, 50));
    }
    count.text(len + "/50");
});
 