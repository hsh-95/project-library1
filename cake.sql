
SET NAMES UTF8;

DROP DATABASE IF EXISTS cake;

CREATE DATABASE cake CHARSET=UTF8;

USE cake;


DROP TABLE IF EXISTS `cake_user`;
CREATE TABLE `cake_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `phone` varchar(16) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_user
-- ----------------------------
INSERT INTO `cake_user` VALUES ('1', 'dingding', '123456', '13511011000','丁春秋', '0');
INSERT INTO `cake_user` VALUES ('2', 'dangdang', '123456','13501234568', '当当喵', '1');
INSERT INTO `cake_user` VALUES ('3', 'doudou', '123456','13501234569', '窦志强', '1');
INSERT INTO `cake_user` VALUES ('4', 'yaya', '123456','13501234560','秦小雅', '0');



DROP TABLE IF EXISTS `cake_carousel`;
CREATE TABLE `cake_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_index_carousel
-- ----------------------------
INSERT INTO `cake_carousel` VALUES ('1', 'banner1.jpg', '轮播广告商品1', 'product_details.html?lid=28');
INSERT INTO `cake_carousel` VALUES ('2', 'banner2.jpg', '轮播广告商品2', 'product_details.html?lid=19');
INSERT INTO `cake_carousel` VALUES ('3', 'banner3.jpg', '轮播广告商品3', 'lookforward.html');
INSERT INTO `cake_carousel` VALUES ('4', 'banner4.jpg', '轮播广告商品4', 'lookforward.html');
INSERT INTO `cake_carousel` VALUES ('5', 'banner5.jpg', '轮播广告商品4', 'lookforward.html');

-- ----------------------------
-- Table structure for `cake_product`
-- ----------------------------
DROP TABLE IF EXISTS `cake_product`;
CREATE TABLE `cake_product` (
  `pid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
	`href` varchar(128) default NULL,
  `seq_recommended` tinyint(4) default NULL,
  `seq_new_arrival` tinyint(4) default NULL,
  `seq_top_sale` tinyint(4) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cake_product
-- ----------------------------
INSERT INTO `cake_product` VALUES ('1', '中秋限定•花好月圆', 'product1.jpg', '268.00','product_details.html?lid=1','1', '1', '1');
INSERT INTO `cake_product` VALUES ('2', '榴莲冰淇淋蛋糕  Durian gelato cake', 'product2.jpg', '168.00','product_details.html?lid=2', '1', '1', '1');
INSERT INTO `cake_product` VALUES ('3', '告白熊 Love you', 'product3.jpg', '208.00','product_details.html?lid=3','1', '1', '1');
INSERT INTO `cake_product` VALUES ('4', '相思  Love of Acacia', 'product4.jpg', '168.00','product_details.html?lid=4','1', '1', '1');
INSERT INTO `cake_product` VALUES ('5', '女神的王冠 The crown of the goddess', 'product5.jpg', '248.00','product_details.html?lid=5','1', '1', '1');
INSERT INTO `cake_product` VALUES ('6', '百利甜情人 Baileys Lover', 'product6.jpg','product_details.html?lid=6','198.00', '1', '1', '1');

-- ----------------------------
-- Table structure for `cake_laptop`
-- ----------------------------
DROP TABLE IF EXISTS `cake_details`;
CREATE TABLE `cake_details` (
  `lid` int(11) NOT NULL auto_increment,
  `family_id` int(11) default NULL,
  `taste_id` int(11)default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  `en_subtitle` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `food_material` varchar(64) default NULL,
  `sweetness` varchar(64) default NULL,
  `taste` varchar(32) default NULL,
  `fit_people` varchar(32) default NULL,
  `fit_program` varchar(32) default NULL,
  `alcohol` varchar(32) default NULL,
  `pre_conditions` varchar(32) default NULL,
  `top_pics` varchar(128) default NULL,
  `list_pics` varchar(128) default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cake_laptop
-- ----------------------------
INSERT INTO `cake_details` VALUES (
	'1', 
	'1',
	'1',
	'百利甜情人 Baileys Lover',
	'新西兰纯乳脂奶油中溶入独特玫瑰浆，诠释那甜蜜之爱',
	'New Zealand butter cream melt with distinctive rose syrup, this is how love should be interpreted.', 
	'298.00', 
	'澳大利亚芒果 新西兰乳脂奶油 爱尔兰百利甜酒 云南玫瑰汁 新西兰黄油',
	'3', 
	'水果类',
	'所有人', 
	'所有节目', 
	'含酒',
	'0－4℃保藏4小时，5℃最佳食用',
	'1.jpg',
	'product1.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'2', 
	'2',
	'1',
	'榴莲冰淇淋蛋糕 Durian gelato cake',
	'柔软细腻回味香醇，意想不到的惊喜美味',
	'null', 
	'298.00', 
	'null',
	'3', 
	'慕斯类',
	'所有人', 
	'所有节目', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'2.jpg',
	'product2.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'3', 
	'3',
	'1',
	'告白熊 Love you',
	'新鲜水果与天然奶油的完美搭配，以爱之名，向你告白',
	'null', 
	'298.00', 
	'null',
	'3', 
	'奶油类',
	'所有人', 
	'所有节目', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'3.jpg',
	'product3.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'4', 
	'3',
	'2',
	'相思 Love of Acacia',
	'柔软细腻回味香醇，意想不到的惊喜美味',
	'null', 
	'298.00', 
	'null',
	'4', 
	'奶油类',
	'所有人', 
	'null', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'4.jpg',
	'product4.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'5', 
	'3',
	'2',
	'女神的王冠 The crown of the goddess',
	'轻盈幽香，口感分明；女神的王冠，送给心中的女神！',
	'null', 
	'298.00', 
	'null',
	'3', 
	'奶油类',
	'所有人', 
	'所有节目', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'5.jpg',
	'product5.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'6', 
	'1',
	'2',
	'百利甜情人 Baileys Lover',
	'新西兰纯乳脂奶油中溶入独特玫瑰浆，诠释那甜蜜之爱',
	'New Zealand butter cream melt with distinctive rose syrup, this is how love should be interpreted', 
	'298.00', 
	'null',
	'3', 
	'水果类',
	'所有人', 
	'所有节目', 
	'含酒',
	'0－4℃保藏4小时，5℃最佳食用',
	'6.jpg',
	'product6.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'7', 
	'4',
	'3',
	'黑白慕斯 Dark and White Chocolate Mousse Cake（含酒）',
	'新西兰纯乳脂奶油中溶入独特玫瑰浆，诠释那甜蜜之爱',
	'Dark coco harmonised with sweet smooth white chocolate mousse, the unique balance will keep the taste last long. ', 
	'298.00', 
	'比利时巧克力 新西兰乳脂奶油  法国可可粉  法国君度酒  韩国砂糖',
	'3', 
	'巧克力口味',
	'除孕妇以外的各类人群', 
	'所有节目', 
	'含酒',
	'0－4℃保藏4小时，5℃最佳食用',
	'7.jpg',
	'product7.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'8', 
	'1',
	'3',
	'心动 Rose mousse cake',
	'玫瑰般高贵的颜色丝绒般柔软的口感让人回味无穷、遐想连篇浪漫巧克力与玫瑰马卡龙犹如爱情的滋味每一口都会令人怦然心动 ',
	'Rose noble color soft, supple palate is impressive, daydream is romantic marca dragon like love chocolate and rose to taste every bite is a heartache ', 
	'258.00', 
	'比利时巧克力 新西兰乳脂奶油  智利蓝莓  有机草莓',
	'4', 
	'水果类',
	'所有人', 
	'所有节目', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'8.jpg',
	'product8.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'9', 
	'2',
	'3',
	'致爱 Trust love',
	'挑选了巧克力界有“爱马仕”之称的 法芙娜巧克力 吃得到的大颗新鲜鲜榨的草莓果蓉 酸爽清甜的草莓风味，大增食欲 新的杏仁海绵坯搭配甜酥底 谁能抗拒一份“高级感”口味的新鲜蛋糕呢？',
	'null', 
	'288.00', 
	'比利时巧克力 新西兰乳脂奶油  美国柠檬  有机草莓',
	'3', 
	'慕斯类',
	'所有人', 
	'情人节', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'9.jpg',
	'product9.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'10', 
	'3',
	'4',
	'花漾女神 Goddess of flowers',
	'女神节新品，携爱而来，需提前24小时预订',
	'null', 
	'288.00', 
	'null',
	'3', 
	'奶油类',
	'所有人', 
	'所有节日', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'10.jpg',
	'product10.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'11', 
	'1',
	'4',
	'洛丽塔水果花园 Lolita fruit garden',
	'四种新鲜时令水果， 每一口都被惊艳，每一口都被证明选择！',
	'*此款需提前24小时订购四种新鲜时令水果，每一口都被惊艳，每一口都被证明选择！', 
	'298.00', 
	'澳大利亚芒果 新西兰乳脂奶油 智利蓝莓 韩国砂糖 越南红心火龙果 新西兰芝士',
	'3', 
	'水果类',
	'所有人', 
	'所有节日', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'11.jpg',
	'product11.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'12', 
	'1',
	'4',
	'童趣 Children',
	'童年的时光一纵即逝，和宝贝一起开启创意之旅，跨越彩虹吧',
	'Time of childhood is fleeting, let`s open the creative journey with baby, cross the rainbow together.', 
	'288.00', 
	'澳大利亚芒果 比利时巧克力 新西兰乳脂奶油 巧克力脆珠 韩国砂糖 黄油曲奇 英国糖珠 ',
	'3', 
	'水果类',
	'所有人', 
	'null', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'12.jpg',
	'product12.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'13', 
	'1',
	'4',
	'芒果奶油 Mango Cream Cake',
	'不使用罐头水果和植混奶油坚持自然成熟，应季鲜切芒果搭配芒果百香果慕斯夹心爽口....',
	'null', 
	'198.00', 
	'澳大利亚芒果 新西兰乳脂奶油',
	'3', 
	'水果类',
	'所有人', 
	'所有节日', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'13.jpg',
	'product13.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'14', 
	'3',
	'5',
	'法式杏仁奶油 Almond butter',
	'看似平淡 但是咬下去的时候香味浓郁浓郁的焦糖包裹着美国杏仁片焦糖的微苦衬托了杏仁坚果的香气带着杏仁坚果的香气层次丰富，口感浓郁在口中有化不开的幸福口感',
	'null', 
	'308.00', 
	'比利时巧克力 新西兰乳脂奶油 美国杏仁 韩国砂糖 ',
	'4', 
	'奶油类',
	'所有人', 
	'所有节日', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'14.jpg',
	'product14.jpg'
	);
INSERT INTO `cake_details` VALUES (
	'15', 
	'2',
	'5',
	'北海道双层芝士 Hokkaido Double Cheese',
	'绵软的海绵蛋糕薄薄的垫底，中间是浓郁的半熟芝士，表层是轻盈到真的就是入口即化的冻芝士',
	'Thin soft sponge cake of bottom, the middle one is half ripe cheese, the surface is light to the frozen cheese is really melt in your mouth', 
	'308.00', 
	'新西兰乳脂奶油 新西兰芝士',
	'4', 
	'芝士慕斯',
	'所有人', 
	'所有节日', 
	'null',
	'0－4℃保藏4小时，5℃最佳食用',
	'15.jpg',
	'product15.jpg'
	);
	INSERT INTO `cake_details` VALUES (
		'16', 
		'1',
		'5',
		'森林历险记 Children',
		'勇敢的小动物们  守护者内心神圣的梦想之地，和宝贝一起创作童话。这一刻，用味蕾代替脚步去翻阅',
		'Brave animals guard the holy dream of their hearts and create fairy tales with their babies. At this moment, use taste buds instead of footsteps to read', 
		'298.00', 
		'韩国砂糖',
		'4', 
		'	水果类',
		'所有人', 
		'所有节日', 
		'null',
		'0－4℃保藏4小时，5℃最佳食用',
		'16.jpg',
		'product16.jpg'
		);