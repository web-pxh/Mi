//引入包
const express = require("express");
//引入数据库
const pool = require("../pool");
//创建路由
const route = express.Router();
//轮播图
route.get("/index/swiper", (req, res) => {
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
  var sql = "select * from xm_product";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      /* 手机 */
      var phone = [];
      /* 家电 */
      var houes = [];
      /* 智能 */
      var intelligence = [];
      /* 搭配 */
      var collocation = [];
      /* 配件 */
      var parts = [];
      /* 周边 */
      var periphery = [];
      for (var key in result) {
        if (result[key].shop_type == 0) {
          phone.push(result[key])
        } else if (result[key].shop_type == 1) {
          houes.push(result[key])
        } else if (result[key].shop_type == 2) {
          intelligence.push(result[key])
        } else if (result[key].shop_type == 3) {
          collocation.push(result[key])
        } else if (result[key].shop_type == 4) {
          parts.push(result[key])
        } else if (result[key].shop_type == 5) {
          periphery.push(result[key])
        }
      }
      var all = {
        0: phone,
        1: houes,
        2: intelligence,
        3: collocation,
        4: parts,
        5: periphery
      }
      res.send(all);
    } else {
      res.send("0");
    }
  })
});
//根据商品id获取商品详细信息
route.get("/details/:pid", (req, res) => {
  var sql = "select * from xm_product where pid=?";
  pool.query(sql, [req.params.pid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      result[0].color = result[0].color.split(",");
      result[0].edition = result[0].edition.split(",");
      sql = "select * from xm_product_swiper where pid=?";
      pool.query(sql, [req.params.pid], (err1, result1) => {
        if (err1) throw err1;
        result[0].img = result1;
        res.send(result);
      })
    } else {
      res.send("0");
    }
  });
});
//首页闪购商品列表
route.get("/index/active", (req, res) => {
  var sql = "select * from xm_active";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send(result);
    } else {
      res.send("0");
    }
  })
});
//导出
module.exports = route;