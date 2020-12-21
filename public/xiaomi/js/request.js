 function ajax(type, url, callback, data) {
   //判断类型以及data是否为空
   if (type == "get" && data !== undefined) {
     url = url + '/' + data;
   }
   if (data == undefined) {
     url = url;
   }
   // 1 创建异步对象
   var xhr = new XMLHttpRequest();
   if (type == "get") {
     // 如果请求参数不为空且为get，就把参数加到url上
     xhr.open(type, url, true);
   }
   // 2 创建请求
   xhr.open(type, url, true);
   // 3 接收响应数据
   xhr.onreadystatechange = function () {
     if (xhr.readyState == 4 && xhr.status == 200) {
       var result = xhr.responseText;
       //回调函数,相当于issuccess(result)
       callback(result)
     }
   }
   // 判断请求类型并发送请求
   if (type == "post") {
     xhr.setRequestHeader('Content-Type', "application/x-www-form-urlencoded");
   }
   if (type == "post") {
     xhr.send(data);
   } else {
     xhr.send();
   }
 }