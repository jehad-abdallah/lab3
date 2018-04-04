CREATE DATABASE medicine;
show databases;
use medicine;
show tables;
describe company;
DROP TABLE IF exists company;
CREATE TABLE IF NOT EXISTS company(
`id_company` INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
year year NULL DEFAULT NULL,
PRIMARY KEY (`id_company`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

select * from company;
insert into company(id_company, name)
values 
(1, 'Abbott Laboratories'),
(2, 'AbbVie'),
(3, 'Acadia Pharmaceuticals'),
(4, 'Acorda Therapeutics'),
(5, 'Actavis'),
(6, 'Actelion'),
(7, 'Adcock Ingram'),
(8, 'Advanced Chemical Industries'),
(9, 'Advaxis'),
(10, 'ACG Worldwide'),
(11, 'Bargn Farmaceutici Phils Co'),
(12, 'Barr'),
(13, 'Basi'),
(14, 'Bausch & Lomb'),
(15, 'Baxalta'),
(16, 'Baxter International'),
(17, 'Bayer Schering Pharma AG'),
(18, 'Beximco Pharmaceuticals'),
(19, 'Bial'),
(20, 'Biocon'),
(21, 'Biogen'),
(22, 'Biolex'),
(23, 'BioMarin Pharmaceutical'),
(24, 'Bionovo'),
(25, 'Biotecnol'),
(26, 'Ego Pharmaceuticals'),
(27, 'Eisai'),
(28, 'Elder Pharmaceuticals'),
(29, 'Eli Lilly and Company'),
(30, 'mcure Pharmaceuticals'),
(31, 'Emergent BioSolutions'),
(32, 'Endo Pharmaceuticals'),
(33, 'Eskayef Bangladesh Limited'),
(34, 'Hoffmann–La'),
(35, 'Fabre-Kramer Pharmaceuticals'),
(36, 'Ferring Pharmaceuticals'),
(37, 'Fresenius Kabi'),
(38, 'Fresenius Medical Care'),
(39, 'Galderma Laboratories'),
(40, 'Gedeon Richter Ltd.'),
(41, 'General Pharma'),
(42, 'Gilead Sciences'),
(43, 'Ajanta Pharma'),
(44, 'Alcon'),
(45, 'Alembic Pharmaceuticals Ltd'),
(46, 'Alexion Pharmaceuticals'),
(47, 'Alkaloid'),
(48, 'Alkermes'),
(49, 'Allergan'),
(50, 'Alliance Boots'),
(51, 'Almirall'),
(52, 'lphapharm'),
(53, 'Altana Pharma AG'),
(54, 'Amgen'),
(55, 'Anfatis'),
(56, 'Biovail'),
(57, 'Biovitrum'),
(58, 'Bluepharma'),
(59, 'Boehringer-Ingelheim'),
(60, 'Bosnalijek'),
(61, 'Bristol-Myers Squibb'),
(62, 'BTG plc'),
(63, 'Cadila Healthcare'),
(64, 'Canadian Plasma Resources'),
(65, 'The Cathay Drug Co'),
(66, 'Celgene'),
(67, 'Cephalon'),
(68, 'Chiesi Farmaceutici S.p.A.'),
(69, 'Chugai Pharmaceutical Co.'),
(70, 'CinnaGen'),
(71, 'Cipla'),
(72, 'Clovis Oncology'),
(73, 'CoCo Therapeutics'),
(74, 'Concordia Healthcare'),
(75, 'Covance'),
(76, 'Crucell'),
(77, 'CSL Limited'),
(78, 'Dabur'),
(79, 'Daiichi Sankyo'),
(80, 'Dinippon Sumitomo Pharma'),
(81, 'Dawakhana Shifaul Amraz'),
(82, 'Debiopharm'),
(83, 'Diabetology Ltd'),
(84, 'Diffusion Pharmaceuticals'),
(85, 'Dr. Reddy Laboratories'),
(86, 'Ego Pharmaceuticals'),
(87, 'Eisai'),
(88, 'Elder Pharmaceuticals'),
(89, 'Eli Lilly and Company'),
(90, 'Emcure Pharmaceuticals'),
(91, 'Emergent BioSolutions'),
(92, 'Endo Pharmaceuticals'),
(93, 'Eskayef Bangladesh Limited'),
(94, 'Grifols'),
(95, 'Fabre-Kramer Pharmaceuticals'),
(96, 'Ferring Pharmaceuticals'),
(97, 'Fresenius Kabi'),
(98, 'Fresenius Medical Care'),
(99, 'Galderma Laboratories'),
(100, 'Gedeon Richter Ltd'),
(101, 'General Pharma');


describe DEALER;
DROP TABLE IF exists dealer;
CREATE TABLE IF NOT EXISTS dealer(
id_dealer INT(11) NOT NULL AUTO_INCREMENT,
id_company INT(11) NOT NULL,
surname VARCHAR(255) NOT NULL,
telephone VARCHAR(255) default NULL,
PRIMARY KEY (`id_dealer`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


select * from dealer;
insert into dealer(id_dealer, id_company, surname, telephone)
values
(120, 1, 'Jones', 6214902319),
(121, 2, 'Williams', 4774441448),
(122, 3, 'Brown', 6119750536),
(123, 4, 'Davies', 5342623856),
(124, 5, 'Evans', 2785372179),
(125, 6, 'Thomas', 2501444396),
(126, 7, 'Johnson', 7091738953),
(127, 8, 'Roberts', 3135781609),
(128, 9, 'Thompson', 3805456341),
(129, 10, 'Robinson', 1748333094),
(130, 11, 'White', 9088345113),
(131, 12, 'Hughes', 3071780454),
(132, 13, 'Edwards', 6351831953),
(133, 14, 'Green', 6412823381),
(134, 15, 'Martin', 6922103101),
(135, 16, 'Lewis', 5571500096),
(136, 17, 'Harris', 4745178754),
(137, 18, 'Jackson', 412564107),
(138, 19, 'Scott', 8248738671),
(139, 20, 'Morris', 4245312486),
(140, 21, 'Watson', 687702719),
(141, 22, 'Harrison', 4021595800),
(142, 23, 'Morgan', 2957648553),
(143, 24, 'Young', 5095330607),
(144, 25, 'Allen', 4601865784),
(145, 26, 'Anderson', 9496975169),
(146, 27, 'Mitchell', 5243714595),
(147, 28, 'Phillips', 1777467916),
(148, 29, 'James', 6179658076),
(149, 30, 'Campbell', 9185966171),
(150, 31, 'Davis', 6343229384),
(151, 32, 'Bennett', 3462251231),
(152, 33, 'Price', 3013265852),
(153, 34, 'Simpson', 2598987709),
(154, 35, 'Griffiths', 3177243622),
(155, 36, 'Richardson', 7667690247),
(156, 37, 'Stewart', 3429768849),
(157, 38, 'Collins', 1191743584),
(158, 39, 'Gray', 3231638024),
(159, 40, 'Murray', 4353762323),
(160, 41, 'Cox', 6267537666),
(161, 42, 'Adams', 6869856838),
(162, 43, 'Richards', 7524170917),
(163, 44, 'Graham', 201579502),
(164, 45, 'Ellis', 6156558925),
(165, 46, 'Wilkinson', 6116895549),
(166, 47, 'Robertson', 137673066),
(167, 48, 'Russell', 9239491111),
(168, 49, 'Powell', 5838676403),
(169, 50, 'Rogers', 9988246616),
(170, 51, 'Gibson', 2805743972),
(171, 52, 'Owen', 3947207628),
(172, 53, 'Matthews', 9767691570),
(173, 54, 'Thomson', 6564398702),
(174, 55, 'Lloyd', 1176608611),
(175, 56, 'Harven', 701307319),
(176, 57, 'Jenkins', 8352335474),
(177, 58, 'Pearson', 5404844869),
(178, 59, 'Stevens', 9786121865),
(179, 60, 'Dixon', 9117511290),
(180, 61, 'Grant', 6713259040),
(181, 62, 'Ross', 9367066905),
(182, 63, 'Elliott', 9755152021),
(183, 64, 'Henderson', 2977073804),
(184, 65, 'Andrews', 4969361951),
(185, 66, 'Reynolds', 4641993349),
(186, 67, 'Fox', 458317275),
(187, 68, 'Howard', 7502660930),
(188, 69, 'Saunders', 1194920457),
(189, 70, 'Payne', 8998369707),
(190, 71, 'Pearce', 7507706940),
(191, 72, 'Dawson', 4517855047),
(192, 73, 'Atkinson', 902343252),
(193, 74, 'Cole', 8619513585),
(194, 75, 'Lawrence', 758608741),
(195, 76, 'MacDonald', 6975040847),
(196, 77, 'McDonald', 4397721595),
(197, 78, 'Ball', 5562892081),
(198, 79, 'Williamson', 5906784156),
(199, 80, 'Rose', 6995389310),
(200, 81, 'Davidson', 2538035315),
(201, 82, 'Watts', 2945611570),
(202, 83, 'Morrison', 9277883787),
(203, 84, 'Hart', 4306143038),
(204, 85, 'Dunn', 1785532125),
(205, 86, 'Wallace', 3987491832),
(206, 87, 'Stevenson', 0987561031),
(207, 88, 'Rees', 8938706919),
(208, 89, 'Hudson', 5358772640),
(209, 90, 'Ferguson', 8967269317),
(210, 91, 'Gordon', 1568078429),
(211, 92, 'Barrett', 2355896527),
(212, 93, 'Gregory', 8266378516),
(213, 94, 'Francis', 5383015085),
(214, 95, 'Oliver', 8078318244),
(215, 96, 'Hawkins', 3027288061),
(216, 97, 'Black', 3153787130),
(217, 98, 'Fraser', 3495760392),
(218, 99, 'Bird', 1592883100),
(219, 100, 'Nicholson', 8297665890),
(220, 101, 'Oliver', null);

describe medication;
DROP TABLE IF exists medication;
CREATE TABLE IF NOT EXISTS medication(
id_medication INT(11) NOT NULL AUTO_INCREMENT,
name_of_medication VARCHAR(255) NOT NULL,
term DATE NULL NOT NULL,
PRIMARY KEY (`id_medication`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


select * from medication;
insert into medication(id_medication, name_of_medication, term)
values
(330, 'Acetaminophen', '21.02.2015'),
(331, 'Adderall', '22.02.2015'),
(332, 'Alprazolam', '23.02.2015'),
(333, 'Amitriptyline', '24.02.2015'),
(334, 'Amlodipine', '25.02.2015'),
(335, 'Amoxicillin', '26.02.2015'),
(336, 'Ativan', '27.02.2015'),
(337, 'Atorvastatin', '28.02.2015'),
(338, 'Azithromycin', '01.03.2015'),
(339, 'Ciprofloxacin', '02.03.2015'),
(340, 'Citalopram', '03.03.2015'),
(341, 'Clindamycin', '04.03.2015'),
(342, 'Clonazepam', '05.03.2015'),
(343, 'Codeine', '06.03.2015'),
(344, 'Cyclobenzaprine', '07.03.2015'),
(345, 'Cymbalta', '08.03.2015'),
(346, 'Doxycycline', '09.03.2015'),
(347, 'Gabapentin', '10.03.2015'),
(348, 'Hydrochlorothiazide', '11.03.2015'),
(349, 'Ibuprofen', '12.03.2015'),
(350, 'Lexapro', '13.03.2015'),
(351, 'Lisinopril', '14.03.2015'),
(352, 'Loratadine', '15.03.2015'),
(353, 'Lorazepam', '16.03.2015'),
(354, 'Losartan', '17.03.2015'),
(355, 'Lyrica', '18.03.2015'),
(356, 'Meloxicam', '19.03.2015'),
(357, 'Metformin', '20.03.2015'),
(358, 'Metoprolol', '21.03.2015'),
(359, 'Naproxen', '22.03.2015'),
(360, 'Omeprazole', '23.03.2015'),
(361, 'Oxycodone', '24.03.2015'),
(362, 'Pantoprazole', '25.03.2015'),
(363, 'Prednisone', '26.03.2015'),
(364, 'Tramadol', '27.03.2015'),
(365, 'Trazodone', '28.03.2015'),
(366, 'Viagra', '29.03.2015'),
(367, 'Wellbutrin', '30.03.2015'),
(368, 'Xanax', '31.03.2015'),
(369, 'Zoloft', '01.04.2015'),
(370, 'Gabapentin', '02.04.2015'),
(371, 'Gammagard', '03.04.2015'),
(372, 'anti', '04.04.2015'),
(373, 'Gardasil', '05.04.2015'),
(374, 'Gazyva', '06.04.2015'),
(375, 'Gemfibrozil', '07.04.2015'),
(376, 'Gemzar', '08.04.2015'),
(377, 'Genvoya', '09.04.2015'),
(378, 'Geodon', '10.04.2015'),
(379, 'Gilenya', '11.04.2015'),
(380, 'Gleevec', '12.04.2015'),
(381, 'Glipizide', '13.04.2015'),
(382, 'Glucophage', '14.04.2015'),
(383, 'Glucotrol', '15.04.2015'),
(384, 'Glucovance', '16.04.2015'),
(385, 'Glyburide', '17.04.2015'),
(386, 'Glyxambi', '18.04.2015'),
(387, 'Gralise', '19.04.2015'),
(388, 'Guaifenesin', '20.04.2015'),
(389, 'Guaifenex', '21.04.2015'),
(390, 'Effexor', '22.04.2015'),
(391, 'Effient', '23.04.2015'),
(392, '	Elavil', '24.04.2015'),
(393, 'Eligard', '25.04.2015'),
(394, 'Eliquis', '26.04.2015'),
(395, 'Elocon', '27.04.2015'),
(396, 'Enalapril', '28.04.2015'),
(397, 'Enbrel', '29.04.2015'),
(398, 'Entresto', '30.04.2015'),
(399, 'EpiPen', '01.05.2015'),
(400, 'Erythromycin', '02.05.2015'),
(401, 'Escitalopram', '03.05.2015'),
(402, 'Estrace', '04.05.2015'),
(403, 'Estradiol', '05.05.2015'),
(404, 'Etodolac', '06.05.2015'),
(405, 'Evista', '07.05.2015'),
(406, 'Excedrin', '08.05.2015'),
(407, 'Exelon', '09.05.2015'),
(408, 'Exforge', '10.05.2015'),
(409, 'Ezetimib', '11.05.2015'),
(410, 'Ibrance', '12.05.2015'),
(411, 'Ibuprofen', '13.05.2015'),
(412, 'Imbruvica', '14.05.2015'),
(413, 'Imdur', '15.05.2015'),
(414, 'Imitrex', '16.05.2015'),
(415, 'Imodium', '17.05.2015'),
(416, 'Implanon', '18.05.2015'),
(417, 'Incruse Ellipta', '19.05.2015'),
(418, 'Inderal', '20.05.2015'),
(419, 'Ingrezza', '21.05.2015'),
(420, 'Injectafer', '22.05.2015'),
(421, 'Insulin', '23.05.2015'),
(422, 'Intelence', '24.05.2015'),
(423, 'Intuniv', '25.05.2015'),
(424, 'Invega', '26.05.2015'),
(425, 'Invokamet', '27.05.2015'),
(426, 'Invokana', '28.05.2015'),
(427, 'Isentress', '29.05.2015'),
(428, 'Isosorbide', '30.05.2015'),
(429, 'Istalol', '31.05.2015'),
(430, 'Invega', '01.06.2015');

describe pharmacy;
DROP TABLE IF exists pharmacy;
CREATE TABLE IF NOT EXISTS pharmacy(
id_pharmacy INT(11) NOT NULL AUTO_INCREMENT,
name_of_pharmacy VARCHAR(255) NOT NULL,
address text(1000) NOT NULL,
PRIMARY KEY (`id_pharmacy`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

select * from pharmacy;
insert into pharmacy(id_pharmacy, name_of_pharmacy, address)
values
(440, 'Arbor Drugs', '777 Brockton Avenue, Abington MA 2351'),
(441, 'Assured Pharmacies', '30 Memorial Drive, Avon MA 2322'),
(442, 'Atlas Drugs', '250 Hartford Avenue, Bellingham MA 2019'),
(443, 'Aurora Pharmacy', '700 Oak Street, Brockton MA 2301'),
(444, 'B & R Stores', '66-4 Parkhurst Rd, Chelmsford MA 1824'),
(445, 'Balls Four', '591 Memorial Dr, Chicopee MA 1020'),
(446, 'Bartell Drugs', '55 Brooksby Village Way, Danvers MA 1923'),
(447, 'Big Bear-Prism', '137 Teaticket Hwy, East Falmouth MA 2536'),
(448, 'Big V Supermarkets', '42 Fairhaven Commons Way, Fairhaven MA 2719'),
(449, 'Bi-Lo Pharmacy', '374 William S Canning Blvd, Fall River MA 2721'),
(450, 'Bi-Mart Drugs', '121 Worcester Rd, Framingham MA 1701'),
(451, 'BJS Wholesale Club', '677 Timpany Blvd, Gardner MA 1440'),
(452, 'Brookshire Bros', '337 Russell St, Hadley MA 1035'),
(453, 'Brookshire Grocery', '295 Plymouth Street, Halifax MA 2338'),
(454, 'Brown and Cole', '1775 Washington St, Hanover MA 2339'),
(455, 'Brunos Pharmacy', '280 Washington Street, Hudson MA 1749'),
(456, 'Buehler Foods', '20 Soojian Dr, Leicester MA 1524'),
(457, 'Buehler Pharmacy', '11 Jungle Road, Leominster MA 1453'),
(458, 'Carrs Quality Center', '301 Massachusetts Ave, Lunenburg MA 1462'),
(459, 'CBC Prof. Pharmacy', '780 Lynnway, Lynn MA 1905'),
(460, 'City Market', '70 Pleasant Valley Street, Methuen MA 1844'),
(461, 'Coborns Pharmacy', '830 Curran Memorial Hwy, North Adams MA 1247'),
(462, 'Community Pharmacies', '1470 S Washington St, North Attleboro MA 2760'),
(463, 'D & W Food Centers', '506 State Road, North Dartmouth MA 2747'),
(464, 'Dahls Pharmacy', '742 Main Street, North Oxford MA 1537'),
(465, 'Dayton Cub Foods', '72 Main St, North Reading MA 1864'),
(466, 'Dierbergs', '200 Otis Street, Northborough MA 1532'),
(467, 'Dillon Pharmacy', '180 North King Street, Northhampton MA 1060'),
(468, 'Discount Drug Mart', '555 East Main St, Orange MA 1364'),
(469, 'Discount Emporium', '555 Hubbard Ave-Suite 12, Pittsfield MA 1201'),
(470, 'Docs Drugs', '300 Colony Place, Plymouth MA 2360'),
(471, 'Dominicks Pharmacy', '301 Falls Blvd, Quincy MA 2169'),
(472, 'Drug Emporium', '36 Paramount Drive, Raynham MA 2767'),
(473, 'Drug Fair-Community', '450 Highland Ave, Salem MA 1970'),
(474, 'Drug World Pharmacies', '1180 Fall River Avenue, Seekonk MA 2771'),
(475, 'Duane Reade', '1105 Boston Road, Springfield MA 1119'),
(476, 'Eagle Food', '100 Charlton Road, Sturbridge MA 1566'),
(477, 'Eaton Apothecary', '262 Swansea Mall Dr, Swansea MA 2777'),
(478, 'Ensign Pharmacy', '333 Main Street, Tewksbury MA 1876'),
(479, 'Fagen Pharmacy', '550 Providence Hwy, Walpole MA 2081'),
(480, 'Fairview Health Sevices', '352 Palmer Road, Ware MA 1082'),
(481, 'Family Care Network', '3005 Cranberry Hwy Rt 6 28, Wareham MA 2538'),
(482, 'Family Care Plus', '250 Rt 59, Airmont NY 10901'),
(483, 'Family Drug Store', '141 Washington Ave Extension, Albany NY 12205'),
(484, 'Family Fare Pharmacy', '13858 Rt 31 W, Albion NY 14411'),
(485, 'Family Pharmacy', '2055 Niagara Falls Blvd, Amherst NY 14228'),
(486, 'Familymeds', '101 Sanford Farm Shpg Center, Amsterdam NY 12010'),
(487, 'Farm Fresh Pharmacy', '297 Grant Avenue, Auburn NY 13021'),
(488, 'Farmer', '4133 Veterans Memorial Drive, Batavia NY 14020'),
(489, 'Food City-K-Va-T', '6265 Brockport Spencerport Rd, Brockport NY 14420'),
(490, 'Food Lion', '5399 W Genesse St, Camillus NY 13031'),
(491, 'Foodarama', '3191 County rd 10, Canandaigua NY 14424'),
(492, 'Four Star Drug', '30 Catskill, Catskill NY 12414'),
(493, 'Fred Meyer Pharmacy', '161 Centereach Mall, Centereach NY 1172'),
(494, 'Fred Stores', '3018 East Ave, Central Square NY 13036'),
(495, 'Fruth Pharmacy', '100 Thruway Plaza, Cheektowaga NY 14225'),
(496, 'Frys Food and Drug', '8064 Brewerton Rd, Cicero NY 13039'),
(497, 'Genovese Drug Store', '5033 Transit Road, Clarence NY 14031'),
(498, 'Giant Eagle, Inc.', '3949 Route 31, Clay NY 13041'),
(499, 'Giant of Maryland', '139 Merchant Place, Cobleskill NY 12043'),
(500, 'Giant Pharmacy', '85 Crooked Hill Road, Commack NY 11725'),
(501, 'Haggen Foods', '872 Route 13, Cortlandville NY 13045'),
(502, 'Hannaford Brothers', '279 Troy Road, East Greenbush NY 12061'),
(503, 'Happy Harrys Drugs', '2465 Hempstead Turnpike, East Meadow NY 11554'),
(504, 'Harps Food Stores', '6438 Basile Rowe, East Syracuse NY 13057'),
(505, 'Harris Teeter', '25737 US Rt 11, Evans Mills NY 13637'),
(506, 'Hartig Drug Store', '901 Route 110, Farmingdale NY 11735'),
(507, 'Heartland Pharmacy', '2400 Route 9, Fishkill NY 12524'),
(508, 'Hi-School Pharmacy', '10401 Bennett Road, Fredonia NY 14063'),
(509, 'Homeland Stores', '1818 State Route 3, Fulton NY 13069'),
(510, 'Hy-Vee Pharmacy', '4300 Lakeville Road, Geneseo NY 14454'),
(511, 'IHC Pharmacy', '990 Route 5 20, Geneva NY 14456'),
(512, 'IHS Infusion Services', '311 RT 9W, Glenmont NY 12077'),
(513, 'Ingles Markets', '200 Dutch Meadows Ln, Glenville NY 12302'),
(514, 'Inserra Supermarkets', '100 Elm Ridge Center Dr, Greece NY 14626'),
(515, 'Integrity Healthcare', '1549 Rt 9, Halfmoon NY 12065'),
(516, 'JH Harvey', '5360 Southwestern Blvd, Hamburg NY 14075'),
(517, 'JSA Healthcare', '103 North Caroline St, Herkimer NY 13350'),
(518, 'Kash N Karry', '1000 State Route 36, Hornell NY 14843'),
(519, 'Kerr Drugs, Inc.', '1400 County Rd 64, Horseheads NY 14845'),
(520, 'Keystone Pharmacy', '135 Fairgrounds Memorial Pkwy, Ithaca NY 14850'),
(521, 'King Kullen Grocery', '2 Gannett Dr, Johnson City NY 13790'),
(522, 'King Soopers Pharmacy', '233 5th Ave Ext, Johnstown NY 12095'),
(523, 'Kinney Drugs', '601 Frank Stottile Blvd, Kingston NY 12401'),
(524, 'Kliens Super Market', '350 E Fairmount Ave, Lakewood NY 14750'),
(525, 'Klingensmiths Drug', '4975 Transit Rd, Lancaster NY 14086'),
(526, 'Knight Drugs', '	579 Troy-Schenectady Road, Latham NY 12110'),
(527, 'Kohlls Pharmacy and Homecare', '5783 So Transit Road, Lockport NY 14094'),
(528, 'Kopp Drug', '7155 State Rt 12 S, Lowville NY 13367'),
(529, 'Laurenti', '425 Route 31, Macedon NY 14502'),
(530, 'Lifechek', '3222 State Rt 11, Malone NY 12953'),
(531, 'Longs Drug Store', '200 Sunrise Mall, Massapequa NY 11758'),
(532, 'Louis and Clark Drug', '43 Stephenville St, Massena NY 13662'),
(533, 'M and H Drugs', '750 Middle Country Road, Middle Island NY 11953'),
(534, 'Marcs Pharmacy', '470 Route 211 East, Middletown NY 10940'),
(535, 'Marsh Drug Store', '3133 E Main St, Mohegan Lake NY 10547'),
(536, 'Marshfield Pharmacy', '288 Larkin, Monroe NY 10950'),
(537, 'Martins Super Mkts', '41 Anawana Lake Road, Monticello NY 12701'),
(538, 'Maxi Drug', '4765 Commercial Drive, New Hartford NY 13413'),
(539, 'Med-Fast Pharmacy', '1201 Rt 300, Newburgh NY 12550'),
(540, 'Medic Discount Drug', '255 W Main St, Avon CT 6001');


describe manufacture_of_medicine;
DROP TABLE IF exists manufacture_of_medicine;
CREATE TABLE IF NOT EXISTS manufacture_of_medicine(
id_manufacture_of_medicine INT(11) NOT NULL AUTO_INCREMENT,
id_company INT(11) NOT NULL,
id_medication INT(11) NOT NULL,
cost FLOAT NOT NULL,
ball tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id_manufacture_of_medicine`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SELECT * FROM manufacture_of_medicine;
insert into manufacture_of_medicine(id_manufacture_of_medicine, id_company, id_medication, cost)
values
(550, 1, 330, 110),
(551, 2, 331, 120),
(552, 3, 332, 130),
(553, 4, 333, 140),
(554, 5, 334, 150),
(555, 6, 335, 160),
(556, 7, 336, 170),
(557, 8, 337, 180),
(558, 9, 338, 190),
(559, 10, 339, 200),
(560, 11, 340, 210),
(561, 12, 341, 110),
(562, 13, 342, 120),
(563, 14, 343, 130),
(564, 15, 344, 140),
(565, 16, 345, 150),
(566, 17, 346, 160),
(567, 18, 347, 170),
(568, 19, 348, 180),
(569, 20, 349, 190),
(570, 21, 350, 200),
(571, 22, 351, 210),
(572, 23, 352, 110),
(573, 24, 353, 120),
(574, 25, 354, 130),
(575, 26, 355, 140),
(576, 27, 356, 150),
(577, 28, 357, 160),
(578, 29, 358, 170),
(579, 30, 359, 180),
(580, 31, 360, 190),
(581, 32, 361, 200),
(582, 33, 362, 210),
(583, 34, 363, 300),
(584, 35, 364, 350),
(585, 36, 365, 560),
(586, 37, 366, 504),
(587, 38, 367, 234),
(588, 39, 368, 534),
(589, 40, 369, 124),
(590, 41, 370, 562),
(591, 42, 371, 423),
(592, 43, 372, 300),
(593, 44, 373, 200),
(594, 45, 374, 210),
(595, 46, 375, 300),
(596, 47, 376, 350),
(597, 48, 377, 560),
(598, 49, 378, 504),
(599, 50, 379, 234),
(600, 51, 380, 534),
(601, 52, 381, 124),
(602, 53, 382, 562),
(603, 54, 383, 423),
(604, 55, 384, 300),
(605, 56, 385, 200),
(606, 57, 386, 210),
(607, 58, 387, 300),
(608, 59, 388, 350),
(609, 60, 389, 560),
(610, 61, 390, 504),
(611, 62, 391, 234),
(612, 63, 392, 534),
(613, 64, 393, 124),
(614, 65, 394, 562),
(615, 66, 395, 423),
(616, 67, 396, 300),
(617, 68, 397, 200),
(618, 69, 398, 210),
(619, 70, 399, 300),
(620, 71, 400, 350),
(621, 72, 401, 560),
(622, 73, 402, 504),
(623, 74, 403, 543),
(624, 75, 404, 345),
(625, 76, 405, 666),
(626, 77, 406, 233),
(627, 78, 407, 444),
(628, 79, 408, 243),
(629, 80, 409, 755),
(630, 81, 410, 234),
(631, 82, 411, 444),
(632, 83, 412, 657),
(633, 84, 413, 454),
(634, 85, 414, 123),
(635, 86, 415, 333),
(636, 87, 416, 234),
(637, 88, 417, 560),
(638, 89, 418, 504),
(639, 90, 419, 543),
(640, 91, 420, 345),
(641, 92, 421, 666),
(642, 93, 422, 233),
(643, 94, 423, 444),
(644, 95, 424, 243),
(645, 96, 425, 755),
(646, 97, 426, 234),
(647, 98, 427, 444),
(648, 99, 428, 657),
(649, 100, 429, 454),
(650, 101, 430, 123);



describe `order`;
DROP TABLE IF exists `order`;
CREATE TABLE IF NOT EXISTS `order`(
id_order INT(11) NOT NULL AUTO_INCREMENT,
id_manufacture_of_medicine INT(11) NOT NULL,
id_dealer INT(11) NOT NULL,
id_pharmacy INT(11) NOT NULL,
address text(1000) NOT NULL,
quantity VARCHAR(255) NOT NULL,
PRIMARY KEY (`id_order`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

select * from `order`;
insert into `order`(id_order, id_manufacture_of_medicine, id_dealer, id_pharmacy, address, quantity)
values
(661, 551, 121, 441, '425 Route 31, Macedon NY 14502', 2),
(662, 552, 122, 442, '3222 State Rt 11, Malone NY 12953', 2),
(663, 553, 123, 443, '200 Sunrise Mall, Massapequa NY 11758', 3),
(664, 554, 124, 444, '43 Stephenville St, Massena NY 13662', 4),
(665, 555, 125, 445, '750 Middle Country Road, Middle Island NY 11953', 1),
(666, 556, 126, 446, '470 Route 211 East, Middletown NY 10940', 6),
(667, 557, 127, 447, '3133 E Main St, Mohegan Lake NY 10547', 1),
(668, 558, 128, 448, '288 Larkin, Monroe NY 10950', 2),
(669, 559, 129, 449, '41 Anawana Lake Road, Monticello NY 12701', 1),
(670, 560, 130, 450, '4765 Commercial Drive, New Hartford NY 13413', 1),
(671, 561, 131, 451, '1201 Rt 300, Newburgh NY 12550', 3),
(672, 562, 132, 452, '255 W Main St, Avon CT 6001', 1),
(673, 563, 133, 453, '120 Commercial Parkway, Branford CT 6405', 3),
(674, 564, 134, 454, '1400 Farmington Ave, Bristol CT 6010', 4),
(675, 565, 135, 455, '161 Berlin Road, Cromwell CT 6416', 5),
(676, 566, 136, 456, '67 Newton Rd, Danbury CT 6810', 6),
(677, 567, 137, 457, '656 New Haven Ave, Derby CT 6418', 9),
(678, 568, 138, 458, '69 Prospect Hill Road, East Windsor CT 6088', 9),
(679, 569, 139, 459, '150 Gold Star Hwy, Groton CT 6340', 6),
(680, 570, 140, 460, '900 Boston Post Road, Guilford CT 6437', 1),
(681, 571, 141, 461, '2300 Dixwell Ave, Hamden CT 6514', 1),
(682, 572, 142, 462, '495 Flatbush Ave, Hartford CT 6106', 2),
(683, 573, 143, 463, '180 River Rd, Lisbon CT 6351', 3),
(684, 574, 144, 464, '420 Buckland Hills Dr, Manchester CT 604', 6),
(685, 575, 145, 465, '1365 Boston Post Road, Milford CT 6460', 6),
(686, 576, 146, 466, '1100 New Haven Road, Naugatuck CT 6770', 7),
(687, 577, 147, 467, '315 Foxon Blvd, New Haven CT 6513', 1),
(688, 578, 148, 468, '164 Danbury Rd, New Milford CT 6776', 6),
(689, 579, 149, 469, '3164 Berlin Turnpike, Newington CT 6111', 9),
(690, 580, 150, 470, '474 Boston Post Road, North Windham CT 6256', 6),
(691, 581, 151, 471, '650 Main Ave, Norwalk CT 6851', 1),
(692, 582, 152, 472, '680 Connecticut Avenue, Norwalk CT 6854', 2),
(693, 583, 153, 473, '220 Salem Turnpike, Norwich CT 6360', 3),
(694, 584, 154, 474, '655 Boston Post Rd, Old Saybrook CT 6475', 6),
(695, 585, 155, 475, '625 School Street, Putnam CT 6260', 5),
(696, 586, 156, 476, '80 Town Line Rd, Rocky Hill CT 6067', 6),
(697, 587, 157, 477, '465 Bridgeport Avenue, Shelton CT 6484', 7),
(698, 588, 158, 478, '235 Queen St, Southington CT 6489', 8),
(699, 589, 159, 479, '150 Barnum Avenue Cutoff, Stratford CT 6614', 6),
(700, 590, 160, 480, '970 Torringford Street, Torrington CT 6790', 7),
(701, 591, 161, 481, '844 No Colony Road, Wallingford CT 6492', 6),
(702, 592, 162, 482, '910 Wolcott St, Waterbury CT 6705', 2),
(703, 593, 163, 483, '155 Waterford Parkway No, Waterford CT 6385', 6),
(704, 594, 164, 484, '515 Sawmill Road, West Haven CT 6516', 6),
(705, 595, 165, 485, '2473 Hackworth Road, Adamsville AL 35005', 5),
(706, 596, 166, 486, '630 Coonial Promenade Pkwy, Alabaster AL 35007', 3),
(707, 597, 167, 487, '2643 Hwy 280 West, Alexander City AL 35010', 2),
(708, 598, 168, 488, '540 West Bypass, Andalusia AL 36420', 8),
(709, 599, 169, 489, '5560 Mcclellan Blvd, Anniston AL 36206', 9),
(710, 600, 170, 490, '1450 No Brindlee Mtn Pkwy, Arab AL 35016', 3),
(711, 601, 171, 491, '1011 US Hwy 72 East, Athens AL 35611', 7),
(712, 602, 172, 492, '973 Gilbert Ferry Road Se, Attalla AL 35954', 3),
(713, 603, 173, 493, '1717 South College Street, Auburn AL 36830', 3),
(714, 604, 174, 494, '701 Mcmeans Ave, Bay Minette AL 36507', 3),
(715, 605, 175, 495, '750 Academy Drive, Bessemer AL 35022', 5),
(716, 606, 176, 496, '312 Palisades Blvd, Birmingham AL 35209', 6),
(717, 607, 177, 497, '1600 Montclair Rd, Birmingham AL 35210', 7),
(718, 608, 178, 498, '5919 Trussville Crossings Pkwy, Birmingham AL 35235', 2),
(719, 609, 179, 499, '9248 Parkway East, Birmingham AL 35206', 9),
(720, 610, 180, 500, '1972 Hwy 431, Boaz AL 35957', 8),
(721, 611, 181, 501, '10675 Hwy 5, Brent AL 35034', 8),
(722, 612, 182, 502, '2041 Douglas Avenue, Brewton AL 36426', 2),
(723, 613, 183, 503, '5100 Hwy 31, Calera AL 35040', 8),
(724, 614, 184, 504, '1916 Center Point Rd, Center Point AL 35215', 3),
(725, 615, 185, 505, '1950 W Main St, Centre AL 35960', 3),
(726, 616, 186, 506, '16077 Highway 280, Chelsea AL 35043', 8),
(727, 617, 187, 507, '1415 7Th Street South, Clanton AL 35045', 7),
(728, 618, 188, 508, '626 Olive Street Sw, Cullman AL 35055', 3),
(729, 619, 189, 509, '27520 Hwy 98, Daphne AL 36526', 8),
(730, 620, 190, 510, '2800 Spring Avn SW, Decatur AL 35603', 3),
(731, 621, 191, 511, '969 Us Hwy 80 West, Demopolis AL 36732', 8),
(732, 622, 192, 512, '3300 South Oates Street, Dothan AL 36301', 4),
(733, 623, 193, 513, '4310 Montgomery Hwy, Dothan AL 36303',7), 
(734, 624, 194, 514, '600 Boll Weevil Circle, Enterprise AL 36330', 3),
(735, 625, 195, 515, '176 South Eufaula Avenue, Eufaula AL 36027', 2),
(736, 626, 196, 516, '100 Aaron Aronov Drive, Fairfield AL 35064', 3),
(737, 627, 197, 517, '0040 County Road 48, Fairhope AL 36533', 7),
(738, 628, 198, 518, '186 Hwy 171 North, Fayette AL 35555', 8),
(739, 629, 199, 519, '100 Hough Rd, Florence AL 35630', 9),
(740, 630, 200, 520, '3400 South Mckenzie St, Foley AL 36535', 3),
(741, 631, 201, 521, '3001 Glenn Bldv Sw, Fort Payne AL 35968', 3),
(742, 632, 202, 522, '340 East Meighan Blvd, Gadsden AL 35903', 3),
(743, 633, 203, 523, '890 Odum Road, Gardendale AL 35071', 3),
(744, 634, 204, 524, '1608 W Magnolia Ave, Geneva AL 36340', 3),
(745, 635, 205, 525, '501 Willow Lane, Greenville AL 36037', 5),
(746, 636, 206, 526, '170 Fort Morgan Road, Gulf Shores AL 36542', 3),
(747, 637, 207, 527, '11697 US Hwy 431, Guntersville AL 35976', 7),
(748, 638, 208, 528, '42417 Hwy 195, Haleyville AL 35565', 8),
(749, 639, 209, 529, '1706 Military Street South, Hamilton AL 35570', 3),
(750, 640, 210, 530, '1201 Hwy 31 NW, Hartselle AL 35640', 2),
(751, 641, 211, 531, '209 Lakeshore Parkway, Homewood AL 35209', 1),
(752, 642, 212, 532, '2780 John Hawkins Pkwy, Hoover AL 35244', 3),
(753, 643, 213, 533, '5335 Hwy 280 South, Hoover AL 35242', 3),
(754, 644, 214, 534, '1007 Red Farmer Drive, Hueytown AL 35023', 3),
(755, 645, 215, 535, '2900 S Mem PkwyDrake Ave, Huntsville AL 35801', 3),
(756, 646, 216, 536, '11610 Memorial Pkwy South, Huntsville AL 35803', 3),
(757, 647, 217, 537, '2200 Sparkman Drive, Huntsville AL 35810', 7),
(758, 648, 218, 538, '330 Sutton Rd, Huntsville AL 35763', 8),
(759, 649, 219, 539, '6140A Univ Drive, Huntsville AL 35806', 3),
(760, 650, 220, 540, '4206 N College Ave, Jackson AL 36545', 3);


ALTER TABLE dealer
ADD FOREIGN KEY (id_company) REFERENCES pharmacy(id_company);

ALTER TABLE `order`
ADD CONSTRAINT `order.ib1` FOREIGN KEY (id_manufacture_of_medicine) REFERENCES manufacture_of_medicine(id_manufacture_of_medicine),
ADD CONSTRAINT `order.ib2` FOREIGN KEY (id_dealer) REFERENCES dealer(id_dealer),
ADD CONSTRAINT `order.ib3` FOREIGN KEY (id_pharmacy) REFERENCES pharmacy(id_pharmacy);


ALTER TABLE manufacture_of_medicine
ADD CONSTRAINT manufacture_of_medicine.ib1 FOREIGN KEY (id_medication) REFERENCES medication(id_medication),
ADD CONSTRAINT manufacture_of_medicine.ib2 FOREIGN KEY (id_company) REFERENCES company(id_company);

create index part_of_id11 on company(id_company);
create index part_of_id12 on dealer(id_dealer);
create index part_of_id13 on medication(id_medication);
create index part_of_id14 on pharmacy(id_pharmacy);
create index part_of_id15 on manufacture_of_medicine(id_manufacture_of_medicine);
create index part_of_id16 on `order`(id_order);

#2
select medication.name_of_medication , company.name ,  pharmacy.name_of_pharmacy , `order`.address
from medication, company, pharmacy, `order`
where medication.name_of_medication = 'Кордерон' and company.name = 'Аргус';


#3
select medication.name_of_medication, company.name, `order`.quantity
from medication, company, `order`
where company.name = 'Фарма' and `order`.quantity = 0 and medication.term > '1.05.12';
#another option
select medication.name_of_medication, company.name, `order`.quantity
from medication, company, `order`
WHERE company.name = 'Фарма'
GROUP BY name_of_medication
HAVING medication.duration > '7';

#4
SELECT company.name, MIN(manufacture_of_medicine.ball),  MAX(manufacture_of_medicine.ball), 
SUM(`order`.quantity)
FROM company, manufacture_of_medicine, `order`
group by company.name
having SUM(`order`.quantity) > 100;

#5
select pharmacy.name_of_pharmacy
from `order`
left join pharmacy on `order`.id_pharmacy = pharmacy.id_pharmacy
where company.name = 'Гедеон Рихтер';

#6
SET SQL_SAFE_UPDATES = 0;
UPDATE manufacture_of_medicine, medication
set manufacture_of_medicine.cost = manufacture_of_medicine.cost * 0.8
where manufacture_of_medicine.cost > 3000 and medication.term > '1.03.2015'


