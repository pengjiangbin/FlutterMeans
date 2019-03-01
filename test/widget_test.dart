// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_live/api/response/news_response.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_live/main.dart';

void main() {
  Map<String,dynamic> json={
    "reason":"成功的返回",
    "result":{
      "stat":"1",
      "data":[
        {
          "uniquekey":"8639c9a6fb16c4464d9a7682160e3b2f",
          "title":"《歌手》林海一句话道破张韶涵的小心机！腾格尔看出后也拆穿了她",
          "date":"2019-02-28 10:04",
          "category":"头条",
          "author_name":"斌哥娱乐",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228100443760.html",
          "thumbnail_pic_s":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/2019022810_11e4ca28198642b9b5fdddb894f5486d_5713_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/2019022810_071eeb4bd18e4084ad111236454df2e5_1314_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/2019022810_087b59aa5929444cae47e61b00b10b42_6810_cover_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"06b86a5f3ec0e8c38c24af37dcc8aa2d",
          "title":"刘诗诗闺蜜撩易烊千玺求翻牌！这撩汉的方式也太直接了！",
          "date":"2019-02-28 09:58",
          "category":"头条",
          "author_name":"斌哥娱乐",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228095821936.html",
          "thumbnail_pic_s":"http:\/\/05imgmini.eastday.com\/mobile\/20190228\/2019022809_5eb2fb98f3c546fb902af1fd80561f77_1243_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/05imgmini.eastday.com\/mobile\/20190228\/2019022809_8d660b3d88424d46943d5dbd4a0ce9ac_9341_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/05imgmini.eastday.com\/mobile\/20190228\/2019022809_abf6b4812cc847d3bd354cabdd7b5519_3064_cover_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"dfb65747db8cc7ec68cd2730c82e400f",
          "title":"曝阿森纳有意引进药厂前锋布兰特 球迷点赞：他能代替拉姆塞！",
          "date":"2019-02-28 09:55",
          "category":"头条",
          "author_name":"经典图书精华解读",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228095551399.html",
          "thumbnail_pic_s":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/2019022809_1d23531efef14e8bbab985ead0fdc9e0_8780_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/2019022809_9de292494c7e471d8a7d7812cf2fc283_3156_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"8a1b70cb98910f67ab0b5f49fd4b707e",
          "title":"李雪芮压阵也不好使，德国赛国羽女单一轮游",
          "date":"2019-02-28 09:55",
          "category":"头条",
          "author_name":"新京报",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228095501608.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228095501_479b6b94a38b67f55cf2585711080b76_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"01f0267e8425f97cecfe02b8e8e42a4b",
          "title":"北京市供销合作总社与中国供销集团签署战略合作框架协议",
          "date":"2019-02-28 09:51",
          "category":"头条",
          "author_name":"千龙网",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228095110905.html",
          "thumbnail_pic_s":"http:\/\/01imgmini.eastday.com\/mobile\/20190228\/20190228095110_1c881f51e8ef11381e733b86b0d8859b_3_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/01imgmini.eastday.com\/mobile\/20190228\/20190228095110_1c881f51e8ef11381e733b86b0d8859b_4_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/01imgmini.eastday.com\/mobile\/20190228\/20190228095110_1c881f51e8ef11381e733b86b0d8859b_2_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"1f34a75472e88f0ddd7a0962f468237a",
          "title":"李时珍记载：生姜加它是“天然瘦身药”！每天用一点，清肠燃脂",
          "date":"2019-02-28 09:50",
          "category":"头条",
          "author_name":"天下吃货是一家",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228095028886.html",
          "thumbnail_pic_s":"http:\/\/02imgmini.eastday.com\/mobile\/20190228\/20190228095028_6c338418ee867961412e962ab3f97a65_1_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/02imgmini.eastday.com\/mobile\/20190228\/20190228095028_6c338418ee867961412e962ab3f97a65_3_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/02imgmini.eastday.com\/mobile\/20190228\/20190228095028_6c338418ee867961412e962ab3f97a65_2_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"d183d0631a22cfcab368052278560fbf",
          "title":"“2018最具影响力马拉松赛事排行榜”TOP100发布",
          "date":"2019-02-28 09:47",
          "category":"头条",
          "author_name":"西部网",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094711615.html",
          "thumbnail_pic_s":"http:\/\/04imgmini.eastday.com\/mobile\/20190228\/20190228094711_a3864bbe924d887867b4a4a56e63de92_1_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/04imgmini.eastday.com\/mobile\/20190228\/20190228094711_a3864bbe924d887867b4a4a56e63de92_2_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"1a9435e3b09b1b2622716058ad82bbda",
          "title":"王者荣耀游戏中的三大谎言！老玩家已了解真相，新手还信以为真",
          "date":"2019-02-28 09:46",
          "category":"头条",
          "author_name":"神狐信息",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094623686.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228094623_a8a2999bbf7e122870ffc20ac295e380_2_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228094623_a8a2999bbf7e122870ffc20ac295e380_3_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228094623_a8a2999bbf7e122870ffc20ac295e380_4_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"5883a38401726061042d65e97a13bf69",
          "title":"聪明女人把此物当零食，每天来一把，排毒淡斑，气色更好看",
          "date":"2019-02-28 09:45",
          "category":"头条",
          "author_name":"主公实拍",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094534347.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228094534_4d1949b8935ab84474b89044aec47f05_1_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228094534_4d1949b8935ab84474b89044aec47f05_3_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228094534_4d1949b8935ab84474b89044aec47f05_2_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"ac99cfd7562e419bb4342da7f25011f0",
          "title":"娱闻丨何洁小三坐实？刁磊前妻朋友圈曝光，直指其婚内出轨信息量太大",
          "date":"2019-02-28 09:43",
          "category":"头条",
          "author_name":"东方号娱乐",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094318731.html",
          "thumbnail_pic_s":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228094318_81a8ddaaf2ebe336709843e468b32907_1_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228094318_53cd15feb55461e7c8cd1d9fc3f188f9_2_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228094318_76a69e24086da3de01a75ea6f2d3c821_3_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"fae03724059a7af0053e62f07dbc5710",
          "title":"6分钟砍18分！沃克暴走引16-0狂潮，哈登已连丢17记三分",
          "date":"2019-02-28 09:41",
          "category":"头条",
          "author_name":"吴权林",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094133808.html",
          "thumbnail_pic_s":"http:\/\/02imgmini.eastday.com\/mobile\/20190228\/2019022809_df8cdc39669d459996a67cde7d6254bc_8998_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/02imgmini.eastday.com\/mobile\/20190228\/2019022809_a47cb04288474f4697b2c7cd404d4b73_8945_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/02imgmini.eastday.com\/mobile\/20190228\/2019022809_29bf3146705a456186116ded1edd25ff_4719_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"d8a2c2b34b839666d226aaa58cc40cc0",
          "title":"火箭鞋王5中5大爆发，却越输越多，只因MVP哈登，19投6中",
          "date":"2019-02-28 09:41",
          "category":"头条",
          "author_name":"时刻体育",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094100208.html",
          "thumbnail_pic_s":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/2019022809_d357c4364a7d417e9bdf1638e52fcaec_4072_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/2019022809_35af2ed5cdf34818a2655d89ecff6924_8465_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/2019022809_f8185577654a4589afa0bcacfae927f9_0651_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"e2d804bdcbcd2a23cda9525e3128daa0",
          "title":"央视5套直播女排冠亚军决赛，天津女排战北京，黄子忠解说！",
          "date":"2019-02-28 09:40",
          "category":"头条",
          "author_name":"小马出动体育",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094058070.html",
          "thumbnail_pic_s":"http:\/\/04imgmini.eastday.com\/mobile\/20190228\/2019022809_27ddc664ace64f798822cbb0901406ed_5514_cover_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"67ae629512a7b0e0af9d7068b3f52522",
          "title":"《绝地求生刺激战场》AKM狂怒皮肤获得方法",
          "date":"2019-02-28 09:40",
          "category":"头条",
          "author_name":"悠游侠",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094056758.html",
          "thumbnail_pic_s":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228094057_0e1d2bda6f94dee4f96a7121dd9880fe_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"f28c6a2f48d9cae5b8763c0b4bd24aee",
          "title":"韩国28岁女白领爱健身，给人娴静脱俗的感觉，称运动能带来快乐",
          "date":"2019-02-28 09:40",
          "category":"头条",
          "author_name":"猪猪评球",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228094008798.html",
          "thumbnail_pic_s":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/2019022809_75c197090dd446c5ae58bc55af7c647d_5590_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/2019022809_8e6c664271e6478a9e832df2b54e8f7b_2116_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/2019022809_3e99fae02fc3439ba4e8710931ede48d_8400_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"56307793ab9b5c3cb5b290de98cacb0f",
          "title":"朝美领导人继续会晤 今天或将发表成果性文件",
          "date":"2019-02-28 09:39",
          "category":"头条",
          "author_name":"人民日报",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093922981.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228093922_43985f1ab49878367b8f575a918fe641_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"68f467b9a498e94278f22799c1f6758e",
          "title":"福建物构所在离子聚合物衍生复合材料光催化研究中取得进展",
          "date":"2019-02-28 09:39",
          "category":"头条",
          "author_name":"中国科学院",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093908673.html",
          "thumbnail_pic_s":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/20190228093908_15573bbcd1d3977e00fe4ffcaf280289_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"08435b15128be37a556ddde1dbe9573f",
          "title":"10万即可买到的三款合资SUV车型，第二款年轻人最喜欢",
          "date":"2019-02-28 09:36",
          "category":"头条",
          "author_name":"汽车大观王慧",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093647707.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228093647_48e3e36b59c56f7f083f32694844f40b_3_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228093647_48e3e36b59c56f7f083f32694844f40b_1_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228093647_48e3e36b59c56f7f083f32694844f40b_2_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"b4f233bbe8b8e31107619862fd9d2032",
          "title":"男子扮残疾人坐轮椅入境 一查竟藏415台苹果手机",
          "date":"2019-02-28 09:36",
          "category":"头条",
          "author_name":"看看新闻网",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093644627.html",
          "thumbnail_pic_s":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/20190228093644_2cf2333bfbfb2184621c6f4a7aa54447_2_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/20190228093644_2cf2333bfbfb2184621c6f4a7aa54447_3_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/20190228093644_2cf2333bfbfb2184621c6f4a7aa54447_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"a5450eead5f1701468420304f5122f4d",
          "title":"专项整治出租车未安装使用GPS 有司机人为拔除GPS连接线",
          "date":"2019-02-28 09:35",
          "category":"头条",
          "author_name":"解放日报",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093549467.html",
          "thumbnail_pic_s":"http:\/\/00imgmini.eastday.com\/mobile\/20190228\/20190228093549_7276cf98e4201cbf328e08fa652e972f_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"f5d65fafbc8637cd43212338b1a9526a",
          "title":"持续发酵的委内瑞拉危机：医疗系统崩溃，幼儿死亡率翻番",
          "date":"2019-02-28 09:35",
          "category":"头条",
          "author_name":"纵相新闻",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093525944.html",
          "thumbnail_pic_s":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/2019022809_3e42cfeb4eeb45ba9c5da0629ad1ba09_8367_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/2019022809_9e63c6eec3354aaf81c9fbc339c70ad3_1589_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/2019022809_8cc231af0d9f42b0b7d1f18ddeaa6078_2908_cover_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"57159778fdfaf2182f9fb5b7a4a71a4f",
          "title":"张国伟再夺冠，昔日的跳高天才，经历低谷渴望重返巅峰",
          "date":"2019-02-28 09:35",
          "category":"头条",
          "author_name":"文刀泽远",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093520094.html",
          "thumbnail_pic_s":"http:\/\/05imgmini.eastday.com\/mobile\/20190228\/20190228093520_ec3ea0b7791c4d33d3bce34b4496d51b_1_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/05imgmini.eastday.com\/mobile\/20190228\/20190228093520_ec3ea0b7791c4d33d3bce34b4496d51b_4_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/05imgmini.eastday.com\/mobile\/20190228\/20190228093520_ec3ea0b7791c4d33d3bce34b4496d51b_3_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"4b5d02691c96008729d4d23d98a379d5",
          "title":"台湾这名官员想当网红 结果一半人对他say no",
          "date":"2019-02-28 09:34",
          "category":"头条",
          "author_name":"台海网1",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093430984.html",
          "thumbnail_pic_s":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228093430_cf29ecf034e547dffe3372b9639af7a8_4_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228093430_cf29ecf034e547dffe3372b9639af7a8_1_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228093430_cf29ecf034e547dffe3372b9639af7a8_3_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"b631c785c6fe811cdf66fbcb6c450b9a",
          "title":"黄金昨日如期下跌，今日将走探底回升",
          "date":"2019-02-28 09:34",
          "category":"头条",
          "author_name":"于王论金",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093420919.html",
          "thumbnail_pic_s":"http:\/\/06imgmini.eastday.com\/mobile\/20190228\/20190228093420_9c69ee8fa7f699dcc74efa600f3d2b64_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"2f88d1347e1fc6c5f8a7203c0b6e3e53",
          "title":"开心一刻段子：老公正在洗澡，突然他手机收到一女人发来的信息！",
          "date":"2019-02-28 09:31",
          "category":"头条",
          "author_name":"夫学须静才须学",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093111296.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/2019022809_dd8c48a74b524490b4cece20979f731e_3127_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/2019022809_ad815153486b4841b27e9918915a7728_0930_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/2019022809_23501c02e3f5465e851ca394d8e85172_0644_cover_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"44ef24a3dd5f92a7eb070aeea18f7168",
          "title":"玩珠子几十年，悟出这些道理，不白活！",
          "date":"2019-02-28 09:31",
          "category":"头条",
          "author_name":"文玩百科录",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093103588.html",
          "thumbnail_pic_s":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228093103_dea5aa82c3bce6e94d9d0cb87bdd5af9_7_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228093103_dea5aa82c3bce6e94d9d0cb87bdd5af9_4_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/20190228093103_dea5aa82c3bce6e94d9d0cb87bdd5af9_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"54770081204f9709a6a31dfdf98bc42f",
          "title":"出门鞋子脏了不用愁，只需2个塑料瓶盖，立马解决难题，简单方便",
          "date":"2019-02-28 09:30",
          "category":"头条",
          "author_name":"颜妹生活小妙招",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228093018098.html",
          "thumbnail_pic_s":"http:\/\/07imgmini.eastday.com\/mobile\/20190228\/2019022809_e334c618d7174c25b8285ea1a50630e8_4682_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/07imgmini.eastday.com\/mobile\/20190228\/2019022809_052eda85f1b843bcaf5dd108c5ca0a14_1673_cover_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/07imgmini.eastday.com\/mobile\/20190228\/2019022809_e038289be65e405da1f190b8cbaa27cf_4011_cover_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"4a2e0b36d76094033046f5f02e25d21a",
          "title":"数学竞赛中国丢金 领队回应：不代表国家数学水平",
          "date":"2019-02-28 09:29",
          "category":"头条",
          "author_name":"南海网",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228092939629.html",
          "thumbnail_pic_s":"http:\/\/01imgmini.eastday.com\/mobile\/20190228\/20190228092939_67694057c06ffc0797642d25756af62a_1_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"56b42efdd1fc675589d943a2d7bde652",
          "title":"春寒料峭大雪飞扬 漫天风雪正是练兵好时机",
          "date":"2019-02-28 09:28",
          "category":"头条",
          "author_name":"人民网",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228092804276.html",
          "thumbnail_pic_s":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228092804_1838dc1ba918a017ef04b4e2da255840_4_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228092804_1838dc1ba918a017ef04b4e2da255840_2_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/08imgmini.eastday.com\/mobile\/20190228\/20190228092804_1838dc1ba918a017ef04b4e2da255840_3_mwpm_03200403.jpg"
        },
        {
          "uniquekey":"f7ed9e270f9271e76279955fdf3cf69a",
          "title":"昔日全球最强海军没钱了：未来舰队的核心 居然要用民船来改",
          "date":"2019-02-28 09:27",
          "category":"头条",
          "author_name":"东方头条 利刃军事",
          "url":"http:\/\/mini.eastday.com\/mobile\/190228092714177.html",
          "thumbnail_pic_s":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/2019022809_5bee218f17a04bd19881794ebe24052a_7941_mwpm_03200403.jpg",
          "thumbnail_pic_s02":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/2019022809_41e5f86a01aa4c76b5dba6d735ee4d30_6426_mwpm_03200403.jpg",
          "thumbnail_pic_s03":"http:\/\/03imgmini.eastday.com\/mobile\/20190228\/2019022809_912c83aec4fc4088948961a2f0940d93_0092_mwpm_03200403.jpg"
        }
      ]
    },
    "error_code":0
  };
  group("jsonparse", (){
    test("home", (){
      NewsResponse newsResponse = NewsResponse.fromJson(json);
      expect(newsResponse.result.data[0].uniqueKey, "8639c9a6fb16c4464d9a7682160e3b2f");
    });
  });
}
