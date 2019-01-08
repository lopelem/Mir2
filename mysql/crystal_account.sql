/*
Navicat MySQL Data Transfer

Source Server         : loong
Source Server Version : 50137
Source Host           : 127.0.0.1:3316
Source Database       : crystal_account

Target Server Type    : MYSQL
Target Server Version : 50137
File Encoding         : 65001

Date: 2019-01-08 17:31:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `IndexID` int(11) NOT NULL DEFAULT '0',
  `AccountID` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `Password` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `UserName` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `BirthDate` datetime DEFAULT '0000-00-00 00:00:00',
  `SecretQuestion` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `SecretAnswer` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `EMailAddress` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `CreationIP` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `CreationDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Banned` tinyint(1) DEFAULT '0',
  `BanReason` varchar(60) COLLATE utf8_unicode_ci DEFAULT '',
  `ExpiryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `WrongPasswordCount` int(11) DEFAULT '0',
  `AccountResize` int(11) DEFAULT '80',
  `LastIP` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `LastDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Gold` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `Credit` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `AdminAccount` tinyint(1) DEFAULT '0',
  KEY `AccountID` (`AccountID`),
  KEY `IndexID` (`IndexID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('0', '12345', '12345', 'kenlee', '0001-01-01 00:00:00', '', '', '', '', '0001-01-01 00:00:00', '0', '', '0001-01-01 00:00:00', '0', '80', '192.168.1.105', '2018-03-30 17:47:47', '9880', '0', '0');
INSERT INTO `account` VALUES ('2', '123456', '123456', 'kenlee', '0001-01-01 00:00:00', '', '', '', '183.194.155.196', '2018-03-28 21:45:43', '0', '', '0000-00-00 00:00:00', '0', '80', '183.194.155.196', '2018-03-29 20:51:40', '0', '0', '0');

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions` (
  `AuctionID` bigint(11) NOT NULL DEFAULT '0',
  `NameSeller` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ConsignmentDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Price` int(11) NOT NULL DEFAULT '0',
  `CharacterIndex` int(11) DEFAULT '0',
  `Expired` int(1) DEFAULT '0',
  `Sold` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auctions
-- ----------------------------

-- ----------------------------
-- Table structure for auctionsitems
-- ----------------------------
DROP TABLE IF EXISTS `auctionsitems`;
CREATE TABLE `auctionsitems` (
  `UniqueID` bigint(20) NOT NULL DEFAULT '0',
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Store` varchar(1000) COLLATE utf8_unicode_ci DEFAULT 'Auctions',
  `Position` int(11) DEFAULT '0',
  `ItemName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '0',
  `ItemIndex` int(11) DEFAULT '0',
  `AuctionID` bigint(20) DEFAULT '0',
  `Attached` bigint(20) DEFAULT '0',
  `IsAttached` int(1) DEFAULT '0',
  `IsAwake` int(1) DEFAULT '0',
  `Awake` int(1) DEFAULT '0',
  `AwakeType` int(3) DEFAULT '0',
  `CurrentDura` smallint(11) DEFAULT '0',
  `MaxDura` smallint(11) DEFAULT '0',
  `Count` smallint(11) DEFAULT '0',
  `MC` int(3) DEFAULT '0',
  `SC` int(3) DEFAULT '0',
  `AC` int(3) DEFAULT '0',
  `DC` int(3) DEFAULT '0',
  `MAC` int(3) DEFAULT '0',
  `Accuracy` tinyint(4) DEFAULT '0',
  `Agility` int(3) DEFAULT '0',
  `HP` smallint(11) DEFAULT '0',
  `MP` smallint(11) DEFAULT '0',
  `AttackSpeed` int(3) DEFAULT '0',
  `Luck` int(3) DEFAULT '0',
  `SoulBoundId` int(11) DEFAULT '0',
  `Identified` int(3) DEFAULT '0',
  `Cursed` int(3) DEFAULT '0',
  `Strong` int(3) DEFAULT '0',
  `MagicResist` int(3) DEFAULT '0',
  `PoisonResist` int(3) DEFAULT '0',
  `HealthRecovery` int(3) DEFAULT '0',
  `ManaRecovery` int(3) DEFAULT '0',
  `PoisonRecovery` int(3) DEFAULT '0',
  `CriticalRate` int(3) DEFAULT '0',
  `CriticalDamage` int(3) DEFAULT '0',
  `Freezing` int(3) DEFAULT '0',
  `PoisonAttack` int(3) DEFAULT '0',
  `Slots` int(3) DEFAULT '0',
  `GemCount` int(11) DEFAULT '0',
  `RefinedValue` int(3) DEFAULT '0',
  `RefineAdded` int(3) DEFAULT '0',
  `WeddingRing` int(1) DEFAULT '0',
  `ExpireInfo` datetime DEFAULT '0001-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auctionsitems
-- ----------------------------

-- ----------------------------
-- Table structure for awake
-- ----------------------------
DROP TABLE IF EXISTS `awake`;
CREATE TABLE `awake` (
  `UniqueID` int(11) NOT NULL DEFAULT '0',
  `Value` int(11) DEFAULT '0',
  `Position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of awake
-- ----------------------------

-- ----------------------------
-- Table structure for buff
-- ----------------------------
DROP TABLE IF EXISTS `buff`;
CREATE TABLE `buff` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Type` int(11) NOT NULL DEFAULT '0',
  `Visible` int(1) DEFAULT '0',
  `ObjectID` int(11) DEFAULT '0',
  `Infinite` int(1) DEFAULT '0',
  `ExpireTime` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of buff
-- ----------------------------

-- ----------------------------
-- Table structure for buff_value
-- ----------------------------
DROP TABLE IF EXISTS `buff_value`;
CREATE TABLE `buff_value` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Value` int(20) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of buff_value
-- ----------------------------

-- ----------------------------
-- Table structure for characterinfo
-- ----------------------------
DROP TABLE IF EXISTS `characterinfo`;
CREATE TABLE `characterinfo` (
  `IndexID` int(11) NOT NULL DEFAULT '0',
  `AccountIndex` int(11) NOT NULL DEFAULT '0',
  `AccountID` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Level` smallint(11) DEFAULT '0',
  `Class` int(11) DEFAULT '0',
  `Gender` int(11) DEFAULT '0',
  `Hair` int(11) NOT NULL DEFAULT '0',
  `CreationIP` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `CreationDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Banned` int(1) DEFAULT '0',
  `BanReason` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `ExpiryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `LastIP` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `LastDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Deleted` int(1) DEFAULT '0',
  `DeleteDate` datetime DEFAULT '0000-00-00 00:00:00',
  `CurrentMapIndex` smallint(11) DEFAULT '0',
  `CurrentLocation_X` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `CurrentLocation_Y` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `Direction` int(3) DEFAULT '4',
  `BindMapIndex` smallint(11) DEFAULT '0',
  `BindLocation_X` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `BindLocation_Y` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `HP` smallint(11) DEFAULT '0',
  `MP` smallint(11) DEFAULT '0',
  `Experience` bigint(20) DEFAULT '0',
  `AMode` int(1) DEFAULT '0',
  `PMode` int(1) DEFAULT '0',
  `PKPoints` int(11) DEFAULT '0',
  `Thrusting` int(1) DEFAULT '0',
  `HalfMoon` int(1) DEFAULT '0',
  `CrossHalfMoon` int(1) DEFAULT '0',
  `DoubleSlash` int(1) DEFAULT '0',
  `MentalState` bit(2) NOT NULL DEFAULT b'0',
  `AllowGroup` int(1) DEFAULT '0',
  `GuildIndex` int(11) DEFAULT '-1',
  `AllowTrade` int(1) DEFAULT '0',
  `Married` int(3) DEFAULT '0',
  `MarriedName` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MarriedDate` datetime DEFAULT '0000-00-00 00:00:00',
  `Mentor` int(3) DEFAULT '0',
  `MentorDate` datetime DEFAULT '0000-00-00 00:00:00',
  `isMentor` int(1) DEFAULT '0',
  `MentorExp` bigint(20) DEFAULT '0',
  `MentorName` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `PearlCount` int(11) DEFAULT '0',
  `InventoryResize` int(11) DEFAULT '46',
  `CollectTime` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of characterinfo
-- ----------------------------
INSERT INTO `characterinfo` VALUES ('3', '0', '12345', 'kenlee', '3', '1', '0', '6', '127.0.0.1', '2018-03-26 16:13:28', '0', '', '0001-01-01 00:00:00', '127.0.0.1', '2018-03-28 19:20:46', '1', '2018-03-28 19:20:51', '386', '94', '72', '5', '1', '288', '616', '0', '0', '70', '0', '0', '0', '0', '0', '0', '0', '\0', '0', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');
INSERT INTO `characterinfo` VALUES ('4', '0', '12345', 'kenlen', '46', '0', '0', '3', '127.0.0.1', '2018-03-27 18:10:20', '0', '', '0001-01-01 00:00:00', '192.168.1.1', '2018-03-30 10:09:19', '1', '2018-03-30 17:48:00', '1', '320', '295', '3', '1', '329', '269', '0', '0', '33', '0', '0', '0', '0', '0', '0', '0', '\0', '0', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');
INSERT INTO `characterinfo` VALUES ('5', '0', '12345', 'kenllo', '3', '2', '0', '6', '127.0.0.1', '2018-03-28 14:03:21', '0', '', '0001-01-01 00:00:00', '127.0.0.1', '2018-03-28 14:06:23', '1', '2018-03-30 17:47:54', '1', '287', '590', '4', '1', '288', '616', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '\0', '0', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');
INSERT INTO `characterinfo` VALUES ('6', '0', '12345', 'kenlec', '3', '1', '0', '7', '127.0.0.1', '2018-03-28 14:48:13', '0', '', '0001-01-01 00:00:00', '192.168.1.1', '2018-03-29 11:35:43', '1', '2018-03-30 17:47:57', '1', '288', '616', '4', '1', '288', '616', '0', '0', '69', '0', '0', '0', '0', '0', '0', '0', '\0', '1', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');
INSERT INTO `characterinfo` VALUES ('7', '2', '123456', 'jelo', '1', '2', '0', '3', '183.194.155.196', '2018-03-28 21:46:11', '0', '', '0001-01-01 00:00:00', '183.194.155.196', '2018-03-29 20:58:20', '0', '0000-00-00 00:00:00', '1', '289', '615', '3', '1', '288', '616', '0', '0', '75', '0', '0', '0', '0', '0', '0', '0', '\0', '1', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');
INSERT INTO `characterinfo` VALUES ('8', '0', '12345', '李逍遥', '1', '1', '0', '0', '192.168.1.1', '2018-03-30 11:46:51', '0', '', '0001-01-01 00:00:00', '192.168.1.105', '2018-03-30 17:35:10', '0', '0000-00-00 00:00:00', '1', '289', '617', '3', '1', '288', '616', '0', '0', '15', '0', '0', '0', '0', '0', '0', '0', '\0', '0', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');
INSERT INTO `characterinfo` VALUES ('9', '0', '12345', '李炸天', '1', '0', '0', '5', '192.168.1.105', '2018-03-30 17:48:15', '0', '', '0001-01-01 00:00:00', '192.168.1.105', '2018-03-30 17:48:27', '0', '0000-00-00 00:00:00', '1', '287', '612', '7', '1', '288', '616', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '\0', '0', '-1', '0', '0', '', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '46', '0');

-- ----------------------------
-- Table structure for completedquests
-- ----------------------------
DROP TABLE IF EXISTS `completedquests`;
CREATE TABLE `completedquests` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Quest` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Type` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `CompletedQuests` int(11) NOT NULL DEFAULT '0',
  `Finish` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of completedquests
-- ----------------------------

-- ----------------------------
-- Table structure for currentquests
-- ----------------------------
DROP TABLE IF EXISTS `currentquests`;
CREATE TABLE `currentquests` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Quest` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Type` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `IndexID` int(11) DEFAULT '0',
  `KillTask` int(1) DEFAULT '0',
  `ItemTask` int(1) DEFAULT '0',
  `FlagTask` int(1) DEFAULT '0',
  `StartDateTime` datetime DEFAULT '0000-00-00 00:00:00',
  `EndDateTime` datetime DEFAULT '9999-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of currentquests
-- ----------------------------

-- ----------------------------
-- Table structure for flags
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Flags` int(1) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of flags
-- ----------------------------
INSERT INTO `flags` VALUES ('kenlee', '1', '952');
INSERT INTO `flags` VALUES ('kenlen', '1', '952');
INSERT INTO `flags` VALUES ('kenllo', '1', '952');
INSERT INTO `flags` VALUES ('kenlec', '1', '952');
INSERT INTO `flags` VALUES ('jelo', '1', '952');
INSERT INTO `flags` VALUES ('李逍遥', '1', '952');
INSERT INTO `flags` VALUES ('李逍遥', '1', '500');
INSERT INTO `flags` VALUES ('李逍遥', '1', '501');
INSERT INTO `flags` VALUES ('李逍遥', '1', '502');
INSERT INTO `flags` VALUES ('李逍遥', '1', '503');
INSERT INTO `flags` VALUES ('李逍遥', '1', '504');
INSERT INTO `flags` VALUES ('李逍遥', '1', '505');
INSERT INTO `flags` VALUES ('李逍遥', '1', '506');
INSERT INTO `flags` VALUES ('李逍遥', '1', '507');
INSERT INTO `flags` VALUES ('李逍遥', '1', '508');
INSERT INTO `flags` VALUES ('李逍遥', '1', '509');
INSERT INTO `flags` VALUES ('李逍遥', '1', '510');
INSERT INTO `flags` VALUES ('李炸天', '1', '952');

-- ----------------------------
-- Table structure for flagtaskset
-- ----------------------------
DROP TABLE IF EXISTS `flagtaskset`;
CREATE TABLE `flagtaskset` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `IndexID` int(11) DEFAULT '0',
  `Position` bigint(20) DEFAULT '0',
  `Value` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of flagtaskset
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `IndexID` int(11) NOT NULL DEFAULT '0',
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Name` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Blocked` int(1) DEFAULT '0',
  `Memo` varchar(1000) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES ('6', 'jelo', 'kenlec', '0', '');
INSERT INTO `friends` VALUES ('7', 'kenlec', 'jelo', '0', '');

-- ----------------------------
-- Table structure for gameshoplog
-- ----------------------------
DROP TABLE IF EXISTS `gameshoplog`;
CREATE TABLE `gameshoplog` (
  `Value` int(20) DEFAULT NULL,
  `Key_` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gameshoplog
-- ----------------------------

-- ----------------------------
-- Table structure for generalcount
-- ----------------------------
DROP TABLE IF EXISTS `generalcount`;
CREATE TABLE `generalcount` (
  `IndexID` int(20) DEFAULT '1',
  `Version` int(20) DEFAULT '0',
  `CustomVersion` int(20) DEFAULT '0',
  `NextAccountID` int(20) DEFAULT '0',
  `NextCharacterID` int(20) DEFAULT '0',
  `NextUserItemID` bigint(20) DEFAULT '0',
  `GuildList` int(20) DEFAULT '0',
  `NextGuildID` int(20) DEFAULT '0',
  `NextAuctionID` bigint(20) DEFAULT '0',
  `NextMailID` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of generalcount
-- ----------------------------
INSERT INTO `generalcount` VALUES ('1', '75', '0', '2', '9', '135', '0', '0', '343597383680', '3');

-- ----------------------------
-- Table structure for gspurchases
-- ----------------------------
DROP TABLE IF EXISTS `gspurchases`;
CREATE TABLE `gspurchases` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Value` int(20) DEFAULT NULL,
  `Key_` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gspurchases
-- ----------------------------

-- ----------------------------
-- Table structure for intelligentcreatures
-- ----------------------------
DROP TABLE IF EXISTS `intelligentcreatures`;
CREATE TABLE `intelligentcreatures` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `PetType` int(11) DEFAULT '0',
  `CustomName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `PetTypeName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Fullness` smallint(11) DEFAULT '0',
  `SlotIndex` smallint(11) DEFAULT '0',
  `ExpireTime` bigint(20) DEFAULT '0',
  `BlackstoneTime` bigint(20) DEFAULT '0',
  `MaintainFoodTime` bigint(20) DEFAULT '0',
  `PetMode` tinyint(1) DEFAULT '0',
  `PickupGrade` int(11) DEFAULT '0',
  `PetPickupAll` int(1) DEFAULT '1',
  `PetPickupGold` int(1) DEFAULT '0',
  `PetPickupWeapons` int(1) DEFAULT '0',
  `PetPickupArmours` int(1) DEFAULT '0',
  `PetPickupHelmets` int(1) DEFAULT '0',
  `PetPickupBoots` int(1) DEFAULT '0',
  `PetPickupBelts` int(1) DEFAULT '0',
  `PetPickupAccessories` int(1) DEFAULT '0',
  `PetPickupOthers` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of intelligentcreatures
-- ----------------------------

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `UniqueID` bigint(20) NOT NULL DEFAULT '0',
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `ItemIndex` int(11) DEFAULT '0',
  `Store` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `ItemName` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `Attached` bigint(20) DEFAULT '0',
  `IsAttached` int(1) DEFAULT '0',
  `IsAwake` int(1) DEFAULT '0',
  `AwakeType` int(1) DEFAULT '0',
  `Awake` int(1) DEFAULT '0',
  `Position` int(11) DEFAULT '0',
  `CurrentDura` smallint(11) DEFAULT '0',
  `MaxDura` smallint(11) DEFAULT '0',
  `Count` smallint(11) DEFAULT '0',
  `MC` int(3) DEFAULT '0',
  `SC` int(3) DEFAULT '0',
  `AC` int(3) DEFAULT '0',
  `DC` int(3) DEFAULT '0',
  `MAC` int(3) DEFAULT '0',
  `Accuracy` int(3) DEFAULT '0',
  `Agility` int(3) DEFAULT '0',
  `HP` smallint(11) DEFAULT '0',
  `MP` smallint(11) DEFAULT '0',
  `AttackSpeed` int(3) DEFAULT '0',
  `Luck` int(3) DEFAULT '0',
  `SoulBoundId` int(11) DEFAULT '0',
  `Identified` int(3) DEFAULT '0',
  `Cursed` int(3) DEFAULT '0',
  `Strong` int(3) DEFAULT '0',
  `MagicResist` int(3) DEFAULT '0',
  `PoisonResist` int(3) DEFAULT '0',
  `HealthRecovery` int(3) DEFAULT '0',
  `ManaRecovery` int(3) DEFAULT '0',
  `PoisonRecovery` int(3) DEFAULT '0',
  `CriticalRate` int(3) DEFAULT '0',
  `CriticalDamage` int(3) DEFAULT '0',
  `Freezing` int(3) DEFAULT '0',
  `PoisonAttack` int(3) DEFAULT '0',
  `Slots` int(3) DEFAULT '0',
  `GemCount` int(11) DEFAULT '0',
  `RefinedValue` int(3) DEFAULT '0',
  `RefineAdded` int(3) DEFAULT '0',
  `WeddingRing` int(1) DEFAULT '-1',
  `ExpireInfo` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('11', 'kenlee', '221', 'Equipment', '木剑', '0', '0', '0', '0', '0', '0', '4000', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('12', 'kenlee', '317', 'Equipment', '布衣(男)', '0', '0', '0', '0', '0', '1', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('13', 'kenlee', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('14', 'kenlee', '722', 'Equipment', '蜡烛', '0', '0', '0', '0', '0', '3', '5865', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('17', 'kenlen', '317', 'Equipment', '布衣(男)', '0', '0', '0', '0', '0', '1', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('18', 'kenlen', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('19', 'kenlen', '722', 'Equipment', '蜡烛', '0', '0', '0', '0', '0', '3', '3845', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('23', 'kenllo', '221', 'Equipment', '木剑', '0', '0', '0', '0', '0', '0', '3999', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('24', 'kenllo', '317', 'Equipment', '布衣(男)', '0', '0', '0', '0', '0', '1', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('26', 'kenllo', '722', 'Equipment', '蜡烛', '0', '0', '0', '0', '0', '3', '7750', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('27', 'kenllo', '319', 'Inventory', '轻型盔甲(男)', '0', '0', '0', '0', '0', '6', '5527', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('28', 'kenllo', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('30', 'kenllo', '222', 'Inventory', '匕首', '0', '0', '0', '0', '0', '7', '7540', '9000', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('31', 'kenllo', '300', 'Inventory', '铁弓', '0', '0', '0', '0', '0', '8', '3237', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('32', 'kenlec', '221', 'Equipment', '木剑', '0', '0', '0', '0', '0', '0', '3996', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('33', 'kenlec', '317', 'Equipment', '布衣(男)', '0', '0', '0', '0', '0', '1', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('34', 'kenlec', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('36', 'kenlec', '405', 'Inventory', '六角戒指', '0', '0', '0', '0', '0', '6', '4361', '6000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('40', 'jelo', '221', 'Equipment', '木剑', '0', '0', '0', '0', '0', '0', '4000', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('41', 'jelo', '317', 'Equipment', '布衣(男)', '0', '0', '0', '0', '0', '1', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('42', 'jelo', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('43', 'jelo', '722', 'Equipment', '蜡烛', '0', '0', '0', '0', '0', '3', '7490', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('47', 'kenlen', '534', 'Equipment', '金项链', '0', '0', '0', '0', '0', '4', '10000', '10000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('55', 'kenlen', '659', 'Inventory', '魔法药(小)', '0', '0', '0', '0', '0', '1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('56', 'kenlen', '318', 'Inventory', '布衣(女)', '0', '0', '0', '0', '0', '6', '3987', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('57', 'kenlen', '476', 'Equipment', '铁手镯', '0', '0', '0', '0', '0', '6', '2279', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('78', 'kenlen', '225', 'Inventory', '短剑', '0', '0', '0', '0', '0', '7', '5828', '9000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('88', 'kenlen', '404', 'Equipment', '古铜戒指', '0', '0', '0', '0', '0', '8', '2631', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('92', 'kenlen', '405', 'Inventory', '六角戒指', '0', '0', '0', '0', '0', '10', '5697', '6000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('96', 'kenlen', '268', 'Equipment', '半月刀', '0', '0', '0', '0', '0', '0', '12983', '14000', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('104', 'kenlen', '480', 'Equipment', '钢手镯', '0', '0', '0', '0', '0', '5', '2270', '5000', '1', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('110', 'kenlen', '719', 'Inventory', '回城卷', '0', '0', '0', '0', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('111', 'kenlen', '415', 'Equipment', '珍珠戒指', '0', '0', '0', '0', '0', '7', '1687', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('112', 'kenlen', '477', 'Inventory', '小手镯', '0', '0', '0', '0', '0', '11', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('123', '李逍遥', '221', 'Inventory', '木剑', '0', '0', '0', '0', '0', '9', '4000', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('124', '李逍遥', '317', 'Inventory', '布衣(男)', '0', '0', '0', '0', '0', '8', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('125', '李逍遥', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('126', '李逍遥', '722', 'Inventory', '蜡烛', '0', '0', '0', '0', '0', '7', '7785', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0001-01-01 00:00:00');
INSERT INTO `inventory` VALUES ('129', '李逍遥', '1259', 'Inventory', 'TestServerScroll', '0', '0', '0', '0', '0', '6', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('131', '李炸天', '221', 'Inventory', '木剑', '0', '0', '0', '0', '0', '6', '4000', '4000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('132', '李炸天', '317', 'Inventory', '布衣(男)', '0', '0', '0', '0', '0', '7', '5000', '5000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('133', '李炸天', '658', 'Inventory', '金创药(小)', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('134', '李炸天', '722', 'Inventory', '蜡烛', '0', '0', '0', '0', '0', '8', '8000', '8000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');
INSERT INTO `inventory` VALUES ('135', '李炸天', '1259', 'Inventory', 'TestServerScroll', '0', '0', '0', '0', '0', '9', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for itemtaskcount
-- ----------------------------
DROP TABLE IF EXISTS `itemtaskcount`;
CREATE TABLE `itemtaskcount` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IndexID` int(11) DEFAULT '0',
  `Position` bigint(20) DEFAULT '0',
  `Value` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of itemtaskcount
-- ----------------------------

-- ----------------------------
-- Table structure for killtaskcount
-- ----------------------------
DROP TABLE IF EXISTS `killtaskcount`;
CREATE TABLE `killtaskcount` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `IndexID` int(11) DEFAULT '0',
  `Position` int(11) DEFAULT '0',
  `Value` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of killtaskcount
-- ----------------------------

-- ----------------------------
-- Table structure for magics
-- ----------------------------
DROP TABLE IF EXISTS `magics`;
CREATE TABLE `magics` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Spell` smallint(6) DEFAULT '0',
  `Level` bigint(20) DEFAULT '0',
  `Key_` bigint(20) DEFAULT '0',
  `Experience` smallint(11) DEFAULT '0',
  `IsTempSpell` bit(1) DEFAULT b'0',
  `CastTime` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of magics
-- ----------------------------
INSERT INTO `magics` VALUES ('kenlen', '1', '2', '1', '1137', '', '0');
INSERT INTO `magics` VALUES ('kenlen', '2', '0', '2', '261', '', '0');

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `MailID` bigint(20) DEFAULT '0',
  `Sender` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `RecipientIndex` int(20) DEFAULT '0',
  `Message` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Gold` bigint(20) DEFAULT '0',
  `DateSent` datetime DEFAULT '0000-00-00 00:00:00',
  `DateOpened` datetime DEFAULT '0000-00-00 00:00:00',
  `Locked` tinyint(1) DEFAULT '0',
  `Collected` tinyint(1) DEFAULT '0',
  `CanReply` tinyint(1) DEFAULT '0',
  `ItemCount` tinyint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mail
-- ----------------------------
INSERT INTO `mail` VALUES ('2', 'jelo', '6', '', '0', '2018-03-28 21:49:50', '2018-03-28 21:50:19', '0', '1', '1', '0');
INSERT INTO `mail` VALUES ('4', 'kenlec', '7', '', '0', '2018-03-28 21:52:25', '2018-03-29 20:53:40', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for mailitems
-- ----------------------------
DROP TABLE IF EXISTS `mailitems`;
CREATE TABLE `mailitems` (
  `UniqueID` bigint(20) NOT NULL DEFAULT '0',
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `Store` varchar(1000) COLLATE utf8_unicode_ci DEFAULT 'Auctions',
  `Position` int(11) DEFAULT '0',
  `ItemName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '0',
  `ItemIndex` int(11) DEFAULT '0',
  `MailID` bigint(20) DEFAULT '0',
  `Attached` bigint(20) DEFAULT '0',
  `IsAttached` int(1) DEFAULT '0',
  `IsAwake` int(1) DEFAULT '0',
  `Awake` int(1) DEFAULT '0',
  `AwakeType` int(3) DEFAULT '0',
  `CurrentDura` smallint(11) DEFAULT '0',
  `MaxDura` smallint(11) DEFAULT '0',
  `Count` smallint(11) DEFAULT '0',
  `MC` int(3) DEFAULT '0',
  `SC` int(3) DEFAULT '0',
  `AC` int(3) DEFAULT '0',
  `DC` int(3) DEFAULT '0',
  `MAC` int(3) DEFAULT '0',
  `Accuracy` int(3) DEFAULT '0',
  `Agility` int(3) DEFAULT '0',
  `HP` smallint(11) DEFAULT '0',
  `MP` smallint(11) DEFAULT '0',
  `AttackSpeed` int(3) DEFAULT '0',
  `Luck` int(3) DEFAULT '0',
  `SoulBoundId` int(11) DEFAULT '0',
  `Identified` int(3) DEFAULT '0',
  `Cursed` int(3) DEFAULT '0',
  `Strong` int(3) DEFAULT '0',
  `MagicResist` int(3) DEFAULT '0',
  `PoisonResist` int(3) DEFAULT '0',
  `HealthRecovery` int(3) DEFAULT '0',
  `ManaRecovery` int(3) DEFAULT '0',
  `PoisonRecovery` int(3) DEFAULT '0',
  `CriticalRate` int(3) DEFAULT '0',
  `CriticalDamage` int(3) DEFAULT '0',
  `Freezing` int(3) DEFAULT '0',
  `PoisonAttack` int(3) DEFAULT '0',
  `Slots` int(3) DEFAULT '0',
  `GemCount` int(11) DEFAULT '0',
  `RefinedValue` int(3) DEFAULT '0',
  `RefineAdded` int(3) DEFAULT '0',
  `WeddingRing` int(1) DEFAULT '0',
  `ExpireInfo` datetime DEFAULT '0001-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mailitems
-- ----------------------------

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
  `ChName` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MonsterIndex` int(11) DEFAULT NULL,
  `Level` bigint(20) DEFAULT NULL,
  `MaxPetLevel` bigint(20) DEFAULT NULL,
  `Experience` smallint(11) DEFAULT NULL,
  `HP` smallint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pets
-- ----------------------------

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `UniqueID` bigint(20) NOT NULL DEFAULT '0',
  `AccountID` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  `ItemIndex` int(11) DEFAULT '0',
  `Store` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `ItemName` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `Attached` bigint(20) DEFAULT '0',
  `IsAttached` int(1) DEFAULT '0',
  `IsAwake` int(1) DEFAULT '0',
  `AwakeType` int(3) DEFAULT '0',
  `Awake` int(1) DEFAULT '0',
  `Position` int(11) DEFAULT '0',
  `CurrentDura` smallint(11) DEFAULT '0',
  `MaxDura` smallint(11) DEFAULT '0',
  `Count` smallint(11) DEFAULT '0',
  `MC` int(3) DEFAULT '0',
  `SC` int(3) DEFAULT '0',
  `AC` int(3) DEFAULT '0',
  `DC` int(3) DEFAULT '0',
  `MAC` int(3) DEFAULT '0',
  `Accuracy` int(3) DEFAULT '0',
  `Agility` int(3) DEFAULT '0',
  `HP` smallint(11) DEFAULT '0',
  `MP` smallint(11) DEFAULT '0',
  `AttackSpeed` int(3) DEFAULT '0',
  `Luck` int(3) DEFAULT '0',
  `SoulBoundId` int(11) DEFAULT '0',
  `Identified` int(3) DEFAULT '0',
  `Cursed` int(3) DEFAULT '0',
  `Strong` int(3) DEFAULT '0',
  `MagicResist` int(3) DEFAULT '0',
  `PoisonResist` int(3) DEFAULT '0',
  `HealthRecovery` int(3) DEFAULT '0',
  `ManaRecovery` int(3) DEFAULT '0',
  `PoisonRecovery` int(3) DEFAULT '0',
  `CriticalRate` int(3) DEFAULT '0',
  `CriticalDamage` int(3) DEFAULT '0',
  `Freezing` int(3) DEFAULT '0',
  `PoisonAttack` int(3) DEFAULT '0',
  `Slots` int(3) DEFAULT '0',
  `GemCount` int(11) DEFAULT '0',
  `RefinedValue` int(3) DEFAULT '0',
  `RefineAdded` int(3) DEFAULT '0',
  `WeddingRing` int(1) DEFAULT '0',
  `ExpireInfo` datetime DEFAULT '0001-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of storage
-- ----------------------------
