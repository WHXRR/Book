
create table ADMIN
(
  ADMIN_ID NUMBER not null,
  PASSWORD VARCHAR2(15)
);


create table BOOK_INFO
(
  BOOK_ID      NUMBER not null,
  NAME         VARCHAR2(50) not null,
  AUTHOR       VARCHAR2(50) not null,
  PUBLISH      VARCHAR2(30) not null,
  ISBN         VARCHAR2(13) not null,
  INTRODUCTION VARCHAR2(3000),
  LANGUAGE     VARCHAR2(10) not null,
  PRICE        NUMBER not null,
  PUBDATE      DATE,
  CLASS_ID     NUMBER,
  PRESSMARK    NUMBER,
  STATE        NUMBER
);

create table CLASS_INFO
(
  CLASS_ID   NUMBER not null,
  CLASS_NAME VARCHAR2(45) not null
);

create table LEND_LIST
(
  SERNUM    NUMBER not null,
  BOOK_ID   NUMBER not null,
  READER_ID NUMBER not null,
  LEND_DATE DATE,
  BACK_DATE DATE
);


create table READER_CARD
(
  READER_ID  NUMBER not null,
  NAME       VARCHAR2(16) not null,
  PASSWD     VARCHAR2(15) not null,
  CARD_STATE NUMBER default '1'
);


create table READER_INFO
(
  READER_ID NUMBER not null,
  NAME      VARCHAR2(16) not null,
  SEX       VARCHAR2(5),
  BIRTH     DATE,
  ADDRESS   VARCHAR2(50),
  TELCODE   VARCHAR2(11) not null
);
insert into ADMIN (ADMIN_ID, PASSWORD)
values (123, '123');
commit;

insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000001, '大雪中的山庄', '东野圭吾 ', '北京十月文艺出版社', '9787530216835', '东野圭吾长篇小说杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，《大雪中的山庄》一书的灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东野圭吾', '中文', 35, to_date('02-11-2017', 'dd-mm-yyyy'), 9, 13, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000003, '三生三世 十里桃花', '唐七公子 ', '沈阳出版社', '9787544138000', '三生三世，她和他，是否注定背负一段纠缠的姻缘？\r\n三生三世，她和他，是否终能互许一个生生世世的承诺？', '中文', 26.8, to_date('06-01-2009', 'dd-mm-yyyy'), 7, 2, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000004, '何以笙箫默', '顾漫 ', '朝华出版社', '9787505414709', '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……', '中文', 15, to_date('06-01-2009', 'dd-mm-yyyy'), 7, 2, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000005, '121处特工皇妃', '潇湘冬儿', '江苏文艺出版社', '9787539943893', '《11处特工皇妃(套装上中下册)》内容简介：她是国安局军情十一处惊才绝艳的王牌军师——收集情报、策划部署、进不友好国家布置暗杀任务……她运筹帷幄之中，决胜于千里之外，堪称军情局大厦的定海神针。', '中文', 74.8, to_date('06-01-2009', 'dd-mm-yyyy'), 7, 2, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000006, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357', '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？', '英文', 68, to_date('06-01-2009', 'dd-mm-yyyy'), 11, 3, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000007, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中文', 358.2, to_date('06-01-2009', 'dd-mm-yyyy'), 11, 3, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (10000010, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768', '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英文', 88, to_date('06-01-2009', 'dd-mm-yyyy'), 6, 5, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (50000007, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。 ------------------------------------------------------------------------------------------------------ 功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', 39.5, to_date('06-01-2009', 'dd-mm-yyyy'), 9, 13, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (50000008, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745', '经典同名话剧六十年常演不衰； 比利?怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德?沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中文', 35, to_date('06-01-2009', 'dd-mm-yyyy'), 9, 12, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (50000009, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777', '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中文', 26, to_date('06-01-2009', 'dd-mm-yyyy'), 9, 12, 1);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (50000010, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中文', 12, to_date('06-01-2009', 'dd-mm-yyyy'), 9, 16, 0);
insert into BOOK_INFO (BOOK_ID, NAME, AUTHOR, PUBLISH, ISBN, INTRODUCTION, LANGUAGE, PRICE, PUBDATE, CLASS_ID, PRESSMARK, STATE)
values (50000011, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中文', 42, to_date('06-01-2009', 'dd-mm-yyyy'), 9, 18, 0);
commit;

insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (1, '马克思主义');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (2, '哲学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (3, '社会科学总论');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (4, '政治法律');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (5, '军事');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (6, '经济');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (7, '文化');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (8, '语言');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (9, '文学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (10, '艺术');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (11, '历史地理');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (12, '自然科学总论');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (13, ' 数理科学和化学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (14, '天文学、地球科学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (15, '生物科学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (16, '医药、卫生');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (17, '农业科学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (18, '工业技术');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (19, '交通运输');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (20, '航空、航天');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (21, '环境科学');
insert into CLASS_INFO (CLASS_ID, CLASS_NAME)
values (22, '综合');
commit;

insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040139, 10000001, 1501014101, to_date('15-03-2017', 'dd-mm-yyyy'), to_date('16-06-2017', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040140, 10000003, 1501014101, to_date('10-06-2017', 'dd-mm-yyyy'), to_date('02-09-2017', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040141, 10000006, 1501014101, to_date('12-06-2017', 'dd-mm-yyyy'), to_date('02-09-2017', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040142, 50000004, 1501014101, to_date('15-03-2017', 'dd-mm-yyyy'), to_date('03-09-2017', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040143, 50000005, 1501014103, to_date('15-06-2017', 'dd-mm-yyyy'), null);
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040144, 50000010, 1501014104, to_date('15-06-2017', 'dd-mm-yyyy'), null);
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040145, 10000001, 1501014101, to_date('02-09-2017', 'dd-mm-yyyy'), to_date('02-09-2017', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040146, 10000001, 1501014107, to_date('20-06-2020', 'dd-mm-yyyy'), to_date('20-06-2020', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (2015040147, 50000012, 1501014107, to_date('20-06-2020', 'dd-mm-yyyy'), to_date('20-06-2020', 'dd-mm-yyyy'));
insert into LEND_LIST (SERNUM, BOOK_ID, READER_ID, LEND_DATE, BACK_DATE)
values (194618, 50000011, 1231232123, to_date('21-06-2020 10:13:54', 'dd-mm-yyyy hh24:mi:ss'), null);
commit;

insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014101, '唐家三少', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014102, '我吃西红柿', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014103, '琼瑶', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014104, '郭敬明', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014105, '于正', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014106, '猫腻', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (1501014107, '天蚕土豆', '111111', 1);
insert into READER_CARD (READER_ID, NAME, PASSWD, CARD_STATE)
values (2781, '111111', '1', 11);
commit;

insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014101, '唐家三少', '男', to_date('10-06-1995', 'dd-mm-yyyy'), '天津市', '12345678900');
insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014102, '我吃西红柿', '男', to_date('03-02-1996', 'dd-mm-yyyy'), '北京市', '12345678909');
insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014103, '琼瑶', '女', to_date('15-04-1995', 'dd-mm-yyyy'), '浙江省杭州市', '12345678908');
insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014104, '郭敬明', '男', to_date('29-08-1996', 'dd-mm-yyyy'), '陕西省西安市', '12345678907');
insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014105, '于正', '男', to_date('01-01-1996', 'dd-mm-yyyy'), '陕西省西安市', '15123659875');
insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014106, '猫腻', '男', to_date('03-05-1996', 'dd-mm-yyyy'), '山东省青岛市', '15369874123');
insert into READER_INFO (READER_ID, NAME, SEX, BIRTH, ADDRESS, TELCODE)
values (1501014107, '天蚕土豆', '男', to_date('02-01-2001', 'dd-mm-yyyy'), '四川省成都市', '1383838438');
commit;

