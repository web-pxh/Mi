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