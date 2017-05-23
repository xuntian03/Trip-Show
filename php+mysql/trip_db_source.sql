-- MySQL dump 10.13  Distrib 5.6.12, for Win32 (x86)
--
-- Host: localhost    Database: trip
-- ------------------------------------------------------
-- Server version	5.6.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'北京'),(2,'上海'),(3,'杭州'),(4,'厦门'),(5,'西安'),(6,'成都'),(7,'青岛'),(8,'大连'),(9,'南京'),(10,'长沙');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(8) NOT NULL,
  `views` varchar(16) NOT NULL,
  `photos` varchar(64) NOT NULL,
  `item` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (1,'北京','长城','../../image/01.jpg','万里长城是新七大奇迹之一，1987年12月，长城被列为世界文化遗产。长城东西南北交错，绵延起伏于我们伟大祖国辽阔的土地上。长城是我国古代劳动人民创造的伟大的奇迹，是中国悠久历史的见证。它与罗马斗兽场、比萨斜塔等列为中古世界七大奇迹之一。'),(2,'北京','故宫','../../image/02.jpg','北京故宫，旧称紫禁城，位于北京中轴线的中心，是明清两个朝代二十四位皇帝的皇宫，占地面积72万平方米，建筑面积约15万平方米，现存规模最大的宫殿型建筑。'),(3,'上海','外滩','../../image/11.jpg','外滩（Shanghai the Bund）位于上海市中心黄浦区的黄浦江畔，它曾经是上海十里洋场的风景，周围还有位于黄浦江对岸浦东的东方明珠、正大广场等地标景观。'),(4,'上海','陆家嘴','../../image/12.jpg','陆家嘴位于浦东新区的黄浦江畔，隔江面对外滩；是中国最具影响力的金融中心之一。作为中国长江经济带国家级战略两大金融极核区之一，陆家嘴是众多跨国银行的大中华区及东亚总部所在地。'),(5,'杭州','西湖','../../image/21.jpg','西湖位于浙江省杭州市西面，是中国大陆首批国家重点风景名胜区和中国十大风景名胜之一。它是中国大陆主要的观赏性淡水湖泊之一，与南京玄武湖、嘉兴南湖并称为\"江南三大名湖\"，也是现今《世界遗产名录》中少数几个和中国唯一一个湖泊类文化遗产。'),(6,'杭州','浙大','../../image/22.jpg','浙江大学（Zhejiang University），简称浙大。学校位于\"人间天堂\"杭州、美丽的西子湖畔，是一所具有百年历史底蕴的教育部直属全国重点大学，是中国首批7所\"211工程\"、首批9所\"985工程\"、\"珠峰计划\"重点建设的名校。'),(7,'厦门','鼓浪屿','../../image/31.jpg','鼓浪屿（Kulangsu），福建省厦门市思明区的一个小岛，是著名的风景区。原名\"圆沙洲\"，别名\"圆洲仔\"，明朝改称\"鼓浪屿\"。因岛西南方海滩上有一块两米多高、中有洞穴的礁石，每当涨潮水涌，浪击礁石，声似擂鼓，人们称\"鼓浪石\"，鼓浪屿因此而得名。'),(9,'北京','天坛','../../image/03.jpg','天坛，在北京市南部，东城区永定门内大街东侧。占地约273万平方米。天坛始建于明永乐十八年（1420年），清乾隆、光绪时曾重修改建。为明、清两代帝王祭祀皇天、祈五谷丰登之场所。天坛是圜丘、祈谷两坛的总称，有坛墙两重，形成内外坛，坛墙南方北圆，象征天圆地方。'),(10,'北京','颐和园','../../image/04.jpg','颐和园，中国清朝时期皇家园林，前身为清漪园，坐落在北京西郊，距城区十五公里，占地约二百九十公顷，与圆明园毗邻。它是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为\"皇家园林博物馆\"，也是国家重点旅游景点。'),(12,'北京','北海公园','../../image/05.jpg','北海公园(Beihai Park)，位于北京市中心区，城内景山西侧，在故宫的西北面，与中海、南海合称三海。属于中国古代皇家园林。全园以北海为中心，面积约71公顷，水面占583市亩，陆地占480市亩。这里原是辽、金、元建离宫，明、清辟为帝王御苑，是中国现存最古老、最完整、最具综合性和代表性的皇家园林之一，1925年开放为公园。'),(13,'厦门','厦大','../../image/32.jpg','厦门大学始创于1921年，是中国教育部直属的综合性重点大学，也是中国唯一地处经济特区的国家\"211工程\"和\"985工程\"重点建设的高水平大学，同时也被誉为中国最美丽的大学之一。');
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 19:18:50
