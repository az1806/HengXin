/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50709
Source Host           : 127.0.0.1:3306
Source Database       : hxdb

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-05-28 12:59:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `adminName` varchar(45) DEFAULT NULL COMMENT '管理员姓名',
  `adminAccount` varchar(45) DEFAULT NULL COMMENT '管理员账户',
  `adminPwd` varchar(45) DEFAULT NULL COMMENT '管理员密码',
  `adminPhone` varchar(45) DEFAULT NULL COMMENT '管理员电话',
  `adminEamil` varchar(45) DEFAULT NULL COMMENT '管理员邮箱',
  `adminAdress` varchar(45) DEFAULT NULL COMMENT '管理员地址',
  `adminQQ` varchar(45) DEFAULT NULL COMMENT '管理员QQ',
  `adminurl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '刘文达', 'liuwenda', '123', '18739416786', '1017692516@qq.com', '河南周口', '1017692516', null);
INSERT INTO `admin` VALUES ('2', '李豪', 'lihao', '123', '15237285859', '1633874215@qq.com', '河南安阳', '1633874215', null);
INSERT INTO `admin` VALUES ('3', '马正杰', 'mazhengjie', '123', '18337238675', '1758095941@qq.com', '河南林州', '1758095941', null);
INSERT INTO `admin` VALUES ('4', '孟浩宇', 'menghaoyu', '123', '15038220529', '3209477301@qq.com', '河南登封', '3209477301', null);

-- ----------------------------
-- Table structure for general
-- ----------------------------
DROP TABLE IF EXISTS `general`;
CREATE TABLE `general` (
  `cpID` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司简介编号',
  `cp` varchar(500) NOT NULL COMMENT '公司简介',
  `LOGO` varchar(45) DEFAULT NULL COMMENT 'LOGO',
  `Adress` varchar(45) NOT NULL COMMENT '公司地址',
  `Key` varchar(45) NOT NULL COMMENT '公司关键字',
  `Phone` varchar(45) NOT NULL COMMENT '公司电话',
  `Email` varchar(45) NOT NULL COMMENT '公司邮箱',
  `QQ` varchar(45) NOT NULL COMMENT '公司QQ',
  `cpwh` varchar(500) DEFAULT NULL COMMENT '企业文化',
  PRIMARY KEY (`cpID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of general
-- ----------------------------
INSERT INTO `general` VALUES ('1', '河南省恒信锅炉制造有限公司始建于2005年，厂区位于河南省周口市太康县张集镇G311国道路北，距商周高速和永登高速出口1公里，生产和交通条件便利，地理环境优越，恒信锅炉具有B级锅炉制造许可证和D级容器的单位，近年来与多家科研单位和院校合作，目前主要有中船713所技术合作单位，西安交大热能技术合作单位，河南大学试点合作单位，环保会员单位等荣誉称号；恒信锅炉总投资6690万元，厂区占地3万多平方米，主建车间6千平方米，拥有多种大型专用生产设备，埋弧自动焊机、35mm卷板机、80mm摇臂钻床、铣边机、剪板机、立式车床、取边机、车床、电动吊车、叉车等，公司具B级锅炉制造资格，由专业锅炉热能团队组成，其中高工程师2人，工程师助理6人，各类技术人员25人，车间技术人员206人，年生产能力4000蒸吨，是太康锅炉产业界的领军企业。', 'static/images/logo1.png', '河南省周口市太康县张集镇G311国道路北28号', '恒信锅炉有限公司', '18739416786', '1017692516@qq.com', '1017692516', '河南恒信锅炉制造有限公司的质保体系由质量管理、质量控制和产品质量检验等各阶段、各环节有机组成，在控制程序中，实行总经理领导下的质保工程师——各专业责任工程师——各职能部门的专业技术人员三级责任制，并相互协调合作，合理运转。恒信锅炉的质量管理体系率先通过SGS、BV国际权威系列认证。完善的检测手段，使每一道工序都有严格的质量保证，质保体系运转设置了设计、工艺、材料理化、焊接、探伤、检验、设备计量、生产等多个控制系统，形成了从合同评审到售后服务全过程的质量控制。');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gdsID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `gdsName` varchar(45) NOT NULL COMMENT '商品名称',
  `gdsType` varchar(45) NOT NULL COMMENT '商品类型',
  `gdsDesc` varchar(1000) NOT NULL COMMENT '商品描述',
  `gdsKey` varchar(45) NOT NULL COMMENT '商品关键字',
  `gdsUrl` varchar(45) DEFAULT NULL COMMENT '商品图片地址',
  `smid1` varchar(500) DEFAULT NULL,
  `sm1` varchar(500) DEFAULT NULL,
  `smid2` varchar(500) DEFAULT NULL,
  `sm2` varchar(500) DEFAULT NULL,
  `smid3` varchar(45) DEFAULT NULL,
  `sm3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gdsID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'LRF型立式生物质_燃煤热风炉', '4', ' LRF系列燃煤(生物质燃料)热风炉由我公司与中国船舶重I业集团公司联合开发设计的新代供热产品， 本产品采用多头螺旋槽片换热和间接热传递技术，将燃烧与换热设计成一体化，使产品具有结构紧凑、占地面积小安装操作方便，换热强度大，升温快，热风干净，热效率高性能稳定等特点。', '热风炉', 'images/h1.png', '出风温度', '100℃-400℃', '热效率', '>=80%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('2', 'RFYQ燃油气型烘干热风炉', '4', '热风炉启动后，燃料经过燃烧器的燃烧产生高温烟气，多列片内胆将高温烟气的热量传导给被加热的空气，徊程后燃烧机烟气由烟囱排放大气;需加热的空气通过鼓风机或由出风口用热设备自吸送入热风炉、吸取热量后温度輊额定值从热风出口送出、当热风温度达到额定的上限温度时,燃烧器会自动停止燃烧或转为小火焰燃烧，当热风温度降低到额定的下限温度时，燃烧器又会重新点燃运行或转为大火焰燃烧，升温的速度通过调节进风阀来实现。工作原理:', '热风炉', 'images/h2.png', '热量输出', '120、240、360、480、700、1050、1400、2100、2800、4200KW', '热效率', '90%-95%', '适用燃料', '天然气、轻油、重油、煤气、液化气');
INSERT INTO `goods` VALUES ('3', 'ZRF燃油_燃气直燃高温热风炉', '4', 'ZRY直燃式热风炉采用燃烧设备将燃料直接燃烧，产生高温燃与空气混合产生100°C 700°C高温气体,热效率可达95%以上,能与各类干燥设备配套,经高净化处理形成热风和物料直接接触热干燥或烘烤。 该种方法燃料的消耗量约比用蒸汽试或其他间接加热器减少半左右。 因此，在不影响烘干产品品质的情况下,完全可以使用直接式高净化热风，ZRY (Q) 燃油燃热风炉主要由燃烧机、燃烧室组成。相对于燃煤、生物质热风炉，该热风炉燃烧ZRF型燃气直燃式热风炉能够连续提供恒温的干净热空气。燃气直接燃烧，通过天然气燃烧火焰直接加热空气，并通过风机引出的一种新型、 高效、节能的热风设备。', '热风炉', 'images/h3.png', '适用温度', '300℃-1000℃', '热效率', '>=98%', '适用燃料', '天然气、轻油、重油、煤气、液化气');
INSERT INTO `goods` VALUES ('4', 'ZWRF型热风炉(纯净风)', '4', '本系列锅炉采用卧式结构，燃烧方式为室燃，燃料为轻油、天然气、城市煤气、液化气。烟气流程为：燃料在炉膛内燃烧，高温烟气通过内盘管吸热后。在内圈盘管出口进入内圈与外圈之间的通道内进行流动，形成第一回程。经外圈与外部保温之间的通道内流动，形成第二个回程。最后烟气经出口烟箱进入后部烟道，经过换热器后进入烟囱，最后经烟囱排入大气。加热炉系统由供热系统、燃烧系统、电器控制系统三大部份组成。 供热系统的辅机由膨胀槽、储油槽、热油循环泵、注油泵、油过滤器、油气分离器等组成。燃烧系统由燃烧机、本体、换热器组成。 电气控制系统由电气控制柜及其检测、显示仪表等组成。性能优势：1、获得低压高温热介质，调节方便，供热均匀，可以满足精确的工艺温度； ', '热风炉', 'images/h4.png', '蒸汽温度', '120℃', '热效率', '>=93%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('5', 'CLHS型燃油气汽水两用蒸汽锅炉', '2', ' LHS型燃油(气)汽冰两用锅炉属蒸汽开水兼用炉型,具有产蒸汽快、蒸汽品相好、燃料利用率高、操作简便等特点，同时又满足了既要烧开水、又要使用蒸汽的需求。采用智能锅炉控制器全自动运行需砖人看管。运行有异常时自动停机并显示故障，检修方便，同时运行成本低,是节能减排的首选环保产品。汽水两用锅炉运行稳定,具有压力报警、缺水报警、超温报警、 安全阀等多重保护装置， 保障安全。', '蒸汽', 'images/z1.png', '蒸汽温度', '120℃', '热效率', '93%', '适用燃料', '柴油、天然气、液化气');
INSERT INTO `goods` VALUES ('6', 'LDRF型免报检、免监检电蒸汽发生器', '2', '立式设计的电热蒸汽发生器，因为加热元件完全浸没在水中并完全绝热，电锅炉的效率非常高，辐射的损失能降到最低。经过精密计算设计，能使锅炉迅速、高效地达到工作压力。采用低表面热负荷电热元件，不容易熔化或变软，每一元件均进行水压及耐电压试验;锅炉在接上电源及水源后即呵工作。近100%的热效率安静、清洁，更符合环保的要求，不会向大气排放NOx (氮氧化合物)。', '蒸汽发生器', 'images/z2.png', '给水温度', '20℃', '热效率', '>=98%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('7', 'LSS免报检立式燃油气蒸汽发生器', '2', 'LSS型立式全自动免报检蒸汽发生器属贯流式结构，整机控制工艺简单精准，热效率高，预热时间短，采用圆弧形排管结构，使得冷热交换均匀，更高速地达到设定的压力。开机后5 8分钟内蒸气压力即可达到0.4mpa,-键启动式按钮控制， 可设置多达4个时段自动开机运行。设备配有自动加水，压力控制，缺水保护及报警,极低水位自动停炉,超压保护，过压安全阀等多项保护措施。内置汽水分离输出装置,保证输出的蒸质量。亦能在短时间内产生连续蒸汽，冷水状态下5分钟即可稳定输出蒸汽，热水状态下5秒内即可稳定供应蒸汽。配备具有专利的补水缓冲器，使得在补水过程中也不会有明显的压力波动。缩短了工作时间，提高了工作效率。功能亮点:', '蒸汽发生器', 'images/z3.png', '给水温度', '20℃', '热效率', '>=93%', '适用燃料', '柴油、天然气、液化气、城市煤气');
INSERT INTO `goods` VALUES ('8', 'SWF型生物质燃料蒸汽发生器', '2', ' 高效节能:蒸汽发生器采用二次配风燃烧方式，-次风加热二次风助燃，使得燃料燃烧完全，锅炉本体多回程布置，结构紧凑，受热面充足，升压出汽极快。炉内选用新型耐火材料，强化燃烧并可延长本体使用寿命，尾部加置了旋风除尘式余热器，燃烧排放无烟无尘，属环保节能型产品。', '蒸汽发生器', 'images/z4.png', '给水温度', '20℃', '热效率', '>=83%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('9', 'WDRF免报检_免监检_免检电蒸汽发生器', '2', 'WDR型免报检蒸汽发生器采用先进的电蒸发生器/锅炉专用电脑控制器，外形美观，显示丰富,可连续运行也可定时工作，无需专人值守，通常操作人员只需按”启动”键开机,按\"停止”键停机即可，十分简便。', '蒸汽发生器', 'images/z5.png', '适用能源', '电', '热效率', '>=98%', '电源电压', '380v');
INSERT INTO `goods` VALUES ('10', 'ZFQ型燃油气免检蒸汽发生器', '2', 'ZFQ型燃油燃气免检_免监检蒸汽发生器体积小安装简便，整机安装调试完毕出厂,无需报检，无需司炉人员，无需年检，连接好电源和蒸汽管道即可使用，蒸汽发生器产生蒸汽速度快，蒸汽品质好，蒸汽干度好，水质要求低，一键启动根据负荷调节 工作状态，配置原装品牌燃烧器，工作稳定性能好，节能效果好，排放符合城市环保要求。技术优势: ', '蒸汽发生器', 'images/z6.png', '给水温度', '20℃', '热效率', '>=93%', '适用燃料', '柴油、天然气、液化气、城市煤气');
INSERT INTO `goods` VALUES ('11', '生物质蒸汽发生器', '2', '采用全自动智能电控系统   一、燃油（甲醇）、燃气蒸汽发生器性能介绍', '蒸汽发生器', 'images/z7.png', '给水温度', '20℃', '热效率', '>=93%', '适用燃料', '柴油、天然气、液化气、城市煤气');
INSERT INTO `goods` VALUES ('12', 'CLHB系列立卧式浴暖无烟锅炉', '3', '该产品造型新颖，外观大方，内部横水管式构造，烟气多达五回程，利用高温燃烧，旋风尽燃技术，无烟无尘，提高了热效率的同时降低了结垢粘灰的机会。锅炉易拆装，部件互换性强，不易腐蚀、不易结垢，炉体内设有导流管，颗粒燃烧路程加长，能使颗粒中的挥发成份和小颗粒在子炉消烟系统下完全燃烧；设有多道吸热片，加大了炉内受热面积，延长了烟火的换热吸收时间，使热量得到充分吸收。产水速度更快，热效率更高，受热面积大，更加节能。配备脱硫除尘系统，排烟温度低。', '热水锅炉', 'images/r1.png', '回水温度', '60℃', '热效率', '>=83%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('13', 'CLHS立式燃油燃气常压热水锅炉', '3', 'CLHS型全自动燃油、燃气热水锅炉为燃烧器下置烟管式锅炉，锅炉参照JB/T7985-2002《常压热水锅炉通用技术条件》相关标准生产制作、检验，配置智能彩屏锅炉控制器，具有操作方法简便、显示直观、安全可靠等特点，设置菜单有负荷自动调节、自动补水、二段火燃烧、定时运行、循环泵温控等自动控制功能，具备缺水、超温超压等安全保护。配套原装燃烧器，自动程序控制点火， 液压自动风门，使火焰处于优化燃烧效果，增强了整机经济性能。燃烧器火焰在竖炉胆内呈微正压燃烧，高温烟气沿炉胆向上冲刷烟管受热面，对流换热后集中到上部烟箱，经烟囱排入大气。产品亮点: 1、锅炉烟管内置有扰流片，强化了传热，从而减少了对流受热面积，降低了锅炉成本。2、采用新型硅酸铝保温材料，其保温性能好，重星轻，热损失少。3、锅炉装有安全阀等超压安全保护装置，可使锅炉运行更加安全可靠。4、经计算机能效模拟优化设计，整体结构配置合理，性能优良。5、时间设置功能，使锅炉在设定的时段内起停。6、结构设计合理，外形美观大方，不易锈蚀，安装占地面积小。', '热水锅炉', 'images/r2.png', '回水温度', '60℃', '热效率', '适用燃料', '适用燃料', '柴油、天然气、液化气');
INSERT INTO `goods` VALUES ('14', 'CLSG（H）系列立式常压热水锅炉', '3', 'CLSH型立式常压活动炉排生物质燃煤热水锅炉，是多用途立式固定（活动）炉排热水锅炉。锅炉主体材料选用优质锅炉专用碳素钢板，严格按照JB/T7985─95《常压锅炉通用技术条件》及其相关标准生产制作、检验。锅炉整体采用锅壳式结构，由锅壳封头、炉胆、炉胆顶、下封圈、冲天管及横水管组成，特别设计了横向拉撑加强炉体强度；燃烧室布置在炉胆内，燃料在固定炉排上燃烧，燃料所产生的高温烟气通过横向冲刷到管后，经冲天管、烟囱排入大气。', '热水锅炉', 'images/r3.png', '回水温度', '60℃', '热效率', '>98%', '适用能源', '电');
INSERT INTO `goods` VALUES ('15', 'CWDR卧式电热水锅炉', '3', 'CWDR系列全自动热水锅炉采用智能数字锅炉电脑控制器，具有锅炉出水温度控制、四个时段定时运行、锅炉补水控制、出回水温度检测、二 次回水电动调节阀控制等，故障检测有缺水保护、超温保护、炉壳超温保护、 压力保护等完善的保护功能，确保锅炉安全稳定运行。功能亮点:  1、一键启停: 智能数字锅炉控制器，采用动态图形显示锅炉运行状态，全自动调节采暖出水温度和洗浴热水温度,逐级加载和逐级减载加热管组，平衡用电负荷并保护加热元件，延长使用寿命。2、工作状态目了然，数字显温、控温、超温、防冻保护等自动控制功能全，可在5°C-90°C范围内任意设定水温，并可自控热水泵或电磁阀工作，向采暖系统供热或为用户提供热水。     3、采用低表面热负荷电热管,外套管为无缝不锈钢管,与炉体采用法兰连结，拆装方便，便于维护保养，发热元件为电热丝，填充高纯度氧化镁粉，使用寿命长;降低水垢在电热管表面附着。     4、锅炉控制柜和炉体分体式设计，避免了电器元件受热，电路设计先进，制作精良布线整齐合理，具备短路、过载、漏电、缺相、电压异常、温度传感器异常、水位传感器异常、二次过热、水温超高、炉壳超温、缺水故障报警等多种保护。     5、坚固耐用、洁净卫生:内胆采用特殊材料处理，既保护了内胆又保证锅炉水质洁净卫生。6、采用优质保温材料,减少锅炉本身的热损失，其转换效率95%左右。7、外壳选用优质板材，不易腐蚀，美观大方。  8、锅炉整机出厂，结构紧凑，安装简便，只需接通水、电、气即可投入运行。', '热水锅炉', 'images/r4.png', '出水温度', '85℃', '热效率', '>=83%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('16', 'CWNS燃油气常压热水锅炉', '3', '全自动燃油、燃气热水锅炉为燃烧器下置式烟火管锅炉。燃料气、油经燃烧器喷出和雾化后在立式平直炉胆内微正压燃烧，高温烟气沿炉胆向上冲刷烟管受热面，对流换热后到上部烟箱，经烟囱排入大气。锅炉配有进口燃烧器，全自动程序控制，自动化程度高，可使锅炉达到最佳的燃烧效果。本炉型配备原装进口燃烧器，计算机全程模拟控制设计，受热面及烟气的流动都得到了完全优化设计，其结构更紧凑,安装维修更方便。采用高级离心玻璃棉多层保温，热损失少;进口彩色钢板包装，外型美观。可为宾馆、学校、浴池和其它企事业单位提供采暖、生活热水。      锅炉主体严格按照JB/T7985- 95《常压锅炉通用技术条件》及其相关标准生产制作、检验,品质精良锅炉设有多重安全保护(燃烧、超温、超低水位、熄火、停炉、程序起动保护等) ,燃气设有低压和泄漏报警,先进的智能控制技术，可远程运行监控及故障诊断。可设计多台锅炉的集中控制。1、锅炉烟管内置有扰流片，强化了传热，从而减少了对流受热面积，降低了锅炉成本。2、本锅炉采用新型保温材料，其保温性能好，重量轻，成本较低。3、整个锅炉系统安全可靠，锅炉装有安全阀等超压安全保护装置,可使锅炉运行更加安全可靠。4、本系列锅炉经各种炉型设计、论证及技术指标比较后，结构更加合理，性能更加卓越。性能特点: 1、时间设置功能，使锅炉在设定的时间内起停。2、过热保护:锅炉内水温超高时，自动禁止燃烧器工作并报警。  3、二次过热保护:锅炉外壳温度超过105C时，自动切断二次回路，正常后自动复位。4、水位实时监控:锅炉低水位切断燃烧器实现保护。 5、用户可根据负荷的需要需要设定锅炉的供水温度从而降低运行费用。6、进/出水温度显示功能更加方便地掌握锅炉及系统的运行状况。结构特点 锅炉本体采用三回程设计，热效较极高，广泛应用于取暖和供热水用户。产品运行无污染、无噪音、属绿色环保产品。 燃烧系统采用意大利进口燃烧机，配有熄火保护，缺水保护，超高温保护，提供全面的安全保护。 控制系统选用智能型电脑控制器，具有自动补水、燃烧、循环控制等自动控制功能，操作简便。水温控制由数字显温、控温、超温保护等自动控制功能，用户可在30°C-- 90°C之间任意设定水温，确保节能高效。具备时间控制功能，可根据用户需要任意设定开关机时间，并自动记录故障，方便维修。结构设计紧凑，进口彩板，美观大方，不易锈蚀，安装占地面积少。', '热水锅炉', 'images/r5.png', '出水温度', '85℃', '热效率', '>=93%', '适用燃料', '柴油、天然气、液化气、城市煤气');
INSERT INTO `goods` VALUES ('17', 'DZ（L）H系列卧式常压热水锅炉', '3', '卧式生物质热水锅炉受热面采用水冷壁管加螺纹烟管三回程结构，在炉膛前后拱处设置二、三次配风装置，使生物质成型颗粒实现半气化燃烧，有效的减少了不完全燃烧造成的损失，具有结构合理、受热面积大、热效率高、燃烧充分、无污染、低排放等特点。     1、锅炉型式为卧式快装水火管锅炉、热水系统为自然循环。     2、该锅炉换热系统由锅筒、左右集箱、水冷壁组成，主要受热面有炉膛水冷壁，部分锅筒和锅筒内对流管束。', '热水锅炉', 'images/r6.png', '出水温度', '85℃', '热效率', '>98%', '适用燃料', '生物质颗粒/煤/柴');
INSERT INTO `goods` VALUES ('18', 'ZWNS卧式燃油气真空热水锅炉', '3', '燃油气真空热水锅炉产品介绍      真空热水锅炉供应不同温度、不同用途的热水，如中央空调用水、卫生热水、工艺热水等。真空锅炉的下半部结构与普通锅炉样，由燃烧室与传热管组成;其下半部装有热媒介(炉水)，上部为真空汽室，其中插入了U型管(或直管型)热交换器。由于锅炉整体是在负压状态下运行，故绝对安全。      真空热水锅炉的炉内的热媒介(炉水) ,在锅炉运行的全过程中，不进、不出、不增、不减，只封闭在锅炉的真空室内，在锅炉的传热管与热交换器之间传递热星。      炉内的热媒介是完全脱氧的纯净水，无腐蚀，无水垢，使锅炉寿命长达20多年甚至更长。综上所述，具有如此性能的锅炉，其自然的发展趋势就是替代传统的锅筒式与锅壳式锅炉。燃油气真空热水锅炉产品特点     1.锅炉本体:真空相变锅炉本体的燃烧加热部分采用优质Q235板材及20#钢管材。 优点是大燃烧室，锅炉炉膛热负荷小。受热面积大，体积小，结构紧凑，而且容水星小，升温速度快。加之在上部连为一体的负压蒸发室，性能稳定，运行可靠。由于负压蒸发室空间较大，插入的换热器，可根据用户的需求制造。一般卧式锅炉均采用直管型换热器， 两端封头和接管可以拆卸，方便用户维护保养，清洗换热器水管。      2.换热器的制造与构造:换热器采用不锈钢材质，以管束方式插入负压蒸发室内，两端用法兰连接。其优点:拆卸方便，更换简单、不易腐蚀、便于保养清洗，经久耐用。      3.自动化控制:控制部分选用先进控制器，自动检测炉水温度，出水温度;自动检测燃烧器和炉体内部的故障;通过程序设定可控制燃烧时间;能够正确地根据负荷的变化，自动调整燃烧全过程，减少因负荷的变化引起的启动与停止的次数，使锅炉正常的运行，减少启停时吹扫热的损失。      4.燃烧设备:由于真空相变锅炉的特殊设计，根据燃料类型及用户需求，通过专用安装板，可配置各种进口、国产的燃油、燃气燃烧器。', '热水锅炉', 'images/r7.png', '出水温度', '85℃', '热效率', '>=93%', '适用燃料', '柴油、天然气、液化气、城市煤气');
INSERT INTO `goods` VALUES ('19', 'CQG系列蒸汽储罐 空气储罐', '1', '储气罐是指专门用来储存气体的设备，同时起稳定系统压力的作用，根据储气罐的承受压力不同可以分为高压储气罐，低压储气罐，常压储气罐。储气罐不同分：碳素钢储气罐、低合金钢储气罐、不锈钢储气罐。按照压力分：低压储气罐、中压储气罐、高压储气罐。储气罐（压力容器）一般由筒体、封头、法兰、接管、密封元件和支座等零件和部件组成。此外，还配有安全装置、表计及完成不同生产工艺作用的内件。', '压力容器', 'images/y1.png', '温度', '≤70 ℃', '工作压力', ' 0.6MPa', '漏气率', '<0.13 Pa＊m3/s');
INSERT INTO `goods` VALUES ('20', 'MS蒸汽木材防腐罐', '1', '   MS型木材浸渍设备是专业的木材处理的设备，针对木材易腐烂、变形、等问题进行处理的设备，新型木材浸渍罐，浸渍防腐处理后木材的使用年限增长，适于各种环境中使用，木材浸渍罐，不易腐烂变形等。新型木材浸渍罐，安全高效，处理时间短，木材批量生产方便快捷，大批量和小批量生产畅通无阻。木材浸渍罐适于各种木材处理，木材浸渍罐价格，可根据木材密度、厚度调整浸渍罐压力，使药剂更易渗透到木材中。木材浸渍罐质量有保证，安全高效生产，木材真空浸渍罐，第三方检验机构检验质量，出具合格证书。', '压力容器', 'images/y2.png', '温度', '≤70 ℃', '工作压力', ' 0.6MPa', '漏气率', '<0.13 Pa＊m3/s');
INSERT INTO `goods` VALUES ('21', '蒸汽锅炉分汽缸', '1', '锅炉蒸汽分气缸是锅炉的主要配套设备，用于把锅炉运行时所产生的蒸汽分配到各路管道中去，分汽缸系承压设备，属压力容器，其承压能力，容量应与配套锅炉相对应。锅炉蒸汽分气缸主要指的是以蒸汽为介质的分气缸。锅炉蒸汽分气缸是锅炉的主要配套设备，用于把锅炉运行时所产生的蒸汽分配到各路管道中去，分汽缸系承压设备，属压力容器，其承压能力，容量应与配套锅炉相对应。锅炉蒸汽分气缸主要指的是以蒸汽为介质的分气缸。其应用非常的广泛，涉及到电、石油化工、钢铁、水泥、建筑等行业。', '压力容器', 'images/y3.png', '温度', '≤70 ℃', '工作压力', ' 0.6MPa', '漏气率', '<0.13 Pa＊m3/s');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `gdsTypeID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品类型编号',
  `gdsType` varchar(45) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`gdsTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('1', '压力容器');
INSERT INTO `goodstype` VALUES ('2', '蒸汽发生器');
INSERT INTO `goodstype` VALUES ('3', '热水开水锅炉');
INSERT INTO `goodstype` VALUES ('4', '烘干热风炉');

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo` (
  `lbid` int(11) NOT NULL,
  `lburl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES ('1', 'images/lb1.jpg');
INSERT INTO `lunbo` VALUES ('2', 'images/lb2.jpg');
INSERT INTO `lunbo` VALUES ('3', 'images/lb3.jpg');
INSERT INTO `lunbo` VALUES ('4', 'images/lb4.jpg');

-- ----------------------------
-- Table structure for maker
-- ----------------------------
DROP TABLE IF EXISTS `maker`;
CREATE TABLE `maker` (
  `makerID` int(11) NOT NULL COMMENT '制作人编号',
  `makerName` varchar(45) NOT NULL COMMENT '制作人姓名',
  `makerSex` varchar(45) NOT NULL COMMENT '制作人性别',
  `makerPhone` varchar(45) NOT NULL COMMENT '制作人电话',
  `mkaerQQ` varchar(45) NOT NULL COMMENT '制作人QQ',
  `makerEmail` varchar(45) NOT NULL COMMENT '制作人邮箱',
  `makerAdress` varchar(45) NOT NULL COMMENT '制作人地址',
  `makerUrl` varchar(45) DEFAULT NULL COMMENT '制作人图片地址',
  PRIMARY KEY (`makerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maker
-- ----------------------------
INSERT INTO `maker` VALUES ('1', '刘文达', '安', '18739416786', '1017692516', '1017692516@qq.com', '河南周口', 'images/sjs1.png');
INSERT INTO `maker` VALUES ('2', '李豪', '职', '15237285859', '1633874215', '1633874215@qq.com', '河南安阳', 'images/sjs2.png');
INSERT INTO `maker` VALUES ('3', '马正杰', 'F', '18337238675', '1758095941', '1758095941@qq.com', '河南林州', 'images/sjs3.png');
INSERT INTO `maker` VALUES ('4', '孟浩宇', '4', '15038220529', '3209477301', '3209477301@qq.com', '河南登封', 'images/sjs4.png');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `msgID` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言人编号',
  `msgName` varchar(45) NOT NULL COMMENT '留言人姓名',
  `msgPhone` varchar(45) NOT NULL COMMENT '留言人电话',
  `msgEmail` varchar(45) NOT NULL COMMENT '留言人邮箱',
  `msgAdress` varchar(45) NOT NULL COMMENT '留言人地址',
  `msgDesc` varchar(1000) NOT NULL COMMENT '留言内容',
  `msgTime` date DEFAULT NULL COMMENT '留言时间',
  `msgReply` varchar(45) DEFAULT NULL COMMENT '留言状态',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '刘文达', '18739416786', '1017692516@qq.com', '河南周口', '前未', '2019-05-20', '已回复');
INSERT INTO `message` VALUES ('2', '李豪', '15237285859', '1633874215@qq.com', '河南安阳', '强为', '2019-05-19', '已回复');
INSERT INTO `message` VALUES ('3', '马正杰', '18337238675', '1758095941@qq.com', '河南林州', '请问', '2019-05-18', '未回复');
INSERT INTO `message` VALUES ('4', '孟浩宇', '15038220529', '3209477301@qq.com', '河南登封', '权威', '2019-05-17', '未回复');
INSERT INTO `message` VALUES ('11', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('12', 'asd', 'asd', 'asd', 'asd', 'asd', null, null);
INSERT INTO `message` VALUES ('13', 'asd', 'asd', 'asd', 'asd', 'asd', null, null);
INSERT INTO `message` VALUES ('14', 'qq', 'qq', 'qq', 'qq', 'qq', null, null);
INSERT INTO `message` VALUES ('15', 'asd', 'sd', 'ddd', 'ddd', 'ddd', null, null);
INSERT INTO `message` VALUES ('16', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('17', 'asd', 'sd', 'asd', 'sd', 'asd', null, null);
INSERT INTO `message` VALUES ('18', 'asd', 'sd', 'asd', 'sd', 'asd', null, null);
INSERT INTO `message` VALUES ('19', '', '', '', '', '', null, null);
INSERT INTO `message` VALUES ('20', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('21', '', '', '', '', '', null, null);
INSERT INTO `message` VALUES ('22', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('23', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('24', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('25', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('26', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `message` VALUES ('27', 'null', 'null', 'null', 'null', 'null', null, null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsID` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻编号',
  `newsName` varchar(45) NOT NULL COMMENT '新闻标题',
  `news` varchar(2000) NOT NULL COMMENT '新闻内容',
  `newtj` varchar(500) NOT NULL COMMENT '新闻推荐',
  `newsType` varchar(45) NOT NULL COMMENT '新闻样式',
  `newstime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`newsID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '恒信锅炉燃油蒸汽发生器的使用', 'ZFQ型燃油燃气免检_免监检蒸汽发生器体积小安装简便，整机安装调试完毕出厂,无需报检，无需司炉人员，无需年检，连接好电源和蒸汽管道即可使用，蒸汽发生器产生蒸汽速度快，蒸汽品质好，蒸汽干度好，水质要求低，一键启动根据负荷调节 工作状态，配置原装品牌燃烧器，工作稳定性能好，节能效果好，排放符合城市环保要求。技术优势: ', 'ZFQ型燃油蒸汽发生器具有三分钟出蒸汽，节能效果好，操作控制方便等特点，采用原装品牌燃烧设备，燃料利用率高，占地面积小，无需专....', '1', '2019/01');
INSERT INTO `news` VALUES ('2', 'ZFQ型免检燃油气蒸汽发生器', 'ZFQ型燃油燃免报检免监检蒸发生器体积小安装简便，整机安装调试完毕出厂,无需报检，无需司炉人员，无需年检，连接好电源和蒸汽管道即可使用，蒸汽发生器产生蒸汽速度快，蒸汽品质好，蒸汽干度好，水质要求低，-键启动根据负荷调节工作状态，节能效果好，排放符合城市环保要求。', 'ZFQ型燃油燃气免报检免监检蒸汽发生器体积小安装简便，整机安装调试完毕出厂,无需报检，无需同炉人员，无需年检，连接好电源和蒸汽..', '1', '2019/01');
INSERT INTO `news` VALUES ('3', 'LSS燃油气免检蒸汽发生器的特点与使用', 'LSS全自动燃油(气)蒸汽发生器介绍:1、免报检:属于蒸汽发生器范畴， 无需报装报检 2、安全:图纸由省级特检院审核盖章，每 台产品由特检中心检验合格出厂，具备多级防护功能，安全有保障 3、高效:炉膛内布置螺旋翅片对流管,最大程度的增加了换热面积，尾部可加装冷凝节能器，比同类产品节能15%以上4、稳定:工厂以标准批量化形式生产装配，技术精湛，产品运行平稳 5、配置精良:配置优质燃烧机，进口压力控制器，不锈钢立式多级离心泵，最大程度降低产品故障率 6、控制系统:配置旋臂式控制组合，内嵌七寸全触摸型控制屏，可加装物联网选程控制系统，实现用手机APP操控.7、安装简便:产品整机出厂，只须接通水电汽路、排污管和烟囱即可，相比较锅炉节省了大量的安装材料和安装费用8、替代性:本产品一体式出厂，体积小，5吨以内的蒸汽锅炉可采用此蒸汽发生器采用模块组合的方式代替。', '免报检:属于蒸汽发生器范畴，无需报装报检，具备多级防护功能，安全有保障，炉膛内布置螺旋翅片对流管，最大程度的增加了换热面积...', '1', '2019/01');
INSERT INTO `news` VALUES ('4', '恒信真空冷凝热水锅炉为什么节能效果好?', '真空热水锅炉早在70年代就已出现，第一台成品机是在日本面世的。国内在80年代后期就有一一些厂 家研制真空热水锅炉，但由于技术方面的问题，一直未得到推广 。现在这种在日本已经比较成熟的机型，在中国也有了合资工厂生产，笔者就是选用了该工厂的双回路真空热水锅炉。 真空热水锅炉的结构是由燃烧室(火炉)、水管、负压蒸汽室、热交换器、热媒介水等组成的。机体内部为真空状态，与外部空气隔绝，形成密闭状态。热媒水覆盖着火炉和水管并密闭在机体内部，因负压蒸汽室内的压力保持在大气压之下，当密闭在内的热媒水在燃烧加热后，立即就沸腾起来，产生与热媒水相同温度的蒸汽。  机内产生的蒸汽在上升过程中，接触到配置在负压蒸室内的热交换器表面，由于热交换器内的水温低于蒸汽温度，蒸汽会在热交换器表面上冷凝并放出大量汽化热，加热热交换器中的水，冷凝水在策略作用下重又回到热媒水中。因此，热媒水不断在封闭的机体内进行着沸腾=蒸发=冷凝=热媒水\"的循环。无须补充冷凝水，也无空烧的危险。热交换器中的水被加热后输送给用户用于空调和卫生热水。', '燃油燃真空热水锅炉为什么能做到节能效果达95%以上?其原理是恒信真空热水锅炉采用先进的三回程技术加上冷凝器的热量回收，使锅炉....', '1', '2019/01');
INSERT INTO `news` VALUES ('5', 'WDR型免检电蒸汽发生器调试发货', 'WDR型免报检蒸汽发生器采用先进的电蒸发生器/锅炉专用电脑控制器，外形美观，显示丰富,可连续运行也可定时工作，无需专人值守，通常操作人员只需按”启动”键开机,按\"停止”键停机即可，十分简便。', '电蒸汽发生器具有蒸汽供应快、蒸汽品质好、自动化程度高等特点，内部采用管组式结构，容水量不超标，符合国家免检要求，采用智能触..', '1', '2019/01');
INSERT INTO `news` VALUES ('7', '恒信锅炉-燃油气低氮烘干热风炉', ' 热风炉启动后，燃料经过燃烧器的燃烧产生高温烟气，多层列片内胆将高温烟气的热量传导给被加热的空气，多回程后燃烧机烟油烟囱排放大;需加热的空通过鼓风机或由出风口用热设备自吸送入热风炉、吸取热量后温度升至额定值从热风出口送出、当热风温度达到额定的上限温度时，燃烧器会自动停止燃烧或转为小火焰燃烧，当热风温度降低到额定的下限温度时，燃烧器又会重新点燃运行或转为大火焰燃烧，升温的速度通过调节进风阀来实现。', '热风炉启动后，燃料经过燃烧器的燃烧产生高温烟气，多层列片内胆将高温烟气的热量传导给被加热的空气，多回程后燃烧机烟气由烟图排..', '1', '2019/01');
INSERT INTO `news` VALUES ('8', '燃气真空热水锅炉的制造工艺', '1、负压运行，绝对安全，不需资格审查。 真空锅炉因为在负压状态下工作，内部工作压力永远低于外界大气压，因此绝对不会有膨胀爆炸的危险，不属于锅炉压力容器监察规范，也不需要劳动部门的年审、执批等程序。可任意安装在高层、地下室等场所，安装时不受场地条件限制。2、高效运转，可达到91%以上。 真空锅炉采用中心回燃式燃烧方式，在锅炉烟管内加设了折流板，使烟气在锅炉内部的换热时间增长，换热效果更好，降低了排烟温度及排烟损失，提高了锅炉热效率。3、炉内永不结垢，真空无氧，寿命更长。 真空锅炉内部是真空，没有氧气的存在，消除了锅炉有氧腐蚀;另外锅炉内部的热媒水是出厂之前灌好的经过处理的水，在锅炉内部闭式循环，不会产生水垢，保证了真空锅炉的长寿命运转。4、 MSB水管结构，结构紧凑， 节省空间。', '燃油气真空锅炉供应不同温度、不同用途的热水，如中央空调用水卫生热水工艺热水，燃油真空锅炉的下半部结构与普通锅炉样，由...', '2', '2019/02');
INSERT INTO `news` VALUES ('9', 'RFY型卧式燃油气热风炉技术特点', 'RFY熱凡炉以柴油、天然气或甲浣カ燃料，采用全自劫温控装置,熱又炉后劫后, 燃料経辻燃焼器的燃焼六生高温烟气，多晨列片内胆將高温烟气的熱量侍早姶被加熱的空气，多回程后燃焼机烟气由烟肉排放大气;需加熱的空气通辻鼓凡机或由出凡口用熱没各自吸送入熱凡炉、吸取熱量后温度升至額定値从熱凡出口送出、当熱凡温度込到額定的_上限温度吋，燃焼器会自幼停止燃焼或特的小火焔燃焼，当熱又温度降低到額定的下限温度吋，燃焼器又会重新点燃返行或カ大火焔燃焼，升温的速度通辻凋苟迸凡閥来突現。', '热风炉启动后，燃料经过燃烧器的燃烧产生高温烟气，多层列片内胆将高温烟气的热量传导给被加热的空气，多回程后燃烧机烟气由烟囱排..', '2', '2019/02');
INSERT INTO `news` VALUES ('10', '恒信锅炉水冷壁管的焊接制造工艺', '工业锅炉般蒸发 量都比较小，都在40以下，以10-35左右居多， 而且I业锅炉的用途也和电站的锅炉不-样，工业锅炉主要产的蒸汽和热水要求指标也不是很高，一般用途为一 些工业蒸汽所用，例如咖加热炉蒸汽密封，蒸汽热水供暖等用处，工业锅炉形式很多，但大多数以链条炉居多，因为链条炉技术成熟，结构简单可靠，也实现了自动化，等因素，受到大多数锅炉用户的青睐。链条炉的结构有链条炉排，煤闸门，老鹰铁，炉膛，放渣管，水冷壁，上下集箱， 过热器(蒸汽锅炉有)，对流管束，上下集箱(汉名汽包)， 省煤器， 空预器，以及相应的辅助系统及泵和风机，还有仪表等装置。其结构特点是前后水冷壁形成多种炉拱，作用是促进点火和燃烧，使燃烧更完全。炉排有风仓，可以根据所燃烧的煤种具体分配风仓配风量。电厂锅炉主要有煤粉炉和循环流化床锅炉为主，燃气锅炉其蒸发量大，效率高，结构也和链条炉不同，煤粉炉和循环流化床锅炉结构相似，但是原理不同，煤粉炉和循环流化床锅炉都用有风孔的床底，一 次风由床底鼓入，二次风携带煤粉带入炉内形成混合燃烧，燃尽后经旋风分离器分离出未燃烧完全的煤粉进行再次燃烧，而流化床锅炉使煤粉形成流化形式，比煤粉炉燃烧效果更好，燃烧充分，也实现了低温燃烧，减少了氮氧化物的排放。', '工业锅炉般蒸发量都比较小，都在40以下，以10-35左右居多，而且工业锅炉的用途也和电站的锅炉不一样，工业锅炉主要产的蒸汽和热水要..', '2', '2019/02');
INSERT INTO `news` VALUES ('11', 'ZWNS燃油气真空热水锅炉的原理安装方法', '真空相变热水锅炉的下半部结构与普通锅炉样，由燃烧室与传热管组成其下半部装有热媒介(炉水)，上部为真空汽室，其中插入了U型管(或直管型) 热交换器。由于锅炉整体是在负压状态下运行，故绝对安全。炉内的热媒介(炉水) ，在锅炉运行的全过程中，不进、不出、不增、不减，只封闭在锅炉的真空室内，在锅炉的传热管与热交换器之间传递热星。炉内的热媒介是完全脱氧的纯争水，无腐蚀，无水垢，使锅炉寿命长达20多年甚至更长。综上所述，具有如此性能的锅炉，其自然的发展趋势就是替代传统的锅筒式与锅壳式锅炉。', '真空相变热水锅炉的下半部结构与普通锅炉样，由燃烧室与传热管组成;其下半部装有热媒介(炉水K) ，上部为真空汽室， 其中插入了U型...', '2', '2019/02');
INSERT INTO `news` VALUES ('12', '锅炉压力容器焊接工艺', ' 目前在日、美、德等发达国家焊接锅炉管已得到广泛应用,碳钢、合金钢电焊锅炉管生产技术逐趋成熟,而我国尚处于试制阶段,仅个别厂加大电焊锅炉管的开发力度本文较详细地介绍了国内外焊接锅炉管生产及应用情况并对国外焊接锅炉管的生产技术要求、生产工艺、装备要求等进行了综述在日前水煤气管统天下、 大量滞销焊管I业亟待优化结构的情况下,指出焊管工业近期应大力开发碳钢低中压电焊锅炉管等高技术、高附加值的优质焊管', '目前在日、美、德等发达国家焊接锅炉管已得到广泛应用碳钢、合金钢电焊锅炉管生产技术逐趋成熟而我国尚处于试制阶段仅个别厂加...', '2', '2019/02');
INSERT INTO `news` VALUES ('13', '恒信WNS型燃油气低氮蒸汽锅炉的安装', ' WNS系列全自动燃油(气)蒸汽锅炉(实用新型专利)，采用卧式三回程湿背结构， 改善锅炉运行环境，提高锅炉效率和使用寿命; 全部烟气通道置于水中，尾部配有余热水箱及完善的保温外包设计，烟箱密封采用迷宫式结构，避免了烟箱漏烟现象。锅炉热效率高达85%以上，采用有良好膨胀性能的波纹炉胆与锥形炉胆的组合炉胆，炉胆尺寸与火焰相吻合，烟气流通面积以次减小，使烟气等速流动，保证高温烟气在炉内的热交换时间，达到**传热效果;采用与锅炉完全匹配的高性能燃烧机，进行全面自动调节，使燃烧充分，节省燃料，降低污染;采用高保温性能的超细玻璃棉，散热损失更小;采用智能化节能控制系统，对锅炉及供汽(供水)系统进行控制，结合不同负荷调节燃料供给，更加节能。安装方式为整体快装锅炉，振动小，对地基无特殊要求，不需地脚螺栓固定，安装简单易行。采用活动炉头结构，可匹配各种燃烧器，更换炉头，维修炉体方便快捷。前、后烟箱采用活动可拆结构，可方便地对锅炉内部进行检查、维护、保养，简单、便捷，产品设计新颖、结构合理，工艺性能良好，使本产品具有不同凡响的优异品质', 'WNS系列全自动燃油(气)蒸汽锅炉(实用新型专利) ,采用卧式回程湿背结构，改善锅炉运行环境，提高锅炉效率和使用寿命;全部烟气..', '2', '2019/02');
INSERT INTO `news` VALUES ('14', ' ZFQ食品行业燃气蒸汽发生器使用现场', 'ZFQ型燃油燃气免检_免监检蒸汽发生器体积小安装简便，整机安装调试完毕出厂,无需报检，无需司炉人员，无需年检，连接好电源和蒸汽管道即可使用，蒸汽发生器产生蒸汽速度快，蒸汽品质好，蒸汽干度好，水质要求低，一键启动根据负荷调节 工作状态，配置原装品牌燃烧器，工作稳定性能好，节能效果好，排放符合城市环保要求。技术优势: ', 'ZFQ型燃气免检蒸汽发生器具有免年检和免报检、免安装特点，配罟智能锅炉控制!器，可手机联网操控， 安全可靠自动运行， 燃烧器自动点...', '3', '2019/03');
INSERT INTO `news` VALUES ('15', '常压热水锅炉能承受几个压?', ' 常压热水锅炉及不能承压的开式热水锅炉，在早期主要是我国南方些不具备压力容器生产资质生产的，使用国外进口的燃油或者燃气的燃烧器，用于加热生活热水。由于提供生活热水锅的设备一般要安装换热器， 因此这种锅炉只需要提供定温度的热媒而无需承压。 当我国对清洁能源锅炉需求越来越多时，北方市场上需要大量的燃油燃气锅炉，特别是在集中供暖方面，南方的锅炉制造商为了打开市场销路，他们在不太了解集中供暖系统的情况下，提出了以常压热水锅炉为中心的集中供暖系统，可想而知，效果并不理想。', ' 常压热水锅炉能承受压力么，燃油燃气常压热水锅炉是不承压运行的，根据使用原理不同采用合理的方式运行。..', '3', '2019/03');
INSERT INTO `news` VALUES ('16', ' SWZ生物质颗粒燃料免检蒸汽发生器特点', '生物质蒸汽发生器是以生物质木质颗粒为燃料，通过半气化燃烧产生热源，将生物质蒸汽发生器内胆中的水加热到设计参数使之连续产生蒸汽的一种小型生物质蒸汽锅炉。生物质蒸汽发生器运行成本低、排放达标、免锅检、自动化程度高，是广大中小企业节能减排的理想之选。1.免锅检:设计水容积> 30L不需要年检，免除了繁杂的报批登记年审手续;2.低成本:其运行成本是电锅炉的六分之一, 是燃油锅炉的三分之一;3.环保达标:半气化式燃烧方式，热效率高，达到规定排放标准的要求;4.安全放心:配置有优质压力控制器，安全阀，设有超压，低水位和过热保护等多重保护，以确锅炉安全运行;5.安装方便:模块化整机出厂已配置好补水泵和电磁阀，只需接通电源，进水管和排污管即可使用;6.节能减排:标配两回程烟气节能器和水浴除尘器，充分利用排烟余热，降低粉尘排放;7.操作简单:一键式操作，只需把水、电安装到位，按下开关键，锅炉就会进入全自动运行状态;8.自动智能:配备有微电脑自动运控制系统，自动进料、自动点火、自动补水，运行有异常时自动停机并声光报警,指明故障代码，检修方便;9.维护省心:故障率极低，完全燃烧后仅有少星粉末状灰粉残余物，容易处理。', '生物质蒸汽发生器是以生物质木质颗粒为燃料，通过半气化燃烧产生热源，将生物质蒸汽发生器内胆中的水热到设计参数使之连续产生蒸..', '3', '2019/03');
INSERT INTO `news` VALUES ('17', 'ZFQ免报检燃油蒸汽发生器', 'ZFQ型燃油燃气免检_免监检蒸汽发生器体积小安装简便，整机安装调试完毕出厂,无需报检，无需司炉人员，无需年检，连接好电源和蒸汽管道即可使用，蒸汽发生器产生蒸汽速度快，蒸汽品质好，蒸汽干度好，水质要求低，一键启动根据负荷调节 工作状态，配置原装品牌燃烧器，工作稳定性能好，节能效果好，排放符合城市环保要求。技术优势: ', 'ZFQ型燃油燃气免报检免监检蒸汽发生器体积小安装简便，整机安装调试完毕出厂，无需报检，无需司炉人员，无需年检，连接好电源和蒸汽..', '3', '2019/03');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype` (
  `newsTypeID` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻类型编号',
  `newstype` varchar(45) NOT NULL COMMENT '新闻类型',
  PRIMARY KEY (`newsTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES ('1', '行业资讯');
INSERT INTO `newstype` VALUES ('2', '公司新闻');
INSERT INTO `newstype` VALUES ('3', '产品信息');
