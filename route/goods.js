//引入包
const express = require("express");
//引入数据库
const pool = require("../pool");
//创建路由
const route = express.Router();
//轮播图
route.get("/swiper", (req, res) => {
  var sql = "select * from xm_swiper";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    } else {
      res.send("0");
    }
  })
});
//首页商品列表
route.get("/index/list", (req, res) => {
  var sql = "select * from xm_index_product";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      // console.log(result);

      var phone = [];
      var houes = [];
      for (var key in result) {
        if (result[key].shop_type == 0) {
          phone.push(result[key])
        } else if (result[key].shop_type == 1) {
          houes.push(result[key])
        }
      }
      console.log(phone);
      console.log(houes);
      var all = {
        0: phone,
        1: houes
      }
      res.send(all);
    } else {
      res.send("0");
    }
  })
})
//导出
module.exports = route;