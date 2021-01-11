$(function () {
  $.ajax({
    url: "header.html",
    type: "get",
    success: function (result) {
      $(result).replaceAll("#header");
      /* 获取隐藏域的value值 */
      var name = $("#name_hid").val();
      if (name) {
        /* 修改登录为用户名 */
        $("#login").html(name);
        /* 把登录的href改为# */
        $("#login").attr('href', '#');
        /* 移除注册 */
        $("#login").parent().next().remove();
      }
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