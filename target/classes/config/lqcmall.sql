/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : lqcmall

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-01-09 10:57:37
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2', '1402548358@qq.com', 'BVCBVCB', '1');
INSERT INTO `message` VALUES ('3', '1402548358@qq.com', 'gfdgfdg', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
INSERT INTO `product` VALUES ('23', '2018新款秋冬款潮韩版百搭时尚水桶包女士单肩斜挎包', '0.01', 'images/bag-test1.jpg', 'images/bag-test-cart-1.jpg', '2019女士单肩斜挎包', null, '100', '2019-01-04 08:19:23', '3', '23');
INSERT INTO `product` VALUES ('24', '2018男鞋冬季加绒高帮鞋男韩版潮流运动高邦棉鞋子男潮鞋网红百搭', '0.01', 'images/shose-test.jpg', 'images/shose-cart.jpg', '534534543535', null, '10', '2019-01-04 15:42:50', '4', '24');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
INSERT INTO `product_addinfo` VALUES ('19', '23', '1kh', '50x50', '涤纶', 'Red,Blue,orange', 'S,M,L,XL');
INSERT INTO `product_addinfo` VALUES ('20', '24', '0.79 kg', '110 x 33 x 100 cm', '23432432', 'Black, Blue, Grey, Green, Red, White', 'XL, L, M, S');

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_card
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

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
INSERT INTO `product_dimg` VALUES ('77', '23', 'images/bag-dimg-test-1.jpg');
INSERT INTO `product_dimg` VALUES ('78', '23', 'images/bag-dimg-test-2.jpg');
INSERT INTO `product_dimg` VALUES ('79', '23', 'images/bag-dimg-test-3.jpg');
INSERT INTO `product_dimg` VALUES ('80', '24', 'images/shose-dimg-1.jpg');
INSERT INTO `product_dimg` VALUES ('81', '24', 'images/shose-dimg-2.jpg');
INSERT INTO `product_dimg` VALUES ('82', '24', 'images/shose-dimg-3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_order
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_review
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
