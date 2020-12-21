//引入包
const express = require("express");
const bodyParser = require("body-parser");
//引入路由
const userRouter = require("./route/user");
const goodsRouter = require("./route/goods");
//创建服务器
const app = express();
//设置端口
app.listen(8080);
//使用包
app.use(bodyParser.urlencoded({
  extended: false
}));
//静态资源
app.use(express.static("./public/xiaomi"));
//挂载路由
app.use("/Mi", userRouter);
app.use("/Mi", goodsRouter);