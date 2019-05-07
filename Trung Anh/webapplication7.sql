/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : webapplication7

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 06/05/2019 22:02:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Van');
INSERT INTO `category` VALUES (2, 'Nike');
INSERT INTO `category` VALUES (3, 'Adidas');
INSERT INTO `category` VALUES (4, 'Reebok');
INSERT INTO `category` VALUES (5, 'Flia');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_price` double(10, 2) NULL DEFAULT NULL,
  `product_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 1, 'Adidas NMD', 'images/1.jpg', 1000.00, 'ÔI GIÀY PHONG CÁCH CHẠY MANG THIÊN HƯỚNG RETRO KẾT HỢP ĐƯỜNG PHỐ\r\nLấy cảm hứng từ những đôi giày chạy thập niên 70s và 80s, đôi giày Iniki-5923 ra đời kết hợp phong cách hiện đại. Đế boost nâng cấp cho cảm giác thoải mái, vải upper co giãn tạo cảm giác thoải mái.');
INSERT INTO `product` VALUES (2, 1, 'Vans', 'images/2.jpg', 1020.00, 'ÔI GIÀY PHONG CÁCH CHẠY MANG THIÊN HƯỚNG RETRO KẾT HỢP ĐƯỜNG PHỐ\r\nLấy cảm hứng từ những đôi giày chạy thập niên 70s và 80s, đôi giày Iniki-5923 ra đời kết hợp phong cách hiện đại. Đế boost nâng cấp cho cảm giác thoải mái, vải upper co giãn tạo cảm giác thoải mái.');
INSERT INTO `product` VALUES (3, 2, 'Adidas NMD', 'images/1.jpg', 10300.00, 'ÔI GIÀY PHONG CÁCH CHẠY MANG THIÊN HƯỚNG RETRO KẾT HỢP ĐƯỜNG PHỐ\r\nLấy cảm hứng từ những đôi giày chạy thập niên 70s và 80s, đôi giày Iniki-5923 ra đời kết hợp phong cách hiện đại. Đế boost nâng cấp cho cảm giác thoải mái, vải upper co giãn tạo cảm giác thoải mái.');
INSERT INTO `product` VALUES (4, 2, 'Vans', 'images/2.jpg', 105678.00, 'ÔI GIÀY PHONG CÁCH CHẠY MANG THIÊN HƯỚNG RETRO KẾT HỢP ĐƯỜNG PHỐ\r\nLấy cảm hứng từ những đôi giày chạy thập niên 70s và 80s, đôi giày Iniki-5923 ra đời kết hợp phong cách hiện đại. Đế boost nâng cấp cho cảm giác thoải mái, vải upper co giãn tạo cảm giác thoải mái.');
INSERT INTO `product` VALUES (5, 2, 'Flia', 'images/3.jpg', 99999999.99, 'ÔI GIÀY PHONG CÁCH CHẠY MANG THIÊN HƯỚNG RETRO KẾT HỢP ĐƯỜNG PHỐ');
INSERT INTO `product` VALUES (6, 1, 'Biti\'s', 'images/3.jpg', 1111.00, 'ÔI GIÀY PHONG CÁCH CHẠY MANG THIÊN HƯỚNG RETRO KẾT HỢP ĐƯỜNG PHỐ');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'volocanh102', 'e10adc3949ba59abbe56e057f20f883e', '1');

SET FOREIGN_KEY_CHECKS = 1;
