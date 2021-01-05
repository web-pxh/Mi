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
  title VARCHAR(64),
  href VARCHAR(128)
);
/**首页商品**/
CREATE TABLE xm_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  img VARCHAR(128),
  price DECIMAL(10,2),
  shop_type INT
);
/**添加用户信息**/
INSERT INTO xm_user VALUES
(NULL,'dingding','123456','ding@qq.com','13501234567','1'),
(NULL,'dangdang','123456','dang@qq.com','13501234568','1'),
(NULL,'yaya','123456','ya@qq.com','13501234560','0');

/** 添加轮播图 **/
INSERT INTO xm_swiper VALUES
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a01b2beca861b9970e7d57c358b5b95.jpg','轮播广告商品1',"https://www.mi.com/mi11"),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/54f5478a4190962387b5360dc84cd2dc.jpg','轮播广告商品2',"https://www.mi.com/buy/detail?product_id=12605"),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9ebff5f5c1f52f2dbdd611897adbefd4.jpg','轮播广告商品3',"https://www.mi.com/redmitv/98"),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ef4160c861b998239bce9adb82341e7.jpg','轮播广告商品4',"https://www.mi.com/a/h/17671.html"),
(NULL,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6c8548518decd20f4eb61608730ada54.jpg','轮播广告商品5',"https://www.mi.com/a/h/18771.html");
/** 添加首页商品 **/
INSERT INTO xm_index_product VALUES
/* 手机 */
(NULL, '小米11', '骁龙888 | 2K四曲面屏', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a260090e0e08770b0bd865845a4b4ab.jpg ', 3999,0),
(NULL, 'Note 9 Pro', '一亿像素夜景相机，120Hz六档变速高刷屏', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4e75e528fb468aee107f551179aa0799.jpg', 1599,0),
(NULL, 'Redmi K30S 至尊纪念版', '144Hz[7档]变速高刷屏', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cf7a05df86a858a1f391a0378d8c27d.jpg', 2599,0),
(NULL, '小米10 至尊版', '120X 变焦/120W秒充/120Hz屏幕', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d880ff45a9a3b70527770e01521fc939.jpg', 5299,0),
(NULL, '小米11', '骁龙888 | 2K四曲面屏', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a260090e0e08770b0bd865845a4b4ab.jpg', 3999,0),
(NULL, 'Note 9 Pro', '一亿像素夜景相机，120Hz六档变速高刷屏', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4e75e528fb468aee107f551179aa0799.jpg', 1599,0),
(NULL, 'Redmi K30S 至尊纪念版', '144Hz[7档]变速高刷屏', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cf7a05df86a858a1f391a0378d8c27d.jpg', 2599,0),
(NULL, '小米10 至尊版', '120X 变焦/120W秒充/120Hz屏幕', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d880ff45a9a3b70527770e01521fc939.jpg', 5299,0),
/* 家电 */
(NULL, 'Redmi 红米电视 70英寸', '70英寸震撼巨屏，4K画质，细腻如真', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ef4c68fed730ec26bf2fa0ff620975c5.jpg', 3299,1),
(NULL, '米家互联网洗烘一体机 Pro 10kg', '智能洗烘，省心省力', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec20453216dcd42f982cffe5fdbc3115.jpg', 2999,1),
(NULL, '米家空调', '出众静音，快速制冷热', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2b911be4c2f156bb6e4cf367c6080045.jpg', 1499,1),
(NULL, 'Air 13.3" 2019款', '新一代独立显卡', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74e573c4c0d89048392d14831cc507d5.jpg', 4799,1),
(NULL, 'Redmi 红米电视 70英寸', '70英寸震撼巨屏，4K画质，细腻如真', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ef4c68fed730ec26bf2fa0ff620975c5.jpg', 3299,1),
(NULL, '米家互联网洗烘一体机 Pro 10kg', '智能洗烘，省心省力', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec20453216dcd42f982cffe5fdbc3115.jpg', 2999,1),
(NULL, '米家空调', '出众静音，快速制冷热', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2b911be4c2f156bb6e4cf367c6080045.jpg', 1499,1),
(NULL, 'Air 13.3" 2019款', '新一代独立显卡', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74e573c4c0d89048392d14831cc507d5.jpg', 4799,1),
/* 智能 */
(NULL, '九号平衡车 Plus', '一个形影不离的新伙伴', 'https://i8.mifile.cn/v1/a1/877d3ce8-68ab-7506-2a78-55a8c0fba946!200x200.png', 3299,2),
(NULL, '小米「小爱老师」', '英语提分利器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/011dd8493ad62f3793dbb63d9fbd3bc0.jpg', 999,2),
(NULL, '小米体脂秤2', '轻松掌握身体脂肪率', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg', 99,2),
(NULL, 'Redmi小爱触屏音箱 8英寸', '超大屏，让智能更多可能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/49f30069c778b494257320d9da5a1a60.jpg', 349,2),
(NULL, '九号平衡车 Plus', '一个形影不离的新伙伴', 'https://i8.mifile.cn/v1/a1/877d3ce8-68ab-7506-2a78-55a8c0fba946!200x200.png', 3299,2),
(NULL, '小米「小爱老师」', '英语提分利器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/011dd8493ad62f3793dbb63d9fbd3bc0.jpg', 999,2),
(NULL, '小米体脂秤2', '轻松掌握身体脂肪率', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg', 99,2),
(NULL, 'Redmi小爱触屏音箱 8英寸', '超大屏，让智能更多可能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/49f30069c778b494257320d9da5a1a60.jpg', 349,2),
/* 搭配 */
(NULL, '小米真无线蓝牙耳机Air 2 Pro', ' 主动降噪/持久续航/无线充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5fc35cf0af915a9e60f5d4ea220521ab.jpg', 699,3),
(NULL, 'Redmi充电宝 20000mAh 快充版', '大容量，	可上飞机 ', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg', 99,3),
(NULL, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg', 99,3),
(NULL, '小米真无线蓝牙耳机Air 2s', '全面升级，智慧真无线', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c6306bf6d8aede9f6f48d8e4d9256db2.jpg', 399,3),
(NULL, '小米真无线蓝牙耳机Air 2 Pro', ' 主动降噪/持久续航/无线充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5fc35cf0af915a9e60f5d4ea220521ab.jpg', 699,3),
(NULL, 'Redmi充电宝 20000mAh 快充版', '大容量，	可上飞机 ', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg', 99,3),
(NULL, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg', 99,3),
(NULL, '小米真无线蓝牙耳机Air 2s', '全面升级，智慧真无线', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c6306bf6d8aede9f6f48d8e4d9256db2.jpg', 399,3),
/* 配件 */
(NULL, '米家LED随身灯', '小巧轻便 5级亮度调节', 'https://i8.mifile.cn/v1/a1/b0ded71f-b235-8f99-ba1c-20f80c3a4231!200x200.jpg', 19.9,4),
(NULL, '小米USB充电器65W 快充版（2A1C）', '超级快充，三台设备同时充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e4b3bff030170ad1a07dfb50311352c9.jpg', 149,4),
(NULL, '小米Type-C转Lightning数据线 1m', '苹果MFi官方认证，支持快充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/573e9cb39b0d8c7f2cd063621142fe44.jpg', 59,4),
(NULL, '小米氮化镓GaN充电器 Type-C 65W', '氮化镓黑科技 65W MAX 大功率快充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg', 149,4),
(NULL, '米家LED随身灯', '小巧轻便 5级亮度调节', 'https://i8.mifile.cn/v1/a1/b0ded71f-b235-8f99-ba1c-20f80c3a4231!200x200.jpg', 19.9,4),
(NULL, '小米USB充电器65W 快充版（2A1C）', '超级快充，三台设备同时充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e4b3bff030170ad1a07dfb50311352c9.jpg', 149,4),
(NULL, '小米Type-C转Lightning数据线 1m', '苹果MFi官方认证，支持快充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/573e9cb39b0d8c7f2cd063621142fe44.jpg', 59,4),
(NULL, '小米氮化镓GaN充电器 Type-C 65W', '氮化镓黑科技 65W MAX 大功率快充', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg', 149,4),
/* 周边 */
(NULL, '米家迷你保温杯', '可以随身携带的温度', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg', 49,5),
(NULL, '米家飞行员太阳镜 Pro', '尼龙偏光，轻巧佩戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg', 199,5),
(NULL, '8H乳胶床垫2', '软硬双面可睡', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f9017bebb14740ea46673aaa81a616cb.jpg', 599,5),
(NULL, '小米巨能写中性笔10支装', '一支顶4支，超长顺滑书写', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg', 9.99,5),
(NULL, '米家迷你保温杯', '可以随身携带的温度', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg', 49,5),
(NULL, '米家飞行员太阳镜 Pro', '尼龙偏光，轻巧佩戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg', 199,5),
(NULL, '8H乳胶床垫2', '软硬双面可睡', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f9017bebb14740ea46673aaa81a616cb.jpg', 599,5),
(NULL, '小米巨能写中性笔10支装', '一支顶4支，超长顺滑书写', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg', 9.99,5);