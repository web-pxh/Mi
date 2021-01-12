$(function () {
  $.ajax({
    url: "header.html",
    type: "get",
    success: function (result) {
      var uname = window.sessionStorage.getItem("name");
      $(result).replaceAll("#header");
      if (uname) {
        /* 修改登录为用户名 */
        $("#login").html(uname);
        /* 把登录的href改为# */
        $("#login").attr('href', '#');
        /* 修改注册为退出登录 */
        $("#reg").html("退出登录");
        /* 把注册的href改为# */
        $("#reg").attr('href', '#');
        $("#reg").click(function () {
          var result = confirm("确定要退出登录?");
          if (result) {
            sessionStorage.clear();
            window.location.reload();
          }
        });

      }
      console.log('缓存中的用户名:' + uname);

      /* 头部下拉的内容 */
      $('.li').each(function () {
        $(this).mouseover(function () {
          $('.xiaomi').css('display', 'block');
        })
        $(this).mouseout(function () {
          $('.xiaomi').css('display', 'none');
        })
      });
      $('.xiaomi').mouseover(function () {
        $('.xiaomi').css('display', 'block');
      })
      $('.xiaomi').mouseout(function () {
        $('.xiaomi').css('display', 'none');
      })
      $(`<link rel="stylesheet" href="./css/header.css">`).appendTo("head");
    }
  })
});
$(function () {
  $.ajax({
    url: "footer.html",
    type: "get",
    success: function (result) {
      $(result).replaceAll("#footer");
      $(`<link rel="stylesheet" href="./css/footer.css">`).appendTo("head");
    }
  })
});
$(function () {
  $.ajax({
    url: "bar.html",
    type: "get",
    success: function (result) {
      $(result).replaceAll("#bar");
      $(`<link rel="stylesheet" href="./css/bar.css">`).appendTo("head");
    }
  })
});