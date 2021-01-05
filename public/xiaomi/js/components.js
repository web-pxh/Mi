$(function () {
  $.ajax({
    url: "header.html",
    type: "get",
    success: function (result) {
      $(result).replaceAll("#header");
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