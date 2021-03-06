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
/* 获取首页列表数据 */
function getData(msg, msgLi) {
  for (var i = 0; i < msg.length; i++) {
    msgLi[i].innerHTML = `
      <a href="./mi_details.html?pid=${msg[i].pid}" target='_blank'>
        <div class="content">
          <img src=${msg[i].img}>
          <h3>${msg[i].title}</h3>
          <p class="desc">${msg[i].details}</p>
          <p>${msg[i].price}元</p>
        </div>
      </a>
      `;
  }
}
/*  首页tab切换*/
function tabChange(tab) {
  for (var item of tab) {
    item.onmouseover = function () {
      for (var j = 0; j < tab.length; j++) {
        tab[j].className = '';
      }
      this.className = 'act';
    }
  }
}
//防止多次触发鼠标滚轮事件，使用函数防抖
function throttle(method, delay) {
  var timer = null;
  return function () {
    clearTimeout(timer);
    timer = setTimeout(function () {
      method();
    }, delay);
  };
}