//引入包
const express = require("express");
//引入数据库
const pool = require("../pool");
//创建路由
const route = express.Router();
//登录
route.get("/login/:uname&:upwd", (req, res) => {
  var sql = "select * from xm_user where uname=? and upwd=?";
  pool.query(sql, [req.params.uname, req.params.upwd], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send("1");
    } else {
      res.send("0");
    }
  })
});
//注册
route.post("/reg", (req, res) => {
  var sql = "insert into xm_user set?";
  pool.query(sql, [req.body], (err, result) => {
    if (err) throw err;
    if (result.affectedRows > 0) {
      res.send("1");
    } else {
      res.send("0");
    }
  })
});
//检测用户名重复
route.get("/getUname/:uname", (req, res) => {
  var sql = "select * from xm_user where uname=?";
  pool.query(sql, [req.params.uname], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send("1");
    } else {
      res.send("0");
    }
  })
});
//判断用户是否存在
route.get("/exist/:uname", (req, res) => {
  var sql = "select * from xm_user where uname=?";
  pool.query(sql, [req.params.uname], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      var uid = {
        uid: result[0].uid
      };
      res.send(uid);
    } else {
      res.send("0");
    }
  })
});
//修改密码
route.post("/changeupwd", (req, res) => {
  var sql = "update xm_user set upwd=? where uid=?";
  pool.query(sql, [req.body.upwd, req.body.uid], (err, result) => {
    if (err) throw err;
    console.log(result);
    if (result.affectedRows > 0) {
      res.send("1");
    } else {
      res.send("0");
    }
  })
})
//导出
module.exports = route;