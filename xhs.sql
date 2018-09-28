-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-28 11:55:14
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xhs`
--

-- --------------------------------------------------------

--
-- 表的结构 `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `content_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `red_book`
--

CREATE TABLE `red_book` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(255) COLLATE utf8_bin NOT NULL,
  `release-message` text COLLATE utf8_bin NOT NULL,
  `release-time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `red_book`
--

INSERT INTO `red_book` (`id`, `uname`, `avatar`, `release-message`, `release-time`) VALUES
(1, 'tom', 'http://localhost:3000/imgs/avatar/header.png', '千万不要自驾去西班牙的纪念碑谷，差点回不来了！！！不过这美到窒息的景色，不枉我们提前半年预定了airbnb的民宿，也不枉我们从巴塞罗那坐高铁到瓦伦西亚又租车开了2小时找到它，虽然只住了一晚，但值得我为此去一趟西班牙，是我们蜜月行中最完美的一站。我甚至有以后要老死在这里的心愿，回国后还经常想起这里，是我以前从没遇到的。这就是心动的感觉？\r\n\r\n首先，不好去，西班牙租车简单停车难，路也不好找（导航不给力），所以为了它也是经历了不少挫折。\r\n\r\n其次，不一定能订到民宿，我是碰巧遇到一个既能看到大海又只需订一天的民宿，很多都是五天起订，可惜我那个屋主已经下架了。没有订民宿就无法进来，因为有门禁卡，就算进来也上不了泳池，都是独立的钥匙，所以必须订民宿，不然风险太大。airbnb搜Muralla roja就对了，西班牙语红墙的意思。\r\n\r\n最后，卡尔佩Calpe是个美食并不多生活不太方便的小镇，超市、饭店打烊都很早，矿泉水都买不到，我饿加渴了一晚。\r\n\r\n氮素！！这些都不是问题！！因为美景足以掩盖一切！！我全程都是手机拍照，没有修图，只有iPhone自带的滤镜，有时候也没用。即使技术再渣都能拍到你想要的照片，称霸朋友圈。我那晚兴奋滴基本上没合眼，早晨天一亮就醒来看日出拍照。楼顶还有个十字架形状的泳池，玩了整个黄昏（西班牙夏天白天很长，晚上6点和下午2点差不多，晚上11点天才黑下来）。\r\n\r\n站在纪念碑谷的终点我仿佛变成了艾达，一瞬间次元融合，我忘记自己到底在哪儿了。一生必去的XX个地方里必须有它，绝对不会后悔。\r\n\r\n卡尔佩的海滨也美到不可方物，下一篇我写写民宿和海吧。', '2018-09-26'),
(3, '恶魔老孙', 'http://localhost:3000/imgs/avatar/header.png', '巴塞罗那必去的教堂 蒙塞拉特修道院一个在山里非常清静的教堂⛪️\r\n\r\n圣家族教堂巴塞罗那\r\n\r\n最美的就是巴塞罗那排名第一的教堂，还在建的教堂，预计2026年建好，看过了那么多的教堂，这一个确实不一样，内部结果有很多和自然，和奇思妙想，异想天开相结合的东西，你永远想不到高迪的想法是什么，教堂的三面各有特色，一定要提前买好票，讲解很细致的哦', '2018-09-26'),
(4, 'yaya', 'http://localhost:3000/imgs/avatar/dy.png', '豆瓣评分：8.6分\r\n剧类：法国电视剧\r\n《凡尔赛》是一部以法国路易十四为时代背景的电视剧，描绘了主角路易十四在1667年，在风口浪尖时，如何解决难题并建立欧洲最奢华的凡尔赛宫。该片属于豪华制作，剧中光看服饰就已经相当满足了。', '2018-09-26'),
(5, '草莓跳', 'http://localhost:3000/imgs/avatar/dy.png', '你的气质里藏着你读过的书?高情商女孩必看的5本书！\r\n\r\n?《皮囊》\r\n\r\n如果内心漂泊无依的你，关于亲人、故乡、好友，暖心又真挚。可以让我们的皮囊和灵魂都更加完整。文字穿透有力直击人心。\r\n\r\n“人生或许就是一具皮囊打包携带着一颗心的羁旅。心醒着的时候，就把皮囊从内部照亮。”\r\n\r\n?《红玫瑰与白玫瑰》\r\n\r\n“也许每一个男子全都有过这样的两个女人，至少两个。娶了红玫瑰，久而久之，红的变了墙上的一抹蚊子血，白的还是\"床前明月光\"；娶了白玫瑰，白的便是衣服上沾的一粒饭黏子，红的却是心口上一颗朱砂痣。”\r\n\r\n?《人生终要有一场触及灵魂的旅行》\r\n\r\n去寻找那些曾出现在梦境中的路径、山峦与田野吧，趁阳光正好，趁微风不噪，趁繁花还未开至荼蘼，趁现在还年轻，还可以走很长很长的路，还能诉说很深很深的思念。\r\n\r\n?《人间失格》\r\n\r\n生而为人，我很抱歉的最佳阐释。\r\n\r\n“问我想要什么，我反而突然间什么都不想要了。脑海中闪过一个念头： 随便好了，反正这世上没有任何东西能够让我快乐起来。”\r\n\r\n?《你的善良必须有点锋芒》\r\n\r\n你一定能感同身受的一本书，什么时候看都不算晚。\r\n\r\n一个人越是善良，待人的底线应该越高一些。这样才能避免纵容他人，也能保护自己。\r\n\r\n看完这本书，你对善良也会有新的认识。', '2018-09-26'),
(6, '爱美丽', 'http://localhost:3000/imgs/avatar/dy.png', '卡帕多奇亚|小众冷门酒店?也能拍出热气球大片➕好吃餐厅?推荐\r\n\r\n我和男盆友是9月初才决定来土耳其的，提前一个礼拜才定的机票和酒店，当时小红书上推荐的所有网红酒店都客满了，听说苏丹洞穴酒店更是排到了明年的9月?Booking上也找了好多家，要不看不到热气球，要不设施太差不是Cave！我摆出一副如果找不到能拍出热气球的酒店就不去了的架势，求生欲很强的男票只能很贴心的一直找，终于订到了这家Milat，本来我是不太抱期望的！因为根本没人推荐！结果到了以后发现服务设施都非常的不错?\r\n\r\n首先预定后提前联系，酒店会派车到机场来回免费接送，到达后前台小哥也很热情，各种详细介绍本地游玩攻略和好吃餐馆，酒店内部设施也很新，每天都有人准时打扫更换，干净整洁！24小时热水充足！酒店一共3层，每一层都有露台，可以喝茶聊天晒太阳?。\r\n\r\n‼️划重点：早晨最佳热气球?拍摄时间为6点到7点半！日出前会有100只热气桥升空，日出后会有50只升空！所以最好6点左右就要Stand By！\r\n\r\n因为这家酒店不是网红酒店，所以我上到最顶部露台的时候，根本就没人和我抢，除了两个阿拉伯菇凉，露台简直就是我一个人的，随便拍?（看了好多小红薯?写的攻略，网红酒店都是排队拍照的！）\r\n\r\nTips：因为早晨非常冷，所以出行墙裂⚡️建议准备羊绒披肩❗️看到大只热气球飘过，瞬间扔掉披肩，摆出我不冷我不冷我很好的随意姿态❗️（其实内心一万只草泥马在奔腾你懂的…………\r\n\r\n卡帕多奇亚看热气球的小镇叫Goreme，很多酒店都是在市中心（其实市中心也就两条街）我们定这家在离市中心步行5分钟的地方，没有市中心那么多游客，居住环境很清静！\r\n\r\n———————下面是餐馆推荐——————\r\n\r\n这里推荐一家图5⃣️的餐馆Orient，就在Milat酒店出来的街对面，中餐和下午茶环境都不错，天气好坐在小院子里可以悠闲地晒太阳，老板送的当地特色前菜非常好吃！面包也烤的非常酥脆新鲜?比起市内吃过的几家我独爱这家！\r\n\r\n地址：Orient Restaurant, No 3, Adnan Menderes Cd., 50180 Göreme Belediyesi/Nevşehir Merkez/Nevşehir, 土耳其\r\n\r\n再推荐一家?我很喜欢的中餐馆，给受不了西餐和土耳其菜的宝宝（真的连吃7天会哭?的）：女祖饺，水煮鱼居然很正宗，除了上菜较慢外其他都不错！就在市中心哦！', '2018-09-26');

-- --------------------------------------------------------

--
-- 表的结构 `release_imgs`
--

CREATE TABLE `release_imgs` (
  `id` int(11) NOT NULL,
  `content-id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `is_cover` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `release_imgs`
--

INSERT INTO `release_imgs` (`id`, `content-id`, `url`, `is_cover`) VALUES
(1, 1, 'http://localhost:3000/imgs/contents/xby1.jpg', 2),
(2, 1, 'http://localhost:3000/imgs/contents/xby2.jpg', 1),
(3, 1, 'http://localhost:3000/imgs/contents/xby3.jpg', 1),
(4, 1, 'http://localhost:3000/imgs/contents/xby4.jpg', 1),
(5, 1, 'http://localhost:3000/imgs/contents/xby5.jpg', 1),
(6, 1, 'http://localhost:3000/imgs/contents/xby6.jpg', 1),
(7, 1, 'http://localhost:3000/imgs/contents/xby7.jpg', 1),
(8, 1, 'http://localhost:3000/imgs/contents/xby8.jpg', 1),
(9, 4, 'http://localhost:3000/imgs/contents/dy1.jpg', 1),
(10, 4, 'http://localhost:3000/imgs/contents/dy2.jpg', 2),
(11, 4, 'http://localhost:3000/imgs/contents/dy3.jpg', 1),
(12, 4, 'http://localhost:3000/imgs/contents/dy4.jpg', 1),
(13, 4, 'http://localhost:3000/imgs/contents/dy5.jpg', 1),
(14, 4, 'http://localhost:3000/imgs/contents/dy6.jpg', 1),
(15, 4, 'http://localhost:3000/imgs/contents/dy7.jpg', 1),
(16, 4, 'http://localhost:3000/imgs/contents/dy8.jpg', 1),
(17, 3, 'http://localhost:3000/imgs/contents/bsln1.jpg', 1),
(18, 3, 'http://localhost:3000/imgs/contents/bsln2.jpg', 2),
(19, 3, 'http://localhost:3000/imgs/contents/bsln3.jpg', 1),
(20, 3, 'http://localhost:3000/imgs/contents/bsln4.jpg', 1),
(21, 3, 'http://localhost:3000/imgs/contents/bsln5.jpg', 1),
(22, 3, 'http://localhost:3000/imgs/contents/bsln6.jpg', 1),
(23, 3, 'http://localhost:3000/imgs/contents/bsln7.jpg', 1),
(24, 3, 'http://localhost:3000/imgs/contents/bsln8.jpg', 1),
(25, 5, 'http://localhost:3000/imgs/contents/book1.jpg', 1),
(26, 5, 'http://localhost:3000/imgs/contents/book2.jpg', 2),
(27, 5, 'http://localhost:3000/imgs/contents/book3.jpg', 1),
(28, 5, 'http://localhost:3000/imgs/contents/book4.jpg', 1),
(29, 6, 'http://localhost:3000/imgs/contents/teq1.jpg', 2),
(30, 6, 'http://localhost:3000/imgs/contents/teq2.jpg', 1),
(31, 6, 'http://localhost:3000/imgs/contents/teq3.jpg', 1),
(32, 6, 'http://localhost:3000/imgs/contents/teq4.jpg', 1),
(33, 6, 'http://localhost:3000/imgs/contents/teq5.jpg', 1),
(34, 6, 'http://localhost:3000/imgs/contents/teq6.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `shoplist`
--

CREATE TABLE `shoplist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `info` text COLLATE utf8_bin NOT NULL,
  `business` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `original` decimal(10,2) NOT NULL,
  `details` text COLLATE utf8_bin NOT NULL,
  `islimit` tinyint(10) NOT NULL,
  `country` varchar(255) COLLATE utf8_bin NOT NULL,
  `brand` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `shoplist`
--

INSERT INTO `shoplist` (`id`, `title`, `info`, `business`, `price`, `original`, `details`, `islimit`, `country`, `brand`) VALUES
(1, '韩国 · 补水神器升级版', '皮肤吃剂大补丸 · 柔滑亮泽焕颜十全大补面膜 50 ml', '福利社', '339.00', '888.00', '法国实验室品牌，高达86%有效活性成分真是对脸部的满满宠爱。医疗美容级全能修护型面膜，N种氨基酸和胜肽的复合配方，被称为传说中的“十全大补面膜”，红薯说“每次使用前有点要发痘痘的地方，敷完就感觉消下去了，因为它有镇静舒缓皮肤的效用，已经完全发出来的痘痘感觉会好得快一点”“刚敷完脸这个白啊，第二天皮肤光泽也很好，能保持4日这样的光泽度和光滑感，感觉皮肤补进去很多营养”，“早起肤色极佳，肌肤明亮饱满有光泽，简直有种已经上过隔离霜盖住毛孔的错觉，像给皮肤吃了一剂饕餮盛宴，敷一道面膜就像睡了一个星期每天十小时的美容觉”。小红薯注意，目前多版本混发，不影响红薯使用哦！', 1, '来自法国', '菲洛嘉 Filorga'),
(2, '日本· 彻底改变肌肤命运', '彻底改变肌肤命运 · 护肤精华露套装 神仙水230ml+清莹露230ml', '宝洁', '1488.00', '2500.00', '被称为神仙水前奏的清莹露和神仙水一起来啦！而且套装里的每个商品都有单独的纸盒，送人分享也很不错哦！清莹露在洁面后使用，它含有保养成分AHA，还可以对肌肤进行二次清洁，清除多余油脂~还可以调节肌肤酸碱平衡，去除老化角质~它可以补充皮肤水分帮助神仙水的吸收，降低皮肤过敏的概率~SK-II神仙水小红薯们懂的，各种皮肤粗糙、痘痘、暗沉问题都一呼百应，内含92.7%的天然活肤酵母精华Pitera。双剑合璧，闭口全消！', 0, '来自日本', 'SK-II'),
(3, '日本· 林允同款日本直邮', '林允同款日本直邮 · recore serum DDS海洋幸福面膜', 'DDS', '322.00', '799.00', '这是一罐由法国和西班牙的海洋生物学家和doctor，联合日本高端美容技术研制的高机能焕肤海洋精华面膜！日法强强联手研发，成分原材料大部分来自法国。高浓度配合海洋性胶原蛋白，海底微生物培养精华符合海洋提取物成分，能提升皮肤修复机能，补水润泽，美白淡斑，抗氧化湿润度抗衰紧致。越来越健康结实，号称一周皱纹量能减少47%，连用7天像磨皮，可谓面膜中的黑科技！使用方法：洗脸后，取1cm珍珠大的量避开眼周，涂抹全脸，约30分钟后，用清水清洗，洗脸后正常护肤即可。', 1, '来自日本 ', '科拉途株式会社 CURATO'),
(4, '法国· 呵护肌肤焕活状态', '呵护肌肤焕活状态 · 明星「绿宝瓶」精华 50ml 持久保湿修护防御', 'HR', '715.00', '1400.00', '美妆行业“长青树”欧莱雅旗下的HELENA RUBINSTEIN（赫莲娜）以“至美力量，科技为先”为品牌精神，在美妆护肤占有一席之地。 赫莲娜悦活新生系列迅速晋身为护肤新宠儿，对内修护对外抵御的“绿宝瓶”精华为众多美妆博主以及一线明星所推崇，是赫莲娜护肤系列中当之无愧的必备单品。繁重的工作和污染的空气，导致肌肤时常处于透支状态，挽救肌肤刻不容缓。全新升级的“绿宝瓶”精华在持久保湿肌肤的基础上，加倍提升肌肤底层修护防御能力，为肌肤筑起保护膜，层层唤醒每一寸肌肤，维持肌肤平衡状态，令肌肤呈现出惊艳的年轻透亮效果。', 0, '来自法国 ', '赫莲娜 HELENA RUBINSTEIN'),
(5, '韩国 · 补水神器升级版', '皮肤吃剂大补丸 · 柔滑亮泽焕颜十全大补面膜 50 ml', '福利社', '339.00', '888.00', '法国实验室品牌，高达86%有效活性成分真是对脸部的满满宠爱。医疗美容级全能修护型面膜，N种氨基酸和胜肽的复合配方，被称为传说中的“十全大补面膜”，红薯说“每次使用前有点要发痘痘的地方，敷完就感觉消下去了，因为它有镇静舒缓皮肤的效用，已经完全发出来的痘痘感觉会好得快一点”“刚敷完脸这个白啊，第二天皮肤光泽也很好，能保持4日这样的光泽度和光滑感，感觉皮肤补进去很多营养”，“早起肤色极佳，肌肤明亮饱满有光泽，简直有种已经上过隔离霜盖住毛孔的错觉，像给皮肤吃了一剂饕餮盛宴，敷一道面膜就像睡了一个星期每天十小时的美容觉”。小红薯注意，目前多版本混发，不影响红薯使用哦！', 1, '来自法国', '菲洛嘉 Filorga'),
(6, '日本· 彻底改变肌肤命运', '彻底改变肌肤命运 · 护肤精华露套装 神仙水230ml+清莹露230ml', '宝洁', '1488.00', '2500.00', '被称为神仙水前奏的清莹露和神仙水一起来啦！而且套装里的每个商品都有单独的纸盒，送人分享也很不错哦！清莹露在洁面后使用，它含有保养成分AHA，还可以对肌肤进行二次清洁，清除多余油脂~还可以调节肌肤酸碱平衡，去除老化角质~它可以补充皮肤水分帮助神仙水的吸收，降低皮肤过敏的概率~SK-II神仙水小红薯们懂的，各种皮肤粗糙、痘痘、暗沉问题都一呼百应，内含92.7%的天然活肤酵母精华Pitera。双剑合璧，闭口全消！', 0, '来自日本', 'SK-II'),
(7, '日本· 林允同款日本直邮', '林允同款日本直邮 · recore serum DDS海洋幸福面膜', 'DDS', '322.00', '799.00', '这是一罐由法国和西班牙的海洋生物学家和doctor，联合日本高端美容技术研制的高机能焕肤海洋精华面膜！日法强强联手研发，成分原材料大部分来自法国。高浓度配合海洋性胶原蛋白，海底微生物培养精华符合海洋提取物成分，能提升皮肤修复机能，补水润泽，美白淡斑，抗氧化湿润度抗衰紧致。越来越健康结实，号称一周皱纹量能减少47%，连用7天像磨皮，可谓面膜中的黑科技！使用方法：洗脸后，取1cm珍珠大的量避开眼周，涂抹全脸，约30分钟后，用清水清洗，洗脸后正常护肤即可。', 1, '来自日本 ', '科拉途株式会社 CURATO'),
(8, '法国· 呵护肌肤焕活状态', '呵护肌肤焕活状态 · 明星「绿宝瓶」精华 50ml 持久保湿修护防御', 'HR', '715.00', '1400.00', '美妆行业“长青树”欧莱雅旗下的HELENA RUBINSTEIN（赫莲娜）以“至美力量，科技为先”为品牌精神，在美妆护肤占有一席之地。 赫莲娜悦活新生系列迅速晋身为护肤新宠儿，对内修护对外抵御的“绿宝瓶”精华为众多美妆博主以及一线明星所推崇，是赫莲娜护肤系列中当之无愧的必备单品。繁重的工作和污染的空气，导致肌肤时常处于透支状态，挽救肌肤刻不容缓。全新升级的“绿宝瓶”精华在持久保湿肌肤的基础上，加倍提升肌肤底层修护防御能力，为肌肤筑起保护膜，层层唤醒每一寸肌肤，维持肌肤平衡状态，令肌肤呈现出惊艳的年轻透亮效果。', 0, '来自法国 ', '赫莲娜 HELENA RUBINSTEIN');

-- --------------------------------------------------------

--
-- 表的结构 `shop_images`
--

CREATE TABLE `shop_images` (
  `id` int(11) NOT NULL,
  `commodity_id` tinyint(10) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `is_cover` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `shop_images`
--

INSERT INTO `shop_images` (`id`, `commodity_id`, `url`, `is_cover`) VALUES
(1, 1, 'http://localhost:3000/imgs/contents/product1-1.jpg', 2),
(2, 1, 'http://localhost:3000/imgs/contents/product1-2.jpg', 1),
(3, 1, 'http://localhost:3000/imgs/contents/product1-3.jpg', 1),
(4, 2, 'http://localhost:3000/imgs/contents/sxs1-1.jpg', 2),
(5, 2, 'http://localhost:3000/imgs/contents/sxs1-2.jpg', 1),
(6, 2, 'http://localhost:3000/imgs/contents/sxs1-3.jpg', 1),
(7, 3, 'http://localhost:3000/imgs/contents/dds1-1.jpg', 2),
(8, 3, 'http://localhost:3000/imgs/contents/dds1-2.jpg', 1),
(9, 4, 'http://localhost:3000/imgs/contents/hr1-1.jpg', 2),
(10, 5, 'http://localhost:3000/imgs/contents/product1-1.jpg', 2),
(11, 5, 'http://localhost:3000/imgs/contents/product1-2.jpg', 1),
(12, 5, 'http://localhost:3000/imgs/contents/product1-3.jpg', 1),
(13, 6, 'http://localhost:3000/imgs/contents/sxs1-1.jpg', 2),
(14, 6, 'http://localhost:3000/imgs/contents/sxs1-2.jpg', 1),
(15, 6, 'http://localhost:3000/imgs/contents/sxs1-3.jpg', 1),
(16, 7, 'http://localhost:3000/imgs/contents/dds1-1.jpg', 2),
(17, 7, 'http://localhost:3000/imgs/contents/dds1-2.jpg', 1),
(18, 8, 'http://localhost:3000/imgs/contents/hr1-1.jpg', 2);

-- --------------------------------------------------------

--
-- 表的结构 `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL,
  `open_id` varchar(255) NOT NULL DEFAULT '',
  `unionid` varchar(255) DEFAULT '',
  `session_key` varchar(255) DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(255) NOT NULL DEFAULT '0',
  `birthday` date NOT NULL,
  `describe` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`) USING BTREE;

--
-- Indexes for table `red_book`
--
ALTER TABLE `red_book`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `release_imgs`
--
ALTER TABLE `release_imgs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shoplist`
--
ALTER TABLE `shoplist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_images`
--
ALTER TABLE `shop_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `red_book`
--
ALTER TABLE `red_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `release_imgs`
--
ALTER TABLE `release_imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `shoplist`
--
ALTER TABLE `shoplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `shop_images`
--
ALTER TABLE `shop_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
