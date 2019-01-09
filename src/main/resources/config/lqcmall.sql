/*
Navicat MySQL Data Transfer

Source Server         : lqcmall
Source Server Version : 50724
Source Host           : lqcnb.cn:3306
Source Database       : lqcmall

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-03 22:16:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) DEFAULT NULL,
  `amobile` varchar(255) DEFAULT NULL,
  `apwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'hgfhgf', '18065859553', '13413');
INSERT INTO `admin` VALUES ('2', '林启澄', '18065859553', '123456');
INSERT INTO `admin` VALUES ('3', 'fdfdf', '18065859553', '1111aa');
INSERT INTO `admin` VALUES ('4', '林奇', '18065859553', '123456a');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_email` varchar(255) DEFAULT NULL,
  `message_content` varchar(255) DEFAULT NULL,
  `message_state` int(11) DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2', '1402548358@qq.com', 'BVCBVCB', '1');
INSERT INTO `message` VALUES ('3', '1402548358@qq.com', 'gfdgfdg', '0');
INSERT INTO `message` VALUES ('4', 'gdfgdfg', 'gdfgdfgfd', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_card_img` varchar(255) DEFAULT NULL,
  `product_describe` varchar(255) DEFAULT NULL,
  `product_detail_describe` varchar(2000) DEFAULT NULL,
  `product_count` int(255) DEFAULT NULL,
  `product_createtime` datetime DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `product_dimg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Esprit Ruffle Shirt', '0.01', 'images/product-01.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 09:54:54', '1', '1');
INSERT INTO `product` VALUES ('2', 'Herschel supply', '1.10', 'images/product-02.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:30', '1', '2');
INSERT INTO `product` VALUES ('3', 'Only Check Trouser', '25.50', 'images/product-03.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:33', '2', '3');
INSERT INTO `product` VALUES ('4', 'Classic Trench Coat', '75.00', 'images/product-04.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:36', '1', '4');
INSERT INTO `product` VALUES ('5', 'Front Pocket Jumper', '34.75', 'images/product-05.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:39', '1', '5');
INSERT INTO `product` VALUES ('6', 'Shirt in Stretch Cotton', '25.50', 'images/product-06.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:42', '1', '6');
INSERT INTO `product` VALUES ('7', 'Shirt in Stretch Cotton', '52.66', 'images/product-07.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:45', '1', '7');
INSERT INTO `product` VALUES ('8', 'Pieces Metallic Printed', '18.96', 'images/product-08.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:48', '1', '8');
INSERT INTO `product` VALUES ('9', 'Converse All Star Hi Plimsolls', '75.56', 'images/product-09.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:50', '4', '9');
INSERT INTO `product` VALUES ('10', 'Femme T-Shirt In Stripe', '61.36', 'images/product-10.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:53', '1', '10');
INSERT INTO `product` VALUES ('11', 'Herschel supply ', '75.00', 'images/product-11.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:56', '2', '11');
INSERT INTO `product` VALUES ('12', 'Herschel supply', '16.98', 'images/product-12.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:01:59', '2', '12');
INSERT INTO `product` VALUES ('13', 'T-Shirt with Sleeve', '43.96', 'images/product-13.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:02:01', '1', '13');
INSERT INTO `product` VALUES ('14', 'Pretty Little Thing', '54.79', 'images/product-14.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:02:04', '1', '14');
INSERT INTO `product` VALUES ('15', 'Mini Silver Mesh Watch', '87.36', 'images/product-15.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:02:07', '5', '15');
INSERT INTO `product` VALUES ('16', 'Square Neck Back', 'count', 'images/product-16.jpg', 'images/item-cart-01.jpg', 'Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.', '', '50', '2018-12-22 15:02:10', '1', '16');

-- ----------------------------
-- Table structure for product_addinfo
-- ----------------------------
DROP TABLE IF EXISTS `product_addinfo`;
CREATE TABLE `product_addinfo` (
  `product_addinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_weight` varchar(255) DEFAULT NULL,
  `product_dimensions` varchar(255) DEFAULT NULL,
  `product_materials` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_addinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_addinfo
-- ----------------------------
INSERT INTO `product_addinfo` VALUES ('1', '1', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('2', '2', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('3', '3', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('4', '4', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('5', '5', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('6', '6', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('7', '7', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('8', '8', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('9', '9', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('10', '10', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('11', '11', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('12', '12', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('13', '13', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('14', '14', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('15', '15', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');
INSERT INTO `product_addinfo` VALUES ('16', '16', '0.79 kg', '110 x 33 x 100 cm', '60% cotton', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');

-- ----------------------------
-- Table structure for product_card
-- ----------------------------
DROP TABLE IF EXISTS `product_card`;
CREATE TABLE `product_card` (
  `product_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_card_count` varchar(255) DEFAULT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `product_user_id` int(11) DEFAULT NULL,
  `product_cart_state` int(11) DEFAULT '0',
  `product_pay_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_card
-- ----------------------------
INSERT INTO `product_card` VALUES ('62', '1', '1', '2', '1', '23', '1', '2019010122001482920588184889');
INSERT INTO `product_card` VALUES ('63', '1', '5', '1', '1', '23', '1', '2019010122001482920588975177');
INSERT INTO `product_card` VALUES ('68', '1', '1', '2', '2', '23', '1', '2019010122001481060513385157');
INSERT INTO `product_card` VALUES ('69', '1', '1', '1', '1', '23', '1', '2019010122001481060512601666');
INSERT INTO `product_card` VALUES ('70', '1', '1', '2', '3', '23', '1', '2019010122001481060512006246');
INSERT INTO `product_card` VALUES ('71', '1', '2', '1', '1', '23', '1', '2019010122001481060513346127');
INSERT INTO `product_card` VALUES ('72', '1', '1', '1', '1', '23', '1', '2019010122001481060513346127');
INSERT INTO `product_card` VALUES ('74', '1', '1', '1', '1', '23', '1', '2019010322001480060521116780');
INSERT INTO `product_card` VALUES ('75', '1', '1', '2', '1', '23', '1', '2019010322001481060524178386');
INSERT INTO `product_card` VALUES ('76', '20', '1', '2', '1', '23', '1', '2019010322001481060524178386');

-- ----------------------------
-- Table structure for product_color
-- ----------------------------
DROP TABLE IF EXISTS `product_color`;
CREATE TABLE `product_color` (
  `product_color_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_color_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_color
-- ----------------------------
INSERT INTO `product_color` VALUES ('1', 'Red');
INSERT INTO `product_color` VALUES ('2', 'Blue');
INSERT INTO `product_color` VALUES ('3', 'White');
INSERT INTO `product_color` VALUES ('4', 'Grey');

-- ----------------------------
-- Table structure for product_dimg
-- ----------------------------
DROP TABLE IF EXISTS `product_dimg`;
CREATE TABLE `product_dimg` (
  `product_dimgId` int(11) NOT NULL AUTO_INCREMENT,
  `product_dimg_id` int(11) DEFAULT NULL,
  `product_detail_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_dimgId`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_dimg
-- ----------------------------
INSERT INTO `product_dimg` VALUES ('1', '1', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('2', '1', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('3', '1', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('4', '2', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('5', '2', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('6', '2', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('7', '3', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('8', '3', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('9', '3', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('10', '4', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('11', '4', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('12', '4', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('13', '5', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('14', '5', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('15', '5', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('16', '6', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('17', '6', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('18', '6', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('19', '7', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('20', '7', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('21', '7', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('22', '8', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('23', '8', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('24', '8', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('25', '9', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('26', '9', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('27', '9', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('28', '10', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('29', '10', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('30', '10', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('31', '11', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('32', '11', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('33', '11', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('34', '12', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('35', '12', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('36', '12', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('37', '13', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('38', '13', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('39', '13', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('40', '14', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('41', '14', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('42', '14', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('43', '15', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('44', '15', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('45', '15', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('46', '16', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('47', '16', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('48', '16', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('49', '17', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('50', '17', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('51', '17', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('52', '18', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('53', '18', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('54', '18', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('55', '19', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('56', '19', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('57', '19', 'images/product-detail-03.jpg');
INSERT INTO `product_dimg` VALUES ('58', '20', 'images/product-detail-01.jpg');
INSERT INTO `product_dimg` VALUES ('59', '20', 'images/product-detail-02.jpg');
INSERT INTO `product_dimg` VALUES ('60', '20', 'images/product-detail-03.jpg');

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order` (
  `product_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_order_uuid` varchar(255) DEFAULT NULL,
  `product_user_id` int(11) DEFAULT NULL,
  `product_pay_no` varchar(255) DEFAULT NULL,
  `product_order_total` varchar(255) DEFAULT NULL,
  `product_order_address` varchar(255) DEFAULT NULL,
  `product_order_name` varchar(255) DEFAULT NULL,
  `product_order_telphone` varchar(255) DEFAULT NULL,
  `product_pay_state` int(11) DEFAULT '0',
  `product_order_state` int(11) DEFAULT '0',
  `product_order_createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`product_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_order
-- ----------------------------
INSERT INTO `product_order` VALUES ('60', '7ca98b5c71af4ea4ab8acc8591e64c42', '23', '2019010122001482920588184889', '0.01', '三明学院', 'fdsf', '123', '0', '2', '2019-01-01 17:23:03');
INSERT INTO `product_order` VALUES ('61', '892f982cdec446d2adf9359b1aeb3022', '23', '2019010122001482920588975177', '0.05', '三明学院', '1111', '456', '1', '0', '2019-01-01 17:34:02');
INSERT INTO `product_order` VALUES ('73', '376927187144423c868d3af1977c6a33', '23', '2019010122001481060513385157', '0.01', '434434', '123', '18065859553', '1', '0', '2019-01-01 22:58:07');
INSERT INTO `product_order` VALUES ('74', 'd5a8debd803043b2b31bf590c48eed2b', '23', '2019010122001481060512601666', '0.01', '三明学院', 'fdsf', 'fdsfdsf', '1', '0', '2019-01-01 23:09:17');
INSERT INTO `product_order` VALUES ('75', '515c30b8e372435da5d99232ddd80e0a', '23', '2019010122001481060512006246', '0.01', '434', '123', 'gfdgf', '1', '0', '2019-01-01 23:20:41');
INSERT INTO `product_order` VALUES ('76', 'd31db0b735a94d8486fd1e82d24f610e', '23', '2019010122001481060513346127', '0.02', '三明学院', '123', 'fdsfdsf', '1', '0', '2019-01-01 23:31:33');
INSERT INTO `product_order` VALUES ('77', 'c27fce35ca5c42b5917aa5e7175710bd', '23', null, '0.01', '三明学院', 'fdsf', 'gdfg', '0', '0', '2019-01-02 08:28:46');
INSERT INTO `product_order` VALUES ('78', '144b3655ca174400a57f90911ea26107', '23', null, '0.01', '三明学院', '123', '18065859553', '0', '0', '2019-01-02 17:36:44');
INSERT INTO `product_order` VALUES ('79', '933ae261396d4cd6932f0e8d4f6635be', '29', null, '0.00', '', '', '', '0', '0', '2019-01-02 22:42:47');
INSERT INTO `product_order` VALUES ('80', '18b48351093f4582beae2c1279b8414b', '23', '2019010222001477080510845778', '0.01', '434', 'fdsf', 'gfdgf', '1', '0', '2019-01-02 23:25:12');
INSERT INTO `product_order` VALUES ('81', '7a20700080f84574a6105de0ed49bcc0', '23', '2019010322001480060521116780', '0.01', '78798', '877489', '57789', '1', '0', '2019-01-03 08:20:11');
INSERT INTO `product_order` VALUES ('82', '2ad40a23b23545369fe321db518bcdd9', '23', null, '0.01', '434', '林启澄', '18065859553', '0', '0', '2019-01-03 15:03:25');
INSERT INTO `product_order` VALUES ('83', 'f1bbb4ce9a71435485de5b31d028384c', '23', '2019010322001481060524178386', '0.03', '434', '123', 'gfdgf', '1', '0', '2019-01-03 15:35:16');

-- ----------------------------
-- Table structure for product_review
-- ----------------------------
DROP TABLE IF EXISTS `product_review`;
CREATE TABLE `product_review` (
  `product_review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_rating` varchar(255) DEFAULT NULL,
  `product_review` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_review
-- ----------------------------
INSERT INTO `product_review` VALUES ('1', '1', '1', '4衣服不错衣服不错衣服不错衣服不错衣服不错', 'lqc', '1402548358@qq.com');
INSERT INTO `product_review` VALUES ('2', '1', '2', 'the  close is very good', 'lnchengzi', '1402548358@qq.com');
INSERT INTO `product_review` VALUES ('3', '1', '5', 'rewr', '342', '434');
INSERT INTO `product_review` VALUES ('4', '1', '4', '衣服不错衣服不错衣服不错', '张三', '312184168@qq.com');
INSERT INTO `product_review` VALUES ('5', '1', '5', '衣服不错', '张三', '312184168@qq.com');
INSERT INTO `product_review` VALUES ('6', '1', '0', '衣服不错', '张三', '312184168@qq.com');
INSERT INTO `product_review` VALUES ('7', '1', '0', 'grg', 'grg', '434432');
INSERT INTO `product_review` VALUES ('8', '1', '4', 'grg', 'grg', '434432');
INSERT INTO `product_review` VALUES ('9', '1', '5', 'hghkgh', 'jhj', '312184168@qq.com');
INSERT INTO `product_review` VALUES ('10', '1', '4', 'hghkgh', 'jhj', '312184168@qq.com');
INSERT INTO `product_review` VALUES ('11', '1', '5', 'hghkgh', 'jhj', '312184168@qq.com');
INSERT INTO `product_review` VALUES ('12', '1', '5', 'hgfh', 'fghfg', 'hfgh');
INSERT INTO `product_review` VALUES ('13', '1', '3', 'hfgh', 'hfgh', 'hfgh');
INSERT INTO `product_review` VALUES ('22', '1', '3', '郭德纲的时光的时光', '人', 'fsdfdsfsaf');
INSERT INTO `product_review` VALUES ('23', '1', '4', '78/78/', 'trytry', 'ytryryrty');
INSERT INTO `product_review` VALUES ('24', '21', '5', '还不错', '林启澄', '123456@qq.com');
INSERT INTO `product_review` VALUES ('25', '22', '5', 'ytyt', '1111', '123456@qq.com');

-- ----------------------------
-- Table structure for product_size
-- ----------------------------
DROP TABLE IF EXISTS `product_size`;
CREATE TABLE `product_size` (
  `product_size_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_size_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`product_size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_size
-- ----------------------------
INSERT INTO `product_size` VALUES ('1', 'Size S');
INSERT INTO `product_size` VALUES ('2', 'Size M');
INSERT INTO `product_size` VALUES ('3', 'Size L');
INSERT INTO `product_size` VALUES ('4', 'Size XL');

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `product_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(255) DEFAULT NULL,
  `product_filter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES ('1', 'Women', 'women');
INSERT INTO `product_type` VALUES ('2', 'Men', 'men');
INSERT INTO `product_type` VALUES ('3', 'Bag', 'bag');
INSERT INTO `product_type` VALUES ('4', 'Shoes', 'shopes');
INSERT INTO `product_type` VALUES ('5', 'Watches', 'watches');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telphone` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20', null, '49e7b5b1a4594f99b897a63e9fe6fde4', '1402548358@qq.com', 'rewrrwrw', '1', '1');
INSERT INTO `user` VALUES ('21', null, '1', '123456@qq.com', '123', '33', '0');
INSERT INTO `user` VALUES ('22', null, 'fdc3fd7806914afd8a77f1d3524465ab', '1402548358@qq.com', '林启澄', '1111', '1');
INSERT INTO `user` VALUES ('23', null, 'fe37627909e5410cb60918bda080f626', '1402548358@qq.com', 'fdsaffasfd', '2', '1');
INSERT INTO `user` VALUES ('24', null, '445a740ffccb4aca889405baa5678388', null, 'nullnull', null, '0');
INSERT INTO `user` VALUES ('25', null, '70d868eca633475f9a7dc930fe64820b', '', '134243', 'trtr', '0');
INSERT INTO `user` VALUES ('26', null, '7dd8779f061b4d35af8ff291c699b486', '312184168@qq.om', '林启澄', '123456', '0');
INSERT INTO `user` VALUES ('27', null, 'd6514701b5444dad8de20aea7470b401', '312184168@qq.com', '4324432432', '1', '1');
INSERT INTO `user` VALUES ('28', null, '0094bf50a37340cf8420e6cb4c0f066b', '1402548358@qq.com', '林发', 'a12', '1');
INSERT INTO `user` VALUES ('29', null, '84eab0c64b9e48d8b99727c700807d39', '1305855237@qq.com', 'wflcxy', 'wfl123456', '1');
INSERT INTO `user` VALUES ('31', null, 'f41b46a66d7a4c86913b046a20040319', '958465427@qq.com', '阮雄腾', '123a', '1');
