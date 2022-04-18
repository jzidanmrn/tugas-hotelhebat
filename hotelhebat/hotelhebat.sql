/*
 Navicat Premium Data Transfer

 Source Server         : PemrogramanFramework
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : hotelhebat

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 18/04/2022 10:44:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fasilitas_kamar
-- ----------------------------
DROP TABLE IF EXISTS `fasilitas_kamar`;
CREATE TABLE `fasilitas_kamar`  (
  `id_fasilitas` int NOT NULL AUTO_INCREMENT,
  `id_kamar` int NOT NULL,
  `fasilitas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_fasilitas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fasilitas_kamar
-- ----------------------------
INSERT INTO `fasilitas_kamar` VALUES (1, 2, 'Kamar Mandi di Dalam\r\nFull AC\r\nKolam Renang');
INSERT INTO `fasilitas_kamar` VALUES (3, 3, 'Ruang tamu, Kursi Kamar, Kamar Mandi di Dalam');
INSERT INTO `fasilitas_kamar` VALUES (4, 6, 'Kasur Tidur, Kursi Tamu, Meja Makan');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri`  (
  `id_galeri` int NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_galeri`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES (1, 'Kolam Renang', '398-823c97c0d94e6b570a893e38e23c962e_crop_920x530.jpg');
INSERT INTO `galeri` VALUES (2, 'Tempat Tidur', '448-5f081b41cc76c.jpeg');
INSERT INTO `galeri` VALUES (5, 'Lobi', '417-Rayaburi_Hotel_Patong_-_Lobby.jpg');
INSERT INTO `galeri` VALUES (6, 'Tempat Makan', '295-fairmont.jpg');
INSERT INTO `galeri` VALUES (7, 'Gedung Hotel', '313-27677-hotel-tertinggi-di-dunia.jpg');
INSERT INTO `galeri` VALUES (8, 'Resepsionis', '693-Resepsionis.jpg');

-- ----------------------------
-- Table structure for kamar
-- ----------------------------
DROP TABLE IF EXISTS `kamar`;
CREATE TABLE `kamar`  (
  `id_kamar` int NOT NULL AUTO_INCREMENT,
  `no_kamar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kamar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kamar
-- ----------------------------
INSERT INTO `kamar` VALUES (2, 'Kamar No. 1', '284-slide2.png');
INSERT INTO `kamar` VALUES (3, 'Kamar No. 2', '776-slide__.png');
INSERT INTO `kamar` VALUES (6, 'Kamar No. 3', '377-5f081b41cc76c.jpeg');

-- ----------------------------
-- Table structure for pesanan
-- ----------------------------
DROP TABLE IF EXISTS `pesanan`;
CREATE TABLE `pesanan`  (
  `id_pesanan` int NOT NULL AUTO_INCREMENT,
  `cek_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cek_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jml_kamar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pemesan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_pemesan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hp_pemesan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_tamu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kamar` int NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pesanan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pesanan
-- ----------------------------
INSERT INTO `pesanan` VALUES (2, '2022-03-24', '2022-03-25', '1', 'Mardeta', 'mardeta@gmail.com', '0075664', 'Mardeta', 3, '2');
INSERT INTO `pesanan` VALUES (3, '2022-03-30', '2022-03-31', '1', 'Diandra', 'diandra@gmail.com', '0075664', 'Diandra', 2, '2');
INSERT INTO `pesanan` VALUES (4, '2022-03-28', '2022-03-29', '1', 'Jumsih', 'jumsih@gmail.com', '070600', 'Jumsih', 6, '2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Administrator', 'admin', 'admin', '1');
INSERT INTO `users` VALUES (3, 'Resepsionis', 'resepsionis', 'resepsionis', '2');

SET FOREIGN_KEY_CHECKS = 1;
