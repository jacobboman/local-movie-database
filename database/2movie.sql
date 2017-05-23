/*
Navicat MySQL Data Transfer

Source Server         : bourbon
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : 2movie

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2017-05-23 16:53:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `movie_professional`
-- ----------------------------
DROP TABLE IF EXISTS `movie_professional`;
CREATE TABLE `movie_professional` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `actor` int(11) DEFAULT NULL,
  `director` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ref_id`),
  KEY `movie_id` (`movie_id`),
  KEY `pro_ref` (`pro_id`) USING BTREE,
  CONSTRAINT `movie_professional_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `movie_professional_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `professionals` (`pro_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of movie_professional
-- ----------------------------
INSERT INTO `movie_professional` VALUES ('1', '1', '1', '1', '0', '2017-05-21 17:04:24', '2017-05-21 17:04:26');
INSERT INTO `movie_professional` VALUES ('2', '1', '10', '1', '0', '2017-05-21 17:04:57', '2017-05-21 17:05:00');
INSERT INTO `movie_professional` VALUES ('3', '1', '9', '1', '0', '2017-05-21 17:06:16', '2017-05-21 17:06:18');
INSERT INTO `movie_professional` VALUES ('4', '1', '16', '0', '1', '2017-05-21 17:07:34', '2017-05-21 17:07:38');
INSERT INTO `movie_professional` VALUES ('5', '2', '1', '1', '0', '2017-05-21 17:08:07', '2017-05-21 17:08:10');
INSERT INTO `movie_professional` VALUES ('6', '2', '2', '0', '1', '2017-05-21 17:08:26', '2017-05-21 17:08:29');
INSERT INTO `movie_professional` VALUES ('7', '2', '14', '1', '0', '2017-05-21 17:09:52', '2017-05-21 17:09:55');
INSERT INTO `movie_professional` VALUES ('8', '2', '15', '1', '0', '2017-05-21 17:10:25', '2017-05-21 17:10:28');
INSERT INTO `movie_professional` VALUES ('9', '3', '2', '0', '1', '2017-05-21 17:10:55', '2017-05-21 17:10:59');
INSERT INTO `movie_professional` VALUES ('10', '3', '12', '1', '0', '2017-05-21 17:11:43', '2017-05-21 17:11:46');
INSERT INTO `movie_professional` VALUES ('11', '3', '14', '1', '0', '2017-05-21 17:12:05', '2017-05-21 17:12:09');
INSERT INTO `movie_professional` VALUES ('12', '3', '13', '1', '0', '2017-05-21 17:12:30', '2017-05-21 17:12:33');
INSERT INTO `movie_professional` VALUES ('13', '4', '2', '0', '1', '2017-05-21 17:13:12', '2017-05-21 17:13:15');
INSERT INTO `movie_professional` VALUES ('14', '4', '5', '1', '0', '2017-05-21 17:13:59', '2017-05-21 17:14:02');
INSERT INTO `movie_professional` VALUES ('15', '4', '11', '1', '0', '2017-05-21 17:14:51', '2017-05-21 17:14:57');
INSERT INTO `movie_professional` VALUES ('16', '4', '4', '1', '0', '2017-05-21 17:15:42', '2017-05-21 17:15:44');
INSERT INTO `movie_professional` VALUES ('17', '4', '3', '1', '0', '2017-05-21 17:16:13', '2017-05-21 17:16:15');
INSERT INTO `movie_professional` VALUES ('18', '5', '6', '0', '1', '2017-05-21 17:16:32', '2017-05-21 17:16:34');
INSERT INTO `movie_professional` VALUES ('19', '5', '7', '1', '0', '2017-05-21 17:16:48', '2017-05-21 17:16:50');
INSERT INTO `movie_professional` VALUES ('20', '5', '8', '1', '0', '2017-05-21 17:17:04', '2017-05-21 17:17:07');

-- ----------------------------
-- Table structure for `movies`
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES ('1', 'Die Hard', '1988', '131', 'Action', 'English', 'USA', '2017-05-21 15:53:29', '2017-05-21 13:53:34');
INSERT INTO `movies` VALUES ('2', 'Moonrise Kingdom', '2012', '94', 'Adventure', 'English', 'USA', '2017-05-21 15:53:34', '2017-05-21 13:53:37');
INSERT INTO `movies` VALUES ('3', 'The Grand Budapest Hotel', '2014', '99', 'Adventure', 'English', 'USA', '2017-05-21 15:53:37', '2017-05-21 13:53:40');
INSERT INTO `movies` VALUES ('4', 'The Royal Tennenbaums', '2001', '110', 'Comedy', 'English', 'USA', '2017-05-21 15:53:41', '2017-05-21 13:53:43');
INSERT INTO `movies` VALUES ('5', 'Vinterviken', '1996', '98', 'Romance', 'Swedish', 'Sweden', '2017-05-21 15:53:43', '2017-05-21 13:53:49');

-- ----------------------------
-- Table structure for `professionals`
-- ----------------------------
DROP TABLE IF EXISTS `professionals`;
CREATE TABLE `professionals` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `birth_year` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of professionals
-- ----------------------------
INSERT INTO `professionals` VALUES ('1', 'Bruce Willis', '1955', '0', '2017-05-21 15:54:56', '2017-05-21 13:55:32');
INSERT INTO `professionals` VALUES ('2', 'Wes Andersson', '1969', '0', '2017-05-21 15:55:57', '2017-05-21 15:56:10');
INSERT INTO `professionals` VALUES ('3', 'Owen Wilson', '1968', '0', '2017-05-21 15:57:24', '2017-05-21 15:57:29');
INSERT INTO `professionals` VALUES ('4', 'Ben Stiller', '1965', '0', '2017-05-21 15:58:00', '2017-05-21 15:58:04');
INSERT INTO `professionals` VALUES ('5', 'Gene Hackman', '1930', '0', '2017-05-21 15:59:05', '2017-05-21 15:59:08');
INSERT INTO `professionals` VALUES ('6', 'Harald Hamrel', '1960', '0', '2017-05-21 15:59:53', '2017-05-21 15:59:55');
INSERT INTO `professionals` VALUES ('7', 'David Tainton', '1976', '0', '2017-05-21 16:00:43', '2017-05-21 16:00:46');
INSERT INTO `professionals` VALUES ('8', 'Lina Englund', '1975', '1', '2017-05-21 16:01:31', '2017-05-21 16:01:33');
INSERT INTO `professionals` VALUES ('9', 'Bonnie Bedaelia', '1948', '1', '2017-05-21 16:02:27', '2017-05-21 16:02:31');
INSERT INTO `professionals` VALUES ('10', 'Alan Rickman', '1946', '0', '2017-05-21 16:03:17', '2017-05-21 16:03:20');
INSERT INTO `professionals` VALUES ('11', 'Anjelica Huston', '1951', '1', '2017-05-21 16:04:24', '2017-05-21 16:04:27');
INSERT INTO `professionals` VALUES ('12', 'Ralph Fiennes', '1962', '0', '2017-05-21 16:06:36', '2017-05-21 16:06:39');
INSERT INTO `professionals` VALUES ('13', 'Willem Dafoe', '1955', '0', '2017-05-21 16:07:30', '2017-05-21 16:07:33');
INSERT INTO `professionals` VALUES ('14', 'Bill Murray', '1950', '0', '2017-05-21 16:09:17', '2017-05-21 16:09:20');
INSERT INTO `professionals` VALUES ('15', 'Tilda Swinton', '1960', '1', '2017-05-21 16:10:22', '2017-05-21 16:10:25');
INSERT INTO `professionals` VALUES ('16', 'John McTiernan', '1951', '0', '2017-05-21 17:07:14', '2017-05-21 17:07:17');
