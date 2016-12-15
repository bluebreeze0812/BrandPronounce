-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-15 15:16:12
-- 服务器版本： 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brand`
--

-- --------------------------------------------------------

--
-- 表的结构 `brand`
--

CREATE TABLE `brand` (
  `id` bigint(64) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `eng_name` varchar(128) NOT NULL,
  `phonetic` varchar(256) NOT NULL,
  `capital` varchar(16) NOT NULL,
  `category` varchar(128) NOT NULL,
  `nation` varchar(128) NOT NULL,
  `flag` varchar(64) NOT NULL,
  `website` varchar(256) DEFAULT NULL,
  `brief` text
) ;

--
-- 转存表中的数据 `brand`
--

INSERT INTO `brand` (`id`, `name`, `eng_name`, `phonetic`, `capital`, `category`, `nation`, `flag`, `website`, `brief`) VALUES
(1, '阿迪达斯', 'adidas', '[`ɑdiˌdɑs]', 'A', '服饰', '德国', 'Germany', 'http://www.adidas.com.cn', '阿迪达斯（adidas）是德国运动用品制造商，阿迪达斯AG的成员公司。以其创办人阿道夫·阿迪·达斯勒（Adolf Adi Dassler）命名，在1920年于接近纽伦堡的黑措根奥拉赫开始生产鞋类产品。1949年8月18日以adidas AG名字登记。阿迪达斯原本由两兄弟共同开设，在分道扬镳后，阿道夫的哥哥鲁道夫·达斯勒 （Rudolf Dassler）开设了运动品牌puma。其经典广告语：“没有不可能”（Impossible is nothing）。2011年3月，斥资1.6亿欧元启用全新口号——adidas is all in（全倾全力）。'),
(2, '路易威登', 'LouisVuitton', '[`luːi: vəː`tɑn]', 'L', '箱包', '法国', 'France', 'http://www.louisvuitton.cn', '路易威登(LouisVuitton)于1854年成立于法国巴黎，从皇室御用到顶级工艺作坊，路易威登的种种经典设计顺应了旅行历史的重要发展。\r\n1896年路易·威登Monogram帆布首次面世，宣告了品牌的时尚面貌，其独有的创意也成为其经典象征；随着游轮旅行的风靡，1901年推出Steamer旅行袋，标志旅行软袋时代正式来临；1924年的Keepall旅行袋，改变了旅行的重量与打包方式，使得短途即兴的出行更为轻松优雅；1997年，随着艺术总监 Marc Jacobs的加入，路易威登将其精湛工艺及独有奢华延伸至时装、鞋履、腕表、配饰及珠宝精品，为顾客在法式传统中融入了时尚的色彩。'),
(3, '欧米茄', 'OMEGA', '[`ɔːmegɑ]', 'O', '钟表', '瑞士', 'Swiss', 'https://www.omegawatches.cn/', '欧米茄(OMEGA)瑞士名表品牌。始于1848年，欧米茄在帆船、田径、游泳等世界级赛事中担任标准计时，并且常常赞助欧洲高尔夫球赛，荣获奥运会指定计时器达三十一次之多。欧米茄是第一只也是唯一一只在月球上被佩戴过的手表。'),
(4, '耐克', 'NIKE', '[`nɑiki]', 'N', '服饰', '美国', 'America', 'https://secure-store.nike.com/cn/zh_cn/', 'NIKE是全球著名的体育运动品牌，英文原意指希腊胜利女神，中文译为耐克。\r\n公司总部位于美国俄勒冈州Beaverton。公司生产的体育用品包罗万象，例如服装，鞋类，运动器材等。 \r\n耐克商标图案是个小钩子。耐克一直将激励全世界的每一位运动员并为其献上最好的产品视为光荣的任务。耐克首创的气垫技术给体育界带来了一场革命。运用这项技术制造出的运动鞋可以很好地保护运动员的膝盖.在其在作剧烈运动落地时减小对膝盖的影响。\r\n2016年6月8日，《2016年BrandZ全球最具价值品牌百强榜》公布，耐克排第24名。\r\n2016年9月8日，苹果牵手耐克正式推出第二代Apple Watch第二代产品。'),
(5, '劳力士', 'Rolex', '[`ɾɔːlex]', 'R', '钟表', '瑞士', 'Swiss', 'http://www.rolex.com/zh-hans', '劳力士（Rolex）是瑞士著名的手表制造商，前身为Wilsdorf and Davis（W&D）公司，由德国人汉斯·威斯多夫（Hans Wilsdof）与英国人戴维斯（Alfred Davis）于1905年在伦敦合伙经营。1908年由汉斯·威斯多夫在瑞士的拉夏德芬（La Chaux-de-Fonds）注册更名为ROLEX。经过一个世纪的发展，总部设在日内瓦的劳力士公司已拥有19个分公司，在世界主要的大都市有24个规模颇大的服务中心，年产手表45万只左右，成为市场占有量甚大的名牌手表之一。'),
(6, '香奈儿', 'CHANEL', '[ʃə`nʒl]', 'C', '奢侈品', '法国', 'France', 'http://www.chanel.cn/zh_CN/', '香奈儿（CHANEL）是一个有着整整百年历史的著名品牌，其时装设计永远保持高雅、简洁、精美的风格。Coco Chanel善于突破传统，早在20世纪40年代就成功地将“五花大绑”的女装推向简单、舒适的设计。创始人Coco Chanel（原名：Gabrielle Bonheur Chanel ；中文名：加布里埃·可可·香奈儿）于1910年在法国巴黎创立香奈儿品牌。该品牌产品种类繁多，有服装、珠宝饰品及其配件、化妆品、护肤品、香水等，每一类产品都闻名遐迩，特别是香水与时装。'),
(7, '迪奥', 'Dior', '[kɾistʃæn `dʒɔːɾ]', 'D', '服饰', '法国', 'France', 'http://www.dior.cn/home/zh_cn', '克里斯汀·迪奥（英语：Christian Dior），简称迪奥（Dior），是著名法国时尚消费品牌。亦为全球最大的高级时尚品牌控股公司：LVMH 酩悦轩尼诗路易威登集团的母公司（Moët Hennessy - Louis Vuitton, LVMH Group）路威酩轩集团，是一法国酒业与高价奢侈品制造集团。Dior 握有 LVMH Group 42.38% 的普通股及 59.3% 的表决权。\r\n迪奥公司由法国时装设计师克里斯汀·迪奥（Christian Dior，1905年1月21日－1957年10月24日）创立，总部设在巴黎。主要经营女装、男装、首饰、香水、化妆品,童装等高档消费品。其男装品牌现已独立为迪奥男装。'),
(8, '彪马', 'PUMA', '[`pʊ̈ːmɑ]', 'P', '服饰', '德国', 'Germany', 'http://cn.puma.com/', 'PUMA 于1948年成立于德国荷索金米兰，PUMA中文作彪马，意为美洲狮，德国一家以生产鞋与运动服为主的大型跨国公司。创始人：鲁道夫·达斯勒（Rudolf Dassler）。鲁道夫·达斯勒于1924年加入了弟弟阿道夫·达斯勒（昵称阿迪Adi）位于赫若拉赫的达斯勒公司，并即将公司更名为达斯勒兄弟公司。1930年代中期，达斯勒兄弟公司成长为具有近百名员工、有三十余种款式的全球运动鞋领导品牌。第二次世界大战后，达斯勒兄弟公司复业，有47名员工，并以帆布与美军燃油槽提炼出橡胶，制成战后第一款运动鞋。1948年阿道夫·达斯勒以其自身姓名的组合Adi与das将达斯勒兄弟公司更名为adidas，两兄弟从此分道扬镳，哥哥鲁道夫·达斯勒另成立了PUMA公司，与adidas的方向相同，都以体育用品生产为主，两人从此成为竞争对手。'),
(9, '范思哲', 'Versace', '[`dʒɑnni ver`sɑːtʃe]', 'V', '服饰', '意大利', 'Italy', 'http://www.versace.cn/', '来自意大利知名的奢侈品牌范思哲（Versace）创造了一个独特的时尚帝国，代表着一个品牌家族，范思哲的时尚产品统领了生活的每个领域，其鲜明的设计风格，独特的美感，极强的先锋艺术表征让它风靡全球。它的设计风格鲜明，是独特的美感极强的先锋艺术的象征。其中最魅力独具的是那些展示充满文艺复兴时期特色的华丽的具有丰富想象力的女装款式，它们性感漂亮，女性味十足，色彩鲜艳，既有歌剧式的超平现实的华丽，又能充分考虑穿着舒适性及恰当地修饰体型。范思哲还经营香水、眼镜、领带、皮件、包袋、瓷器、玻璃器皿、丝巾、羽绒制品、家具产品等。'),
(10, '巴宝莉', 'Burberry', '[`bəːbɜɾɪː]', 'B', '服饰', '英国', 'England', 'https://www.burberry.com/', '巴宝利(Burberry)由英国人Thomas Burberry创于1856年，Burberry以经典的格子图案、独特的布料功能和大方优雅的剪裁，成为英国传统的代名词，成为“一战”英军的征衣和英国皇室的御用品牌，在字典里甚至用Burberry来代表风雨衣。历经百年后现在Burberry再度成为最抢手的热门时尚品牌，受到了各个年龄阶层消费者的青睐。莎朗·斯通、麦当娜、辣妹维多利亚等时尚界名流也开始热衷Burberry。'),
(11, '爱马仕', 'Hermes', '[`æəmɑːs]', 'H', '服饰', '法国', 'France', 'http://www.hermes.com/', '爱马仕（Hermès）是世界著名的奢侈品品牌，1837年由Thierry Hermès创立于法国巴黎，早年以制造高级马具起家，迄今已有170多年的悠久历史。爱马仕是一家忠于传统手工艺，不断追求创新的国际化企业，截至2014年已拥有箱包、丝巾、领带、男女装和生活艺术品等十七类产品系列。爱马仕的总店位于法国巴黎，分店遍布世界各地，1996年在北京开了中国第一家Hermes专卖店，“爱马仕”为大中华区统一中文译名。爱马仕一直秉承着超凡卓越、极至绚烂的设计理念，造就优雅之极的传统典范。'),
(12, '阿玛尼', 'Armani', '[dʒɔɾdʒɒ ɑɾ`mɑːni]', 'A', '服饰', '意大利', 'Italy', 'http://www.armani.cn/cn', '阿玛尼（ Armani） 是世界知名奢侈品牌，1975年由时尚设计大师乔治·阿玛尼（Giorgio Armani）创立于意大利米兰，乔治·阿玛尼是在美国销量最大的欧洲设计师品牌，他以使用新型面料及优良制作而闻名。'),
(13, '普拉达', 'PRADA', '[`prɑːdɑ]', 'P', '服饰', '意大利', 'Italy', 'http://www.prada.com/', '普拉达（PRADA）是意大利奢侈品牌，由玛丽奥·普拉达于1913年在意大利米兰创建。Miuccia Prada的独特天赋在于对新创意的不懈追求,融合了对知识的好奇心和文化兴趣,从而开辟了先驱之路。她不仅能够预测时尚趋势,更能够引领时尚潮流。Prada提供男女成衣、皮具、鞋履、眼镜及香水,并提供量身定制服务。'),
(14, '科尔维特', 'Corvette', '[kɔː`vet]', 'C', '汽车', '美国', 'America', 'http://www.chevrolet.com/corvette-sports-cars.html', '雪佛兰科尔维特(Corvette)是美国国宝级的超级跑车，亦是通用旗下最高端的超级跑车品牌。该系列诞生于1953年，至今共衍生出7代车型，其中最新的为14款C7车型。Corvette特别能体现美国人对于超级跑车的追求：狂野大气，不拘小节，狂躁的V8发动机，7.0的巨大排量（13 Z06），科尔维特-ZR1车型更是拥有638Hp的巨大马力，以及604lb-ft扭矩，0-100仅需3秒左右，最高时速更是达到了惊人的350公里/每小时，Corvette最惊人的还是永不止境的中后段加速力，Corvette的中后段加速力在比赛中常常让对手措手不及，和兰博基尼，法拉利，布加迪不同的是Corvette超级跑车不仅拥有强大的直线加速能力，还有强悍的赛道能力，仅2011年Chevrolet ZR1就在纽博格林北环赛道（Nurburgring Nordschleife）创下7分19秒63的惊人圈速成绩。'),
(15, '唐纳卡兰', 'Donna Karan', '[dɑna `kerən]', 'D', '服饰', '美国', 'America', 'http://www.donnakaran.com/', '唐纳·卡兰（Donna Karan），美国著名时装设计师，纽约唐纳卡兰公司以及DKNY服装品牌的创始人。她是一个外表平和、貌不惊人的女子，为了使其服饰王国走向多元化，在1984年和丈夫联手创立了自己的公司，推出了一系列各具特色的产品：dkny、dknyclassic、dknaactive、dknyjeans，对纽约所汇聚的不同文化及其独特的生活气息作了一个全新的诠释。dkny以更前卫、更时尚、更休闲的手法描绘了纽约不同文化、不同生活方式的时代气息，以截然不同的语言体现dkny独特的魅力。'),
(16, '古驰', 'Gucci', '[`gʊtʃiː]', 'G', '服饰', '意大利', 'Italy', 'https://www.gucci.com', '古驰(Gucci)，意大利时装品牌，由古驰奥·古驰在1921年于意大利佛罗伦萨创办。古驰的产品包括时装、皮具、皮鞋、手表、领带、丝巾、香水、家居用品及宠物用品等，中文译作古驰。GUCCI品牌时装一向以高档、豪华、性感而闻名于世，以“身份与财富之象征”品牌形象成为富有上流社会的消费宠儿，一向被商界人士垂青，时尚又不失高雅。古驰现在是意大利最大的时装集团。\r\n古驰--永恒而经典并深受明星们的青睐，品牌灵感源自演员，公主和名媛等杰出女性。如今其创作总监：弗里达·贾娜妮(Frida Giannini),将这一历史悠久的品牌推向了全新的高度。其产品包括：经典鞋履，奢华手袋，珠宝手表等。\r\n2016年6月8日，《2016年BrandZ全球最具价值品牌百强榜》公布，Gucci排第80名。'),
(17, '蔻驰', 'COACH', '[`koʊtʃ]', 'C', '箱包', '美国', 'America', 'http://china.coach.com/', '蔻驰(COACH)，1941年诞生。总部位于纽约。COACH是美国高端生活方式时尚品牌，为男士、女士提供精致配饰与礼品，产品系列包括女士手袋、男士包款、男士及女士小皮具、鞋履、服饰、手表、旅行用品、围巾、太阳眼镜、香水、时尚首饰等。COACH的产品透过品牌精品店、指定百货公司、专门店及官方网站在全球发售。'),
(18, '纪梵希', 'GIVENCHY', '[gi`voʊntʃiː]', 'G', '服饰', '法国', 'France', 'http://www.givenchy.com/', '纪梵希(Givenchy)，来自法国的时装品牌，纪梵希最初以香水为其主要产品，后开始涉足护肤及彩妆事业。该企业品牌在世界品牌实验室（World Brand Lab）编制的2006年度《世界品牌500强》排行榜中名列第四百一十一。'),
(19, '圣罗兰', 'YSL', '[iːvz soʊŋ loʊŋ]', 'Y', '服饰', '法国', 'France', 'http://www.ysl.com/', '圣罗兰(YSL)，全称Yves Saint laurent，是法国著名的奢侈品牌，主要有时装、护肤品，香水，箱包，眼镜，配饰等。伊夫圣罗兰先生1936年8月1日出生于法属北非阿尔及利亚，家境优渥，在成长过程中不乏接触高级时装珠宝的机会，久而久之累积酝酿起对于时装的热诚。17岁时只身前往时尚之都巴黎学习美术，不久后即转移到服装画的领域内。18岁时，他一举夺得时装设计比赛的冠军，被引荐到Christian Dior旗下工作，担任Dior的副手。'),
(20, '汤丽柏琦', 'Tory Burch', '[tori `bərtʃ]', 'T', '服饰', '美国', 'America', 'http://www.toryburch.cn/', '汤丽柏琦（Tory Burch）是一个实际可行的时尚生活方式品牌，源于经典的美国运动时装风格，充满无拘无束的活力与感觉，充分体现了行政总裁Tory Burch的个人风格和精神。她独具慧眼，将设计师的审美观与价值观在市场上取得平衡，创作出时尚又适合所有年龄女性穿着的时装与配饰。品牌成立于2004 年 2 月，迄今为止，Tory Burch的产品已在全美国，欧洲及亚洲的84家独立店面精品店，toryburch网站，以及全球1000多家精选的商场和专卖店有售。'),
(21, '迈克高仕', 'Michael Kors', '[mɑikoʊ `kɔrs]', 'M', '服饰', '美国', 'America', 'https://www.michaelkors.cn/', '迈克高仕(Michael Kors)公司于1981年正式成立，总部设在纽约市。Michael Kors将奢侈品行业带入了一个新阶段并且成功塑造了崇尚自我表达和与众不同的生活化概念，并将品牌和过去的经典美国奢侈品品牌区分开来Michael Kors已经成为了美式奢侈生活风格的代表。目前Michael Kors在全球89个国家已经拥有超过500家门店，同时分销到全球顶级百货和全球专卖店。'),
(22, '珂洛艾伊', 'Chloe', '[kloʊeiː]', 'C', '服饰', '法国', 'France', 'https://www.chloe.cn/', '珂洛艾伊(CHLOE)诞生于20世纪50年代，由Gaby Aghion 成立。那正是生活化的成衣品牌向贵族式的巴黎高级女装传统挑战之时，CHLOE品牌创造出了简洁美观、可穿性强的现代成衣理念。CHLOE品牌是巴黎高级成衣界的变色龙，它虽相当频繁地聘用各国名师，但品牌的风格框架并未因设计师的更迭而改变，一直保持着法兰西风格的色彩特征和优雅情调。其所聘设计师的个性投入，加上CHLOE生产经营体系的保证使CHLOE品牌风格保持与时代潮流同步。'),
(23, '卡文克莱', 'Calvin Klein', '[kælvin `klɑin]', 'C', '服饰', '美国', 'America', 'http://www.calvinklein.cn/', '卡文克莱（CK）全称Calvin Klein，是一个美国时装品牌，于1968年成立，创始者为同名设计师卡尔文·克雷恩，曾经连续四度获得知名的服装奖项；其创始人Calvin Klein 1942年出生于美国纽约，就读于著名的美国纽约时装学院（FIT）。'),
(24, '杜嘉班纳', 'DOLCE&GABBANA', '[doʊtʃeːn g`banaː]', 'D', '服饰', '意大利', 'Italy', 'http://www.dolcegabbana.it/', '杜嘉班纳公司创立于1985年，总部位于意大利米兰。今天已成为在奢侈品领域中最主要的国际集团之一。两位奠基人Domenico Dolce和Stefano Gabbana一直以来都是公司的两个品牌——Dolce & Gabbana 和 D&G Dolce & Gabbana的创造和设计源泉，也是以平衡发展和致力于核心业务为特征的成长策略的最初倡导人。他们的时装店总部设在米兰，其与Gucci和Prada等响彻世界的一线奢侈品牌共同振兴了意大利的时装工业。产品系列：女装、男装、内衣泳装、香水、配饰、皮具、手表、眼镜。'),
(25, '拉尔夫劳伦', 'RALPH LAUREN', '[`rɑlf lɑʊren]', 'R', '服饰', '美国', 'America', 'https://www.ralphlauren.cn/zh-hans/', '拉尔夫·劳伦来自美国，并且带有一股浓烈的美国气息。拉尔夫·劳伦名下的两个品牌Poloby Ralph Lauren和Ralph Lauren在全球开创了高品质时装的销售领域，将设计师拉尔夫·劳伦的盛名和拉尔夫·劳伦品牌的光辉形象不断发扬。\r\n拉尔夫·劳伦(RALPH LAUREN)时装界“美国经典”品牌。拉尔夫·劳伦（RalphLauren）是有着浓浓美国气息的高品味时装品牌，款式高度风格 化是拉夫·劳伦旗下的两个著名品牌"Lauren Ralph Lauren”（拉夫·劳伦女装）和"Polo Ralph Lauren”（拉尔夫·劳伦马球男装）的共同特点。除时装外，拉夫·劳伦（Ralph Lauren）品牌还包括香水、童装、家居等产品。Ralph Lauren勾勒出的是一个美国梦：漫漫草坪、晶莹古董、名马宝驹。Ralph Lauren（拉尔夫·劳伦）的产品：无论是服装还是家具，无论是香水还是器皿，都迎合了顾客对上层社会完美生活的向往。或者正如Ralph Lauren（拉夫·劳伦 ）先生本人所说：“我设计的目的就是去实现人们心目中的美梦——可以想象到的最好现实。”'),
(26, '飒拉', 'ZARA', '[`zɑːlɑ]', 'Z', '服饰', '西班牙', 'Spain', 'http://www.zara.cn/cn/', 'ZARA是西班牙Inditex集团(股票代码ITX)旗下的一个子公司，它既是服装品牌，也是专营ZARA品牌服装的连锁零售品牌。1975年设立于西班牙的ZARA隶属于Inditex集团为全球排名第三、西班牙排名第一的服装商，在世界各地87个国家内，设立超过两千多家的服装连锁店。ZARA深受全球时尚青年的喜爱，设计师品牌的优异设计价格却更为低廉，简单来说就是让平民拥抱High Fashion。'),
(27, '优衣库', 'UNIQLO', '[ʊ̈ni kʊ lɔ]', 'U', '服饰', '日本', 'Japan', 'http://www.uniqlo.cn/', '优衣库（UNIQLO），日本服装品牌，由日本迅销公司建立于1963年，当年是一家销售西服的小服装店，现已成为国际知名服装品牌。\r\n优衣库现任董事长兼总经理柳井正在日本首次引进了大卖场式的服装销售方式，通过独特的商品策划、开发和销售体系来实现店铺运作的低成本化，由此引发了优衣库的热卖潮。'),
(28, '海恩斯莫里斯', 'H&M', '[hens n `mɔriəts]', 'H', '服饰', '瑞典', 'Sweden', 'http://www.hm.com/', '海恩斯莫里斯(H&M)全称Hennes&Mauritz，于1947年由尔林·派尔森（Erling Persson）在瑞典Vsters市创立。当时尔林·派尔森在瑞典的维斯特罗斯开设了自己的第一家服装店。当时只称为“女士的”（ Hennes），只销售女士服装。1968年公司并购了销售狩猎装备和男士服装的“毛里斯·维德弗斯”（Mauritz Widforss）服装店，之后公司也开始销售男士服装。');

--
-- 触发器 `brand`
--
DELIMITER $$
CREATE TRIGGER `add_capital` BEFORE INSERT ON `brand` FOR EACH ROW BEGIN
DECLARE cap char DEFAULT '';
set cap=upper(substr(new.eng_name, 1, 1));
set new.capital=cap;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eng_name_2` (`eng_name`),
  ADD KEY `name_index` (`name`),
  ADD KEY `eng_name` (`eng_name`);
ALTER TABLE `brand` ADD FULLTEXT KEY `brief_fulltext` (`brief`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
