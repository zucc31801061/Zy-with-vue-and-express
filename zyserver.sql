/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : zyserver

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 30/06/2021 17:21:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '全国中医学术流派和基层中医药临床诊疗学术研讨培训班在常举办', '2021-06-08', '5.jpg');
INSERT INTO `article` VALUES (2, '传承中医瑰宝，常州市中医医院独揽两项“非遗”', '2021-05-06', '6.jpg');
INSERT INTO `article` VALUES (3, '中医科研又有突破！省中医院再获江苏科学进步一等奖', '2021-01-08', '7.jpg');
INSERT INTO `article` VALUES (4, '江苏来的李医生，仁心仁术，“扎实的很”', '2021-01-08', '8.jpg');
INSERT INTO `article` VALUES (5, '中医药界大咖齐聚南京，共话加速中医药现代化发展', '2020-09-23', '9.jpg');
INSERT INTO `article` VALUES (6, '教育部：将增设中医疫病课程 强化中医药防疫人才培养', '2020-08-28', '10.jpg');
INSERT INTO `article` VALUES (7, '国家中医药管理局：中医医疗机构要强化院感防控', '2020-06-20', '11.jpg');
INSERT INTO `article` VALUES (8, '全国中医药大会今天召开：我国中医药服务体系日益完善', '2019-10-25', '12.jpg');

-- ----------------------------
-- Table structure for article_detail
-- ----------------------------
DROP TABLE IF EXISTS `article_detail`;
CREATE TABLE `article_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NULL DEFAULT NULL,
  `section` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_detail
-- ----------------------------
INSERT INTO `article_detail` VALUES (1, 1, '　　6月5日，由常州市中医药学会主办、常州市卫健委承办的2021国医大师、名老中医经验传承暨全国中医学术流派和基层中医药临床诊疗学术研讨培训班在常顺利召开。大会邀请了国医大师刘志明、国医大师王世民等多位专家现场授课，全国各地专家学者、中医爱好者400余名代表参加。');
INSERT INTO `article_detail` VALUES (2, 1, '　　国医大师刘志明参观常州市中医医院后表示，通过参观与交流，感受到医院富含中医药文化特色的管理文化，并对院领导在中医的传承、发展和创新上所做的努力赞不绝口。他提到，江苏中医在全国的地位很高，为全国培养了很多中医骨干，常州市中医医院人才济济，中医功底扎实，在孟河医派的传承上起到了举足轻重的作用，他希望我院在未来继续保持守正创新的方向，让孟河医派进一步发扬光大。');
INSERT INTO `article_detail` VALUES (3, 1, '　　王世民大师也充分肯定了中医院“八个一”、“五个专”的发展方向，对常州中医、孟河医派传承工作表示高度赞扬。他还以《伤寒论》、《千金要方》为例，指出“专病、专药”是对中医方剂的升华，是精准治疗的方向。');
INSERT INTO `article_detail` VALUES (4, 1, '　　此次国医大师、名老中医传承培训在常州举办提高了常州广大中医人的文化自信，常州市中医医院将以此为契机，带领年轻医生以国医大师为榜样不断精进，培养中医药人才，传承创新发展好中医药事业，让老百姓更加爱中医、信中医、用中医，创造一个良好的中医氛围，促进我市中医药事业发展，为龙城百姓的健康护航。');
INSERT INTO `article_detail` VALUES (5, 1, '　　支医期间他不断探索发挥专 业优势，发现这里学龄儿童口腔保健意识薄弱，于是利用休息时间联系了天宁区支教老师与他们携手共同至旬阳县吕河镇、小河镇、石门镇3所偏远小学开展“口腔健康全身健康”、“牙齿检查互动教学”的生动科普活动，并为孩子们捐赠牙齿护理包200份，开创了“支医+支教”联合帮扶新模式。');
INSERT INTO `article_detail` VALUES (6, 1, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (7, 2, '　　记者从常州市中医医院了解到，该院兰陵程氏针灸，孟河医派临方炮制技术两项被评为第五批常州市非物质文化遗产。');
INSERT INTO `article_detail` VALUES (8, 2, '　　常州市中医医院程氏针灸历经六代，距今已有近两百年历史。历经百年发展，程氏针灸已经形成了“三辨一诊”、内外兼顾、通脱并举的程氏针疗体系，特色鲜明。程氏针灸以经络腧穴学为主导，讲究“凡将用针，必先诊脉” 重视四诊合参辨证，取穴精少，术随法出。它凭借奇特的针法，创新的穴位，显著的疗效享誉省内外，在全国针灸学界也有一定的影响。而今，常州市中医医院程氏针灸传人们精勤不倦，将程氏针灸独门技术不断应用临床，惠及更多患者。');
INSERT INTO `article_detail` VALUES (9, 2, '　　孟河医派临方炮制技术历史悠久，如“糯米炒川贝”、“酒浸百部”、“青蒿鲜者打汁冲”等等的临方炮制方法，可追溯至南北朝时期《肘后备急方》《本草经集注》和《雷公炮炙论》等。经过数百年的传承发展，孟河医派临方炮制技术不仅承载着宝贵的中医药传统知识，而且也蕴含着重要的历史文化价值，是我国传统医药文化的瑰宝，现为江苏省常州市非物质文化遗产项目。这些炮制技艺既是我国传统的制药技术，也是我国拥有的原创知识产权。在临床上，许多有其独特治疗效果的中药炮制品，还蕴藏着极其深奥的科学价值。');
INSERT INTO `article_detail` VALUES (10, 2, '　　据了解，常州市中医医院着力挖掘孟河医派传统文化，积淀了“精、诚、守、和”的医院精神，坚持发挥中医药特色，充分体现了孟河医派精诚谦和的遗风。传承精华，守正创新，医院将为建设一所中医药优势突出、流派特色明显、现代科技进步、学科力量雄厚的综合性中医名院而努力奋斗。');
INSERT INTO `article_detail` VALUES (11, 2, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (12, 3, '　　你知道吗？高血压、糖尿病都会导致肾脏损害，如何延缓这样的伤害呢？近日，省政府关于 2020 年度江苏省科学技术奖励的决定（苏政发〔2021〕3 号）正式公布，江苏省中医院国家岐黄学者、江苏省名中医、党委书记方祝元领衔的 \" 重大慢病相关肾损害的中医药防治转化应用研究 \" 项目组获江苏省科学技术奖一等奖。这是江苏中医临床科学研究的又一历史性突破。全国名中医刘沈林教授领衔的 \" 益气化瘀解毒法治疗进展期胃癌的方药创制与疗效评价及其转化应用 \" 项目组、江苏省名中医王培民教授领衔的 \" ‘易层’贴敷技术治疗膝骨关节炎的临床与基础研究 \" 项目组荣获 2020 年度江苏省科学技术奖二等奖。');
INSERT INTO `article_detail` VALUES (13, 3, '　　江苏省科学技术奖是全省科技领域最高级别的奖项，旨在奖励在本省科学技术活动中作出突出贡献的单位和个人。这是医院 2011 年以国医大师夏桂成教授团队 \" 中医女性生殖节律创新理论及临床应用 \" 获得江苏省科学技术奖一等奖后，时隔十年获得江苏中医临床科学研究的又一历史性突破。');
INSERT INTO `article_detail` VALUES (14, 3, '　　方祝元领衔的项目团队长期致力于高血压等慢病的临床研究，围绕如何有效延缓高血压和糖尿病导致肾脏损害的传承研发、临床研究和推广应用及机制研究，耗时 28 年，取得了一系列成果。首先，团队提出 \" 病初即可及肾 \" 的新认识，强调 \" 因实致病 \" 是重大慢病相关肾损害早期的主要病机特点，观点被纳入全国高等中医院校规划教材；其次，团队创制了系列防治重大慢病相关肾损害的特色制剂，如治疗高血压早期肾损害的潜阳育阴颗粒、糖尿病早中期肾损害的芪葵颗粒等。再者，创建了针对不同目标人群不同阶段防治肾损害的中医药综合干预方案，揭示了中医药肾保护作用的新机制，体现了中医药防治重大慢病相关肾损害的特色优势。');
INSERT INTO `article_detail` VALUES (15, 3, '　　截至目前，本成果推广至全国及省内 19 家三级医院应用，获得良好的社会效益。团队牵头制定了《基层高血压中医药防治指南》，并在《国家基层高血压防治管理指南》中首次增加了 \" 高血压的中医药防治策略 \" 的重要章节，并主持制定了《糖尿病肾病中西医结合防治专家共识》。本项目共获专利 4 项，制剂证书 4 项，软件著作权 2 项；发表相关学术论文近 200 篇。主编全国高等中医院校《中医内科学》规划教材 2 部。该项目推动了学科建设发展，获国家中医药管理局高血压育阴潜阳重点研究室、区域诊疗中心、重点专科和重点学科。');
INSERT INTO `article_detail` VALUES (16, 3, '　　\" 益气化瘀解毒法治疗进展期胃癌的方药创制与疗效评价及其转化应用 \" 此次获得 \"2020 年度江苏省科学技术奖二等奖 \"，项目主要完成人刘沈林教授长期开展胃癌防治的临床和基础研究工作，该项目在传承的基础上凝练出进展期胃癌 \" 脾虚瘀毒 \" 的核心病机，提出 \" 益气化瘀解毒 \" 的治疗原则 , 创制了 \" 健脾养正消癥方 \"，经省内外 11 家医院多中心研究证实该方可显著改善胃癌术后复发转移风险、提高晚期胃癌患者生活质量，延长患者生存期。基于上述临床效果，该方已研制成胃瘤安合剂（苏药制字 20140002），临床应用广获好评。项目经多方认可，2009 年确定江苏省中医院为国家中医临床研究基地，成为全国唯一一家研究胃癌的基地，承担胃癌的中医临床研究任务。项目团队近年来累计发表论文 200 余篇，其中 SCI 论文 42 篇。主编论著 4 部，获批胃癌相关发明专利 5 项，获得 2 项国际奖项。基于多年的研究积累，刘沈林教授团队构建了省内胃癌中西医结合诊疗网络，创立了胃癌中西医结合临床路径，在国内牵头制定了《中医胃癌康复指南》（中华中医药学会 2019）和《胃癌中西医结合诊疗专家共识》（中国中西医结合学会 2020）等。此外，先后建立了江苏省中西医结合肿瘤临床研究中心、江苏省中西医肿瘤诊疗平台、肿瘤康复基地，成立了刘沈林全国名中医工作室及基层工作站等，显著提高了江苏地区中西医结合治疗胃癌的整体学术水平。');
INSERT INTO `article_detail` VALUES (17, 3, '　　\" 易层 \" 贴敷技术治疗膝骨关节炎的临床与基础研究获得 2020 年度江苏省科学技术奖二等奖。第一完成人王培民教授长期开展如何缓解膝骨关节炎的临床研究，在国家 \" 十一五 \" 科技支撑项目、国家及省自然科学基金、省社会发展重点专项等持续支持下，首先，揭示了外治技术在控制骨关节退变性疾病的疼痛的疗效优势，提出了针对 \" 以痛为枢 \" 的膝骨关节炎治疗理念，团队形成了 \" 以痛为枢 \" 的临床诊治思路，该理论被《中国中医年鉴》收录。其次，在外治技术上中西结合，集成微针和变温技术，进一步提高了临床疗效。再者，经多项国家和省自然基金项目资助，团队率先证实膝骨关节炎存在痛敏，并率先报道痛敏由 TRPs 介导，明确了其性质特点（冷痛敏、机械痛敏），契合膝骨关节炎 \" 遇寒则痛、得温则舒 \"\" 遇劳则痛、休息缓解 \" 的临床疼痛特点。最后，基础研究向设备研发转化：团队联合南京恒丰医疗器械有限公司研发了压力及温度敏感测痛仪，分别测量膝关节局部的压力痛阈值及冷 / 热痛阈值，使疼痛评价指标客观化；团队联合南京理工大学研发了全自动重粘稠膏药喷头阵列式小型均匀涂敷装置，解决了 \" 易层 \" 贴敷技术在临床供不应求的问题。');
INSERT INTO `article_detail` VALUES (18, 3, '　　本项目成果在省内 10 家省市区及社区推广应用。2016 年该技术被纳入江苏省级中医康复方案的膝骨关节炎非手术推荐疗法。该技术纳入基层特色科室省级孵化中心（骨伤专业）项目，并在 8 家基层科室进行规范化培训和推广应用，三年来，\" 易层 \" 贴敷外治技术年均治疗 20 余万人次。');
INSERT INTO `article_detail` VALUES (19, 3, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (20, 4, '　　陕西省安康市旬阳县甘溪镇，距离江苏省常州市1300多公里，这里地处秦岭南麓山区，亟待发展提高的基层医疗需求。常州天宁区红梅街道社区卫生服务中心副主任李成，主动请缨参加了第三批东西部扶贫协作对口支医的任务。在甘溪镇，镇卫生院的门诊、病房、手术室，都有李成工作留下的汗水。诊疗、教学、培训、体检义诊，他走遍了甘溪全镇12所村庄。他开创了“支医+支教”联合帮扶新模式，将公益之心留在了甘溪镇。');
INSERT INTO `article_detail` VALUES (21, 4, '　　2020年7月，李成从抗击疫情的战场转身，匆匆收拾行囊告别年幼的孩子、家人义无反顾地踏上了援陕的客车。作为第三批支医小队的队长，一名有着15年党龄的医生，李成从到达旬阳县甘溪镇卫生院的第 一 天便投入到紧张的工作中。');
INSERT INTO `article_detail` VALUES (22, 4, '　　甘溪镇的7到9月正值雨季，经常会有沙石滑坡的风险，小路曲曲弯弯盘旋而上，一侧就是悬崖，还没有无护栏，但为了随访，李成不顾安危，经常与同仁徒步跨越几座山头入户巡诊。');
INSERT INTO `article_detail` VALUES (23, 4, '　　李成也是一名医院管理学硕士，医疗帮助的同时积极为当地医院的体系建设、特色科室规划、疫情防控指导等出谋划策，他把江南基层管理的先进理念与经验传播在这秦巴大地。');
INSERT INTO `article_detail` VALUES (24, 4, '　　支医期间他不断探索发挥专 业优势，发现这里学龄儿童口腔保健意识薄弱，于是利用休息时间联系了天宁区支教老师与他们携手共同至旬阳县吕河镇、小河镇、石门镇3所偏远小学开展“口腔健康全身健康”、“牙齿检查互动教学”的生动科普活动，并为孩子们捐赠牙齿护理包200份，开创了“支医+支教”联合帮扶新模式。');
INSERT INTO `article_detail` VALUES (25, 4, '　　李成热衷公益，了解到有位孤儿学生面临困难的情况，他还带领队员积极开展精 准帮扶，在旬阳县慈善协会的见证下设立了《江苏省常州市天宁区支医小队慈善助学基金》协议，共同捐资5万余元保障孩子完成学业。无论是监护室的贫困患者、安置小区的困难家庭、学校的特困学生都曾有他带头帮助过的身影。');
INSERT INTO `article_detail` VALUES (26, 4, '　　在支医即将结束，李成知道安康血站缺少急救血液，辗转联系到血站，坐车2个多小时赶至县城，撸起袖子献出热血然后又回到单位继续工作。');
INSERT INTO `article_detail` VALUES (27, 4, '　　常怀感恩之心、多做善人义举是李成经常挂在嘴边的口头禅。甘溪卫生院的同仁这样评价他：江苏来的李医生仁心仁术，“扎实的很”。临别时的座谈会上，李成接过旬阳县卫健局颁发的那份“沉甸甸”的表彰证书，他知道那是一份收获、是一份肯定、更是一份继续努力的责任。');
INSERT INTO `article_detail` VALUES (28, 4, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (29, 5, '　　9月23日，2020年南京国际新医药与生命健康产业创新投资峰会论坛三——中医药与天然药物创新论坛举行。现代快报记者获悉，来自全国各地100多名专家学者、企业代表和政府部门人员参会。就如何加速中医药现代化发展，与会嘉宾展开交流与讨论，为南京中医药现代化发展指明方向。');
INSERT INTO `article_detail` VALUES (30, 5, '　　此次论坛由栖霞高新区江苏生命科技创新园、药咖荟、《药学进展》编委会和南京中医药大学共同承办。论坛以“加速中医药现代化，促进天然药物产业化”为主题，围绕“传承创新、跨越发展”开展主题报告，根据“如何发挥多学科交叉、产学创合作机制，加速中医药与天然药物研发产业化？”该论点进行圆桌对话。');
INSERT INTO `article_detail` VALUES (31, 5, '　　南京市栖霞区委副书记、栖霞区区长、栖霞高新区工委书记王生开场致辞。他指出，近几年，栖霞区实施产业链“链长制”，制定产业图谱、聚焦创新药、重点培育龙头企业、搭建产业发展平台，全力发展中医药现代化和国际化，加快中医药产业链的重构；通过“院府合作”“校府联动”推动各类优质医疗资源向栖霞集聚，为中医药创新思想的汇聚提供重要舞台。');
INSERT INTO `article_detail` VALUES (32, 5, '　　随后，栖霞高新技术产业开发区管委会主任吴丹进行产业投资环境推介。江苏生命科技园作为“一谷一镇三园”产业聚集区之一，素有栖霞生物医药“小硅谷”之称。栖霞高新区通过聚焦核心技术、搭建载体平台、打造龙头企业、引育双创人才、优化生态环境，持续推动生物医药产业持续健康发展，生命科技创新园目前已入驻生物医药企业200余家，2019年实现营业收入约30亿元。');
INSERT INTO `article_detail` VALUES (33, 5, '　　大会现场，北京协和医学院教授杜冠华、南京中医药大学副校长胡立宏、上海中医药大学交叉科学研究院院长张卫东、中国科学院上海药物研究所新药研究国家重点实验室副主任柳红等嘉宾分别作主题报告。随后进行的圆桌对话，各位教授就在中药及天然药物科研过程中发现的重点难点、未来多学科促进中药学、天然药物化学发展等方面的问题进行了研讨交流，从中医药与天然药物的研究、经典案例分享，再到中医药与天然药物发展与创新，内容丰富而精彩。');
INSERT INTO `article_detail` VALUES (34, 5, '　　此次活动搭建起全方位、多领域、高层次的交流合作平台，将促进多学科交叉研究，加强院校、校府、院府间的思想碰撞，加快中医药与天然药物产业创新发展与国际化。');
INSERT INTO `article_detail` VALUES (35, 5, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (36, 6, '　　教育部高等教育司司长吴岩27日表示，将研制出台《关于深化医教协同进一步推动中医药教育改革和高质量发展的实施意见》。《意见》对传承创新发展中医药教育作出整体部署，明确提出完善中医药学科体系，强化中医基础类、经典类、疫病防治类学科的建设，增设中医疫病相关课程等具体举措，强化中医药防疫人才的培养。');
INSERT INTO `article_detail` VALUES (37, 6, '　　27日，教育部召开新闻发布会。会上，有记者问：此次抗疫过程中，医学院校教职员工和青年学生积极支持抗疫，并且组织编写了《高校新冠病毒防控指南》等，发挥了重要作用。请问教育部接下来在高等医学教育改革发展都有什么考虑？将展开哪些具体工作？');
INSERT INTO `article_detail` VALUES (38, 6, '　　吴岩回应称，在今年上半年抗疫第一线，高校医学院校各专业的教师和同学们积极投身到一线工作，成为“最美逆行者”。全国138所高校371家附属医院，1.4万名医护人员驰援湖北，新中国成立以来，医学教育培养的数以百万计的医疗卫生工作者，在抗疫一线英勇奋战，在这种史无前例的大考中，交出了一份优异的答卷，把他们叫做“最美天使”毫不为过，他们也是新时代最可爱的人。');
INSERT INTO `article_detail` VALUES (39, 6, '　　吴岩表示，在抗疫一线的同时，在高校的教育教学一线，医学生和医学院校表现同样出色。他们在“停课不停学”“停课不停教”的过程中堪称一流。我们做了很多调查，他们在教育教学工作中的“四变”“三稳”中发挥了中流砥柱的作用，也是一道靓丽的风景线。同时在抗疫过程中，我们时刻密切地跟踪医学教育情况，在痛中思痛，现在还不好说是痛定思痛，我们也深深地知道、冷静地判断，医学教育人才培养还有一些短板和薄弱环节。');
INSERT INTO `article_detail` VALUES (40, 6, '　　吴岩指出，下一步将重点做好两方面工作：一是要着眼长远，全面部署医学教育改革创新发展，大力加强防疫人才培养。面对疫情提出的新挑战、实施健康中国战略的新任务、中医药传承创新发展的新要求，下半年将推进高等医学教育改革创新发展，有几项重要工作：');
INSERT INTO `article_detail` VALUES (41, 6, '　　第一，要加快研制出台《关于加快医学教育创新发展的指导意见》，要以新理念谋划医学发展，以新定位推进医学教育发展，以新内涵强化医学生培养，以新医科统领医学教育创新。在这个发展里面，比如我们要加快高水平公共卫生人才培养体系，要布局建设一批高水平的公共卫生学院，要强化全体医学生的公共卫生与预防医学、传染病防控知识教育，为学生毕业后从事传染病预防和控制打下坚实的基础。');
INSERT INTO `article_detail` VALUES (42, 6, '　　同时，在这个文件里还要强化发挥综合性大学的学科综合优势，围绕药物创新、疫苗攻关等领域，加快建设具有中国特色、世界水平的医学基础研究创新基地，加快疫苗药品的研发工作。这是要出台的一个重要文件，相信会对医学教育的创新发展发挥重要作用。');
INSERT INTO `article_detail` VALUES (43, 6, '　　第二，要研制出台《关于深化医教协同进一步推动中医药教育改革和高质量发展的实施意见》。在本次疫情防控中，中医药发挥了重要作用，得到了全世界的高度关注。这个《意见》就是要对传承创新发展中医药教育作出整体部署，明确提出完善中医药学科体系，强化中医基础类、经典类、疫病防治类学科的建设，增设中医疫病相关课程等具体举措，强化中医药防疫人才的培养。');
INSERT INTO `article_detail` VALUES (44, 6, '　　二是充分发挥教育部疫情防控专家应急工作组的作用。吴岩称，在疫情期间，成立了教育部疫情防控专家应急工作组，汇集了全国医学院校顶级防控专家，他们将指导各地各高校按照教育部应急疫情工作领导小组的总体要求，切实采取有效措施，落实好秋季开学疫情防控的各项工作。同时，这些专家还将发挥他们的专业优势，加强对疫情的动态监测，分析研判疫情发生发展态势，及时对学校防疫工作提出意见和建议。强化对师生的防疫教育，加强对师生的心理疏导，适时邀请专家通过线上、线下多种方式开展防疫知识培训和安全知识教育，增强全体师生的防疫意识和能力。');
INSERT INTO `article_detail` VALUES (45, 6, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (46, 7, '　　据国家中医药管理局网站消息，国家中医药管理局办公室19日发布《关于进一步强化中医医疗机构新冠肺炎疫情防控工作》的通知。通知要求，各中医医疗机构要强化院感防控和医护人员防护，坚决杜绝院感事件发生，加强对医务人员的健康管理和监测。全文如下：');
INSERT INTO `article_detail` VALUES (47, 7, '　　各省、自治区、直辖市中医药管理局，新疆生产建设兵团卫生健康委，中国中医科学院，北京中医药大学：');
INSERT INTO `article_detail` VALUES (48, 7, '　　当前全国新冠肺炎疫情形势总体稳定，但近期北京市发生新冠肺炎聚集性疫情，全国多个省(区、市)出现北京确诊病例的关联病例。为指导各地中医医疗机构进一步强化新冠肺炎防控措施，巩固来之不易的防控成果，坚决防止因局部防控不力造成疫情反弹，现就有关工作通知如下：');
INSERT INTO `article_detail` VALUES (49, 7, '　　一、树立底线思维，进一步提高对疫情防控形势的认识');
INSERT INTO `article_detail` VALUES (50, 7, '　　医疗机构不仅是发现患者的前哨点，同时也是易感人群的集散地，是疫情防控的重点单位。各级中医药主管部门和各中医医疗机构要充分认识目前疫情防控形势的复杂性、严峻性，强化底线思维，时刻绷紧防范潜在风险这根弦，坚决杜绝麻痹和松懈思想，把维护人民生命安全和身体健康置于最高位置，切实贯彻落实“外防输入、内防反弹”的防控策略，在当地联防联控机制统一部署下，严格按照“及时发现、快速处置、精准管控、有效救治”工作要求，全力以赴落实落细中医医疗机构各项防控工作，坚决防止疫情扩散蔓延。');
INSERT INTO `article_detail` VALUES (51, 7, '　　二、充分发挥医疗机构哨点作用，落实“四早”措施');
INSERT INTO `article_detail` VALUES (52, 7, '　　各中医医疗机构要严格落实《医疗机构传染病预检分诊管理办法》要求，规范发热门诊、预检分诊点设置和管理，加强防护物资储备。全面落实预检分诊制，对有发热、咳嗽、乏力等症状的患者，在做好防护条件下由专人陪同按规定路径前往发热门诊就医。对于所有到发热门诊就诊的患者，必须扫“健康码”，并进行核酸检测。对于待排除和疑似病例要第一时间进行隔离医学观察，提供基本医疗服务。发热门诊不得拒绝接收发热患者就诊。严格落实首诊负责制，医务人员要做好“守门人”，发现可疑病例，要立即隔离，并请院内专家会诊，如仍考虑为疑似病例，应详细登记相关信息，按照有关规定迅速报告，及时转入定点医院进一步诊断治疗，不得擅自允许患者自行转院或离院。发热门诊的所有医务人员均应当熟练掌握并落实新冠肺炎防控和诊疗方案，加强个人防护，规范开展新冠病毒核酸样本采集、运送、保存和检测。');
INSERT INTO `article_detail` VALUES (53, 7, '　　三、提升核酸检测能力，做到“应检尽检”');
INSERT INTO `article_detail` VALUES (54, 7, '　　各地要按照国务院联防联控机制印发的《关于加快推进新冠病毒核酸检测的实施意见》(联防联控机制综发〔2020〕181号)有关要求，加快提升中医医疗机构核酸检测能力、尽力扩大核酸检测范围。三级中医医院应当建立符合生物安全二级以上标准的临床检验实验室，具备独立开展新冠病毒检测的能力。鼓励有条件的二级中医医院加强实验室建设，提高检测能力。各地暂不具备新冠病毒检测能力的中医医院可与当地疾控机构、其他医疗机构或第三方医学检验机构合作开展核酸检测。各中医医疗机构要进一步扩大检测范围，对发热门诊患者、门急诊中高度怀疑感染新冠病毒患者、入院患者、陪护人员以及医疗机构工作人员等重点人群“应检尽检”，对其他人群实施“愿检尽检”。各中医医疗机构要按照《关于做好疫情常态化防控下新冠病毒核酸检测质量控制工作的通知》(联防联控机制医疗发〔2020〕242号)有关要求，依法依规开展核酸检测工作，12小时内反馈实验室检测结果，加强实验室检测质量控制，保证核酸检测质量。');
INSERT INTO `article_detail` VALUES (55, 7, '　　四、加强全员培训和演练，提高应急救援和传染病防控能力');
INSERT INTO `article_detail` VALUES (56, 7, '　　各中医医疗机构要根据自身所处地理环境、在疫情防控中的功能定位，查找薄弱环节，制订不同疫情防控压力下的应对预案，对各类资源、人员调配提前做出安排，对疫情防控需要的各类设施设备进行清查盘点，不足部分及时补齐，确保疫情发生时有足够的药品、防护用品等储备物资，有可立即投入使用的病床和各类医疗设备。各中医医疗机构要对医务人员开展全员培训，重点培训新冠肺炎等传染病防控和诊疗方案、处置原则、工作流程等，同时开展病例分流转运、医院感染防控等工作演练。各省级中医药主管部门要摸清辖区内中医医疗资源底数，准确掌握中医医疗机构实验室检测能力、可调动的中医专家队伍、中药储备等情况，确保在疫情发生时能迅速调动资源开展防控救治工作。二级以上中医医院要加强感染性疾病科、急诊科等科室建设，提高肺病、创伤等新发突发传染病及公共卫生事件应急处置涉及的主要疾病的诊疗能力。三级中医医院要加强重症医学科建设，提高中医医院传染病治疗水平和重症救治能力。');
INSERT INTO `article_detail` VALUES (57, 7, '　　五、强化院感防控和医护人员防护，坚决杜绝院感事件发生');
INSERT INTO `article_detail` VALUES (58, 7, '　　各中医医疗机构要严格按照《关于落实常态化疫情防控要求进一步加强医疗机构感染防控工作的通知》(联防联控机制综发〔2020〕169号)要求，毫不放松落实感染防控各项措施。加强诊疗环境的清洁消毒处置，做好环境通风管理。落实分区管理要求，合理划分清洁区、潜在污染区和污染区，区别医务人员通道和患者通道。严格执行院感防控、消毒隔离等各项规章制度及技术标准。加强患者收入院管理和住院患者管理，制定疫情期间患者入院筛查流程，严格探视和陪护管理，避免交叉感染。加大感染控制科专职人员配备，切实加强感控管理，及时排查风险并采取处置措施。医务人员在诊疗活动中要严格落实标准预防，按照《新冠肺炎疫情期间医务人员防护技术指南(试行)》(国卫办医函〔2020〕155号)做好个人防护，正确合理使用防护用品，在标准预防的基础上，根据诊疗操作的风险高低进行额外防护。各中医医疗机构要加强对医务人员的健康管理和监测。');
INSERT INTO `article_detail` VALUES (59, 7, '　　六、加强督导检查力度，强化责任落实');
INSERT INTO `article_detail` VALUES (60, 7, '　　各级中医药主管部门和各中医医疗机构要强化领导责任制，明确“属地、部门、单位、个人”四方责任，对防控措施进行全面检查评估，对防控漏洞再排查，对防控重点再加固，对防控要求再落实。各中医医疗机构要严格执行信息报告制度，加强信息收集、监测，及时、准确上报信息，坚决杜绝瞒报、迟报、漏报，做到发现疫情2小时内报告。对重点部门、重点环节、重点人群、重点岗位要逐一梳理排查，及时堵塞漏洞，补齐短板。各级中医药主管部门要通过定期检查和随机暗访等形式加强对辖区内中医医疗机构防控工作的指导与督导。各中医医疗机构落实检测、登记、报告、引导等措施不力，导致“应检未检”的，依法依规对相关机构和责任人追究责任。对院感防控工作不重视、落实院感防控基本要求不到位，导致出现严重院内感染事件的，按照规定对医疗机构和相关责任人作出处理。');
INSERT INTO `article_detail` VALUES (61, 7, '　　国家中医药管理局办公室');
INSERT INTO `article_detail` VALUES (62, 7, '　　2020年6月19日');
INSERT INTO `article_detail` VALUES (63, 7, '　　（来源：现代快报网）');
INSERT INTO `article_detail` VALUES (64, 8, '　　央视网消息：全国中医药大会今天（25日）在北京召开，近年来，本着中西医并重的发展理念，我国中医药服务体系日益完善，全国绝大部分的基层医疗能够提供中医药诊疗服务。');
INSERT INTO `article_detail` VALUES (65, 8, '　　为了让越来越多老百姓在家门口就能看上中医，我国出台基层中医药服务能力提升工程等举措，为基层“强筋健骨”。国家中医药管理局数据显示，截至2018年底，全国已有98.5%的社区卫生服务中心、97.0%的乡镇卫生院能够提供中医药服务。');
INSERT INTO `article_detail` VALUES (66, 8, '　　中国工程院院士 张伯礼：中医药在疾病预防、疾病治疗及疾病康复整个过程中都会发挥积极的作用，为健康中国服务，为老百姓的健康做出贡献。');
INSERT INTO `article_detail` VALUES (67, 8, '　　当前，国家重点研发计划“中医药现代化”重点专项已立项支持83个项目，累计投入超过10亿元。2000年以来，中医药行业共获得国家科技奖励117项。');
INSERT INTO `article_detail` VALUES (68, 8, '　　中国工程院院士 中国中医科学院院长 黄璐琦：中医药的生命力就在于创新，我们只有把我们老祖宗留下的这一宝贵财富传承好、发展好、利用好。');
INSERT INTO `article_detail` VALUES (69, 8, '　　中医药不仅在满足基层群众的健康需求，也在世界范围内发挥着疗效。目前，中医药已传播到183个国家和地区。中药逐步进入国际医药体系，已在俄罗斯、古巴、越南、新加坡和阿联酋等国以药品形式注册。据世界卫生组织统计，目前103个会员国认可使用针灸，其中29个设立了传统医学的法律法规，18个将针灸纳入医疗保险体系。');
INSERT INTO `article_detail` VALUES (70, 8, '　　中国针灸学会副会长 杨金生：这样能让针灸融入到各个国家的主流医学体系教育体系，20多个国家对中医针灸进行了立法，那么这样能有效地（对中医针灸的服务）进行规范管理和保障。');
INSERT INTO `article_detail` VALUES (71, 8, '　　（来源：现代快报网）');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, '123456');
INSERT INTO `cart` VALUES (2, '567891');

-- ----------------------------
-- Table structure for cart_num
-- ----------------------------
DROP TABLE IF EXISTS `cart_num`;
CREATE TABLE `cart_num`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `cart_id` int NULL DEFAULT NULL,
  `num` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_num
-- ----------------------------
INSERT INTO `cart_num` VALUES (1, 1, 1, 5);
INSERT INTO `cart_num` VALUES (2, 2, 1, 2);
INSERT INTO `cart_num` VALUES (3, 3, 1, 3);
INSERT INTO `cart_num` VALUES (4, 4, 1, 2);
INSERT INTO `cart_num` VALUES (5, 1, 2, 2);
INSERT INTO `cart_num` VALUES (6, 7, 1, 1);

-- ----------------------------
-- Table structure for ency_detail
-- ----------------------------
DROP TABLE IF EXISTS `ency_detail`;
CREATE TABLE `ency_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ency_id` int NULL DEFAULT NULL,
  `section` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ency_detail
-- ----------------------------
INSERT INTO `ency_detail` VALUES (1, 1, '　　为管状花目、茄科、茄属植物。分布于四川、贵州、云南、广西、广东、福建、台湾等地。根入药，性平味苦，具有清热除湿，祛瘀消肿之功效。常用于风湿痹痛，痧气腹痛，头痛，牙痛，咽炎，扁桃体炎，疳积，跌打损伤，瘰疬。');
INSERT INTO `ency_detail` VALUES (2, 1, '　　形态特征：多枝灌木，通常高0.5-1.5-(6)米，小枝，叶下面，叶柄，花序均密被8-11分枝，长短不相等的具柄的星状绒毛。小枝褐色，密被尘土色渐老逐渐脱落的星状绒毛及基部宽扁的淡黄色钩刺，钩刺长4-7毫米，基部宽1.5-7毫米，基部被星状绒毛，先端弯曲，褐色。叶卵形，长5-7-(11）厘米，宽2.5-5.2-(8.5)厘米，先端钝，基部心形，截形或不相等，边缘5-7深裂或成波状浅圆裂，裂片边缘有时又作波状浅裂，上面绿色，被具短柄的5-9-（11)分枝的星状短绒毛，下面灰绿，密被星状长绒毛；中脉及侧脉常在两面具有长2-6毫米的钻形皮刺，侧脉每边3-4条；叶柄长2-4厘米，密被星状毛及具1-2枚钻形皮刺，有时不具。蝎尾状花序腋外生，长约3.5-6厘米，总花梗长2-8毫米，花梗长1.5厘米或稍长，密被星状绒毛及钻形细直刺；花蓝紫色，或少为白色，直径约2厘米；萼杯状，直径约1厘米，长约4-6毫米，先端5裂，裂片卵形，端尖，外面密被星状绒毛及细直刺，内面仅先端被星状毛；花冠辐状，筒部长约1.5毫米，隐于萼内，冠檐长约1.3厘米，先端深5裂，裂片卵形，长约8毫米，外面密被分枝多具柄或无柄的星状绒毛，内面上部及中脉疏被分枝少无柄的星状绒毛，很少有与外面相同的星状毛；花丝长约1毫米，基部稍宽大，花药黄色，长约为花丝长度的7倍，顶孔向上；子房长圆形，具棱，顶端被星状绒毛，花柱丝状，长约名毫米，除柱头以下1毫米外余均被星状绒毛，柱头截形。果序长约4-7厘米，果柄长1-1.2厘米，被星状毛及直刺。浆果球形，光亮，成熟时橙红色，直径约1厘米，宿存萼反卷。种子淡黄色，近盘状，直径约2毫米。全年开花结果。');
INSERT INTO `ency_detail` VALUES (3, 1, '　　分布区域：产于四川、贵州、云南、广西、广东、福建、台湾。广布于热带印度、缅甸、中南半岛，南至马来半岛，东至菲律宾。');
INSERT INTO `ency_detail` VALUES (4, 1, '　　生长环境：生于海拔180-1700米的林下、路边、荒地，在干燥灌丛中有时成片生长。');
INSERT INTO `ency_detail` VALUES (5, 1, '　　性味：味苦，性平。');
INSERT INTO `ency_detail` VALUES (6, 1, '　　功能：清热除湿，祛瘀消肿。');
INSERT INTO `ency_detail` VALUES (7, 1, '　　主治：风湿痹痛，痧气腹痛，头痛，牙痛，咽炎，扁桃体炎，疳积，跌打损伤，瘰疬。');
INSERT INTO `ency_detail` VALUES (8, 1, '　　用法用量：内服：煎汤，6-15g。外用：捣敷。');
INSERT INTO `ency_detail` VALUES (9, 2, '　　鳞茎半球形，直径1.5～6厘米，有2～3片肉质的鳞片。茎单一，直立，圆柱形，高50～80厘米。叶无柄；茎下部的叶对生，罕互生，狭披针形至线形，长6～17厘米，宽6～15毫米；中上部的叶常3～5片轮生，罕互生，叶片较短，先端卷须状。');
INSERT INTO `ency_detail` VALUES (10, 2, '　　形态特征：植株长50-80厘米。鳞茎由2（-3）枚鳞片组成，直径1.5-3厘米。叶在最下面的对生或散生，向上常兼有散生、对生和轮生的，近条形至披针形，长7-11厘米，宽1-2.5厘米，先端不卷曲或稍弯曲。花1-6朵，淡黄色，有时稍带淡紫色，顶端的花具3-4枚叶状苞片，其余的具2枚苞片；苞片先端卷曲；花被片长2.5-3.5厘米，宽约1厘米，内外轮的相似；雄蕊长约为花被片的2/5；花药近基着，花丝无小乳突；柱头裂片长1.5-2毫米。蒴果长2-2.2厘米，宽约2.5厘米，棱上有宽约6-8毫米的翅。花期3-4月，果期5月。');
INSERT INTO `ency_detail` VALUES (11, 2, '　　分布区域：产江苏（南部）、浙江（北部）和湖南。也分布于日本。');
INSERT INTO `ency_detail` VALUES (12, 2, '　　生长环境：生于海拔较低的山丘荫蔽处或竹林下。浙贝母喜温和湿润、阳光充足的环境。根的生长要求气温在7～25℃，25℃以上根生长受抑制。平均地温达6～7℃时出苗，地上部生长发育温度范围为4～30℃，在此范围内，生长速度随温度升高，生长加快。开花适温为22℃左右。-3℃时植株受冻，30℃以上植株顶部出现枯黄。鳞茎在地温10～25℃时能正常膨大，-6℃时将受冻，25℃以上时就会出现休眠。');
INSERT INTO `ency_detail` VALUES (13, 2, '　　功能主治：清热化痰，散结解毒。治风热咳嗽，肺痈喉痹，瘰疬，疮疡肿毒。');
INSERT INTO `ency_detail` VALUES (14, 3, '　　为紫金牛科植物卷毛紫金牛的根或全草。');
INSERT INTO `ency_detail` VALUES (15, 3, '　　为紫金牛科植物卷毛紫金牛的根或全草。');
INSERT INTO `ency_detail` VALUES (16, 3, '　　形态特征：直立灌木，高50-100cm，稀达2-3m。具匍匐根茎；幼时几全株被灰褐色或锈色长柔毛或硬毛，毛常卷曲。叶互生；叶柄长5-10mm，被长柔毛；叶片坚纸质，椭圆状披针形至卵形，稀倒披针形，长7-15cm，宽2.5-5cm，先瑞急尖或渐尖，基部楔形，近全缘或由边缘腺点缢缩成波状细锯齿或圆齿，背面密被长硬毛或长柔毛，具腺点，以背面尤显；侧脉约15对，多少连成边缘脉。单或复聚伞花序或伞形花序，被锈色长桑毛，侧生或着生于侧生特殊花枝顶端；花枝长2-15cm，长者近顶端常有1-2片叶或退化叶；花梗长5-10mm；花长5-8mm；萼片长圆状披针形或舌形，与花瓣等长，两面被毛，外面尤密，具密腺点；花瓣淡紫色或粉红色，稀白色，卵形至广披针形，具腺点；雄蕊较花瓣略长或等长，子房卵珠形，被微柔毛。果球形，直径5-7mm，深红色或带黑色.具腺点.被毛。花期5-7月.果期2-5月。分布我国南部及四川等地。');
INSERT INTO `ency_detail` VALUES (17, 3, '　　分布区域：分布于广东、广西、云南等地。');
INSERT INTO `ency_detail` VALUES (18, 3, '　　生长环境：生于海拔500-1540m的疏林下或林下阴湿处。');
INSERT INTO `ency_detail` VALUES (19, 3, '　　性味：性温，味淡，无毒。');
INSERT INTO `ency_detail` VALUES (20, 3, '　　功能主治：祛风除湿，活血止痛。治风湿疼痛，跌打肿痛，咳嗽吐血，寒气腹痛。');
INSERT INTO `ency_detail` VALUES (21, 3, '　　用法用量：内服：煎汤，2～5钱；或浸酒。外用：捣碎酒炒敷。');
INSERT INTO `ency_detail` VALUES (22, 4, '　　为豆科植物越南槐的干燥根和根茎。其苦，寒；有毒。有清热解毒，消肿利咽之功效，常用于火毒蕴结，乳蛾喉痹，咽喉肿痛，齿龈肿痛，口舌生疮。');
INSERT INTO `ency_detail` VALUES (23, 4, '　　入药部位：豆科植物越南槐的干燥根和根茎。');
INSERT INTO `ency_detail` VALUES (24, 4, '　　性味：苦，寒；有毒。');
INSERT INTO `ency_detail` VALUES (25, 4, '　　功能：清热解毒，消肿利咽。');
INSERT INTO `ency_detail` VALUES (26, 4, '　　主治：火毒蕴结，乳蛾喉痹，咽喉肿痛，齿龈肿痛，口舌生疮。');
INSERT INTO `ency_detail` VALUES (27, 4, '　　用法用量：3～6g。');
INSERT INTO `ency_detail` VALUES (28, 5, '　　又名绒花树，马缨花。落叶乔木，夏季开花，头状花序，合瓣花冠，雄蕊多条，淡红色。荚果条形，扁平，不裂。高4-15米。树冠开展；小枝有棱角，嫩枝、花序和叶轴被绒毛或短柔毛。托叶线状披针形；头状花序于枝顶排成圆锥花序；花粉红色；花萼管状，花期6-7月；果期8-10月。');
INSERT INTO `ency_detail` VALUES (29, 5, '　　形态特征：托叶线状披针形，较小叶小，早落；二回羽状复叶，互生；总叶柄长3-5cm，总花柄近基部及最顶1对羽片着生处各有一枚腺体；羽片4-12对，栽培的有时达20对；小叶10-30对，线形至长圆形，长6-12mm，宽1-4mm，向上偏斜，先端有小尖头，有缘毛，有时在下面或仅中脉上有短柔毛；中脉紧靠上边缘。');
INSERT INTO `ency_detail` VALUES (30, 5, '　　分布区域：分布于华东、华南、西南，以中国黄河流域至珠江流域各地，如辽宁、河北、河南、陕西等省。朝鲜、日本、越南、泰国、缅甸、印度、伊朗、非洲东部及美洲南部，中亚至东亚均有分布。');
INSERT INTO `ency_detail` VALUES (31, 5, '　　生长环境：生于山坡或栽培。合欢喜温暖湿润和阳光充足环境，对气候和土壤适应性强，宜在排水良好、肥沃土壤生长，但也耐瘠薄土壤和干旱气候，但不耐水涝。生长迅速。性喜光，喜温暖，耐寒、耐旱、耐土壤瘠薄及轻度盐碱，对二氧化硫、氯化氢等有害气体有较强的抗性。');
INSERT INTO `ency_detail` VALUES (32, 5, '　　功能主治：解郁安神，理气开胃，活络止痛，用于心神不安、忧郁失眠。治郁结胸闷，失眠，健忘，风火眼，能安五脏，和心志，悦颜色，有较好的强身、镇静、安神、美容的作用，也是治疗神经衰弱的佳品。');

-- ----------------------------
-- Table structure for encyclopedia
-- ----------------------------
DROP TABLE IF EXISTS `encyclopedia`;
CREATE TABLE `encyclopedia`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of encyclopedia
-- ----------------------------
INSERT INTO `encyclopedia` VALUES (1, '巴山虎', 'b-1.png');
INSERT INTO `encyclopedia` VALUES (2, '浙贝母', 'b-2.jpg');
INSERT INTO `encyclopedia` VALUES (3, '矮脚罗伞', 'b-3.png');
INSERT INTO `encyclopedia` VALUES (4, '广豆根', 'b-4.jpg');
INSERT INTO `encyclopedia` VALUES (5, '合欢', 'b-5.jpg');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `detail_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int NOT NULL,
  `product_id` int NULL DEFAULT NULL,
  `num` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '金樱子', 's-1.jpg', '涩肠止泻、固精缩尿、固崩止带', 25.00);
INSERT INTO `product` VALUES (2, '白杨树皮', 's-2.jpg', '祛风，行瘀，消痰', 35.00);
INSERT INTO `product` VALUES (3, '苍耳花', 's-3.png', '主白癞顽痒', 6.00);
INSERT INTO `product` VALUES (4, '芡实', 's-4.png', '固肾涩精，补脾止泄', 58.00);
INSERT INTO `product` VALUES (5, '败酱草', 's-5.png', '清热解毒，祛瘀排脓', 1.20);
INSERT INTO `product` VALUES (6, '款冬花', 's-6.png', '润肺下气，化痰止嗽', 38.00);
INSERT INTO `product` VALUES (7, '草豆蔻', 's-7.png', '温中，祛寒，行气，燥湿', 29.00);
INSERT INTO `product` VALUES (8, '佛手柑', 's-8.png', '理气，化痰', 59.70);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123456', '123456', '小王', 'http://192.168.43.178:3000/public/uploads/ocean.png');
INSERT INTO `user` VALUES ('234567', '234567', NULL, NULL);
INSERT INTO `user` VALUES ('345678', '345678', NULL, NULL);
INSERT INTO `user` VALUES ('456789', '456789', NULL, NULL);
INSERT INTO `user` VALUES ('567891', '567891', '小陈', NULL);

SET FOREIGN_KEY_CHECKS = 1;
