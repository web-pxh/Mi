/* 实现轮播功能 */
//1.找到对应的DOM节点
var box = document.querySelector(".swiper"); //找到容器盒子
var list = document.querySelector("#list");
var listli = document.querySelectorAll("#list li");
//获取list li下的所有轮播图片
var allImg = document.querySelectorAll("#list li img");
var len = document.querySelectorAll(".page li").length;
var ltBtn = document.querySelector(".prev");
var rtBtn = document.querySelector(".next");
var page = document.querySelector(".page");
var pageli = document.querySelectorAll(".page li");
/* 用来保存请求的图片 */
var pics;
//2.当前所处的下标
var curIndex = 0;
//3.左按钮点击事件
ltBtn.onclick = function () {
  curIndex--;
  if (curIndex <= -1) {
    curIndex = len - 1;
  }
  //当前下标相同的显示,也就是添加上on,其他的去掉on
  for (var i = 0; i < listli.length; i++) {
    listli[i].classList.remove("on");
  }
  listli[curIndex].classList.add("on");
  // 处理下标对应
  for (var j = 0; j < pageli.length; j++) {
    pageli[j].classList.remove("on");
  }
  pageli[curIndex].classList.add("on");
};
// 4.右按钮点击事件
rtBtn.onclick = function () {
  curIndex++;
  if (curIndex >= len) {
    curIndex = 0;
  }
  // 当前下标相同的显示,也就添加on,其他的去掉on
  for (var i = 0; i < listli.length; i++) {
    listli[i].classList.remove("on");
  }
  listli[curIndex].classList.add("on");
  // 处理下标对应
  for (var j = 0; j < pageli.length; j++) {
    pageli[j].classList.remove("on");
  }
  pageli[curIndex].classList.add("on");
};
//5.分页下标点击事件
for (var i = 0; i < pageli.length; i++) {
  pageli[i].setAttribute("data-index", i); //ol下的li全部添加了data-index属性,意思就是给每个li加上了属于自己的序号
  pageli[i].onclick = function () {
    // console.log(this.getAttribute("data-index"));
    curIndex = this.getAttribute("data-index");
    for (var i = 0; i < listli.length; i++) {
      listli[i].classList.remove("on");
    }
    listli[curIndex].classList.add("on");
    // 处理下标对应
    for (var j = 0; j < pageli.length; j++) {
      pageli[j].classList.remove("on");
    }
    pageli[curIndex].classList.add("on");
  };
}
//6.自动播放
var timer = setInterval(function () {
  rtBtn.onclick();
}, 3000);
//7.鼠标移入定时器停,移除,定时器开启
box.onmouseenter = function () {
  clearInterval(timer);
};
box.onmouseleave = function () {
  timer = setInterval(function () {
    rtBtn.onclick();
  }, 3000);
};