SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'admin', 'Administrator');
INSERT INTO `groups` VALUES ('2', 'members', 'Member');

-- ----------------------------
-- Table structure for `itemoffers`
-- ----------------------------
DROP TABLE IF EXISTS `itemoffers`;
CREATE TABLE `itemoffers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mcitem_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `stackable` tinyint(1) NOT NULL DEFAULT '1',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(10) unsigned NOT NULL,
  `updated_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of itemoffers
-- ----------------------------
INSERT INTO `itemoffers` VALUES ('1', '2', '1', '10', '1', '1', '1379868179', '1379868179');
INSERT INTO `itemoffers` VALUES ('2', '2', '10', '90', '1', '1', '1379868179', '1379868179');
INSERT INTO `itemoffers` VALUES ('3', '102', '1', '1000', '1', '1', '1379868179', '1379868179');

-- ----------------------------
-- Table structure for `login_attempts`
-- ----------------------------
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for `mcitems`
-- ----------------------------
DROP TABLE IF EXISTS `mcitems`;
CREATE TABLE `mcitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_damage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(10) unsigned NOT NULL,
  `updated_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mcitems
-- ----------------------------
INSERT INTO `mcitems` VALUES ('1', '0', '0', 'Air', '0', '0', '0', '0');
INSERT INTO `mcitems` VALUES ('2', '1', '0', 'Stone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('3', '2', '0', 'Grass', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('4', '3', '0', 'Dirt', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('5', '4', '0', 'Cobblestone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('6', '5', '0', 'Oak Wood Plank', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('7', '5', '1', 'Spruce Wood Plank', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('8', '5', '2', 'Birch Wood Plank', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('9', '5', '3', 'Jungle Wood Plank', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('10', '6', '0', 'Oak Sapling', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('11', '6', '1', 'Spruce Sapling', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('12', '6', '2', 'Birch Sapling', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('13', '6', '3', 'Jungle Sapling', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('14', '7', '0', 'Bedrock', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('15', '8', '0', 'Water', '0', '0', '0', '0');
INSERT INTO `mcitems` VALUES ('16', '9', '0', 'Stationary Water', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('17', '10', '0', 'Lava', '0', '0', '0', '0');
INSERT INTO `mcitems` VALUES ('18', '11', '0', 'Stationary Lava', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('19', '12', '0', 'Sand', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('20', '13', '0', 'Gravel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('21', '14', '0', 'Gold Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('22', '15', '0', 'Iron Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('23', '16', '0', 'Coal Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('24', '17', '0', 'Oak Wood', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('25', '17', '1', 'Spruce Wood', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('26', '17', '2', 'Birch Wood', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('27', '17', '3', 'Jungle Wood', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('28', '18', '0', 'Oak Leaves', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('29', '18', '1', 'Spruce Leaves', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('30', '18', '2', 'Birch Leaves', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('31', '18', '3', 'Jungle Leaves', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('32', '19', '0', 'Sponge', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('33', '20', '0', 'Glass', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('34', '21', '0', 'Lapis Lazuli Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('35', '22', '0', 'Lapis Lazuli Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('36', '23', '0', 'Dispenser', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('37', '24', '0', 'Sandstone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('38', '24', '1', 'Chiseled Sandstone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('39', '24', '2', 'Smooth Sandstone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('40', '25', '0', 'Note Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('41', '26', '0', 'Bed Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('42', '27', '0', 'Powered Rail', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('43', '28', '0', 'Detector Rail', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('44', '29', '0', 'Sticky Piston', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('45', '30', '0', 'Web', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('46', '31', '0', 'Dead Shrub', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('47', '31', '1', 'Grass', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('48', '31', '2', 'Fern', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('49', '32', '0', 'Dead Shrub', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('50', '33', '0', 'Piston', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('51', '34', '0', 'Piston Head', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('52', '35', '0', 'White Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('53', '35', '1', 'Orange Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('54', '35', '2', 'Magenta Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('55', '35', '3', 'Light Blue Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('56', '35', '4', 'Yellow Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('57', '35', '5', 'Light Green Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('58', '35', '6', 'Pink Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('59', '35', '7', 'Gray Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('60', '35', '8', 'Light Gray Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('61', '35', '9', 'Cyan Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('62', '35', '10', 'Purple Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('63', '35', '11', 'Blue Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('64', '35', '12', 'Brown Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('65', '35', '13', 'Dark Green Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('66', '35', '14', 'Red Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('67', '35', '15', 'Black Wool', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('68', '37', '0', 'Dandelion', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('69', '38', '0', 'Rose', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('70', '39', '0', 'Brown Mushroom', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('71', '40', '0', 'Red Mushroom', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('72', '41', '0', 'Gold Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('73', '42', '0', 'Iron Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('74', '43', '0', 'Double Stone Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('75', '43', '1', 'Double Sandstone Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('76', '43', '2', 'Double Wooden Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('77', '43', '3', 'Double Cobblestone Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('78', '43', '4', 'Double Brick Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('79', '43', '5', 'Double Stone Brick Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('80', '43', '6', 'Double Nether Brick Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('81', '43', '7', 'Double Quartz Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('82', '44', '0', 'Stone Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('83', '44', '1', 'Sandstone Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('84', '44', '2', 'Wooden Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('85', '44', '3', 'Cobblestone Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('86', '44', '4', 'Brick Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('87', '44', '5', 'Stone Brick Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('88', '44', '6', 'Nether Brick Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('89', '44', '7', 'Quartz Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('90', '45', '0', 'Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('91', '46', '0', 'TNT', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('92', '47', '0', 'Bookshelf', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('93', '48', '0', 'Mossy Cobblestone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('94', '49', '0', 'Obsidian', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('95', '50', '0', 'Torch', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('96', '51', '0', 'Fire', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('97', '52', '0', 'Monster Spawner', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('98', '53', '0', 'Oak Wood Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('99', '54', '0', 'Chest', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('100', '55', '0', 'Redstone Wire', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('101', '56', '0', 'Diamond Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('102', '57', '0', 'Diamond Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('103', '58', '0', 'Workbench', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('104', '59', '0', 'Wheat Crops', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('105', '60', '0', 'Soil', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('106', '61', '0', 'Furnace', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('107', '62', '0', 'Burning Furnace', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('108', '63', '0', 'Sign Post', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('109', '64', '0', 'Wooden Door Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('110', '65', '0', 'Ladder', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('111', '66', '0', 'Rails', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('112', '67', '0', 'Cobblestone Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('113', '68', '0', 'Wall Sign', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('114', '69', '0', 'Lever', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('115', '70', '0', 'Stone Pressure Plate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('116', '71', '0', 'Iron Door Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('117', '72', '0', 'Wooden Pressure Plate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('118', '73', '0', 'Redstone Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('119', '74', '0', 'Glowing Redstone Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('120', '75', '0', 'Redstone Torch (off)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('121', '76', '0', 'Redstone Torch (on)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('122', '77', '0', 'Stone Button', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('123', '78', '0', 'Snow', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('124', '79', '0', 'Ice', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('125', '80', '0', 'Snow Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('126', '81', '0', 'Cactus', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('127', '82', '0', 'Clay', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('128', '83', '0', 'Sugar Cane', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('129', '84', '0', 'Jukebox', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('130', '85', '0', 'Fence', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('131', '86', '0', 'Pumpkin', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('132', '87', '0', 'Netherrack', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('133', '88', '0', 'Soul Sand', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('134', '89', '0', 'Glowstone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('135', '90', '0', 'Portal', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('136', '91', '0', 'Jack-O-Lantern', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('137', '92', '0', 'Cake Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('138', '93', '0', 'Redstone Repeater Block (off)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('139', '94', '0', 'Redstone Repeater Block (on)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('140', '95', '0', 'Locked Chest', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('141', '96', '0', 'Trapdoor', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('142', '97', '0', 'Stone (Silverfish)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('143', '97', '1', 'Cobblestone (Silverfish)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('144', '97', '2', 'Stone Brick (Silverfish)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('145', '98', '0', 'Stone Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('146', '98', '1', 'Mossy Stone Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('147', '98', '2', 'Cracked Stone Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('148', '98', '3', 'Chiseled Stone Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('149', '99', '0', 'Red Mushroom Cap', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('150', '100', '0', 'Brown Mushroom Cap', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('151', '101', '0', 'Iron Bars', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('152', '102', '0', 'Glass Pane', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('153', '103', '0', 'Melon Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('154', '104', '0', 'Pumpkin Stem', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('155', '105', '0', 'Melon Stem', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('156', '106', '0', 'Vines', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('157', '107', '0', 'Fence Gate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('158', '108', '0', 'Brick Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('159', '109', '0', 'Stone Brick Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('160', '110', '0', 'Mycelium', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('161', '111', '0', 'Lily Pad', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('162', '112', '0', 'Nether Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('163', '113', '0', 'Nether Brick Fence', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('164', '114', '0', 'Nether Brick Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('165', '115', '0', 'Nether Wart', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('166', '116', '0', 'Enchantment Table', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('167', '117', '0', 'Brewing Stand', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('168', '118', '0', 'Cauldron', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('169', '119', '0', 'End Portal', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('170', '120', '0', 'End Portal Frame', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('171', '121', '0', 'End Stone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('172', '122', '0', 'Dragon Egg', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('173', '123', '0', 'Redstone Lamp (inactive)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('174', '124', '0', 'Redstone Lamp (active)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('175', '125', '0', 'Double Oak Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('176', '125', '1', 'Double Spruce Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('177', '125', '2', 'Double Birch Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('178', '125', '3', 'Double Jungle Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('179', '126', '0', 'Oak Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('180', '126', '1', 'Spruce Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('181', '126', '2', 'Birch Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('182', '126', '3', 'Jungle Wood Slab', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('183', '127', '0', 'Cocoa Plant', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('184', '128', '0', 'Sandstone Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('185', '129', '0', 'Emerald Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('186', '130', '0', 'Ender Chest', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('187', '131', '0', 'Tripwire Hook', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('188', '132', '0', 'Tripwire', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('189', '133', '0', 'Emerald Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('190', '134', '0', 'Spruce Wood Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('191', '135', '0', 'Birch Wood Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('192', '136', '0', 'Jungle Wood Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('193', '137', '0', 'Command Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('194', '138', '0', 'Beacon Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('195', '139', '0', 'Cobblestone Wall', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('196', '139', '1', 'Mossy Cobblestone Wall', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('197', '140', '0', 'Flower Pot', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('198', '141', '0', 'Carrots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('199', '142', '0', 'Potatoes', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('200', '143', '0', 'Wooden Button', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('201', '144', '0', 'Mob Head', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('202', '145', '0', 'Anvil', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('203', '146', '0', 'Trapped Chest', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('204', '147', '0', 'Weighted Pressure Plate (light)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('205', '148', '0', 'Weighted Pressure Plate (heavy)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('206', '149', '0', 'Redstone Comparator (inactive)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('207', '150', '0', 'Redstone Comparator (active)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('208', '151', '0', 'Daylight Sensor', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('209', '152', '0', 'Redstone Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('210', '153', '0', 'Nether Quartz Ore', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('211', '154', '0', 'Hopper', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('212', '155', '0', 'Quartz Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('213', '155', '1', 'Chiseled Quartz Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('214', '155', '2', 'Pillar Quartz Block', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('215', '156', '0', 'Quartz Stairs', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('216', '157', '0', 'Activator Rail', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('217', '158', '0', 'Dropper', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('218', '256', '0', 'Iron Shovel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('219', '257', '0', 'Iron Pickaxe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('220', '258', '0', 'Iron Axe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('221', '259', '0', 'Flint and Steel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('222', '260', '0', 'Apple', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('223', '261', '0', 'Bow', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('224', '262', '0', 'Arrow', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('225', '263', '0', 'Coal', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('226', '263', '1', 'Charcoal', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('227', '264', '0', 'Diamond', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('228', '265', '0', 'Iron Ingot', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('229', '266', '0', 'Gold Ingot', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('230', '267', '0', 'Iron Sword', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('231', '268', '0', 'Wooden Sword', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('232', '269', '0', 'Wooden Shovel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('233', '270', '0', 'Wooden Pickaxe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('234', '271', '0', 'Wooden Axe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('235', '272', '0', 'Stone Sword', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('236', '273', '0', 'Stone Shovel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('237', '274', '0', 'Stone Pickaxe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('238', '275', '0', 'Stone Axe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('239', '276', '0', 'Diamond Sword', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('240', '277', '0', 'Diamond Shovel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('241', '278', '0', 'Diamond Pickaxe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('242', '279', '0', 'Diamond Axe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('243', '280', '0', 'Stick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('244', '281', '0', 'Bowl', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('245', '282', '0', 'Mushroom Soup', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('246', '283', '0', 'Gold Sword', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('247', '284', '0', 'Gold Shovel', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('248', '285', '0', 'Gold Pickaxe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('249', '286', '0', 'Gold Axe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('250', '287', '0', 'String', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('251', '288', '0', 'Feather', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('252', '289', '0', 'Sulphur', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('253', '290', '0', 'Wooden Hoe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('254', '291', '0', 'Stone Hoe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('255', '292', '0', 'Iron Hoe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('256', '293', '0', 'Diamond Hoe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('257', '294', '0', 'Gold Hoe', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('258', '295', '0', 'Wheat Seeds', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('259', '296', '0', 'Wheat', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('260', '297', '0', 'Bread', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('261', '298', '0', 'Leather Helmet', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('262', '299', '0', 'Leather Chestplate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('263', '300', '0', 'Leather Leggings', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('264', '301', '0', 'Leather Boots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('265', '302', '0', 'Chainmail Helmet', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('266', '303', '0', 'Chainmail Chestplate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('267', '304', '0', 'Chainmail Leggings', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('268', '305', '0', 'Chainmail Boots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('269', '306', '0', 'Iron Helmet', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('270', '307', '0', 'Iron Chestplate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('271', '308', '0', 'Iron Leggings', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('272', '309', '0', 'Iron Boots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('273', '310', '0', 'Diamond Helmet', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('274', '311', '0', 'Diamond Chestplate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('275', '312', '0', 'Diamond Leggings', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('276', '313', '0', 'Diamond Boots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('277', '314', '0', 'Gold Helmet', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('278', '315', '0', 'Gold Chestplate', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('279', '316', '0', 'Gold Leggings', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('280', '317', '0', 'Gold Boots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('281', '318', '0', 'Flint', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('282', '319', '0', 'Raw Porkchop', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('283', '320', '0', 'Cooked Porkchop', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('284', '321', '0', 'Painting', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('285', '322', '0', 'Golden Apple', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('286', '322', '1', 'Enchanted Golden Apple', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('287', '323', '0', 'Sign', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('288', '324', '0', 'Wooden Door', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('289', '325', '0', 'Bucket', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('290', '326', '0', 'Water Bucket', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('291', '327', '0', 'Lava Bucket', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('292', '328', '0', 'Minecart', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('293', '329', '0', 'Saddle', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('294', '330', '0', 'Iron Door', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('295', '331', '0', 'Redstone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('296', '332', '0', 'Snowball', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('297', '333', '0', 'Boat', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('298', '334', '0', 'Leather', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('299', '335', '0', 'Milk Bucket', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('300', '336', '0', 'Clay Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('301', '337', '0', 'Clay Balls', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('302', '338', '0', 'Sugarcane', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('303', '339', '0', 'Paper', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('304', '340', '0', 'Book', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('305', '341', '0', 'Slimeball', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('306', '342', '0', 'Storage Minecart', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('307', '343', '0', 'Powered Minecart', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('308', '344', '0', 'Egg', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('309', '345', '0', 'Compass', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('310', '346', '0', 'Fishing Rod', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('311', '347', '0', 'Clock', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('312', '348', '0', 'Glowstone Dust', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('313', '349', '0', 'Raw Fish', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('314', '350', '0', 'Cooked Fish', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('315', '351', '0', 'Ink Sack', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('316', '351', '1', 'Rose Red', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('317', '351', '2', 'Cactus Green', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('318', '351', '3', 'Coco Beans', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('319', '351', '4', 'Lapis Lazuli', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('320', '351', '5', 'Purple Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('321', '351', '6', 'Cyan Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('322', '351', '7', 'Light Gray Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('323', '351', '8', 'Gray Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('324', '351', '9', 'Pink Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('325', '351', '10', 'Lime Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('326', '351', '11', 'Dandelion Yellow', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('327', '351', '12', 'Light Blue Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('328', '351', '13', 'Magenta Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('329', '351', '14', 'Orange Dye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('330', '351', '15', 'Bone Meal', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('331', '352', '0', 'Bone', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('332', '353', '0', 'Sugar', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('333', '354', '0', 'Cake', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('334', '355', '0', 'Bed', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('335', '356', '0', 'Redstone Repeater', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('336', '357', '0', 'Cookie', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('337', '358', '0', 'Map', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('338', '359', '0', 'Shears', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('339', '360', '0', 'Melon', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('340', '361', '0', 'Pumpkin Seeds', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('341', '362', '0', 'Melon Seeds', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('342', '363', '0', 'Raw Beef', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('343', '364', '0', 'Steak', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('344', '365', '0', 'Raw Chicken', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('345', '366', '0', 'Cooked Chicken', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('346', '367', '0', 'Rotten Flesh', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('347', '368', '0', 'Ender Pearl', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('348', '369', '0', 'Blaze Rod', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('349', '370', '0', 'Ghast Tear', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('350', '371', '0', 'Gold Nugget', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('351', '372', '0', 'Nether Wart Seeds', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('352', '373', '0', 'Potion', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('353', '374', '0', 'Glass Bottle', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('354', '375', '0', 'Spider Eye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('355', '376', '0', 'Fermented Spider Eye', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('356', '377', '0', 'Blaze Powder', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('357', '378', '0', 'Magma Cream', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('358', '379', '0', 'Brewing Stand', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('359', '380', '0', 'Cauldron', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('360', '381', '0', 'Eye of Ender', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('361', '382', '0', 'Glistering Melon', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('362', '383', '0', 'Spawn Egg', '0', '0', '0', '0');
INSERT INTO `mcitems` VALUES ('363', '383', '50', 'Spawn Creeper', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('364', '383', '51', 'Spawn Skeleton', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('365', '383', '52', 'Spawn Spider', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('366', '383', '54', 'Spawn Zombie', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('367', '383', '55', 'Spawn Slime', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('368', '383', '56', 'Spawn Ghast', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('369', '383', '57', 'Spawn Pigman', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('370', '383', '58', 'Spawn Enderman', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('371', '383', '59', 'Spawn Cave Spider', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('372', '383', '60', 'Spawn Silverfish', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('373', '383', '61', 'Spawn Blaze', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('374', '383', '62', 'Spawn Magma Cube', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('375', '383', '65', 'Spawn Bat', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('376', '383', '66', 'Spawn Witch', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('377', '383', '90', 'Spawn Pig', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('378', '383', '91', 'Spawn Sheep', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('379', '383', '92', 'Spawn Cow', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('380', '383', '93', 'Spawn Chicken', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('381', '383', '94', 'Spawn Squid', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('382', '383', '95', 'Spawn Wolf', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('383', '383', '96', 'Spawn Mooshroom', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('384', '383', '98', 'Spawn Ocelot', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('385', '383', '120', 'Spawn Villager', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('386', '384', '0', 'Bottle o\' Enchanting', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('387', '385', '0', 'Fire Charge', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('388', '386', '0', 'Book and Quill', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('389', '387', '0', 'Written Book', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('390', '388', '0', 'Emerald', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('391', '389', '0', 'Item Frame', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('392', '390', '0', 'Flower Pot', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('393', '391', '0', 'Carrots', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('394', '392', '0', 'Potato', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('395', '393', '0', 'Baked Potato', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('396', '394', '0', 'Poisonous Potato', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('397', '395', '0', 'Map', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('398', '396', '0', 'Golden Carrot', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('399', '397', '0', 'Mob Head (Skeleton)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('400', '397', '1', 'Mob Head (Wither Skeleton)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('401', '397', '2', 'Mob Head (Zombie)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('402', '397', '3', 'Mob Head (Human)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('403', '397', '4', 'Mob Head (Creeper)', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('404', '398', '0', 'Carrot on a Stick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('405', '399', '0', 'Nether Star', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('406', '400', '0', 'Pumpkin Pie', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('407', '401', '0', 'Firework Rocket', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('408', '402', '0', 'Firework Star', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('409', '403', '0', 'Enchanted Book', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('410', '404', '0', 'Redstone Comparator', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('411', '405', '0', 'Nether Brick', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('412', '406', '0', 'Nether Quartz', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('413', '407', '0', 'Minecart with TNT', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('414', '408', '0', 'Minecart with Hopper', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('415', '2256', '0', '13 Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('416', '2257', '0', 'Cat Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('417', '2258', '0', 'Blocks Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('418', '2259', '0', 'Chirp Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('419', '2260', '0', 'Far Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('420', '2261', '0', 'Mall Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('421', '2262', '0', 'Mellohi Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('422', '2263', '0', 'Stal Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('423', '2264', '0', 'Strad Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('424', '2265', '0', 'Ward Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('425', '2266', '0', '11 Disc', '0', '1', '0', '0');
INSERT INTO `mcitems` VALUES ('426', '2267', '0', 'Wait Disc', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 0x7F000001, 'administrator', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', null, null, '9d029802e28cd9c768e8e62277c0df49ec65c48c', '1268889823', '1383439119', '1', 'Admin', 'Persson', 'ADMIN', '0');

-- ----------------------------
-- Table structure for `users_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES ('5', '1', '1');
INSERT INTO `users_groups` VALUES ('6', '1', '2');
