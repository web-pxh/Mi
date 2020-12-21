#设置客户端连接服务器端编码
set names utf8;
#丢弃数据库如果存在
drop database if exists xm;
#创建数据库，设置存储的编码
create database xm charset=utf8;
#进入数据库
use xm;
/**用户信息**/
CREATE TABLE xm_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  sex INT                  #性别  0-女  1-男
);
/**首页轮播图**/
CREATE TABLE xm_swiper(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64)
  -- href VARCHAR(128)
);
/**添加用户信息**/
INSERT INTO xm_user VALUES
(NULL,'dingding','123456','ding@qq.com','13501234567','1'),
(NULL,'dangdang','123456','dang@qq.com','13501234568','1'),
(NULL,'yaya','123456','ya@qq.com','13501234560','0');

/* 添加轮播图 */
INSERT INTO xm_swiper VALUES
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ef4160c861b998239bce9adb82341e7.jpg?thumb=1&w=1226&h=460&f=webp&q=90','轮播广告商品1'),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0e4acf11840c1d9600c34c46ffa73ec8.jpg?thumb=1&w=1226&h=460&f=webp&q=90','轮播广告商品2'),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d65e7bc110ca74b9d7fa7ce53a841971.jpg?w=2452&h=920','轮播广告商品3'),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/bf00c9bc91cd04aa07d9d33c4c350903.jpg?thumb=1&w=1226&h=460&f=webp&q=90','轮播广告商品4'),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9ebff5f5c1f52f2dbdd611897adbefd4.jpg?thumb=1&w=1226&h=460&f=webp&q=90','轮播广告商品5');
