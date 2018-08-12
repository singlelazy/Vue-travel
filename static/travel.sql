/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-08-12 23:47:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city_table
-- ----------------------------
DROP TABLE IF EXISTS `city_table`;
CREATE TABLE `city_table` (
  `ID` bigint(20) NOT NULL,
  `letter` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spell` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hot` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`letter`,`name`,`spell`,`hot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city_table
-- ----------------------------
INSERT INTO `city_table` VALUES ('1', 'B', '北京市', 'beijingshi', '80');
INSERT INTO `city_table` VALUES ('2', 'T', '天津市', 'tianjinshi', '60');
INSERT INTO `city_table` VALUES ('3', 'S', '石家庄市', 'shijiazhuangshi', '0');
INSERT INTO `city_table` VALUES ('4', 'T', '唐山市', 'tangshanshi', '0');
INSERT INTO `city_table` VALUES ('5', 'Q', '秦皇岛市', 'qinhuangdaoshi', '0');
INSERT INTO `city_table` VALUES ('6', 'H', '邯郸市', 'handanshi', '0');
INSERT INTO `city_table` VALUES ('7', 'X', '邢台市', 'xingtaishi', '0');
INSERT INTO `city_table` VALUES ('8', 'B', '保定市', 'baodingshi', '0');
INSERT INTO `city_table` VALUES ('9', 'Z', '张家口市', 'zhangjiakoushi', '0');
INSERT INTO `city_table` VALUES ('10', 'C', '承德市', 'chengdeshi', '0');
INSERT INTO `city_table` VALUES ('11', 'C', '沧州市', 'cangzhoushi', '0');
INSERT INTO `city_table` VALUES ('12', 'L', '廊坊市', 'langfangshi', '0');
INSERT INTO `city_table` VALUES ('13', 'H', '衡水市', 'hengshuishi', '0');
INSERT INTO `city_table` VALUES ('14', 'T', '太原市', 'taiyuanshi', '0');
INSERT INTO `city_table` VALUES ('15', 'D', '大同市', 'datongshi', '0');
INSERT INTO `city_table` VALUES ('16', 'Y', '阳泉市', 'yangquanshi', '0');
INSERT INTO `city_table` VALUES ('17', 'C', '长治市', 'changzhishi', '0');
INSERT INTO `city_table` VALUES ('18', 'J', '晋城市', 'jinchengshi', '0');
INSERT INTO `city_table` VALUES ('19', 'S', '朔州市', 'shuozhoushi', '0');
INSERT INTO `city_table` VALUES ('20', 'J', '晋中市', 'jinzhongshi', '0');
INSERT INTO `city_table` VALUES ('21', 'Y', '运城市', 'yunchengshi', '0');
INSERT INTO `city_table` VALUES ('22', 'X', '忻州市', 'xinzhoushi', '0');
INSERT INTO `city_table` VALUES ('23', 'L', '临汾市', 'linfenshi', '0');
INSERT INTO `city_table` VALUES ('24', 'L', '吕梁市', 'lvliangshi', '0');
INSERT INTO `city_table` VALUES ('25', 'H', '呼和浩特市', 'huhehaoteshi', '0');
INSERT INTO `city_table` VALUES ('26', 'B', '包头市', 'baotoushi', '0');
INSERT INTO `city_table` VALUES ('27', 'W', '乌海市', 'wuhaishi', '0');
INSERT INTO `city_table` VALUES ('28', 'C', '赤峰市', 'chifengshi', '0');
INSERT INTO `city_table` VALUES ('29', 'T', '通辽市', 'tongliaoshi', '0');
INSERT INTO `city_table` VALUES ('30', 'E', '鄂尔多斯市', 'eerduosishi', '0');
INSERT INTO `city_table` VALUES ('31', 'H', '呼伦贝尔市', 'hulunbeiershi', '0');
INSERT INTO `city_table` VALUES ('32', 'B', '巴彦淖尔市', 'bayannaoershi', '0');
INSERT INTO `city_table` VALUES ('33', 'W', '乌兰察布市', 'wulanchabushi', '0');
INSERT INTO `city_table` VALUES ('34', 'X', '兴安盟', 'xinganmeng', '0');
INSERT INTO `city_table` VALUES ('35', 'X', '锡林郭勒盟', 'xilinguolemeng', '0');
INSERT INTO `city_table` VALUES ('36', 'A', '阿拉善盟', 'alashanmeng', '0');
INSERT INTO `city_table` VALUES ('37', 'S', '沈阳市', 'shenyangshi', '0');
INSERT INTO `city_table` VALUES ('38', 'D', '大连市', 'dalianshi', '40');
INSERT INTO `city_table` VALUES ('39', 'A', '鞍山市', 'anshanshi', '0');
INSERT INTO `city_table` VALUES ('40', 'F', '抚顺市', 'fushunshi', '0');
INSERT INTO `city_table` VALUES ('41', 'B', '本溪市', 'benxishi', '0');
INSERT INTO `city_table` VALUES ('42', 'D', '丹东市', 'dandongshi', '0');
INSERT INTO `city_table` VALUES ('43', 'J', '锦州市', 'jinzhoushi', '0');
INSERT INTO `city_table` VALUES ('44', 'Y', '营口市', 'yingkoushi', '0');
INSERT INTO `city_table` VALUES ('45', 'F', '阜新市', 'fuxinshi', '0');
INSERT INTO `city_table` VALUES ('46', 'L', '辽阳市', 'liaoyangshi', '0');
INSERT INTO `city_table` VALUES ('47', 'P', '盘锦市', 'panjinshi', '0');
INSERT INTO `city_table` VALUES ('48', 'T', '铁岭市', 'tielingshi', '0');
INSERT INTO `city_table` VALUES ('49', 'C', '朝阳市', 'chaoyangshi', '0');
INSERT INTO `city_table` VALUES ('50', 'H', '葫芦岛市', 'huludaoshi', '0');
INSERT INTO `city_table` VALUES ('51', 'C', '长春市', 'changchunshi', '0');
INSERT INTO `city_table` VALUES ('52', 'J', '吉林市', 'jilinshi', '0');
INSERT INTO `city_table` VALUES ('53', 'S', '四平市', 'sipingshi', '0');
INSERT INTO `city_table` VALUES ('54', 'L', '辽源市', 'liaoyuanshi', '0');
INSERT INTO `city_table` VALUES ('55', 'T', '通化市', 'tonghuashi', '0');
INSERT INTO `city_table` VALUES ('56', 'B', '白山市', 'baishanshi', '0');
INSERT INTO `city_table` VALUES ('57', 'S', '松原市', 'songyuanshi', '0');
INSERT INTO `city_table` VALUES ('58', 'B', '白城市', 'baichengshi', '0');
INSERT INTO `city_table` VALUES ('59', 'Y', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('60', 'H', '哈尔滨市', 'haerbinshi', '0');
INSERT INTO `city_table` VALUES ('61', 'Q', '齐齐哈尔市', 'qiqihaershi', '0');
INSERT INTO `city_table` VALUES ('62', 'J', '鸡西市', 'jixishi', '0');
INSERT INTO `city_table` VALUES ('63', 'H', '鹤岗市', 'hegangshi', '0');
INSERT INTO `city_table` VALUES ('64', 'S', '双鸭山市', 'shuangyashanshi', '0');
INSERT INTO `city_table` VALUES ('65', 'D', '大庆市', 'daqingshi', '0');
INSERT INTO `city_table` VALUES ('66', 'Y', '伊春市', 'yichunshi', '0');
INSERT INTO `city_table` VALUES ('67', 'J', '佳木斯市', 'jiamusishi', '0');
INSERT INTO `city_table` VALUES ('68', 'Q', '七台河市', 'qitaiheshi', '0');
INSERT INTO `city_table` VALUES ('69', 'M', '牡丹江市', 'mudanjiangshi', '0');
INSERT INTO `city_table` VALUES ('70', 'H', '黑河市', 'heiheshi', '0');
INSERT INTO `city_table` VALUES ('71', 'S', '绥化市', 'suihuashi', '0');
INSERT INTO `city_table` VALUES ('72', 'D', '大兴安岭地区', 'daxinganlingdiqu', '0');
INSERT INTO `city_table` VALUES ('73', 'S', '上海市', 'shanghaishi', '60');
INSERT INTO `city_table` VALUES ('74', 'N', '南京市', 'nanjingshi', '0');
INSERT INTO `city_table` VALUES ('75', 'W', '无锡市', 'wuxishi', '0');
INSERT INTO `city_table` VALUES ('76', 'X', '徐州市', 'xuzhoushi', '0');
INSERT INTO `city_table` VALUES ('77', 'C', '常州市', 'changzhoushi', '0');
INSERT INTO `city_table` VALUES ('78', 'S', '苏州市', 'suzhoushi', '0');
INSERT INTO `city_table` VALUES ('79', 'N', '南通市', 'nantongshi', '0');
INSERT INTO `city_table` VALUES ('80', 'L', '连云港市', 'lianyungangshi', '0');
INSERT INTO `city_table` VALUES ('81', 'H', '淮安市', 'huaianshi', '0');
INSERT INTO `city_table` VALUES ('82', 'Y', '盐城市', 'yanchengshi', '0');
INSERT INTO `city_table` VALUES ('83', 'Y', '扬州市', 'yangzhoushi', '0');
INSERT INTO `city_table` VALUES ('84', 'Z', '镇江市', 'zhenjiangshi', '0');
INSERT INTO `city_table` VALUES ('85', 'T', '泰州市', 'taizhoushi', '0');
INSERT INTO `city_table` VALUES ('86', 'S', '宿迁市', 'suqianshi', '0');
INSERT INTO `city_table` VALUES ('87', 'H', '杭州市', 'hangzhoushi', '0');
INSERT INTO `city_table` VALUES ('88', 'M', '宁波市', 'ningboshi', '0');
INSERT INTO `city_table` VALUES ('89', 'W', '温州市', 'wenzhoushi', '0');
INSERT INTO `city_table` VALUES ('90', 'J', '嘉兴市', 'jiaxingshi', '0');
INSERT INTO `city_table` VALUES ('91', 'H', '湖州市', 'huzhoushi', '0');
INSERT INTO `city_table` VALUES ('92', 'S', '绍兴市', 'shaoxingshi', '0');
INSERT INTO `city_table` VALUES ('93', 'J', '金华市', 'jinhuashi', '0');
INSERT INTO `city_table` VALUES ('94', 'Z', '衢州市', 'zhoushi', '0');
INSERT INTO `city_table` VALUES ('95', 'Z', '舟山市', 'zhoushanshi', '0');
INSERT INTO `city_table` VALUES ('96', 'T', '台州市', 'taizhoushi', '0');
INSERT INTO `city_table` VALUES ('97', 'L', '丽水市', 'lishuishi', '0');
INSERT INTO `city_table` VALUES ('98', 'H', '合肥市', 'hefeishi', '0');
INSERT INTO `city_table` VALUES ('99', 'W', '芜湖市', 'wuhushi', '0');
INSERT INTO `city_table` VALUES ('100', 'B', '蚌埠市', 'bangbushi', '0');
INSERT INTO `city_table` VALUES ('101', 'H', '淮南市', 'huainanshi', '0');
INSERT INTO `city_table` VALUES ('102', 'M', '马鞍山市', 'maanshanshi', '0');
INSERT INTO `city_table` VALUES ('103', 'H', '淮北市', 'huaibeishi', '0');
INSERT INTO `city_table` VALUES ('104', 'T', '铜陵市', 'tonglingshi', '0');
INSERT INTO `city_table` VALUES ('105', 'A', '安庆市', 'anqingshi', '0');
INSERT INTO `city_table` VALUES ('106', 'H', '黄山市', 'huangshanshi', '0');
INSERT INTO `city_table` VALUES ('107', 'C', '滁州市', 'chuzhoushi', '0');
INSERT INTO `city_table` VALUES ('108', 'F', '阜阳市', 'fuyangshi', '0');
INSERT INTO `city_table` VALUES ('109', 'S', '宿州市', 'suzhoushi', '0');
INSERT INTO `city_table` VALUES ('110', 'C', '巢湖市', 'chaohushi', '0');
INSERT INTO `city_table` VALUES ('111', 'L', '六安市', 'liuanshi', '0');
INSERT INTO `city_table` VALUES ('112', 'Z', '亳州市', 'zhoushi', '0');
INSERT INTO `city_table` VALUES ('113', 'C', '池州市', 'chizhoushi', '0');
INSERT INTO `city_table` VALUES ('114', 'X', '宣城市', 'xuanchengshi', '0');
INSERT INTO `city_table` VALUES ('115', 'F', '福州市', 'fuzhoushi', '0');
INSERT INTO `city_table` VALUES ('116', 'X', '厦门市', 'xiamenshi', '0');
INSERT INTO `city_table` VALUES ('117', 'P', '莆田市', 'putianshi', '0');
INSERT INTO `city_table` VALUES ('118', 'S', '三明市', 'sanmingshi', '0');
INSERT INTO `city_table` VALUES ('119', 'Q', '泉州市', 'quanzhoushi', '0');
INSERT INTO `city_table` VALUES ('120', 'Z', '漳州市', 'zhangzhoushi', '0');
INSERT INTO `city_table` VALUES ('121', 'N', '南平市', 'nanpingshi', '0');
INSERT INTO `city_table` VALUES ('122', 'L', '龙岩市', 'longyanshi', '0');
INSERT INTO `city_table` VALUES ('123', 'N', '宁德市', 'ningdeshi', '0');
INSERT INTO `city_table` VALUES ('124', 'N', '南昌市', 'nanchangshi', '0');
INSERT INTO `city_table` VALUES ('125', 'J', '景德镇市', 'jingdezhenshi', '0');
INSERT INTO `city_table` VALUES ('126', 'P', '萍乡市', 'pingxiangshi', '0');
INSERT INTO `city_table` VALUES ('127', 'J', '九江市', 'jiujiangshi', '0');
INSERT INTO `city_table` VALUES ('128', 'X', '新余市', 'xinyushi', '0');
INSERT INTO `city_table` VALUES ('129', 'Y', '鹰潭市', 'yingtanshi', '0');
INSERT INTO `city_table` VALUES ('130', 'G', '赣州市', 'ganzhoushi', '0');
INSERT INTO `city_table` VALUES ('131', 'J', '吉安市', 'jianshi', '0');
INSERT INTO `city_table` VALUES ('132', 'Y', '宜春市', 'yichunshi', '0');
INSERT INTO `city_table` VALUES ('133', 'F', '抚州市', 'fuzhoushi', '0');
INSERT INTO `city_table` VALUES ('134', 'S', '上饶市', 'shangraoshi', '0');
INSERT INTO `city_table` VALUES ('135', 'J', '济南市', 'jinanshi', '0');
INSERT INTO `city_table` VALUES ('136', 'Q', '青岛市', 'qingdaoshi', '0');
INSERT INTO `city_table` VALUES ('137', 'Z', '淄博市', 'ziboshi', '0');
INSERT INTO `city_table` VALUES ('138', 'Z', '枣庄市', 'zaozhuangshi', '0');
INSERT INTO `city_table` VALUES ('139', 'D', '东营市', 'dongyingshi', '0');
INSERT INTO `city_table` VALUES ('140', 'Y', '烟台市', 'yantaishi', '0');
INSERT INTO `city_table` VALUES ('141', 'W', '潍坊市', 'weifangshi', '0');
INSERT INTO `city_table` VALUES ('142', 'J', '济宁市', 'jiningshi', '0');
INSERT INTO `city_table` VALUES ('143', 'T', '泰安市', 'taianshi', '0');
INSERT INTO `city_table` VALUES ('144', 'W', '威海市', 'weihaishi', '0');
INSERT INTO `city_table` VALUES ('145', 'R', '日照市', 'rizhaoshi', '0');
INSERT INTO `city_table` VALUES ('146', 'L', '莱芜市', 'laiwushi', '0');
INSERT INTO `city_table` VALUES ('147', 'L', '临沂市', 'linyishi', '0');
INSERT INTO `city_table` VALUES ('148', 'D', '德州市', 'dezhoushi', '0');
INSERT INTO `city_table` VALUES ('149', 'L', '聊城市', 'liaochengshi', '0');
INSERT INTO `city_table` VALUES ('150', 'B', '滨州市', 'binzhoushi', '0');
INSERT INTO `city_table` VALUES ('151', 'H', '荷泽市', 'hezeshi', '0');
INSERT INTO `city_table` VALUES ('152', 'Z', '郑州市', 'zhengzhoushi', '0');
INSERT INTO `city_table` VALUES ('153', 'K', '开封市', 'kaifengshi', '0');
INSERT INTO `city_table` VALUES ('154', 'L', '洛阳市', 'luoyangshi', '0');
INSERT INTO `city_table` VALUES ('155', 'P', '平顶山市', 'pingdingshanshi', '0');
INSERT INTO `city_table` VALUES ('156', 'A', '安阳市', 'anyangshi', '0');
INSERT INTO `city_table` VALUES ('157', 'H', '鹤壁市', 'hebishi', '0');
INSERT INTO `city_table` VALUES ('158', 'X', '新乡市', 'xinxiangshi', '0');
INSERT INTO `city_table` VALUES ('159', 'J', '焦作市', 'jiaozuoshi', '0');
INSERT INTO `city_table` VALUES ('160', 'Y', '濮阳市', 'yangshi', '0');
INSERT INTO `city_table` VALUES ('161', 'X', '许昌市', 'xuchangshi', '0');
INSERT INTO `city_table` VALUES ('162', 'H', '漯河市', 'heshi', '0');
INSERT INTO `city_table` VALUES ('163', 'S', '三门峡市', 'sanmenxiashi', '0');
INSERT INTO `city_table` VALUES ('164', 'N', '南阳市', 'nanyangshi', '0');
INSERT INTO `city_table` VALUES ('165', 'S', '商丘市', 'shangqiushi', '0');
INSERT INTO `city_table` VALUES ('166', 'X', '信阳市', 'xinyangshi', '0');
INSERT INTO `city_table` VALUES ('167', 'Z', '周口市', 'zhoukoushi', '0');
INSERT INTO `city_table` VALUES ('168', 'Z', '驻马店市', 'zhumadianshi', '0');
INSERT INTO `city_table` VALUES ('169', 'W', '武汉市', 'wuhanshi', '0');
INSERT INTO `city_table` VALUES ('170', 'H', '黄石市', 'huangshishi', '0');
INSERT INTO `city_table` VALUES ('171', 'S', '十堰市', 'shiyanshi', '0');
INSERT INTO `city_table` VALUES ('172', 'Y', '宜昌市', 'yichangshi', '0');
INSERT INTO `city_table` VALUES ('173', 'X', '襄樊市', 'xiangfanshi', '0');
INSERT INTO `city_table` VALUES ('174', 'E', '鄂州市', 'ezhoushi', '0');
INSERT INTO `city_table` VALUES ('175', 'J', '荆门市', 'jingmenshi', '0');
INSERT INTO `city_table` VALUES ('176', 'X', '孝感市', 'xiaoganshi', '0');
INSERT INTO `city_table` VALUES ('177', 'J', '荆州市', 'jingzhoushi', '0');
INSERT INTO `city_table` VALUES ('178', 'H', '黄冈市', 'huanggangshi', '0');
INSERT INTO `city_table` VALUES ('179', 'X', '咸宁市', 'xianningshi', '0');
INSERT INTO `city_table` VALUES ('180', 'S', '随州市', 'suizhoushi', '0');
INSERT INTO `city_table` VALUES ('181', 'E', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('182', 'S', '神农架', 'shennongjia', '0');
INSERT INTO `city_table` VALUES ('183', 'C', '长沙市', 'changshashi', '0');
INSERT INTO `city_table` VALUES ('184', 'Z', '株洲市', 'zhuzhoushi', '0');
INSERT INTO `city_table` VALUES ('185', 'X', '湘潭市', 'xiangtanshi', '0');
INSERT INTO `city_table` VALUES ('186', 'H', '衡阳市', 'hengyangshi', '0');
INSERT INTO `city_table` VALUES ('187', 'S', '邵阳市', 'shaoyangshi', '0');
INSERT INTO `city_table` VALUES ('188', 'Y', '岳阳市', 'yueyangshi', '0');
INSERT INTO `city_table` VALUES ('189', 'C', '常德市', 'changdeshi', '0');
INSERT INTO `city_table` VALUES ('190', 'Z', '张家界市', 'zhangjiajieshi', '0');
INSERT INTO `city_table` VALUES ('191', 'Y', '益阳市', 'yiyangshi', '0');
INSERT INTO `city_table` VALUES ('192', 'C', '郴州市', 'chenzhoushi', '0');
INSERT INTO `city_table` VALUES ('193', 'Y', '永州市', 'yongzhoushi', '0');
INSERT INTO `city_table` VALUES ('194', 'H', '怀化市', 'huaihuashi', '0');
INSERT INTO `city_table` VALUES ('195', 'L', '娄底市', 'loudishi', '0');
INSERT INTO `city_table` VALUES ('196', 'X', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('197', 'G', '广州市', 'guangzhoushi', '0');
INSERT INTO `city_table` VALUES ('198', 'S', '韶关市', 'shaoguanshi', '0');
INSERT INTO `city_table` VALUES ('199', 'S', '深圳市', 'shenshi', '90');
INSERT INTO `city_table` VALUES ('200', 'Z', '珠海市', 'zhuhaishi', '0');
INSERT INTO `city_table` VALUES ('201', 'S', '汕头市', 'shantoushi', '0');
INSERT INTO `city_table` VALUES ('202', 'F', '佛山市', 'foshanshi', '0');
INSERT INTO `city_table` VALUES ('203', 'J', '江门市', 'jiangmenshi', '0');
INSERT INTO `city_table` VALUES ('204', 'Z', '湛江市', 'zhanjiangshi', '0');
INSERT INTO `city_table` VALUES ('205', 'M', '茂名市', 'maomingshi', '0');
INSERT INTO `city_table` VALUES ('206', 'Z', '肇庆市', 'zhaoqingshi', '0');
INSERT INTO `city_table` VALUES ('207', 'H', '惠州市', 'huizhoushi', '0');
INSERT INTO `city_table` VALUES ('208', 'M', '梅州市', 'meizhoushi', '0');
INSERT INTO `city_table` VALUES ('209', 'S', '汕尾市', 'shanweishi', '0');
INSERT INTO `city_table` VALUES ('210', 'H', '河源市', 'heyuanshi', '0');
INSERT INTO `city_table` VALUES ('211', 'Y', '阳江市', 'yangjiangshi', '0');
INSERT INTO `city_table` VALUES ('212', 'Q', '清远市', 'qingyuanshi', '0');
INSERT INTO `city_table` VALUES ('213', 'D', '东莞市', 'dongshi', '0');
INSERT INTO `city_table` VALUES ('214', 'Z', '中山市', 'zhongshanshi', '0');
INSERT INTO `city_table` VALUES ('215', 'C', '潮州市', 'chaozhoushi', '0');
INSERT INTO `city_table` VALUES ('216', 'J', '揭阳市', 'jieyangshi', '0');
INSERT INTO `city_table` VALUES ('217', 'Y', '云浮市', 'yunfushi', '0');
INSERT INTO `city_table` VALUES ('218', 'N', '南宁市', 'nanningshi', '0');
INSERT INTO `city_table` VALUES ('219', 'L', '柳州市', 'liuzhoushi', '0');
INSERT INTO `city_table` VALUES ('220', 'G', '桂林市', 'guilinshi', '0');
INSERT INTO `city_table` VALUES ('221', 'W', '梧州市', 'wuzhoushi', '0');
INSERT INTO `city_table` VALUES ('222', 'B', '北海市', 'beihaishi', '0');
INSERT INTO `city_table` VALUES ('223', 'F', '防城港市', 'fangchenggangshi', '0');
INSERT INTO `city_table` VALUES ('224', 'Q', '钦州市', 'qinzhoushi', '0');
INSERT INTO `city_table` VALUES ('225', 'G', '贵港市', 'guigangshi', '0');
INSERT INTO `city_table` VALUES ('226', 'Y', '玉林市', 'yulinshi', '0');
INSERT INTO `city_table` VALUES ('227', 'B', '百色市', 'baiseshi', '0');
INSERT INTO `city_table` VALUES ('228', 'H', '贺州市', 'hezhoushi', '0');
INSERT INTO `city_table` VALUES ('229', 'H', '河池市', 'hechishi', '0');
INSERT INTO `city_table` VALUES ('230', 'L', '来宾市', 'laibinshi', '0');
INSERT INTO `city_table` VALUES ('231', 'C', '崇左市', 'chongzuoshi', '0');
INSERT INTO `city_table` VALUES ('232', 'H', '海口市', 'haikoushi', '0');
INSERT INTO `city_table` VALUES ('233', 'S', '三亚市', 'sanyashi', '0');
INSERT INTO `city_table` VALUES ('234', 'Z', '重庆市', 'zhongqingshi', '0');
INSERT INTO `city_table` VALUES ('235', 'C', '成都市', 'chengdushi', '0');
INSERT INTO `city_table` VALUES ('236', 'Z', '自贡市', 'zigongshi', '0');
INSERT INTO `city_table` VALUES ('237', 'P', '攀枝花市', 'panzhihuashi', '0');
INSERT INTO `city_table` VALUES ('238', 'Z', '泸州市', 'zhoushi', '0');
INSERT INTO `city_table` VALUES ('239', 'D', '德阳市', 'deyangshi', '0');
INSERT INTO `city_table` VALUES ('240', 'M', '绵阳市', 'mianyangshi', '0');
INSERT INTO `city_table` VALUES ('241', 'G', '广元市', 'guangyuanshi', '0');
INSERT INTO `city_table` VALUES ('242', 'S', '遂宁市', 'suiningshi', '0');
INSERT INTO `city_table` VALUES ('243', 'N', '内江市', 'neijiangshi', '0');
INSERT INTO `city_table` VALUES ('244', 'L', '乐山市', 'leshanshi', '0');
INSERT INTO `city_table` VALUES ('245', 'N', '南充市', 'nanchongshi', '0');
INSERT INTO `city_table` VALUES ('246', 'M', '眉山市', 'meishanshi', '0');
INSERT INTO `city_table` VALUES ('247', 'Y', '宜宾市', 'yibinshi', '0');
INSERT INTO `city_table` VALUES ('248', 'G', '广安市', 'guanganshi', '0');
INSERT INTO `city_table` VALUES ('249', 'D', '达州市', 'dazhoushi', '0');
INSERT INTO `city_table` VALUES ('250', 'Y', '雅安市', 'yaanshi', '0');
INSERT INTO `city_table` VALUES ('251', 'B', '巴中市', 'bazhongshi', '0');
INSERT INTO `city_table` VALUES ('252', 'Z', '资阳市', 'ziyangshi', '0');
INSERT INTO `city_table` VALUES ('253', 'A', '阿坝藏族羌族自治州', 'abacangzuqiangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('254', 'G', '甘孜藏族自治州', 'ganzicangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('255', 'L', '凉山彝族自治州', 'liangshanyizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('256', 'G', '贵阳市', 'guiyangshi', '0');
INSERT INTO `city_table` VALUES ('257', 'L', '六盘水市', 'liupanshuishi', '0');
INSERT INTO `city_table` VALUES ('258', 'Z', '遵义市', 'zunyishi', '0');
INSERT INTO `city_table` VALUES ('259', 'A', '安顺市', 'anshunshi', '0');
INSERT INTO `city_table` VALUES ('260', 'T', '铜仁地区', 'tongrendiqu', '0');
INSERT INTO `city_table` VALUES ('261', 'Q', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('262', 'B', '毕节地区', 'bijiediqu', '0');
INSERT INTO `city_table` VALUES ('263', 'Q', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('264', 'Q', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('265', 'K', '昆明市', 'kunmingshi', '0');
INSERT INTO `city_table` VALUES ('266', 'Q', '曲靖市', 'qujingshi', '0');
INSERT INTO `city_table` VALUES ('267', 'Y', '玉溪市', 'yuxishi', '0');
INSERT INTO `city_table` VALUES ('268', 'B', '保山市', 'baoshanshi', '0');
INSERT INTO `city_table` VALUES ('269', 'Z', '昭通市', 'zhaotongshi', '0');
INSERT INTO `city_table` VALUES ('270', 'L', '丽江市', 'lijiangshi', '0');
INSERT INTO `city_table` VALUES ('271', 'S', '思茅市', 'simaoshi', '0');
INSERT INTO `city_table` VALUES ('272', 'L', '临沧市', 'lincangshi', '0');
INSERT INTO `city_table` VALUES ('273', 'C', '楚雄彝族自治州', 'chuxiongyizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('274', 'H', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('275', 'W', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('276', 'X', '西双版纳傣族自治州', 'xishuangbannadaizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('277', 'D', '大理白族自治州', 'dalibaizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('278', 'D', '德宏傣族景颇族自治州', 'dehongdaizujingpozuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('279', 'N', '怒江傈僳族自治州', 'nujianglisuzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('280', 'D', '迪庆藏族自治州', 'diqingcangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('281', 'L', '拉萨市', 'lasashi', '0');
INSERT INTO `city_table` VALUES ('282', 'C', '昌都地区', 'changdudiqu', '0');
INSERT INTO `city_table` VALUES ('283', 'S', '山南地区', 'shannandiqu', '0');
INSERT INTO `city_table` VALUES ('284', 'R', '日喀则地区', 'rikazediqu', '0');
INSERT INTO `city_table` VALUES ('285', 'N', '那曲地区', 'naqudiqu', '0');
INSERT INTO `city_table` VALUES ('286', 'A', '阿里地区', 'alidiqu', '0');
INSERT INTO `city_table` VALUES ('287', 'L', '林芝地区', 'linzhidiqu', '0');
INSERT INTO `city_table` VALUES ('288', 'X', '西安市', 'xianshi', '0');
INSERT INTO `city_table` VALUES ('289', 'T', '铜川市', 'tongchuanshi', '0');
INSERT INTO `city_table` VALUES ('290', 'B', '宝鸡市', 'baojishi', '0');
INSERT INTO `city_table` VALUES ('291', 'X', '咸阳市', 'xianyangshi', '0');
INSERT INTO `city_table` VALUES ('292', 'W', '渭南市', 'weinanshi', '0');
INSERT INTO `city_table` VALUES ('293', 'Y', '延安市', 'yananshi', '0');
INSERT INTO `city_table` VALUES ('294', 'H', '汉中市', 'hanzhongshi', '0');
INSERT INTO `city_table` VALUES ('295', 'Y', '榆林市', 'yulinshi', '0');
INSERT INTO `city_table` VALUES ('296', 'A', '安康市', 'ankangshi', '0');
INSERT INTO `city_table` VALUES ('297', 'S', '商洛市', 'shangluoshi', '0');
INSERT INTO `city_table` VALUES ('298', 'L', '兰州市', 'lanzhoushi', '0');
INSERT INTO `city_table` VALUES ('299', 'J', '嘉峪关市', 'jiayuguanshi', '0');
INSERT INTO `city_table` VALUES ('300', 'J', '金昌市', 'jinchangshi', '0');
INSERT INTO `city_table` VALUES ('301', 'B', '白银市', 'baiyinshi', '0');
INSERT INTO `city_table` VALUES ('302', 'T', '天水市', 'tianshuishi', '0');
INSERT INTO `city_table` VALUES ('303', 'W', '武威市', 'wuweishi', '0');
INSERT INTO `city_table` VALUES ('304', 'Z', '张掖市', 'zhangyeshi', '0');
INSERT INTO `city_table` VALUES ('305', 'P', '平凉市', 'pingliangshi', '0');
INSERT INTO `city_table` VALUES ('306', 'J', '酒泉市', 'jiuquanshi', '0');
INSERT INTO `city_table` VALUES ('307', 'Q', '庆阳市', 'qingyangshi', '0');
INSERT INTO `city_table` VALUES ('308', 'D', '定西市', 'dingxishi', '0');
INSERT INTO `city_table` VALUES ('309', 'L', '陇南市', 'longnanshi', '0');
INSERT INTO `city_table` VALUES ('310', 'L', '临夏回族自治州', 'linxiahuizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('311', 'G', '甘南藏族自治州', 'gannancangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('312', 'X', '西宁市', 'xiningshi', '0');
INSERT INTO `city_table` VALUES ('313', 'H', '海东地区', 'haidongdiqu', '0');
INSERT INTO `city_table` VALUES ('314', 'H', '海北藏族自治州', 'haibeicangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('315', 'H', '黄南藏族自治州', 'huangnancangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('316', 'H', '海南藏族自治州', 'hainancangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('317', 'G', '果洛藏族自治州', 'guoluocangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('318', 'Y', '玉树藏族自治州', 'yushucangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('319', 'H', '海西蒙古族藏族自治州', 'haiximengguzucangzuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('320', 'Y', '银川市', 'yinchuanshi', '0');
INSERT INTO `city_table` VALUES ('321', 'S', '石嘴山市', 'shizuishanshi', '0');
INSERT INTO `city_table` VALUES ('322', 'W', '吴忠市', 'wuzhongshi', '0');
INSERT INTO `city_table` VALUES ('323', 'G', '固原市', 'guyuanshi', '0');
INSERT INTO `city_table` VALUES ('324', 'Z', '中卫市', 'zhongweishi', '0');
INSERT INTO `city_table` VALUES ('325', 'W', '乌鲁木齐市', 'wulumuqishi', '0');
INSERT INTO `city_table` VALUES ('326', 'K', '克拉玛依市', 'kelamayishi', '0');
INSERT INTO `city_table` VALUES ('327', 'T', '吐鲁番地区', 'tulufandiqu', '0');
INSERT INTO `city_table` VALUES ('328', 'H', '哈密地区', 'hamidiqu', '0');
INSERT INTO `city_table` VALUES ('329', 'C', '昌吉回族自治州', 'changjihuizuzizhizhou', '0');
INSERT INTO `city_table` VALUES ('330', 'B', '博尔塔拉蒙古自治州', 'boertalamengguzizhizhou', '0');
INSERT INTO `city_table` VALUES ('331', 'B', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhizhou', '0');
INSERT INTO `city_table` VALUES ('332', 'A', '阿克苏地区', 'akesudiqu', '0');
INSERT INTO `city_table` VALUES ('333', 'K', '克孜勒苏柯尔克孜自治州', 'kezilesukeerkezizizhizhou', '0');
INSERT INTO `city_table` VALUES ('334', 'K', '喀什地区', 'kashidiqu', '0');
INSERT INTO `city_table` VALUES ('335', 'H', '和田地区', 'hetiandiqu', '0');
INSERT INTO `city_table` VALUES ('336', 'Y', '伊犁哈萨克自治州', 'yilihasakezizhizhou', '0');
INSERT INTO `city_table` VALUES ('337', 'T', '塔城地区', 'tachengdiqu', '0');
INSERT INTO `city_table` VALUES ('338', 'A', '阿勒泰地区', 'aletaidiqu', '0');
INSERT INTO `city_table` VALUES ('339', 'S', '石河子市', 'shihezishi', '0');
INSERT INTO `city_table` VALUES ('340', 'A', '阿拉尔市', 'alaershi', '0');
INSERT INTO `city_table` VALUES ('341', 'T', '图木舒克市', 'tumushukeshi', '0');
INSERT INTO `city_table` VALUES ('342', 'W', '五家渠市', 'wujiaqushi', '0');
INSERT INTO `city_table` VALUES ('343', 'X', '香港特别行政区', 'xianggangtebiexingzhengqu', '0');
INSERT INTO `city_table` VALUES ('344', 'A', '澳门特别行政区', 'aomentebiexingzhengqu', '0');
INSERT INTO `city_table` VALUES ('345', 'T', '台湾省', 'taiwansheng', '0');

-- ----------------------------
-- Table structure for detail_table
-- ----------------------------
DROP TABLE IF EXISTS `detail_table`;
CREATE TABLE `detail_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sightName` varchar(32) NOT NULL,
  `bannerImg` varchar(100) NOT NULL,
  `galleryImgs` varchar(255) NOT NULL,
  `categoryList` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`,`sightName`,`bannerImg`,`galleryImgs`,`categoryList`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail_table
-- ----------------------------
INSERT INTO `detail_table` VALUES ('1', '大连圣亚海洋世界(AAAA景区)', 'http://img1.qunarzz.com/sight/p0/201404/23/04b92c99462687fa1ba45c1b5ba4ad77.jpg_600x330_bf9c4904.jpg', 'http://img1.qunarzz.com/sight/p0/201404/23/04b92c99462687fa1ba45c1b5ba4ad77.jpg_800x800_70debc93.jpg,http://img1.qunarzz.com/sight/p0/1709/76/7691528bc7d7ad3ca3.img.png_800x800_9ef05ee7.png', '成人票,学生票,儿童票,特惠票');

-- ----------------------------
-- Table structure for home_table
-- ----------------------------
DROP TABLE IF EXISTS `home_table`;
CREATE TABLE `home_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` tinyint(4) NOT NULL,
  `img_src` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(32) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `price` int(4) NOT NULL,
  `city` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`,`part_id`,`img_src`,`title`,`sub_title`,`price`,`city`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_table
-- ----------------------------
INSERT INTO `home_table` VALUES ('1', '0', 'http://img1.qunarzz.com/piao/fusion/1807/66/e5a5cec881702f02.jpg_750x200_67bb5691.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('2', '0', 'http://img1.qunarzz.com/piao/fusion/1807/40/1d7be74ed1584002.jpg_750x200_c41233c9.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('3', '0', 'http://img1.qunarzz.com/piao/fusion/1808/5e/514ce60160e62602.jpg_750x200_9b0074e2.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('4', '0', 'http://img1.qunarzz.com/piao/fusion/1807/c6/44fce1467be17702.jpg_750x200_406f5fc3.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('5', '0', 'http://img1.qunarzz.com/piao/fusion/1807/e7/d70d0830a9941b02.jpg_750x200_f8c7d2ad.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('6', '0', 'http://img1.qunarzz.com/piao/fusion/1807/fa/800bd7f554abf302.jpg_750x200_9d809aad.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('7', '0', 'http://img1.qunarzz.com/piao/fusion/1806/1c/4847ea66072c7b02.jpg_750x200_c32457fb.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('8', '0', 'http://img1.qunarzz.com/piao/fusion/1807/22/382624cbe97b0502.jpg_750x200_36a074d6.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('9', '0', 'http://img1.qunarzz.com/piao/fusion/1806/8f/d09fa241a01ac02.jpg_750x200_e0c86013.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('10', '0', 'http://img1.qunarzz.com/piao/fusion/1806/3c/c72a1ccd4d7b2202.jpg_750x200_b88bbab4.jpg', '', '', '0', '');
INSERT INTO `home_table` VALUES ('11', '1', 'http://img1.qunarzz.com/piao/fusion/1803/95/f3dd6c383aeb3b02.png', '景点门票', ' ', '0', '');
INSERT INTO `home_table` VALUES ('12', '1', 'http://img1.qunarzz.com/piao/fusion/1804/ff/fdf170ee89594b02.png', '北京必游', ' ', '0', '');
INSERT INTO `home_table` VALUES ('13', '1', 'http://img1.qunarzz.com/piao/fusion/1803/6a/45f595250c73d102.png', '夏日玩水', ' ', '0', '');
INSERT INTO `home_table` VALUES ('14', '1', 'http://img1.qunarzz.com/piao/fusion/1803/20/831d62d2e1c7be02.png', '文化古迹', ' ', '0', '');
INSERT INTO `home_table` VALUES ('15', '1', 'http://img1.qunarzz.com/piao/fusion/1803/76/eb88861d78fb9902.png', '动植物园', ' ', '0', '');
INSERT INTO `home_table` VALUES ('16', '1', 'http://img1.qunarzz.com/piao/fusion/1803/6c/9e54a8540fee0102.png', '故宫', ' ', '0', '');
INSERT INTO `home_table` VALUES ('17', '1', 'http://img1.qunarzz.com/piao/fusion/1804/5a/13ceb38dcf262f02.png', '一日游', ' ', '0', '');
INSERT INTO `home_table` VALUES ('18', '1', 'http://img1.qunarzz.com/piao/fusion/1804/95/8d02011d149bdb02.png', '汽车票', ' ', '0', '');
INSERT INTO `home_table` VALUES ('19', '1', 'http://img1.qunarzz.com/piao/fusion/1803/95/8246f27355943202.png', '游乐场', ' ', '0', '');
INSERT INTO `home_table` VALUES ('20', '1', 'http://img1.qunarzz.com/piao/fusion/1803/80/416c6ab3368d1f02.png', '全部玩乐', ' ', '0', '');
INSERT INTO `home_table` VALUES ('21', '2', 'http://img1.qunarzz.com/sight/p0/1409/19/adca619faaab0898245dc4ec482b5722.jpg_150x150_06cb3e52.jpg', '故宫', '故宫故宫故宫故宫故宫故宫宫故宫故宫故宫故宫故宫故宫', '20', '北京');
INSERT INTO `home_table` VALUES ('22', '2', 'http://img1.qunarzz.com/sight/p0/1607/7c/7cda8b6782dabd80b4.img.jpg_200x200_2039e660.jpg', '上海迪士尼', '北京天文馆北京天文馆北京天文馆北京天文馆北京天文馆', '1', '北京');
INSERT INTO `home_table` VALUES ('23', '2', 'http://img1.qunarzz.com/sight/p0/1508/a5/4003f9dd7bebf61eccbf64046e26d487.water.jpg_200x200_7690e4cd.jpg', '北京欢乐谷', '古水古镇古水古镇古水古镇古水古镇古水古镇古水古镇古水古镇', '103', '北京');
INSERT INTO `home_table` VALUES ('24', '2', 'http://img1.qunarzz.com/sight/p0/1501/40/40b2b6c951b28fdd.water.jpg_200x200_fdc48968.jpg', '水立方', '周末干嘛？北京很多博物馆已经免费开放啦', '14', '北京');
INSERT INTO `home_table` VALUES ('25', '2', 'http://img1.qunarzz.com/sight/p0/1501/c2/c212a154649088c1.water.jpg_200x200_69d1df69.jpg', '水立方嬉水乐园', '数百年的宫廷庙宇，至今依旧威严霸气', '228', '北京');
INSERT INTO `home_table` VALUES ('26', '2', 'http://img1.qunarzz.com/sight/p0/1804/c8/c88bb5e69c9a9c5ea3.img.jpg_200x200_740720ff.jpg', '古北水镇', '带宝贝观看演出，近距离体验艺术的无穷魅力', '150', '北京');
INSERT INTO `home_table` VALUES ('27', '2', 'http://img1.qunarzz.com/sight/p0/1707/7e/7eba85a5bb321f24a3.water.jpg_200x200_39af4993.jpg', '巴蜀映象', '深圳深圳深圳深圳深圳深圳', '328', '深圳');
INSERT INTO `home_table` VALUES ('28', '2', 'http://img1.qunarzz.com/sight/p0/1507/f0/45ad118808cbfbdd1ca292f6939bdda5.water.jpg_200x200_d0dcc157.jpg', '长影世界城', '深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳', '120', '深圳');
INSERT INTO `home_table` VALUES ('29', '2', 'http://img1.qunarzz.com/sight/p0/1511/d1/d15b414a07fdb54d90.water.jpg_200x200_5962262d.jpg', '国信南山温泉', '深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳', '159', '深圳');
INSERT INTO `home_table` VALUES ('30', '2', 'http://img1.qunarzz.com/sight/p0/1511/2e/2e3c8d254fdee61690.water.jpg_200x200_cd04b016.jpg', '御龙温泉', '深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳', '108', '深圳');
INSERT INTO `home_table` VALUES ('31', '2', 'http://img1.qunarzz.com/sight/p0/1701/d7/d7254657067b123fa3.water.jpg_200x200_1c649145.jpg', '长春凯撒温暖独家村', '深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳', '9', '深圳');
INSERT INTO `home_table` VALUES ('32', '2', 'http://img1.qunarzz.com/sight/p0/201403/10/8b91608f820989e4e06906fde5d820a4.jpg_200x200_5469ce01.jpg', '长春关东文化温泉', '深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳深圳', '68', '深圳');
