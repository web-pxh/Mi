//倒计时
function countDown() {
  //获取当前时间
  var date1 = new Date();
  //获取当前时间所对应的年、月、日、小时、毫秒数
  var year = date1.getFullYear();
  var month = date1.getMonth();
  var day = date1.getDate();
  var hour = date1.getHours();
  var time1 = date1.getTime();
  //创建一个一小时以后的date对象
  var date2 = new Date(year, month, day, hour + 1, 0, 0);
  // console.log(date1,date2);
  //获取date2的毫秒数
  var time2 = date2.getTime();
  //获取2个时间的时间差所对应的分，秒
  var min = parseInt((time2 - time1) / 1000 / 60);
  var second = parseInt((time2 - time1) / 1000 % 60);
  if (min < 10) {
    min = '0' + min;
  }
  if (second < 10) {
    second = '0' + second;
  }
  return {
    hour,
    min,
    second
  };
}
/* 记录点击的次数 */
var count = 0;
/* 首页右按钮事件 */
function rClick(liLength, slide_listul, ulwidth, right, left) {
  count++;
  /* 获取剩下li的个数 */
  var per = liLength - (count * 4);
  if (per < 4) {
    slide_listul.style.left = parseInt(slide_listul.style.left) - (ulwidth * per / 4) + 'px';
    /* 给右按钮添加disabled属性 */
    right.setAttribute('disabled', true);
  } else {
    slide_listul.style.left = -ulwidth * count + 'px';
  }
  if (parseInt(slide_listul.style.left) != 0) {
    /* 移除左按钮的disabled属性 */
    left.removeAttribute('disabled');
  }
}
/* 首页左按钮事件 */
function lClick(slide_listul, ulwidth, right, left) {
  count--;
  if (count < 0) {
    left.setAttribute('disabled', true);
  }
  /* 移除右按钮的disabled属性 */
  right.removeAttribute('disabled');

  slide_listul.style.left = -ulwidth * count + 'px';
  if (parseInt(slide_listul.style.left) == 0) {
    /* 给左按钮添加disabled属性 */
    left.setAttribute('disabled', true);
  }
}
/* 购物车减号点击事件 */
function jClick(input, totle, price) {
  if (input.value > 1) {
    input.value--;
    totle.innerHTML = parseInt(input.value) * parseInt(price.innerHTML) + '元';
  } else {
    alert("数量不能少于1");
  }
}
/* 购物车加号点击事件 */
function aClick(input, totle, price) {
  input.value++;
  totle.innerHTML = parseInt(input.value) * parseInt(price.innerHTML) + '元';
}