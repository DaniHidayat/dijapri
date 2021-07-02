-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2019 at 09:51 
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `progres`
--

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('11', 'ACEH\r'),
('12', 'SUMATERA UTARA\r'),
('13', 'SUMATERA BARAT\r'),
('14', 'RIAU\r'),
('15', 'JAMBI\r'),
('16', 'SUMATERA SELATAN\r'),
('17', 'BENGKULU\r'),
('18', 'LAMPUNG\r'),
('19', 'KEPULAUAN BANGKA BELITUNG\r'),
('21', 'KEPULAUAN RIAU\r'),
('31', 'DKI JAKARTA\r'),
('32', 'JAWA BARAT\r'),
('33', 'JAWA TENGAH\r'),
('34', 'DI YOGYAKARTA\r'),
('35', 'JAWA TIMUR\r'),
('36', 'BANTEN\r'),
('51', 'BALI\r'),
('52', 'NUSA TENGGARA BARAT\r'),
('53', 'NUSA TENGGARA TIMUR\r'),
('61', 'KALIMANTAN BARAT\r'),
('62', 'KALIMANTAN TENGAH\r'),
('63', 'KALIMANTAN SELATAN\r'),
('64', 'KALIMANTAN TIMUR\r'),
('65', 'KALIMANTAN UTARA\r'),
('71', 'SULAWESI UTARA\r'),
('72', 'SULAWESI TENGAH\r'),
('73', 'SULAWESI SELATAN\r'),
('74', 'SULAWESI TENGGARA\r'),
('75', 'GORONTALO\r'),
('76', 'SULAWESI BARAT\r'),
('81', 'MALUKU\r'),
('82', 'MALUKU UTARA\r'),
('91', 'PAPUA BARAT\r'),
('94', 'PAPUA\r');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE IF NOT EXISTS `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regencies_province_id_index` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE\r'),
('1102', '11', 'KABUPATEN ACEH SINGKIL\r'),
('1103', '11', 'KABUPATEN ACEH SELATAN\r'),
('1104', '11', 'KABUPATEN ACEH TENGGARA\r'),
('1105', '11', 'KABUPATEN ACEH TIMUR\r'),
('1106', '11', 'KABUPATEN ACEH TENGAH\r'),
('1107', '11', 'KABUPATEN ACEH BARAT\r'),
('1108', '11', 'KABUPATEN ACEH BESAR\r'),
('1109', '11', 'KABUPATEN PIDIE\r'),
('1110', '11', 'KABUPATEN BIREUEN\r'),
('1111', '11', 'KABUPATEN ACEH UTARA\r'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA\r'),
('1113', '11', 'KABUPATEN GAYO LUES\r'),
('1114', '11', 'KABUPATEN ACEH TAMIANG\r'),
('1115', '11', 'KABUPATEN NAGAN RAYA\r'),
('1116', '11', 'KABUPATEN ACEH JAYA\r'),
('1117', '11', 'KABUPATEN BENER MERIAH\r'),
('1118', '11', 'KABUPATEN PIDIE JAYA\r'),
('1171', '11', 'KOTA BANDA ACEH\r'),
('1172', '11', 'KOTA SABANG\r'),
('1173', '11', 'KOTA LANGSA\r'),
('1174', '11', 'KOTA LHOKSEUMAWE\r'),
('1175', '11', 'KOTA SUBULUSSALAM\r'),
('1201', '12', 'KABUPATEN NIAS\r'),
('1202', '12', 'KABUPATEN MANDAILING NATAL\r'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN\r'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH\r'),
('1205', '12', 'KABUPATEN TAPANULI UTARA\r'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR\r'),
('1207', '12', 'KABUPATEN LABUHAN BATU\r'),
('1208', '12', 'KABUPATEN ASAHAN\r'),
('1209', '12', 'KABUPATEN SIMALUNGUN\r'),
('1210', '12', 'KABUPATEN DAIRI\r'),
('1211', '12', 'KABUPATEN KARO\r'),
('1212', '12', 'KABUPATEN DELI SERDANG\r'),
('1213', '12', 'KABUPATEN LANGKAT\r'),
('1214', '12', 'KABUPATEN NIAS SELATAN\r'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN\r'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT\r'),
('1217', '12', 'KABUPATEN SAMOSIR\r'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI\r'),
('1219', '12', 'KABUPATEN BATU BARA\r'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA\r'),
('1221', '12', 'KABUPATEN PADANG LAWAS\r'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN\r'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA\r'),
('1224', '12', 'KABUPATEN NIAS UTARA\r'),
('1225', '12', 'KABUPATEN NIAS BARAT\r'),
('1271', '12', 'KOTA SIBOLGA\r'),
('1272', '12', 'KOTA TANJUNG BALAI\r'),
('1273', '12', 'KOTA PEMATANG SIANTAR\r'),
('1274', '12', 'KOTA TEBING TINGGI\r'),
('1275', '12', 'KOTA MEDAN\r'),
('1276', '12', 'KOTA BINJAI\r'),
('1277', '12', 'KOTA PADANGSIDIMPUAN\r'),
('1278', '12', 'KOTA GUNUNGSITOLI\r'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI\r'),
('1302', '13', 'KABUPATEN PESISIR SELATAN\r'),
('1303', '13', 'KABUPATEN SOLOK\r'),
('1304', '13', 'KABUPATEN SIJUNJUNG\r'),
('1305', '13', 'KABUPATEN TANAH DATAR\r'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN\r'),
('1307', '13', 'KABUPATEN AGAM\r'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA\r'),
('1309', '13', 'KABUPATEN PASAMAN\r'),
('1310', '13', 'KABUPATEN SOLOK SELATAN\r'),
('1311', '13', 'KABUPATEN DHARMASRAYA\r'),
('1312', '13', 'KABUPATEN PASAMAN BARAT\r'),
('1371', '13', 'KOTA PADANG\r'),
('1372', '13', 'KOTA SOLOK\r'),
('1373', '13', 'KOTA SAWAH LUNTO\r'),
('1374', '13', 'KOTA PADANG PANJANG\r'),
('1375', '13', 'KOTA BUKITTINGGI\r'),
('1376', '13', 'KOTA PAYAKUMBUH\r'),
('1377', '13', 'KOTA PARIAMAN\r'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI\r'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU\r'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR\r'),
('1404', '14', 'KABUPATEN PELALAWAN\r'),
('1405', '14', 'KABUPATEN S I A K\r'),
('1406', '14', 'KABUPATEN KAMPAR\r'),
('1407', '14', 'KABUPATEN ROKAN HULU\r'),
('1408', '14', 'KABUPATEN BENGKALIS\r'),
('1409', '14', 'KABUPATEN ROKAN HILIR\r'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI\r'),
('1471', '14', 'KOTA PEKANBARU\r'),
('1473', '14', 'KOTA D U M A I\r'),
('1501', '15', 'KABUPATEN KERINCI\r'),
('1502', '15', 'KABUPATEN MERANGIN\r'),
('1503', '15', 'KABUPATEN SAROLANGUN\r'),
('1504', '15', 'KABUPATEN BATANG HARI\r'),
('1505', '15', 'KABUPATEN MUARO JAMBI\r'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR\r'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT\r'),
('1508', '15', 'KABUPATEN TEBO\r'),
('1509', '15', 'KABUPATEN BUNGO\r'),
('1571', '15', 'KOTA JAMBI\r'),
('1572', '15', 'KOTA SUNGAI PENUH\r'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU\r'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR\r'),
('1603', '16', 'KABUPATEN MUARA ENIM\r'),
('1604', '16', 'KABUPATEN LAHAT\r'),
('1605', '16', 'KABUPATEN MUSI RAWAS\r'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN\r'),
('1607', '16', 'KABUPATEN BANYU ASIN\r'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN\r'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR\r'),
('1610', '16', 'KABUPATEN OGAN ILIR\r'),
('1611', '16', 'KABUPATEN EMPAT LAWANG\r'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR\r'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA\r'),
('1671', '16', 'KOTA PALEMBANG\r'),
('1672', '16', 'KOTA PRABUMULIH\r'),
('1673', '16', 'KOTA PAGAR ALAM\r'),
('1674', '16', 'KOTA LUBUKLINGGAU\r'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN\r'),
('1702', '17', 'KABUPATEN REJANG LEBONG\r'),
('1703', '17', 'KABUPATEN BENGKULU UTARA\r'),
('1704', '17', 'KABUPATEN KAUR\r'),
('1705', '17', 'KABUPATEN SELUMA\r'),
('1706', '17', 'KABUPATEN MUKOMUKO\r'),
('1707', '17', 'KABUPATEN LEBONG\r'),
('1708', '17', 'KABUPATEN KEPAHIANG\r'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH\r'),
('1771', '17', 'KOTA BENGKULU\r'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT\r'),
('1802', '18', 'KABUPATEN TANGGAMUS\r'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN\r'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR\r'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH\r'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA\r'),
('1807', '18', 'KABUPATEN WAY KANAN\r'),
('1808', '18', 'KABUPATEN TULANGBAWANG\r'),
('1809', '18', 'KABUPATEN PESAWARAN\r'),
('1810', '18', 'KABUPATEN PRINGSEWU\r'),
('1811', '18', 'KABUPATEN MESUJI\r'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT\r'),
('1813', '18', 'KABUPATEN PESISIR BARAT\r'),
('1871', '18', 'KOTA BANDAR LAMPUNG\r'),
('1872', '18', 'KOTA METRO\r'),
('1901', '19', 'KABUPATEN BANGKA\r'),
('1902', '19', 'KABUPATEN BELITUNG\r'),
('1903', '19', 'KABUPATEN BANGKA BARAT\r'),
('1904', '19', 'KABUPATEN BANGKA TENGAH\r'),
('1905', '19', 'KABUPATEN BANGKA SELATAN\r'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR\r'),
('1971', '19', 'KOTA PANGKAL PINANG\r'),
('2101', '21', 'KABUPATEN KARIMUN\r'),
('2102', '21', 'KABUPATEN BINTAN\r'),
('2103', '21', 'KABUPATEN NATUNA\r'),
('2104', '21', 'KABUPATEN LINGGA\r'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS\r'),
('2171', '21', 'KOTA B A T A M\r'),
('2172', '21', 'KOTA TANJUNG PINANG\r'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU\r'),
('3171', '31', 'KOTA JAKARTA SELATAN\r'),
('3172', '31', 'KOTA JAKARTA TIMUR\r'),
('3173', '31', 'KOTA JAKARTA PUSAT\r'),
('3174', '31', 'KOTA JAKARTA BARAT\r'),
('3175', '31', 'KOTA JAKARTA UTARA\r'),
('3201', '32', 'KABUPATEN BOGOR\r'),
('3202', '32', 'KABUPATEN SUKABUMI\r'),
('3203', '32', 'KABUPATEN CIANJUR\r'),
('3204', '32', 'KABUPATEN BANDUNG\r'),
('3205', '32', 'KABUPATEN GARUT\r'),
('3206', '32', 'KABUPATEN TASIKMALAYA\r'),
('3207', '32', 'KABUPATEN CIAMIS\r'),
('3208', '32', 'KABUPATEN KUNINGAN\r'),
('3209', '32', 'KABUPATEN CIREBON\r'),
('3210', '32', 'KABUPATEN MAJALENGKA\r'),
('3211', '32', 'KABUPATEN SUMEDANG\r'),
('3212', '32', 'KABUPATEN INDRAMAYU\r'),
('3213', '32', 'KABUPATEN SUBANG\r'),
('3214', '32', 'KABUPATEN PURWAKARTA\r'),
('3215', '32', 'KABUPATEN KARAWANG\r'),
('3216', '32', 'KABUPATEN BEKASI\r'),
('3217', '32', 'KABUPATEN BANDUNG BARAT\r'),
('3218', '32', 'KABUPATEN PANGANDARAN\r'),
('3271', '32', 'KOTA BOGOR\r'),
('3272', '32', 'KOTA SUKABUMI\r'),
('3273', '32', 'KOTA BANDUNG\r'),
('3274', '32', 'KOTA CIREBON\r'),
('3275', '32', 'KOTA BEKASI\r'),
('3276', '32', 'KOTA DEPOK\r'),
('3277', '32', 'KOTA CIMAHI\r'),
('3278', '32', 'KOTA TASIKMALAYA\r'),
('3279', '32', 'KOTA BANJAR\r'),
('3301', '33', 'KABUPATEN CILACAP\r'),
('3302', '33', 'KABUPATEN BANYUMAS\r'),
('3303', '33', 'KABUPATEN PURBALINGGA\r'),
('3304', '33', 'KABUPATEN BANJARNEGARA\r'),
('3305', '33', 'KABUPATEN KEBUMEN\r'),
('3306', '33', 'KABUPATEN PURWOREJO\r'),
('3307', '33', 'KABUPATEN WONOSOBO\r'),
('3308', '33', 'KABUPATEN MAGELANG\r'),
('3309', '33', 'KABUPATEN BOYOLALI\r'),
('3310', '33', 'KABUPATEN KLATEN\r'),
('3311', '33', 'KABUPATEN SUKOHARJO\r'),
('3312', '33', 'KABUPATEN WONOGIRI\r'),
('3313', '33', 'KABUPATEN KARANGANYAR\r'),
('3314', '33', 'KABUPATEN SRAGEN\r'),
('3315', '33', 'KABUPATEN GROBOGAN\r'),
('3316', '33', 'KABUPATEN BLORA\r'),
('3317', '33', 'KABUPATEN REMBANG\r'),
('3318', '33', 'KABUPATEN PATI\r'),
('3319', '33', 'KABUPATEN KUDUS\r'),
('3320', '33', 'KABUPATEN JEPARA\r'),
('3321', '33', 'KABUPATEN DEMAK\r'),
('3322', '33', 'KABUPATEN SEMARANG\r'),
('3323', '33', 'KABUPATEN TEMANGGUNG\r'),
('3324', '33', 'KABUPATEN KENDAL\r'),
('3325', '33', 'KABUPATEN BATANG\r'),
('3326', '33', 'KABUPATEN PEKALONGAN\r'),
('3327', '33', 'KABUPATEN PEMALANG\r'),
('3328', '33', 'KABUPATEN TEGAL\r'),
('3329', '33', 'KABUPATEN BREBES\r'),
('3371', '33', 'KOTA MAGELANG\r'),
('3372', '33', 'KOTA SURAKARTA\r'),
('3373', '33', 'KOTA SALATIGA\r'),
('3374', '33', 'KOTA SEMARANG\r'),
('3375', '33', 'KOTA PEKALONGAN\r'),
('3376', '33', 'KOTA TEGAL\r'),
('3401', '34', 'KABUPATEN KULON PROGO\r'),
('3402', '34', 'KABUPATEN BANTUL\r'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL\r'),
('3404', '34', 'KABUPATEN SLEMAN\r'),
('3471', '34', 'KOTA YOGYAKARTA\r'),
('3501', '35', 'KABUPATEN PACITAN\r'),
('3502', '35', 'KABUPATEN PONOROGO\r'),
('3503', '35', 'KABUPATEN TRENGGALEK\r'),
('3504', '35', 'KABUPATEN TULUNGAGUNG\r'),
('3505', '35', 'KABUPATEN BLITAR\r'),
('3506', '35', 'KABUPATEN KEDIRI\r'),
('3507', '35', 'KABUPATEN MALANG\r'),
('3508', '35', 'KABUPATEN LUMAJANG\r'),
('3509', '35', 'KABUPATEN JEMBER\r'),
('3510', '35', 'KABUPATEN BANYUWANGI\r'),
('3511', '35', 'KABUPATEN BONDOWOSO\r'),
('3512', '35', 'KABUPATEN SITUBONDO\r'),
('3513', '35', 'KABUPATEN PROBOLINGGO\r'),
('3514', '35', 'KABUPATEN PASURUAN\r'),
('3515', '35', 'KABUPATEN SIDOARJO\r'),
('3516', '35', 'KABUPATEN MOJOKERTO\r'),
('3517', '35', 'KABUPATEN JOMBANG\r'),
('3518', '35', 'KABUPATEN NGANJUK\r'),
('3519', '35', 'KABUPATEN MADIUN\r'),
('3520', '35', 'KABUPATEN MAGETAN\r'),
('3521', '35', 'KABUPATEN NGAWI\r'),
('3522', '35', 'KABUPATEN BOJONEGORO\r'),
('3523', '35', 'KABUPATEN TUBAN\r'),
('3524', '35', 'KABUPATEN LAMONGAN\r'),
('3525', '35', 'KABUPATEN GRESIK\r'),
('3526', '35', 'KABUPATEN BANGKALAN\r'),
('3527', '35', 'KABUPATEN SAMPANG\r'),
('3528', '35', 'KABUPATEN PAMEKASAN\r'),
('3529', '35', 'KABUPATEN SUMENEP\r'),
('3571', '35', 'KOTA KEDIRI\r'),
('3572', '35', 'KOTA BLITAR\r'),
('3573', '35', 'KOTA MALANG\r'),
('3574', '35', 'KOTA PROBOLINGGO\r'),
('3575', '35', 'KOTA PASURUAN\r'),
('3576', '35', 'KOTA MOJOKERTO\r'),
('3577', '35', 'KOTA MADIUN\r'),
('3578', '35', 'KOTA SURABAYA\r'),
('3579', '35', 'KOTA BATU\r'),
('3601', '36', 'KABUPATEN PANDEGLANG\r'),
('3602', '36', 'KABUPATEN LEBAK\r'),
('3603', '36', 'KABUPATEN TANGERANG\r'),
('3604', '36', 'KABUPATEN SERANG\r'),
('3671', '36', 'KOTA TANGERANG\r'),
('3672', '36', 'KOTA CILEGON\r'),
('3673', '36', 'KOTA SERANG\r'),
('3674', '36', 'KOTA TANGERANG SELATAN\r'),
('5101', '51', 'KABUPATEN JEMBRANA\r'),
('5102', '51', 'KABUPATEN TABANAN\r'),
('5103', '51', 'KABUPATEN BADUNG\r'),
('5104', '51', 'KABUPATEN GIANYAR\r'),
('5105', '51', 'KABUPATEN KLUNGKUNG\r'),
('5106', '51', 'KABUPATEN BANGLI\r'),
('5107', '51', 'KABUPATEN KARANG ASEM\r'),
('5108', '51', 'KABUPATEN BULELENG\r'),
('5171', '51', 'KOTA DENPASAR\r'),
('5201', '52', 'KABUPATEN LOMBOK BARAT\r'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH\r'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR\r'),
('5204', '52', 'KABUPATEN SUMBAWA\r'),
('5205', '52', 'KABUPATEN DOMPU\r'),
('5206', '52', 'KABUPATEN BIMA\r'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT\r'),
('5208', '52', 'KABUPATEN LOMBOK UTARA\r'),
('5271', '52', 'KOTA MATARAM\r'),
('5272', '52', 'KOTA BIMA\r'),
('5301', '53', 'KABUPATEN SUMBA BARAT\r'),
('5302', '53', 'KABUPATEN SUMBA TIMUR\r'),
('5303', '53', 'KABUPATEN KUPANG\r'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN\r'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA\r'),
('5306', '53', 'KABUPATEN BELU\r'),
('5307', '53', 'KABUPATEN ALOR\r'),
('5308', '53', 'KABUPATEN LEMBATA\r'),
('5309', '53', 'KABUPATEN FLORES TIMUR\r'),
('5310', '53', 'KABUPATEN SIKKA\r'),
('5311', '53', 'KABUPATEN ENDE\r'),
('5312', '53', 'KABUPATEN NGADA\r'),
('5313', '53', 'KABUPATEN MANGGARAI\r'),
('5314', '53', 'KABUPATEN ROTE NDAO\r'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT\r'),
('5316', '53', 'KABUPATEN SUMBA TENGAH\r'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA\r'),
('5318', '53', 'KABUPATEN NAGEKEO\r'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR\r'),
('5320', '53', 'KABUPATEN SABU RAIJUA\r'),
('5321', '53', 'KABUPATEN MALAKA\r'),
('5371', '53', 'KOTA KUPANG\r'),
('6101', '61', 'KABUPATEN SAMBAS\r'),
('6102', '61', 'KABUPATEN BENGKAYANG\r'),
('6103', '61', 'KABUPATEN LANDAK\r'),
('6104', '61', 'KABUPATEN MEMPAWAH\r'),
('6105', '61', 'KABUPATEN SANGGAU\r'),
('6106', '61', 'KABUPATEN KETAPANG\r'),
('6107', '61', 'KABUPATEN SINTANG\r'),
('6108', '61', 'KABUPATEN KAPUAS HULU\r'),
('6109', '61', 'KABUPATEN SEKADAU\r'),
('6110', '61', 'KABUPATEN MELAWI\r'),
('6111', '61', 'KABUPATEN KAYONG UTARA\r'),
('6112', '61', 'KABUPATEN KUBU RAYA\r'),
('6171', '61', 'KOTA PONTIANAK\r'),
('6172', '61', 'KOTA SINGKAWANG\r'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT\r'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR\r'),
('6203', '62', 'KABUPATEN KAPUAS\r'),
('6204', '62', 'KABUPATEN BARITO SELATAN\r'),
('6205', '62', 'KABUPATEN BARITO UTARA\r'),
('6206', '62', 'KABUPATEN SUKAMARA\r'),
('6207', '62', 'KABUPATEN LAMANDAU\r'),
('6208', '62', 'KABUPATEN SERUYAN\r'),
('6209', '62', 'KABUPATEN KATINGAN\r'),
('6210', '62', 'KABUPATEN PULANG PISAU\r'),
('6211', '62', 'KABUPATEN GUNUNG MAS\r'),
('6212', '62', 'KABUPATEN BARITO TIMUR\r'),
('6213', '62', 'KABUPATEN MURUNG RAYA\r'),
('6271', '62', 'KOTA PALANGKA RAYA\r'),
('6301', '63', 'KABUPATEN TANAH LAUT\r'),
('6302', '63', 'KABUPATEN KOTA BARU\r'),
('6303', '63', 'KABUPATEN BANJAR\r'),
('6304', '63', 'KABUPATEN BARITO KUALA\r'),
('6305', '63', 'KABUPATEN TAPIN\r'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN\r'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH\r'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA\r'),
('6309', '63', 'KABUPATEN TABALONG\r'),
('6310', '63', 'KABUPATEN TANAH BUMBU\r'),
('6311', '63', 'KABUPATEN BALANGAN\r'),
('6371', '63', 'KOTA BANJARMASIN\r'),
('6372', '63', 'KOTA BANJAR BARU\r'),
('6401', '64', 'KABUPATEN PASER\r'),
('6402', '64', 'KABUPATEN KUTAI BARAT\r'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA\r'),
('6404', '64', 'KABUPATEN KUTAI TIMUR\r'),
('6405', '64', 'KABUPATEN BERAU\r'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA\r'),
('6411', '64', 'KABUPATEN MAHAKAM HULU\r'),
('6471', '64', 'KOTA BALIKPAPAN\r'),
('6472', '64', 'KOTA SAMARINDA\r'),
('6474', '64', 'KOTA BONTANG\r'),
('6501', '65', 'KABUPATEN MALINAU\r'),
('6502', '65', 'KABUPATEN BULUNGAN\r'),
('6503', '65', 'KABUPATEN TANA TIDUNG\r'),
('6504', '65', 'KABUPATEN NUNUKAN\r'),
('6571', '65', 'KOTA TARAKAN\r'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW\r'),
('7102', '71', 'KABUPATEN MINAHASA\r'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE\r'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD\r'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN\r'),
('7106', '71', 'KABUPATEN MINAHASA UTARA\r'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA\r'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO\r'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA\r'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN\r'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR\r'),
('7171', '71', 'KOTA MANADO\r'),
('7172', '71', 'KOTA BITUNG\r'),
('7173', '71', 'KOTA TOMOHON\r'),
('7174', '71', 'KOTA KOTAMOBAGU\r'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN\r'),
('7202', '72', 'KABUPATEN BANGGAI\r'),
('7203', '72', 'KABUPATEN MOROWALI\r'),
('7204', '72', 'KABUPATEN POSO\r'),
('7205', '72', 'KABUPATEN DONGGALA\r'),
('7206', '72', 'KABUPATEN TOLI-TOLI\r'),
('7207', '72', 'KABUPATEN BUOL\r'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG\r'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA\r'),
('7210', '72', 'KABUPATEN SIGI\r'),
('7211', '72', 'KABUPATEN BANGGAI LAUT\r'),
('7212', '72', 'KABUPATEN MOROWALI UTARA\r'),
('7271', '72', 'KOTA PALU\r'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR\r'),
('7302', '73', 'KABUPATEN BULUKUMBA\r'),
('7303', '73', 'KABUPATEN BANTAENG\r'),
('7304', '73', 'KABUPATEN JENEPONTO\r'),
('7305', '73', 'KABUPATEN TAKALAR\r'),
('7306', '73', 'KABUPATEN GOWA\r'),
('7307', '73', 'KABUPATEN SINJAI\r'),
('7308', '73', 'KABUPATEN MAROS\r'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN\r'),
('7310', '73', 'KABUPATEN BARRU\r'),
('7311', '73', 'KABUPATEN BONE\r'),
('7312', '73', 'KABUPATEN SOPPENG\r'),
('7313', '73', 'KABUPATEN WAJO\r'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG\r'),
('7315', '73', 'KABUPATEN PINRANG\r'),
('7316', '73', 'KABUPATEN ENREKANG\r'),
('7317', '73', 'KABUPATEN LUWU\r'),
('7318', '73', 'KABUPATEN TANA TORAJA\r'),
('7322', '73', 'KABUPATEN LUWU UTARA\r'),
('7325', '73', 'KABUPATEN LUWU TIMUR\r'),
('7326', '73', 'KABUPATEN TORAJA UTARA\r'),
('7371', '73', 'KOTA MAKASSAR\r'),
('7372', '73', 'KOTA PAREPARE\r'),
('7373', '73', 'KOTA PALOPO\r'),
('7401', '74', 'KABUPATEN BUTON\r'),
('7402', '74', 'KABUPATEN MUNA\r'),
('7403', '74', 'KABUPATEN KONAWE\r'),
('7404', '74', 'KABUPATEN KOLAKA\r'),
('7405', '74', 'KABUPATEN KONAWE SELATAN\r'),
('7406', '74', 'KABUPATEN BOMBANA\r'),
('7407', '74', 'KABUPATEN WAKATOBI\r'),
('7408', '74', 'KABUPATEN KOLAKA UTARA\r'),
('7409', '74', 'KABUPATEN BUTON UTARA\r'),
('7410', '74', 'KABUPATEN KONAWE UTARA\r'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR\r'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN\r'),
('7413', '74', 'KABUPATEN MUNA BARAT\r'),
('7414', '74', 'KABUPATEN BUTON TENGAH\r'),
('7415', '74', 'KABUPATEN BUTON SELATAN\r'),
('7471', '74', 'KOTA KENDARI\r'),
('7472', '74', 'KOTA BAUBAU\r'),
('7501', '75', 'KABUPATEN BOALEMO\r'),
('7502', '75', 'KABUPATEN GORONTALO\r'),
('7503', '75', 'KABUPATEN POHUWATO\r'),
('7504', '75', 'KABUPATEN BONE BOLANGO\r'),
('7505', '75', 'KABUPATEN GORONTALO UTARA\r'),
('7571', '75', 'KOTA GORONTALO\r'),
('7601', '76', 'KABUPATEN MAJENE\r'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR\r'),
('7603', '76', 'KABUPATEN MAMASA\r'),
('7604', '76', 'KABUPATEN MAMUJU\r'),
('7605', '76', 'KABUPATEN MAMUJU UTARA\r'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH\r'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT\r'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA\r'),
('8103', '81', 'KABUPATEN MALUKU TENGAH\r'),
('8104', '81', 'KABUPATEN BURU\r'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU\r'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT\r'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR\r'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA\r'),
('8109', '81', 'KABUPATEN BURU SELATAN\r'),
('8171', '81', 'KOTA AMBON\r'),
('8172', '81', 'KOTA TUAL\r'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT\r'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH\r'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA\r'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN\r'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA\r'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR\r'),
('8207', '82', 'KABUPATEN PULAU MOROTAI\r'),
('8208', '82', 'KABUPATEN PULAU TALIABU\r'),
('8271', '82', 'KOTA TERNATE\r'),
('8272', '82', 'KOTA TIDORE KEPULAUAN\r'),
('9101', '91', 'KABUPATEN FAKFAK\r'),
('9102', '91', 'KABUPATEN KAIMANA\r'),
('9103', '91', 'KABUPATEN TELUK WONDAMA\r'),
('9104', '91', 'KABUPATEN TELUK BINTUNI\r'),
('9105', '91', 'KABUPATEN MANOKWARI\r'),
('9106', '91', 'KABUPATEN SORONG SELATAN\r'),
('9107', '91', 'KABUPATEN SORONG\r'),
('9108', '91', 'KABUPATEN RAJA AMPAT\r'),
('9109', '91', 'KABUPATEN TAMBRAUW\r'),
('9110', '91', 'KABUPATEN MAYBRAT\r'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN\r'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK\r'),
('9171', '91', 'KOTA SORONG\r'),
('9401', '94', 'KABUPATEN MERAUKE\r'),
('9402', '94', 'KABUPATEN JAYAWIJAYA\r'),
('9403', '94', 'KABUPATEN JAYAPURA\r'),
('9404', '94', 'KABUPATEN NABIRE\r'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN\r'),
('9409', '94', 'KABUPATEN BIAK NUMFOR\r'),
('9410', '94', 'KABUPATEN PANIAI\r'),
('9411', '94', 'KABUPATEN PUNCAK JAYA\r'),
('9412', '94', 'KABUPATEN MIMIKA\r'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL\r'),
('9414', '94', 'KABUPATEN MAPPI\r'),
('9415', '94', 'KABUPATEN ASMAT\r'),
('9416', '94', 'KABUPATEN YAHUKIMO\r'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG\r'),
('9418', '94', 'KABUPATEN TOLIKARA\r'),
('9419', '94', 'KABUPATEN SARMI\r'),
('9420', '94', 'KABUPATEN KEEROM\r'),
('9426', '94', 'KABUPATEN WAROPEN\r'),
('9427', '94', 'KABUPATEN SUPIORI\r'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA\r'),
('9429', '94', 'KABUPATEN NDUGA\r'),
('9430', '94', 'KABUPATEN LANNY JAYA\r'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH\r'),
('9432', '94', 'KABUPATEN YALIMO\r'),
('9433', '94', 'KABUPATEN PUNCAK\r'),
('9434', '94', 'KABUPATEN DOGIYAI\r'),
('9435', '94', 'KABUPATEN INTAN JAYA\r'),
('9436', '94', 'KABUPATEN DEIYAI\r'),
('9471', '94', 'KOTA JAYAPURA\r');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE IF NOT EXISTS `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Tugas Membuat project WEB', '2017-01-22 13:18:01', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2018-10-29', '2018-10-29', 'Sekolah', '08.00 - 11.00 WIB', '-', 'Ilham Efendi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE IF NOT EXISTS `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Member', '2018-12-05 13:50:27', 1, 'Ilham Efendi', 6, '79268d5347daf2069568391aabb4eefa.jpg'),
(2, 'Tim', '2019-02-09 02:10:01', 1, 'Ilham Efendi', 0, 'f379380959901982394ec1365753b579.jpg'),
(3, 'Mitra', '2019-04-22 20:16:57', 1, 'Ilham Efendi', 0, 'faaa978204025fa7566c1a56d822203a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baner`
--

CREATE TABLE IF NOT EXISTS `tbl_baner` (
  `baner_id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` text NOT NULL,
  `judul` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `baner_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(50) NOT NULL,
  `slider` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roll` varchar(30) NOT NULL,
  PRIMARY KEY (`baner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_baner`
--

INSERT INTO `tbl_baner` (`baner_id`, `gambar`, `judul`, `ket`, `baner_tanggal`, `author`, `slider`, `class`, `roll`) VALUES
(1, '4650daf04c6b94039d02236d1c927e05.jpg', 'Kemudahan Bayar atau Beli', 'Belanja-belanja semakin murah dengan promo dan diskon yang tiada hentinya.', '2019-04-26 13:12:28', 'Ilham Efendi', 'slider-direction-1', 'slider-direction slider-one', 'ensign-nivoslider'),
(2, '4bc1a7c2784fcb8d3e887cbca4bc9248.jpg', 'Promo dan Diskon Menarik', 'Belanja-belanja semakin murah dengan promo dan diskon yang tiada hentinya.', '2019-04-26 13:12:41', 'Ilham Efendi', 'slider-direction-2', 'slider-direction slider-two', 'ensign-nivoslider'),
(3, '7f37081fbba5b4a0b39ea1614a4624c4.jpg', 'Point Member', 'Dapatkan harga termurah dan Point untuk member Dijapri.', '2019-04-26 13:12:57', 'Ilham Efendi', 'slider-direction-3', 'slider-direction slider-two', 'ensign-nivoslider');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE IF NOT EXISTS `tbl_faq` (
  `id_faq` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL,
  `status` int(11) NOT NULL,
  `href` varchar(20) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id_faq`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id_faq`, `pertanyaan`, `jawaban`, `status`, `href`, `active`) VALUES
(1, 'Tentang Konfirmasi Pembayaran di Dijapri', 'Pembeli dapat melakukan konfirmasi pembayaran dengan melakukan upload bukti pembayaran pada halaman Transaksi. Fitur ini dibuat untuk mempermudah proses verifikasi dan validasi pembayaran yang tidak sesuai dengan ketentuan Dijapri (Contoh: Dana transaksi yang ditransfer pembeli tidak sesuai dengan nominal yang tertera di tagihan.)', 1, 'check1', 'in'),
(2, 'Cara Beli Barang dari Beberapa Pelapak', '1. Login ke akun Dijapri\r\n2. Pilih barang yang ingin dibeli, lalu klik icon Keranjang.\r\n3. Klik tombol Tambah Barang.\r\n4. Cari barang lain yang ingin dibeli di lapak tersebut, lalu klik icon Keranjang.\r\n5. Tutup jendela keranjang.\r\n6. Jika barang yang ingin dibeli sudah lengkap, klik icon Keranjang Belanja.\r\n7. Pilih transaksi yang ingin dibayarkan, lalu klik tombol Bayar.\r\n8. Isi data pembelian dengan lengkap seperti alamat penerima, Catatan pelapak, dan Jasa pengiriman.\r\nkemudian klik tombol Lanjut ke Pembayaran.\r\n9. Pilih metode pembayaran yang pembeli inginkan, lalu klik tombol Bayar.\r\n10.Pesanan berhasil dibuat. Lakukan pembayaran sesuai dengan nominal yang tertera di tagihan.\r\n11.Jika pesanan telah dibayar, Dijapri akan segera mengirimkan notifikasi ke pelapak Dijapri unutk segera mengirimkan pesanan pembeli.', 1, 'check2', ''),
(3, 'Redug Lefes dolor sit.', 'Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.', 1, 'check3', ''),
(4, 'Maiores alias accusamus', 'Redug Lefes dolor sit amet, consectetur adipisicing elit. Aspernatur, tempore, commodi quas mollitia dolore magnam quidem repellat, culpa voluptates laboriosam maiores alias accusamus recusandae vero aperiam sint nulla beatae eos.', 1, 'check4', ''),
(5, 'Project', 'Project\r\nRedug Lares dolor sit amet, consectetur adipisicing elit. Animi vero excepturi magnam ducimus adipisci voluptas, praesentium maxime necessitatibus in dolor dolores unde ab, libero quo. Aut, laborum sequi.\r\n\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis placeat.', 2, 'p-view-1', 'active'),
(6, 'Planning', 'Planning\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis.\r\n\r\nRedug Lares dolor sit amet, consectetur adipisicing elit. Animi vero excepturi magnam ducimus adipisci voluptas, praesentium maxime necessitatibus in dolor dolores unde ab, libero quo. Aut.', 2, 'p-view-2', ''),
(7, 'Success', 'Success\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis placeat.\r\n\r\nvoluptas, praesentium maxime cum fugiat,magnam ducimus adipisci voluptas, praesentium architecto ducimus, doloribus fuga itaque omnis.', 2, 'p-view-3', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE IF NOT EXISTS `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_files`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE IF NOT EXISTS `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(1, 'Buah buahan yang menyehatkan jantung', '2018-12-05 13:50:51', '2143e2073d6b362761c89deec1c1b231.jpg', 1, 1, 'Ilham Efendi'),
(2, 'cinta alam', '2018-12-05 13:51:39', 'a080f60587ce76c2cb5db6663cdc3190.jpg', 1, 1, 'Ilham Efendi'),
(3, 'Jaga Kesehatan Mu!', '2018-12-05 13:52:05', 'a71e29d1e2917921c63d9f57e662935d.jpg', 2, 1, 'Ilham Efendi'),
(4, 'jaga lingkungan', '2018-12-05 13:52:21', 'c839b16a310cf4e7afff5fbde8f96b5c.jpg', 2, 1, 'Ilham Efendi'),
(6, 'Ayo Hidup Sehat', '2018-12-05 13:53:36', '218353d315646da34005a89b7a235fe4.jpg', 2, 1, 'Ilham Efendi'),
(7, 'asdj', '2019-04-24 13:17:13', '162cc319dbbe60e792b1687a422b32dc.png', 0, 1, 'Ilham Efendi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_identitas`
--

CREATE TABLE IF NOT EXISTS `tbl_identitas` (
  `identitas_id` int(11) NOT NULL AUTO_INCREMENT,
  `identitas_logo` varchar(100) NOT NULL,
  `identitas_nama` varchar(100) DEFAULT NULL,
  `identitas_moto` varchar(100) DEFAULT NULL,
  `identitas_alamat` text,
  `identitas_tentang` text,
  `identitas_email` varchar(50) DEFAULT NULL,
  `identitas_nohp` varchar(20) DEFAULT NULL,
  `identitas_facebook` varchar(100) DEFAULT NULL,
  `identitas_twitter` varchar(100) DEFAULT NULL,
  `identitas_linkdin` varchar(100) DEFAULT NULL,
  `identitas_google_plus` varchar(100) DEFAULT NULL,
  `identitas_map` text NOT NULL,
  `identitas_ig` varchar(100) NOT NULL,
  `identitas_deskripsi` varchar(100) NOT NULL,
  `identitas_yt` text NOT NULL,
  `link_aplikasi` text NOT NULL,
  `image_tentang` text NOT NULL,
  PRIMARY KEY (`identitas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_identitas`
--

INSERT INTO `tbl_identitas` (`identitas_id`, `identitas_logo`, `identitas_nama`, `identitas_moto`, `identitas_alamat`, `identitas_tentang`, `identitas_email`, `identitas_nohp`, `identitas_facebook`, `identitas_twitter`, `identitas_linkdin`, `identitas_google_plus`, `identitas_map`, `identitas_ig`, `identitas_deskripsi`, `identitas_yt`, `link_aplikasi`, `image_tentang`) VALUES
(3, '2bd99b22cc80a78bd42a5cc3d9bb2033.png', 'DIJAPRI', 'VISI DAN MISI', 'Tasikmalaya, Tamansari', '<p>Temukan pengalaman jual beli barang dan jasa online yang menguntungkan di aplikasi Dijapri Kamu bisa buka toko online dengan begitu cepat dan ringkas, atau belanja produk-produk berkualitas dalam berbagai kategori kebutuhan, yang dijual oleh Pelapak Dijapri dari seluruh Indonesia.</p>\r\n\r\n<p>Semuanya didukung oleh beragam kelebihan aplikasi Dijapri yaitu:</p>\r\n\r\n<ul>\r\n	<li>\r\n    <i class="fa fa-check"></i>Kemudahan Bayar atau Beli</li>\r\n	<li>\r\n    <i class="fa fa-check"></i>Promo dan Diskon Menarik</li>\r\n	<li>\r\n    <i class="fa fa-check"></i>Point Member</li>\r\n	<li>\r\n    <i class="fa fa-check"></i>Opsi Kurir Terlengkap</li>\r\n	<li>\r\n    <i class="fa fa-check"></i>Pilihan Pembayaran Aman</li>\r\n	<li>\r\n    <i class="fa fa-check"></i>Dicoin</li>\r\n</ul>\r\n', 'adm.dijapri@gmail.com', '087786764644', 'https://www.facebook.com/ilham', '', 'https://www.linkdin.com', 'https://www.google.com', 'https://www.google.com/maps/embed?pb=', 'https://www.instagram.com/ilhamefs', '', 'https://www.youtube.com/watch?v=rWFPFAisxzk', 'https://play.google.com/store/apps/details?id=com.bikinaplikasi.dijapri', '01a381ae3d63e18d6d0b48ead15a678f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE IF NOT EXISTS `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'Ilham Efendi', 'ilham@gmail.com', '-', 'Ping !', '2017-06-21 10:44:12', 0),
(3, 'Ilham Efendi', 'Hamfendiw@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 10:45:57', 0),
(5, 'Ham-ilham', 'ham@gmail.com', '-', 'Ping !', '2017-06-21 10:53:19', 0),
(6, 'hdsy', 'hazhsah@gmail.com', 'sad', 'jsdnsad', '2018-12-03 14:42:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 12:49:04'),
(5, 'Penelitian', '2016-09-06 13:19:26'),
(6, 'Prestasi', '2016-09-07 09:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE IF NOT EXISTS `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT '0',
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(12, 'ilham', 'ilhamefendi@gmail.com', 'Assalamualikum,, saya mau bertanya gan?', '2018-12-03 14:53:17', '1', 27, 0),
(13, 'Ilham Efendi', '', 'Waalaikumsalam,, Iyh silahkan mau bertanya apa mass?', '2018-12-03 14:53:50', '1', 27, 12),
(14, 'ilham', 'dsajhfjh@gmail.com', 'mjnfdsafsadsadsa', '2019-04-23 17:21:26', '1', 23, 0),
(15, 'Ilham Efendi', '', 'Ashiap', '2019-04-23 17:22:40', '1', 23, 14),
(16, 'mnads', 'asn@gmail.com', 'sdkjfdsdafads', '2019-04-23 17:43:46', '1', 23, 0),
(17, 'asdj', 'jasdasd@gmail.com', 'asdjksadsad', '2019-04-23 17:44:30', '1', 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE IF NOT EXISTS `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_log_aktivitas`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE IF NOT EXISTS `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL,
  `pengguna_map` varchar(100) NOT NULL,
  `pengguna_jenkel` varchar(2) NOT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_username`, `pengguna_password`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`, `pengguna_map`, `pengguna_jenkel`) VALUES
(1, 'Ilham Efendi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ilhamefendi@gmail.com', '081277159401', 1, '1', '2016-09-03 13:07:55', '9e4201ee0947dd25efc8170ccfa8befb.jpg', '', 'L'),
(3, 'Editor', 'editor', 'ab6d364b33fe4d31c3e12aca75903ad9', 'editor@gmail.com', '0832329', 1, '2', '2018-12-04 15:01:50', '86447c99c055177d2022200802246566.gif', '', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE IF NOT EXISTS `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 08:17:30', 'M Fikri Setiadi'),
(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 08:16:20', 'M Fikri Setiadi'),
(3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 14:16:16', 'M Fikri Setiadi'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 14:15:28', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE IF NOT EXISTS `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=958 ;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 15:04:59', '::1', 'Chrome'),
(931, '2018-09-29 00:21:06', '127.0.0.1', 'Firefox'),
(932, '2018-10-12 09:14:00', '::1', 'Chrome'),
(933, '2018-10-15 12:50:18', '::1', 'Chrome'),
(934, '2018-10-16 08:39:33', '::1', 'Chrome'),
(935, '2018-10-19 11:02:08', '::1', 'Chrome'),
(936, '2018-10-26 14:52:59', '::1', 'Chrome'),
(937, '2018-10-29 09:40:16', '::1', 'Chrome'),
(938, '2018-11-10 18:36:35', '127.0.0.1', 'Firefox'),
(939, '2018-11-11 01:03:36', '127.0.0.1', 'Firefox'),
(940, '2018-12-03 14:09:27', '127.0.0.1', 'Firefox'),
(941, '2018-12-03 22:15:31', '192.168.43.1', 'Chrome'),
(942, '2018-12-04 08:34:28', '127.0.0.1', 'Firefox'),
(943, '2018-12-04 08:34:28', '127.0.0.1', 'Firefox'),
(944, '2018-12-04 17:18:13', '192.168.43.1', 'Chrome'),
(945, '2018-12-05 07:32:14', '127.0.0.1', 'Firefox'),
(946, '2018-12-05 11:24:33', '::1', 'Chrome'),
(947, '2019-01-16 10:57:57', '127.0.0.1', 'Firefox'),
(948, '2019-01-17 20:25:47', '127.0.0.1', 'Firefox'),
(949, '2019-02-09 00:13:53', '127.0.0.1', 'Firefox'),
(950, '2019-04-22 18:18:48', '127.0.0.1', 'Chrome'),
(951, '2019-04-23 14:09:50', '127.0.0.1', 'Chrome'),
(952, '2019-04-24 10:37:56', '127.0.0.1', 'Chrome'),
(953, '2019-04-24 14:06:24', '192.168.42.129', 'Chrome'),
(954, '2019-04-25 09:17:37', '127.0.0.1', 'Chrome'),
(955, '2019-04-26 08:48:03', '127.0.0.1', 'Chrome'),
(956, '2019-04-27 08:19:56', '127.0.0.1', 'Chrome'),
(957, '2019-04-29 10:10:05', '127.0.0.1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE IF NOT EXISTS `tbl_tags` (
  `tags_id` int(11) NOT NULL,
  `tags_nama` varchar(30) DEFAULT NULL,
  `tags_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`tags_id`, `tags_nama`, `tags_tanggal`) VALUES
(1, 'codeigniter', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE IF NOT EXISTS `tbl_team` (
  `team_nama` varchar(70) DEFAULT NULL,
  `team_jenkel` varchar(50) DEFAULT NULL,
  `team_tmp_lahir` varchar(80) DEFAULT NULL,
  `team_tgl_lahir` varchar(80) DEFAULT NULL,
  `team_mapel` varchar(120) DEFAULT NULL,
  `team_photo` varchar(40) DEFAULT NULL,
  `team_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `akun_fb` varchar(50) NOT NULL,
  `akun_ig` varchar(50) NOT NULL,
  `akun_google` varchar(50) NOT NULL,
  `akun_twit` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`team_nama`, `team_jenkel`, `team_tmp_lahir`, `team_tgl_lahir`, `team_mapel`, `team_photo`, `team_tgl_input`, `akun_fb`, `akun_ig`, `akun_google`, `akun_twit`, `jabatan`, `team_id`) VALUES
('Ilham Efendi', 'L', 'Ciamis, Jawa Barat', '12 November 2000', NULL, '4d2aaa49f736529bf0cfe834ff70de92.jpg', '2018-12-03 21:46:00', 'https://www.facebook.com/ilham', 'https://www.instragram/ilhamefs', 'https://www.google.com', 'https://www.twitter.com/ilham', 'CEO FOUNDER SUNDANES', 1),
('Wily Ramadhan', 'L', 'Ciamis, Jawa Barat', '12 nov 2000', NULL, '77a3e857261102ce2ac89e22d66abeb3.png', '2018-12-03 21:48:28', 'https://www.facebook.com/wily', 'https://www.instragram/wily', 'https://www.google.com', 'https://www.twitter.com/wily', 'CEO FOUNDER SUNDANES', 2),
('Ilham Mauludin', 'L', 'Tasikmalaya', '20 November 1987', NULL, '913f644296f08d5f68250c16bc23a867.jpg', '2018-12-03 21:59:55', 'https://www.facebook.com/amily', 'https://www.instragram/amily', 'https://www.google.com', 'https://www.twitter.com/amily', 'Owner amily', 3),
('Sakia', 'P', 'Tasikmalaya', '20 November 1987', NULL, '86aec9b2a5ca42f5b0acbc34687eac3a.png', '2018-12-03 22:01:03', 'https://www.facebook.com/amily', 'https://www.instragram/amily', 'https://www.google.com', 'https://www.twitter.com/amily', 'CEO FOUNDER SUNDANES', 4),
('', '', '', '', NULL, '76fcbebf4a66f50b69b01f3ffecbddf7.png', '2019-04-26 11:36:00', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE IF NOT EXISTS `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` text NOT NULL,
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_testimoni`
--

INSERT INTO `tbl_testimoni` (`testimoni_id`, `testimoni_nama`, `testimoni_isi`, `testimoni_email`, `testimoni_tanggal`, `gambar`) VALUES
(1, 'Ilham Efendi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue.\r\nconsectetur adipiscing el', 'admin@bewithdhanu.in', '2019-04-26 12:35:15', ''),
(2, 'Lita Nurfaridah', 'Lorem ipsum dolor sit amet,\r\n consectetur adipiscing elit. Sed pulvinar luctus est eget congue. consectetur adipiscing e', 'manager@bewithdhanu.in', '2019-04-26 12:35:46', ''),
(3, 'Ilham Efendi1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar luctus est eget congue. consectetur adipiscing el', 'manager@bewithdhanu.in', '2019-04-26 12:35:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE IF NOT EXISTS `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(200) DEFAULT NULL,
  `tulisan_tags_id` int(11) DEFAULT NULL,
  `tulisan_tags_nama` varchar(30) DEFAULT NULL,
  `link_driv` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `tulisan_tags_id`, `tulisan_tags_nama`, `link_driv`) VALUES
(23, 'Pelaksanaan Ujian Nasional SMK', '<p>Pelaksanaan UN (Ujian Nasional) di sekolah M-Sekolah berlangsung tentram dan damai. Terlihat ketenangan terpancar diwajah siswa berprestasi.&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2018-11-05 02:41:30', 5, 'Penelitian', 99, '51ab2ecd40c9763e241aaf08ed1bf87b.jpg', 1, 'Ilham Efendi', 0, 'pelaksanaan-ujian-nasional-smk', 0, '', ''),
(24, 'Proses belajar mengajar SMK', '<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2018-11-05 02:46:29', 1, 'Pendidikan', 197, '8b00d6636e57e8eab8772b834a802a83.jpg', 1, 'Ilham Efendi', 0, 'proses-belajar-mengajar-smk', 0, '', ''),
(27, 'iPhone 8 Baru Mengungkapkan Fitur Mengecewakan', '<p>Apple CEO Tim Cook delivers the opening keynote address the 2017 Apple.</p>\r\n\r\n<p><br />\r\nSudah lama sekali sejak Apple mampu menyimpan kejutan nyata dari beledu digital dan mengungkapkan &#39;satu hal&#39; yang sebenarnya selama sebuah keynote. Fase desain dan prototyping yang panjang, ditambah dengan rantai pasokan yang diperluas, telah menghasilkan garis manufaktur yang bocor.<br />\r\n<br />\r\nTariklah permintaan yang tak terpuaskan dari si geekerati dan Anda tidak akan pernah bisa menyimpan rahasianya ... bahkan jika penonton akan berpura-pura bahwa segala sesuatu yang dikatakan Tim Cook adalah sebuah wahyu.<br />\r\n<br />\r\nSemuanya di tampilkan untuk portofolio iPhone baru, meskipun jika kita jujur ??tidak ada hal baru yang bisa dilihat. Ini hanya Tim Cook dan timnya yang membuat model tahun lalu &#39;sedikit lebih baik&#39; dan mengajukan konsumen proposisi yang sama seperti setiap produsen smartphone lainnya.<br />\r\n<br />\r\nMungkin aku berharap terlalu banyak dari Apple. Pengulangan Timey dari mimpi Silicon Valley tidak dibangun dengan risiko, mendorong amplop, atau bereksperimen dengan bentuk atau fungsinya. Bagaimana Tim Cook bisa mendorong inovasi ketika begitu banyak kekaisarannya dibangun di seputar kebutuhan akan penjualan siklis iPhone yang terjamin? Jika penjualan smartphone turun, maka yayasan Cupertino akan berada dalam bahaya.<br />\r\n<br />\r\nJawaban Apple untuk ini adalah iPhone 8. Sementara iPhone 7S dan iPhone 7S Plus menjaga harapan, iPhone 8 bisa bereksperimen dengan bentuk, harga, dan kekuatan. Ini adalah handset yang akan mendorong batas teknologi Apple dengan layar OLED yang cerah dan jelas di bawah kaca melengkung yang membentuk bagian luarnya. Inilah smartphone yang membawa kekuatan magis wireless charging ke ekosistem iOS dan akan menawarkan pengenalan wajah untuk keamanan.<br />\r\n<br />\r\nYang semua terdengar hebat tapi itu satu set poin peluru yang bisa diterapkan ke banyak handset Android terkemuka yang ada di pasaran saat ini. Bahkan dengan andalannya yang maju untuk tahun 2017, Apple melakukan sedikit lebih banyak daripada mengenalkan teknologi yang ada ke portofolio iOS.<br />\r\n<br />\r\nItu tidak terlihat seperti ini beberapa bulan yang lalu. Fitur yang diduga dikeluarkan oleh Apple dari iPhone 8 memamerkan beberapa pemikiran terbaru tentang perangkat mobile, termasuk pengisian daya nirkabel jarak jauh dan sensor biometrik tertanam di bawah layar kaca. Ini perlahan-lahan telah terbantahkan oleh industri rumahan dan desas-desus, sampai-sampai kita cukup tahu apa yang terjadi dari iPhone 8.<br />\r\n<br />\r\nTentu saja iPhone 8 (dan lebih dari kemungkinan iPhone 7S dan 7S Plus) akan mendapat keuntungan dari perubahan pada konstruksi interior. Akan ada pencantuman iOS 11 dan integrasi perangkat lunak yang ketat ke perangkat keras. Akan ada anggukan Apple untuk kesederhanaan di UI dan aplikasi pihak ketiga akan segera menghadirkan fitur lanjutan kepada pengguna rata-rata.<br />\r\n<br />\r\nIni bukan perubahan sepele, tapi yang menyoroti ini adalah menjelaskan bagaimana sosis dibuat. Mereka adalah rakit tweak untuk paket yang sama. Anda bisa menambahkan kancing diamante ke gaun Anda, mengganti lapisannya, dan mengeluarkan pinggulnya karena tahun-tahun yang lewat, tapi pakaiannya tetap sama seperti yang orang lihat berkali-kali. Itu cukup bagi bisnis Apple untuk terus melakukannya dengan baik dan membuat pemegang saham tetap bahagia, namun Anda tidak dapat terus kembali ke bidang yang sama dan berharap untuk tetap berada di puncak permainan smartphone. Sesuatu harus diberikan.<br />\r\n<br />\r\nPortofolio Apple 2017 membajak bidang yang sama persis dengan tahun-tahun sebelumnya. Tulang punggung penjualan akan terdiri dari iPhone 7S dan iPhone 7S Plus yang berulang-ulang saat Tim Cook kembali menanam benih di alur yang sama persis seperti model sebelumnya. IPhone 8 dapat diluncurkan tepat waktu, namun stok akan sulit didapat dan Apple akan, sekali lagi, tidak merilis angka penjualan. Ini akan menjadi hal baru yang menarik dan berkilau, tapi mari kita panggil apa adanya.</p>\r\n\r\n<p>Tim Cook akan menyilangkan jari-jarinya sehingga cukup banyak orang yang senang bisa &#39;membeli iPhone lain&#39; dan terus menggelontorkannya tanpa melihat persaingan. IPhone 8 adalah Apple yang bermain mengejar kemajuan teknologi kompetisi, dengan harapan tidak ada yang memperhatikan bahwa iPhone Baru Kaisar tidak semudah yang terlihat.</p>\r\n', '2018-11-11 19:56:12', 6, 'Prestasi', 173, 'dbea011e8f6356810e870c5113625e53.jpg', 1, 'Ilham Efendi', 0, 'iphone-8-baru-mengungkapkan-fitur-mengecewakan', 0, '1', 'http://localhost:81/phpmyadmin/index.php?db=progres&token=9eb321f209bb1d47c411362db5f5edf2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `id_provinces` char(2) NOT NULL,
  `id_regencies` char(4) NOT NULL,
  `username` char(25) NOT NULL,
  `email` char(25) NOT NULL,
  `pass` text NOT NULL,
  `nama_depan` char(25) NOT NULL,
  `nama_belakang` char(25) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` char(10) NOT NULL,
  `no_telp` int(20) NOT NULL,
  `tgl_daftar` char(20) NOT NULL,
  `aktif` char(5) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_provinces`, `id_regencies`, `username`, `email`, `pass`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `no_telp`, `tgl_daftar`, `aktif`) VALUES
(1, '33', '3374', 'agung', 'agungprabowo112@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'agung', 'prabowo', 'jl.bendungan 1135', '50245', 2147483647, '110696', ''),
(2, '33', '3374', 'agung prabowo', 'agungprabowo112@gmail.com', '68d616be81074a698db50c173542dfa9', 'agung prabowo', '', 'jl.bendungan 1135', '', 2147483647, '1461669978', 'NO'),
(3, '19', '1901', 'resikresna', 'ilham@yahoo.com', '1de1fbd2766b88342cbc02a5f6b17346', 'ilham efendi', '', 'Jl. Jendral Sudirman No. Ciamis', '', 2147483647, '1461670693', 'NO'),
(23, '33', '0', 'suryawi', 'ilhamefendi0318@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'pass', 'word', 'lontong', '', 2147483647, '1526130379', 'NO'),
(24, '32', '3207', '161710526', 'you@gmail.com', 'd8f9df40167a6e194e1251d5e096f905', 'kuku', 'ong', 'asdsdsd', '', 2147483647, '1526725933', 'NO'),
(25, '32', '0', 'diantriasd', 'li@gmail.com', '22d42480bf649bcb02c124ab6adac710', 'sadad', 'sadsad', 'asdsaddscscscscsdcdcdcdc', '', 324234324, '1526828564', 'NO'),
(26, '35', '3503', 'ilham', 'ilhamefendi@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'ham', 'il', 'ciamis', '', 0, '1543870284', 'NO'),
(27, '32', '3207', 'Ilhams', 'ilhamefendi@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ilham', 'Efendi', 'Ciamis', '', 0, '1543949766', 'NO');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);
