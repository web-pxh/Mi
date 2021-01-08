/*
 Navicat MySQL Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : xm

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 08/01/2021 18:58:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xm_active
-- ----------------------------
DROP TABLE IF EXISTS `xm_active`;
CREATE TABLE `xm_active`  (
  `aid` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `details` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页的详情',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xm_active
-- ----------------------------
INSERT INTO `xm_active` VALUES (1, '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/8070925c6ba4d476392499454b973ff8.png', '小米移动电源3 10000mAh超级闪充版（50W）​ 黑色', '大容量，超级闪充', 249.00);
INSERT INTO `xm_active` VALUES (2, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/730055892c1afa7b6d8128c0938b5277.png', '日常元素抽纸 青春版 24包/箱', '精选原生竹浆，健康环保', 32.90);
INSERT INTO `xm_active` VALUES (3, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ef7b6af7926b7b44da1343e144a8f801.png', '米家护颈记忆绵枕 灰色', '高低曲线承托，睡眠更自在', 99.00);
INSERT INTO `xm_active` VALUES (4, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f607feb5f31aa04949d530799d010d99.png', 'RedmiBook 16 i5 16G 512G MX350 灰色', '便携大屏，全“芯”超越', 4999.00);
INSERT INTO `xm_active` VALUES (5, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b942792b6d1edc16d2fb2cb317dc60a9.png', '米兔儿童电话手表4C 蓝色', '能视频通话的4G电话手表', 399.00);
INSERT INTO `xm_active` VALUES (6, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3bc5d325cca5bf07fe25dfed3d562239.png', 'Redmi智能电视A32 黑色 32英寸', '陪伴美好时光', 899.00);
INSERT INTO `xm_active` VALUES (7, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4341891528452ee712596b4ed7347532.png', '米家滚筒洗烘一体机1A 8kg 白色', '智能烘干，即洗即穿', 1999.00);
INSERT INTO `xm_active` VALUES (8, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/73ad2ee391116c584afc98861b30509b.png', '小米盒子4 SE套装版', '人工智能机顶盒+小米高清数据线', 189.00);
INSERT INTO `xm_active` VALUES (9, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0c7748338e22822f2e900363dafad666.png', '米兔儿童滑板车 粉', '安全好玩的酷玩具', 249.00);
INSERT INTO `xm_active` VALUES (10, 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b8c042faa7a3c5cd887a8f20333f55c0.png?', '米家吸顶灯 卧室吸顶灯350', '开启全屋智能照明时代', 249.00);

-- ----------------------------
-- Table structure for xm_product
-- ----------------------------
DROP TABLE IF EXISTS `xm_product`;
CREATE TABLE `xm_product`  (
  `pid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `details` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页的详情',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情页的详情',
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `shop_type` int NULL DEFAULT NULL COMMENT '商品类型',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机颜色',
  `edition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机版本',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xm_product
-- ----------------------------
INSERT INTO `xm_product` VALUES (1, '小米11', '骁龙888 | 2K四曲面屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a260090e0e08770b0bd865845a4b4ab.jpg', 3999.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (2, 'Note 9 Pro', '一亿像素夜景相机，120Hz六档变速高刷屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4e75e528fb468aee107f551179aa0799.jpg', 1599.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (3, 'Redmi K30S 至尊纪念版', '144Hz[7档]变速高刷屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cf7a05df86a858a1f391a0378d8c27d.jpg', 2599.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (4, '小米10 至尊版', '120X 变焦/120W秒充/120Hz屏幕', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d880ff45a9a3b70527770e01521fc939.jpg', 5299.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (5, '小米11', '骁龙888 | 2K四曲面屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a260090e0e08770b0bd865845a4b4ab.jpg', 3999.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (6, 'Note 9 Pro', '一亿像素夜景相机，120Hz六档变速高刷屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4e75e528fb468aee107f551179aa0799.jpg', 1599.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (7, 'Redmi K30S 至尊纪念版', '144Hz[7档]变速高刷屏', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cf7a05df86a858a1f391a0378d8c27d.jpg', 2599.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (8, '小米10 至尊版', '120X 变焦/120W秒充/120Hz屏幕', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d880ff45a9a3b70527770e01521fc939.jpg', 5299.00, 0, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (9, 'Redmi 红米电视 70英寸', '70英寸震撼巨屏，4K画质，细腻如真', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ef4c68fed730ec26bf2fa0ff620975c5.jpg', 3299.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (10, '米家互联网洗烘一体机 Pro 10kg', '智能洗烘，省心省力', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec20453216dcd42f982cffe5fdbc3115.jpg', 2999.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (11, '米家空调', '出众静音，快速制冷热', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2b911be4c2f156bb6e4cf367c6080045.jpg', 1499.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (12, 'Air 13.3\" 2019款', '新一代独立显卡', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74e573c4c0d89048392d14831cc507d5.jpg', 4799.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (13, 'Redmi 红米电视 70英寸', '70英寸震撼巨屏，4K画质，细腻如真', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ef4c68fed730ec26bf2fa0ff620975c5.jpg', 3299.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (14, '米家互联网洗烘一体机 Pro 10kg', '智能洗烘，省心省力', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec20453216dcd42f982cffe5fdbc3115.jpg', 2999.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (15, '米家空调', '出众静音，快速制冷热', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2b911be4c2f156bb6e4cf367c6080045.jpg', 1499.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (16, 'Air 13.3\" 2019款', '新一代独立显卡', '国标双A+级洗烘能力 / 22种洗烘模式 / 除菌率达99.9%+ / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 智能投放洗涤剂', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74e573c4c0d89048392d14831cc507d5.jpg', 4799.00, 1, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (17, '九号平衡车 Plus', '一个形影不离的新伙伴', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://i8.mifile.cn/v1/a1/877d3ce8-68ab-7506-2a78-55a8c0fba946!200x200.png', 3299.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (18, '小米「小爱老师」', '英语提分利器', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/011dd8493ad62f3793dbb63d9fbd3bc0.jpg', 999.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (19, '小米体脂秤2', '轻松掌握身体脂肪率', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg', 99.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (20, 'Redmi小爱触屏音箱 8英寸', '超大屏，让智能更多可能', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/49f30069c778b494257320d9da5a1a60.jpg', 349.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (21, '九号平衡车 Plus', '一个形影不离的新伙伴', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://i8.mifile.cn/v1/a1/877d3ce8-68ab-7506-2a78-55a8c0fba946!200x200.png', 3299.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (22, '小米「小爱老师」', '英语提分利器', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/011dd8493ad62f3793dbb63d9fbd3bc0.jpg', 999.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (23, '小米体脂秤2', '轻松掌握身体脂肪率', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg', 99.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (24, 'Redmi小爱触屏音箱 8英寸', '超大屏，让智能更多可能', '多种智能开合方式丨丰富智能联动丨直流静音电机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/49f30069c778b494257320d9da5a1a60.jpg', 349.00, 2, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (25, '小米真无线蓝牙耳机Air 2 Pro', ' 主动降噪/持久续航/无线充', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5fc35cf0af915a9e60f5d4ea220521ab.jpg', 699.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (26, 'Redmi充电宝 20000mAh 快充版', '大容量，	可上飞机 ', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg', 99.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (27, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg', 99.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (28, '小米真无线蓝牙耳机Air 2s', '全面升级，智慧真无线', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c6306bf6d8aede9f6f48d8e4d9256db2.jpg', 399.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (29, '小米真无线蓝牙耳机Air 2 Pro', ' 主动降噪/持久续航/无线充', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5fc35cf0af915a9e60f5d4ea220521ab.jpg', 699.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (30, 'Redmi充电宝 20000mAh 快充版', '大容量，	可上飞机 ', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg', 99.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (31, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg', 99.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (32, '小米真无线蓝牙耳机Air 2s', '全面升级，智慧真无线', '弹窗快连语音唤醒/通话降噪同步传输/主动降噪通透模式/持久续航无线充电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c6306bf6d8aede9f6f48d8e4d9256db2.jpg', 399.00, 3, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (33, '米家LED随身灯', '小巧轻便 5级亮度调节', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://i8.mifile.cn/v1/a1/b0ded71f-b235-8f99-ba1c-20f80c3a4231!200x200.jpg', 19.90, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (34, '小米USB充电器65W 快充版（2A1C）', '超级快充，三台设备同时充', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e4b3bff030170ad1a07dfb50311352c9.jpg', 149.00, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (35, '小米Type-C转Lightning数据线 1m', '苹果MFi官方认证，支持快充', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/573e9cb39b0d8c7f2cd063621142fe44.jpg', 59.00, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (36, '小米氮化镓GaN充电器 Type-C 65W', '氮化镓黑科技 65W MAX 大功率快充', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg', 149.00, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (37, '米家LED随身灯', '小巧轻便 5级亮度调节', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://i8.mifile.cn/v1/a1/b0ded71f-b235-8f99-ba1c-20f80c3a4231!200x200.jpg', 19.90, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (38, '小米USB充电器65W 快充版（2A1C）', '超级快充，三台设备同时充', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e4b3bff030170ad1a07dfb50311352c9.jpg', 149.00, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (39, '小米Type-C转Lightning数据线 1m', '苹果MFi官方认证，支持快充', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/573e9cb39b0d8c7f2cd063621142fe44.jpg', 59.00, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (40, '小米氮化镓GaN充电器 Type-C 65W', '氮化镓黑科技 65W MAX 大功率快充', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8fde8a877fd4b12ad88119d9b6bc061.jpg', 149.00, 4, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (41, '米家迷你保温杯', '可以随身携带的温度', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg', 49.00, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (42, '米家飞行员太阳镜 Pro', '尼龙偏光，轻巧佩戴', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg', 199.00, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (43, '8H乳胶床垫2', '软硬双面可睡', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f9017bebb14740ea46673aaa81a616cb.jpg', 599.00, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (44, '小米巨能写中性笔10支装', '一支顶4支，超长顺滑书写', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg', 9.99, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (45, '米家迷你保温杯', '可以随身携带的温度', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg', 49.00, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (46, '米家飞行员太阳镜 Pro', '尼龙偏光，轻巧佩戴', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg', 199.00, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (47, '8H乳胶床垫2', '软硬双面可睡', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f9017bebb14740ea46673aaa81a616cb.jpg', 599.00, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');
INSERT INTO `xm_product` VALUES (48, '小米巨能写中性笔10支装', '一支顶4支，超长顺滑书写', '阻隔紫外线防眩光 / 1mm 超细镜腿 / 不锈钢超薄镜架 / 免螺丝一体结构', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg', 9.99, 5, '凝夜紫,胧月金,深海蓝', '6GB+128GB,8GB+128GB,8GB+256GB');

-- ----------------------------
-- Table structure for xm_product_swiper
-- ----------------------------
DROP TABLE IF EXISTS `xm_product_swiper`;
CREATE TABLE `xm_product_swiper`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xm_product_swiper
-- ----------------------------
INSERT INTO `xm_product_swiper` VALUES (1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a01b2beca861b9970e7d57c358b5b95.jpg', '轮播广告商品1');
INSERT INTO `xm_product_swiper` VALUES (2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/54f5478a4190962387b5360dc84cd2dc.jpg', '轮播广告商品2');
INSERT INTO `xm_product_swiper` VALUES (3, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9ebff5f5c1f52f2dbdd611897adbefd4.jpg', '轮播广告商品3');
INSERT INTO `xm_product_swiper` VALUES (4, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ef4160c861b998239bce9adb82341e7.jpg', '轮播广告商品4');
INSERT INTO `xm_product_swiper` VALUES (5, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6c8548518decd20f4eb61608730ada54.jpg', '轮播广告商品5');

-- ----------------------------
-- Table structure for xm_swiper
-- ----------------------------
DROP TABLE IF EXISTS `xm_swiper`;
CREATE TABLE `xm_swiper`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xm_swiper
-- ----------------------------
INSERT INTO `xm_swiper` VALUES (1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5a01b2beca861b9970e7d57c358b5b95.jpg', '轮播广告商品1', 'https://www.mi.com/mi11');
INSERT INTO `xm_swiper` VALUES (2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/54f5478a4190962387b5360dc84cd2dc.jpg', '轮播广告商品2', 'https://www.mi.com/buy/detail?product_id=12605');
INSERT INTO `xm_swiper` VALUES (3, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9ebff5f5c1f52f2dbdd611897adbefd4.jpg', '轮播广告商品3', 'https://www.mi.com/redmitv/98');
INSERT INTO `xm_swiper` VALUES (4, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ef4160c861b998239bce9adb82341e7.jpg', '轮播广告商品4', 'https://www.mi.com/a/h/17671.html');
INSERT INTO `xm_swiper` VALUES (5, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6c8548518decd20f4eb61608730ada54.jpg', '轮播广告商品5', 'https://www.mi.com/a/h/18771.html');

-- ----------------------------
-- Table structure for xm_user
-- ----------------------------
DROP TABLE IF EXISTS `xm_user`;
CREATE TABLE `xm_user`  (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xm_user
-- ----------------------------
INSERT INTO `xm_user` VALUES (1, 'dingding', '123456', 'ding@qq.com', '13501234567', 1);
INSERT INTO `xm_user` VALUES (2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 1);
INSERT INTO `xm_user` VALUES (3, 'yaya', '123456', 'ya@qq.com', '13501234560', 0);
INSERT INTO `xm_user` VALUES (4, '111111', '1111111', '1448670742@qq.com', '13501234567', NULL);

SET FOREIGN_KEY_CHECKS = 1;
