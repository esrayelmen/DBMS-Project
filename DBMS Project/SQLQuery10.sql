CREATE DATABASE EmlakDB;
USE EmlakDB;

CREATE TABLE Kullan�c� (
	Kullan�c�No INT IDENTITY(1,1),
	Ad VARCHAR(50),
	Soyad VARCHAR(50),	
	Telefon VARCHAR(11),
	Kullan�c�Ad� VARCHAR(50),
	�ifre VARCHAR(10),
	PRIMARY KEY(Kullan�c�No));

CREATE TABLE �lan (
	�lanNo INT IDENTITY(1,1),
	KonutDurum VARCHAR(20),
	�l VARCHAR(50),
	�l�e VARCHAR(50),
	Adres VARCHAR(150),
	KonutTipi VARCHAR(50),
	OdaSay�s� VARCHAR(50),
	Fiyat INT,
	Metrekare INT,
	PRIMARY KEY(�lanNo));

CREATE TABLE Kay�t (
	Kullan�c�No INT,
	�lanNo INT,
	PRIMARY KEY(Kullan�c�No,�lanNo));

CREATE TABLE �ller (
	�lNo INT,
	�l VARCHAR(50),
	PRIMARY KEY(�lNo));

INSERT INTO �ller (�lNo, �l) VALUES
(1, 'Adana'),
(2, 'Ad�yaman'),
(3, 'Afyonkarahisar'),
(4, 'A�r�'),
(5, 'Amasya'),
(6, 'Ankara'),
(7, 'Antalya'),
(8, 'Artvin'),
(9, 'Ayd�n'),
(10, 'Bal�kesir'),
(11, 'Bilecik'),
(12, 'Bing�l'),
(13, 'Bitlis'),
(14, 'Bolu'),
(15, 'Burdur'),
(16, 'Bursa'),
(17, '�anakkale'),
(18, '�ank�r�'),
(19, '�orum'),
(20, 'Denizli'),
(21, 'Diyarbak�r'),
(22, 'Edirne'),
(23, 'Elaz��'),
(24, 'Erzincan'),
(25, 'Erzurum'),
(26, 'Eski�ehir'),
(27, 'Gaziantep'),
(28, 'Giresun'),
(29, 'G�m��hane'),
(30, 'Hakkari'),
(31, 'Hatay'),
(32, 'Isparta'),
(33, 'Mersin'),
(34, '�stanbul'),
(35, '�zmir'),
(36, 'Kars'),
(37, 'Kastamonu'),
(38, 'Kayseri'),
(39, 'K�rklareli'),
(40, 'K�r�ehir'),
(41, 'Kocaeli'),
(42, 'Konya'),
(43, 'K�tahya'),
(44, 'Malatya'),
(45, 'Manisa'),
(46, 'Kahramanmara�'),
(47, 'Mardin'),
(48, 'Mu�la'),
(49, 'Mu�'),
(50, 'Nev�ehir'),
(51, 'Ni�de'),
(52, 'Ordu'),
(53, 'Rize'),
(54, 'Sakarya'),
(55, 'Samsun'),
(56, 'Siirt'),
(57, 'Sinop'),
(58, 'Sivas'),
(59, 'Tekirda�'),
(60, 'Tokat'),
(61, 'Trabzon'),
(62, 'Tunceli'),
(63, '�anl�urfa'),
(64, 'U�ak'),
(65, 'Van'),
(66, 'Yozgat'),
(67, 'Zonguldak'),
(68, 'Aksaray'),
(69, 'Bayburt'),
(70, 'Karaman'),
(71, 'K�r�kkale'),
(72, 'Batman'),
(73, '��rnak'),
(74, 'Bart�n'),
(75, 'Ardahan'),
(76, 'I�d�r'),
(77, 'Yalova'),
(78, 'Karab�k'),
(79, 'Kilis'),
(80, 'Osmaniye'),
(81, 'D�zce');

CREATE TABLE �l�eler (
	�l�eNo INT,
	�l�e VARCHAR(50),
	�lNo INT,
	PRIMARY KEY(�l�eNo));

INSERT INTO �l�eler (�l�eNo, �l�e, �lNo) VALUES
(1, 'Seyhan', 1),
(2, 'Ceyhan', 1),
(3, 'Feke', 1),
(4, 'Karaisal�', 1),
(5, 'Karata�', 1),
(6, 'Kozan', 1),
(7, 'Pozant�', 1),
(8, 'Saimbeyli', 1),
(9, 'Tufanbeyli', 1),
(10, 'Yumurtal�k', 1),
(11, 'Y�re�ir', 1),
(12, 'Alada�', 1),
(13, '�mamo�lu', 1),
(14, 'Sar��am', 1),
(15, '�ukurova', 1),
(16, 'Ad�yaman Merkez', 2),
(17, 'Besni', 2),
(18, '�elikhan', 2),
(19, 'Gerger', 2),
(20, 'G�lba�� / Ad�yaman', 2),
(21, 'Kahta', 2),
(22, 'Samsat', 2),
(23, 'Sincik', 2),
(24, 'Tut', 2),
(25, 'Afyonkarahisar Merkez', 3),
(26, 'Bolvadin', 3),
(27, '�ay', 3),
(28, 'Dazk�r�', 3),
(29, 'Dinar', 3),
(30, 'Emirda�', 3),
(31, '�hsaniye', 3),
(32, 'Sand�kl�', 3),
(33, 'Sinanpa�a', 3),
(34, 'Sultanda��', 3),
(35, '�uhut', 3),
(36, 'Ba�mak��', 3),
(37, 'Bayat / Afyonkarahisar', 3),
(38, '�scehisar', 3),
(39, '�obanlar', 3),
(40, 'Evciler', 3),
(41, 'Hocalar', 3),
(42, 'K�z�l�ren', 3),
(43, 'A�r� Merkez', 4),
(44, 'Diyadin', 4),
(45, 'Do�ubayaz�t', 4),
(46, 'Ele�kirt', 4),
(47, 'Hamur', 4),
(48, 'Patnos', 4),
(49, 'Ta�l��ay', 4),
(50, 'Tutak', 4),
(51, 'Amasya Merkez', 5),
(52, 'G�yn�cek', 5),
(53, 'G�m��hac�k�y', 5),
(54, 'Merzifon', 5),
(55, 'Suluova', 5),
(56, 'Ta�ova', 5),
(57, 'Hamam�z�', 5),
(58, 'Alt�nda�', 6),
(59, 'Aya�', 6),
(60, 'Bala', 6),
(61, 'Beypazar�', 6),
(62, '�aml�dere', 6),
(63, '�ankaya', 6),
(64, '�ubuk', 6),
(65, 'Elmada�', 6),
(66, 'G�d�l', 6),
(67, 'Haymana', 6),
(68, 'Kalecik', 6),
(69, 'K�z�lcahamam', 6),
(70, 'Nall�han', 6),
(71, 'Polatl�', 6),
(72, '�erefliko�hisar', 6),
(73, 'Yenimahalle', 6),
(74, 'G�lba�� / Ankara', 6),
(75, 'Ke�i�ren', 6),
(76, 'Mamak', 6),
(77, 'Sincan', 6),
(78, 'Kazan', 6),
(79, 'Akyurt', 6),
(80, 'Etimesgut', 6),
(81, 'Evren', 6),
(82, 'Pursaklar', 6),
(83, 'Akseki', 7),
(84, 'Alanya', 7),
(85, 'Elmal�', 7),
(86, 'Finike', 7),
(87, 'Gazipa�a', 7),
(88, 'G�ndo�mu�', 7),
(89, 'Ka�', 7),
(90, 'Korkuteli', 7),
(91, 'Kumluca', 7),
(92, 'Manavgat', 7),
(93, 'Serik', 7),
(94, 'Demre', 7),
(95, '�brad�', 7),
(96, 'Kemer / Antalya', 7),
(97, 'Aksu / Antalya', 7),
(98, 'D��emealt�', 7),
(99, 'Kepez', 7),
(100, 'Konyaalt�', 7),
(101, 'Muratpa�a', 7),
(102, 'Ardanu�', 8),
(103, 'Arhavi', 8),
(104, 'Artvin Merkez', 8),
(105, 'Bor�ka', 8),
(106, 'Hopa', 8),
(107, '�av�at', 8),
(108, 'Yusufeli', 8),
(109, 'Murgul', 8),
(110, 'Bozdo�an', 9),
(111, '�ine', 9),
(112, 'Germencik', 9),
(113, 'Karacasu', 9),
(114, 'Ko�arl�', 9),
(115, 'Ku�adas�', 9),
(116, 'Kuyucak', 9),
(117, 'Nazilli', 9),
(118, 'S�ke', 9),
(119, 'Sultanhisar', 9),
(120, 'Yenipazar / Ayd�n', 9),
(121, 'Buharkent', 9),
(122, '�ncirliova', 9),
(123, 'Karpuzlu', 9),
(124, 'K��k', 9),
(125, 'Didim', 9),
(126, 'Efeler', 9),
(127, 'Ayval�k', 10),
(128, 'Balya', 10),
(129, 'Band�rma', 10),
(130, 'Bigadi�', 10),
(131, 'Burhaniye', 10),
(132, 'Dursunbey', 10),
(133, 'Edremit / Bal�kesir', 10),
(134, 'Erdek', 10),
(135, 'G�nen / Bal�kesir', 10),
(136, 'Havran', 10),
(137, '�vrindi', 10),
(138, 'Kepsut', 10),
(139, 'Manyas', 10),
(140, 'Sava�tepe', 10),
(141, 'S�nd�rg�', 10),
(142, 'Susurluk', 10),
(143, 'Marmara', 10),
(144, 'G�me�', 10),
(145, 'Alt�eyl�l', 10),
(146, 'Karesi', 10),
(147, 'Bilecik Merkez', 11),
(148, 'Boz�y�k', 11),
(149, 'G�lpazar�', 11),
(150, 'Osmaneli', 11),
(151, 'Pazaryeri', 11),
(152, 'S���t', 11),
(153, 'Yenipazar / Bilecik', 11),
(154, '�nhisar', 11),
(155, 'Bing�l Merkez', 12),
(156, 'Gen�', 12),
(157, 'Karl�ova', 12),
(158, 'Ki��', 12),
(159, 'Solhan', 12),
(160, 'Adakl�', 12),
(161, 'Yayladere', 12),
(162, 'Yedisu', 12),
(163, 'Adilcevaz', 13),
(164, 'Ahlat', 13),
(165, 'Bitlis Merkez', 13),
(166, 'Hizan', 13),
(167, 'Mutki', 13),
(168, 'Tatvan', 13),
(169, 'G�roymak', 13),
(170, 'Bolu Merkez', 14),
(171, 'Gerede', 14),
(172, 'G�yn�k', 14),
(173, 'K�br�sc�k', 14),
(174, 'Mengen', 14),
(175, 'Mudurnu', 14),
(176, 'Seben', 14),
(177, 'D�rtdivan', 14),
(178, 'Yeni�a�a', 14),
(179, 'A�lasun', 15),
(180, 'Bucak', 15),
(181, 'Burdur Merkez', 15),
(182, 'G�lhisar', 15),
(183, 'Tefenni', 15),
(184, 'Ye�ilova', 15),
(185, 'Karamanl�', 15),
(186, 'Kemer / Burdur', 15),
(187, 'Alt�nyayla / Burdur', 15),
(188, '�avd�r', 15),
(189, '�eltik�i', 15),
(190, 'Gemlik', 16),
(191, '�neg�l', 16),
(192, '�znik', 16),
(193, 'Karacabey', 16),
(194, 'Keles', 16),
(195, 'Mudanya', 16),
(196, 'Mustafakemalpa�a', 16),
(197, 'Orhaneli', 16),
(198, 'Orhangazi', 16),
(199, 'Yeni�ehir / Bursa', 16),
(200, 'B�y�korhan', 16),
(201, 'Harmanc�k', 16),
(202, 'Nil�fer', 16),
(203, 'Osmangazi', 16),
(204, 'Y�ld�r�m', 16),
(205, 'G�rsu', 16),
(206, 'Kestel', 16),
(207, 'Ayvac�k / �anakkale', 17),
(208, 'Bayrami�', 17),
(209, 'Biga', 17),
(210, 'Bozcaada', 17),
(211, '�an', 17),
(212, '�anakkale Merkez', 17),
(213, 'Eceabat', 17),
(214, 'Ezine', 17),
(215, 'Gelibolu', 17),
(216, 'G�k�eada', 17),
(217, 'Lapseki', 17),
(218, 'Yenice / �anakkale', 17),
(219, '�ank�r� Merkez', 18),
(220, '�erke�', 18),
(221, 'Eldivan', 18),
(222, 'Ilgaz', 18),
(223, 'Kur�unlu', 18),
(224, 'Orta', 18),
(225, '�aban�z�', 18),
(226, 'Yaprakl�', 18),
(227, 'Atkaracalar', 18),
(228, 'K�z�l�rmak', 18),
(229, 'Bayram�ren', 18),
(230, 'Korgun', 18),
(231, 'Alaca', 19),
(232, 'Bayat / �orum', 19),
(233, '�orum Merkez', 19),
(234, '�skilip', 19),
(235, 'Karg�', 19),
(236, 'Mecit�z�', 19),
(237, 'Ortak�y / �orum', 19),
(238, 'Osmanc�k', 19),
(239, 'Sungurlu', 19),
(240, 'Bo�azkale', 19),
(241, 'U�urluda�', 19),
(242, 'Dodurga', 19),
(243, 'La�in', 19),
(244, 'O�uzlar', 19),
(245, 'Ac�payam', 20),
(246, 'Buldan', 20),
(247, '�al', 20),
(248, '�ameli', 20),
(249, '�ardak', 20),
(250, '�ivril', 20),
(251, 'G�ney', 20),
(252, 'Kale / Denizli', 20),
(253, 'Sarayk�y', 20),
(254, 'Tavas', 20),
(255, 'Babada�', 20),
(256, 'Bekilli', 20),
(257, 'Honaz', 20),
(258, 'Serinhisar', 20),
(259, 'Pamukkale', 20),
(260, 'Baklan', 20),
(261, 'Beya�a�', 20),
(262, 'Bozkurt / Denizli', 20),
(263, 'Merkezefendi', 20),
(264, 'Bismil', 21),
(265, '�ermik', 21),
(266, '��nar', 21),
(267, '��ng��', 21),
(268, 'Dicle', 21),
(269, 'Ergani', 21),
(270, 'Hani', 21),
(271, 'Hazro', 21),
(272, 'Kulp', 21),
(273, 'Lice', 21),
(274, 'Silvan', 21),
(275, 'E�il', 21),
(276, 'Kocak�y', 21),
(277, 'Ba�lar', 21),
(278, 'Kayap�nar', 21),
(279, 'Sur', 21),
(280, 'Yeni�ehir / Diyarbak�r', 21),
(281, 'Edirne Merkez', 22),
(282, 'Enez', 22),
(283, 'Havsa', 22),
(284, '�psala', 22),
(285, 'Ke�an', 22),
(286, 'Lalapa�a', 22),
(287, 'Meri�', 22),
(288, 'Uzunk�pr�', 22),
(289, 'S�lo�lu', 22),
(290, 'A��n', 23),
(291, 'Baskil', 23),
(292, 'Elaz�� Merkez', 23),
(293, 'Karako�an', 23),
(294, 'Keban', 23),
(295, 'Maden', 23),
(296, 'Palu', 23),
(297, 'Sivrice', 23),
(298, 'Ar�cak', 23),
(299, 'Kovanc�lar', 23),
(300, 'Alacakaya', 23),
(301, '�ay�rl�', 24),
(302, 'Erzincan Merkez', 24),
(303, '�li�', 24),
(304, 'Kemah', 24),
(305, 'Kemaliye', 24),
(306, 'Refahiye', 24),
(307, 'Tercan', 24),
(308, '�z�ml�', 24),
(309, 'Otlukbeli', 24),
(310, 'A�kale', 25),
(311, '�at', 25),
(312, 'H�n�s', 25),
(313, 'Horasan', 25),
(314, '�spir', 25),
(315, 'Karayaz�', 25),
(316, 'Narman', 25),
(317, 'Oltu', 25),
(318, 'Olur', 25),
(319, 'Pasinler', 25),
(320, '�enkaya', 25),
(321, 'Tekman', 25),
(322, 'Tortum', 25),
(323, 'Kara�oban', 25),
(324, 'Uzundere', 25),
(325, 'Pazaryolu', 25),
(326, 'Aziziye', 25),
(327, 'K�pr�k�y', 25),
(328, 'Paland�ken', 25),
(329, 'Yakutiye', 25),
(330, '�ifteler', 26),
(331, 'Mahmudiye', 26),
(332, 'Mihal����k', 26),
(333, 'Sar�cakaya', 26),
(334, 'Seyitgazi', 26),
(335, 'Sivrihisar', 26),
(336, 'Alpu', 26),
(337, 'Beylikova', 26),
(338, '�n�n�', 26),
(339, 'G�ny�z�', 26),
(340, 'Han', 26),
(341, 'Mihalgazi', 26),
(342, 'Odunpazar�', 26),
(343, 'Tepeba��', 26),
(344, 'Araban', 27),
(345, '�slahiye', 27),
(346, 'Nizip', 27),
(347, 'O�uzeli', 27),
(348, 'Yavuzeli', 27),
(349, '�ahinbey', 27),
(350, '�ehitkamil', 27),
(351, 'Karkam��', 27),
(352, 'Nurda��', 27),
(353, 'Alucra', 28),
(354, 'Bulancak', 28),
(355, 'Dereli', 28),
(356, 'Espiye', 28),
(357, 'Eynesil', 28),
(358, 'Giresun Merkez', 28),
(359, 'G�rele', 28),
(360, 'Ke�ap', 28),
(361, '�ebinkarahisar', 28),
(362, 'Tirebolu', 28),
(363, 'Piraziz', 28),
(364, 'Ya�l�dere', 28),
(365, '�amoluk', 28),
(366, '�anak��', 28),
(367, 'Do�ankent', 28),
(368, 'G�ce', 28),
(369, 'G�m��hane Merkez', 29),
(370, 'Kelkit', 29),
(371, '�iran', 29),
(372, 'Torul', 29),
(373, 'K�se', 29),
(374, 'K�rt�n', 29),
(375, '�ukurca', 30),
(376, 'Hakkari Merkez', 30),
(377, '�emdinli', 30),
(378, 'Y�ksekova', 30),
(379, 'Alt�n�z�', 31),
(380, 'D�rtyol', 31),
(381, 'Hassa', 31),
(382, '�skenderun', 31),
(383, 'K�r�khan', 31),
(384, 'Reyhanl�', 31),
(385, 'Samanda�', 31),
(386, 'Yaylada��', 31),
(387, 'Erzin', 31),
(388, 'Belen', 31),
(389, 'Kumlu', 31),
(390, 'Antakya', 31),
(391, 'Arsuz', 31),
(392, 'Defne', 31),
(393, 'Payas', 31),
(394, 'Atabey', 32),
(395, 'E�irdir', 32),
(396, 'Gelendost', 32),
(397, 'Isparta Merkez', 32),
(398, 'Ke�iborlu', 32),
(399, 'Senirkent', 32),
(400, 'S�t��ler', 32),
(401, '�arkikaraa�a�', 32),
(402, 'Uluborlu', 32),
(403, 'Yalva�', 32),
(404, 'Aksu / Isparta', 32),
(405, 'G�nen / Isparta', 32),
(406, 'Yeni�arbademli', 32),
(407, 'Anamur', 33),
(408, 'Erdemli', 33),
(409, 'G�lnar', 33),
(410, 'Mut', 33),
(411, 'Silifke', 33),
(412, 'Tarsus', 33),
(413, 'Ayd�nc�k / Mersin', 33),
(414, 'Bozyaz�', 33),
(415, '�aml�yayla', 33),
(416, 'Akdeniz', 33),
(417, 'Mezitli', 33),
(418, 'Toroslar', 33),
(419, 'Yeni�ehir / Mersin', 33),
(420, 'Adalar', 34),
(421, 'Bak�rk�y', 34),
(422, 'Be�ikta�', 34),
(423, 'Beykoz', 34),
(424, 'Beyo�lu', 34),
(425, '�atalca', 34),
(426, 'Ey�p', 34),
(427, 'Fatih', 34),
(428, 'Gaziosmanpa�a', 34),
(429, 'Kad�k�y', 34),
(430, 'Kartal', 34),
(431, 'Sar�yer', 34),
(432, 'Silivri', 34),
(433, '�ile', 34),
(434, '�i�li', 34),
(435, '�sk�dar', 34),
(436, 'Zeytinburnu', 34),
(437, 'B�y�k�ekmece', 34),
(438, 'Ka��thane', 34),
(439, 'K���k�ekmece', 34),
(440, 'Pendik', 34),
(441, '�mraniye', 34),
(442, 'Bayrampa�a', 34),
(443, 'Avc�lar', 34),
(444, 'Ba�c�lar', 34),
(445, 'Bah�elievler', 34),
(446, 'G�ng�ren', 34),
(447, 'Maltepe', 34),
(448, 'Sultanbeyli', 34),
(449, 'Tuzla', 34),
(450, 'Esenler', 34),
(451, 'Arnavutk�y', 34),
(452, 'Ata�ehir', 34),
(453, 'Ba�ak�ehir', 34),
(454, 'Beylikd�z�', 34),
(455, '�ekmek�y', 34),
(456, 'Esenyurt', 34),
(457, 'Sancaktepe', 34),
(458, 'Sultangazi', 34),
(459, 'Alia�a', 35),
(460, 'Bay�nd�r', 35),
(461, 'Bergama', 35),
(462, 'Bornova', 35),
(463, '�e�me', 35),
(464, 'Dikili', 35),
(465, 'Fo�a', 35),
(466, 'Karaburun', 35),
(467, 'Kar��yaka', 35),
(468, 'Kemalpa�a / �zmir', 35),
(469, 'K�n�k', 35),
(470, 'Kiraz', 35),
(471, 'Menemen', 35),
(472, '�demi�', 35),
(473, 'Seferihisar', 35),
(474, 'Sel�uk', 35),
(475, 'Tire', 35),
(476, 'Torbal�', 35),
(477, 'Urla', 35),
(478, 'Beyda�', 35),
(479, 'Buca', 35),
(480, 'Konak', 35),
(481, 'Menderes', 35),
(482, 'Bal�ova', 35),
(483, '�i�li', 35),
(484, 'Gaziemir', 35),
(485, 'Narl�dere', 35),
(486, 'G�zelbah�e', 35),
(487, 'Bayrakl�', 35),
(488, 'Karaba�lar', 35),
(489, 'Arpa�ay', 36),
(490, 'Digor', 36),
(491, 'Ka��zman', 36),
(492, 'Kars Merkez', 36),
(493, 'Sar�kam��', 36),
(494, 'Selim', 36),
(495, 'Susuz', 36),
(496, 'Akyaka', 36),
(497, 'Abana', 37),
(498, 'Ara�', 37),
(499, 'Azdavay', 37),
(500, 'Bozkurt / Kastamonu', 37),
(501, 'Cide', 37),
(502, '�atalzeytin', 37),
(503, 'Daday', 37),
(504, 'Devrekani', 37),
(505, '�nebolu', 37),
(506, 'Kastamonu Merkez', 37),
(507, 'K�re', 37),
(508, 'Ta�k�pr�', 37),
(509, 'Tosya', 37),
(510, '�hsangazi', 37),
(511, 'P�narba�� / Kastamonu', 37),
(512, '�enpazar', 37),
(513, 'A�l�', 37),
(514, 'Do�anyurt', 37),
(515, 'Han�n�', 37),
(516, 'Seydiler', 37),
(517, 'B�nyan', 38),
(518, 'Develi', 38),
(519, 'Felahiye', 38),
(520, '�ncesu', 38),
(521, 'P�narba�� / Kayseri', 38),
(522, 'Sar�o�lan', 38),
(523, 'Sar�z', 38),
(524, 'Tomarza', 38),
(525, 'Yahyal�', 38),
(526, 'Ye�ilhisar', 38),
(527, 'Akk��la', 38),
(528, 'Talas', 38),
(529, 'Kocasinan', 38),
(530, 'Melikgazi', 38),
(531, 'Hac�lar', 38),
(532, '�zvatan', 38),
(533, 'Babaeski', 39),
(534, 'Demirk�y', 39),
(535, 'K�rklareli Merkez', 39),
(536, 'Kof�az', 39),
(537, 'L�leburgaz', 39),
(538, 'Pehlivank�y', 39),
(539, 'P�narhisar', 39),
(540, 'Vize', 39),
(541, '�i�ekda��', 40),
(542, 'Kaman', 40),
(543, 'K�r�ehir Merkez', 40),
(544, 'Mucur', 40),
(545, 'Akp�nar', 40),
(546, 'Ak�akent', 40),
(547, 'Boztepe', 40),
(548, 'Gebze', 41),
(549, 'G�lc�k', 41),
(550, 'Kand�ra', 41),
(551, 'Karam�rsel', 41),
(552, 'K�rfez', 41),
(553, 'Derince', 41),
(554, 'Ba�iskele', 41),
(555, '�ay�rova', 41),
(556, 'Dar�ca', 41),
(557, 'Dilovas�', 41),
(558, '�zmit', 41),
(559, 'Kartepe', 41),
(560, 'Ak�ehir', 42),
(561, 'Bey�ehir', 42),
(562, 'Bozk�r', 42),
(563, 'Cihanbeyli', 42),
(564, '�umra', 42),
(565, 'Do�anhisar', 42),
(566, 'Ere�li / Konya', 42),
(567, 'Hadim', 42),
(568, 'Ilg�n', 42),
(569, 'Kad�nhan�', 42),
(570, 'Karap�nar', 42),
(571, 'Kulu', 42),
(572, 'Saray�n�', 42),
(573, 'Seydi�ehir', 42),
(574, 'Yunak', 42),
(575, 'Ak�ren', 42),
(576, 'Alt�nekin', 42),
(577, 'Derebucak', 42),
(578, 'H�y�k', 42),
(579, 'Karatay', 42),
(580, 'Meram', 42),
(581, 'Sel�uklu', 42),
(582, 'Ta�kent', 42),
(583, 'Ah�rl�', 42),
(584, '�eltik', 42),
(585, 'Derbent', 42),
(586, 'Emirgazi', 42),
(587, 'G�neys�n�r', 42),
(588, 'Halkap�nar', 42),
(589, 'Tuzluk�u', 42),
(590, 'Yal�h�y�k', 42),
(591, 'Alt�nta�', 43),
(592, 'Domani�', 43),
(593, 'Emet', 43),
(594, 'Gediz', 43),
(595, 'K�tahya Merkez', 43),
(596, 'Simav', 43),
(597, 'Tav�anl�', 43),
(598, 'Aslanapa', 43),
(599, 'Dumlup�nar', 43),
(600, 'Hisarc�k', 43),
(601, '�aphane', 43),
(602, '�avdarhisar', 43),
(603, 'Pazarlar', 43),
(604, 'Ak�ada�', 44),
(605, 'Arapgir', 44),
(606, 'Arguvan', 44),
(607, 'Darende', 44),
(608, 'Do�an�ehir', 44),
(609, 'Hekimhan', 44),
(610, 'P�t�rge', 44),
(611, 'Ye�ilyurt / Malatya', 44),
(612, 'Battalgazi', 44),
(613, 'Do�anyol', 44),
(614, 'Kale / Malatya', 44),
(615, 'Kuluncak', 44),
(616, 'Yaz�han', 44),
(617, 'Akhisar', 45),
(618, 'Ala�ehir', 45),
(619, 'Demirci', 45),
(620, 'G�rdes', 45),
(621, 'K�rka�a�', 45),
(622, 'Kula', 45),
(623, 'Salihli', 45),
(624, 'Sar�g�l', 45),
(625, 'Saruhanl�', 45),
(626, 'Selendi', 45),
(627, 'Soma', 45),
(628, 'Turgutlu', 45),
(629, 'Ahmetli', 45),
(630, 'G�lmarmara', 45),
(631, 'K�pr�ba�� / Manisa', 45),
(632, '�ehzadeler', 45),
(633, 'Yunusemre', 45),
(634, 'Af�in', 46),
(635, 'And�r�n', 46),
(636, 'Elbistan', 46),
(637, 'G�ksun', 46),
(638, 'Pazarc�k', 46),
(639, 'T�rko�lu', 46),
(640, '�a�layancerit', 46),
(641, 'Ekin�z�', 46),
(642, 'Nurhak', 46),
(643, 'Dulkadiro�lu', 46),
(644, 'Oniki�ubat', 46),
(645, 'Derik', 47),
(646, 'K�z�ltepe', 47),
(647, 'Maz�da��', 47),
(648, 'Midyat', 47),
(649, 'Nusaybin', 47),
(650, '�merli', 47),
(651, 'Savur', 47),
(652, 'Darge�it', 47),
(653, 'Ye�illi', 47),
(654, 'Artuklu', 47),
(655, 'Bodrum', 48),
(656, 'Dat�a', 48),
(657, 'Fethiye', 48),
(658, 'K�yce�iz', 48),
(659, 'Marmaris', 48),
(660, 'Milas', 48),
(661, 'Ula', 48),
(662, 'Yata�an', 48),
(663, 'Dalaman', 48),
(664, 'Ortaca', 48),
(665, 'Kavakl�dere', 48),
(666, 'Mente�e', 48),
(667, 'Seydikemer', 48),
(668, 'Bulan�k', 49),
(669, 'Malazgirt', 49),
(670, 'Mu� Merkez', 49),
(671, 'Varto', 49),
(672, 'Hask�y', 49),
(673, 'Korkut', 49),
(674, 'Avanos', 50),
(675, 'Derinkuyu', 50),
(676, 'G�l�ehir', 50),
(677, 'Hac�bekta�', 50),
(678, 'Kozakl�', 50),
(679, 'Nev�ehir Merkez', 50),
(680, '�rg�p', 50),
(681, 'Ac�g�l', 50),
(682, 'Bor', 51),
(683, '�amard�', 51),
(684, 'Ni�de Merkez', 51),
(685, 'Uluk��la', 51),
(686, 'Altunhisar', 51),
(687, '�iftlik', 51),
(688, 'Akku�', 52),
(689, 'Aybast�', 52),
(690, 'Fatsa', 52),
(691, 'G�lk�y', 52),
(692, 'Korgan', 52),
(693, 'Kumru', 52),
(694, 'Mesudiye', 52),
(695, 'Per�embe', 52),
(696, 'Ulubey / Ordu', 52),
(697, '�nye', 52),
(698, 'G�lyal�', 52),
(699, 'G�rgentepe', 52),
(700, '�ama�', 52),
(701, '�atalp�nar', 52),
(702, '�ayba��', 52),
(703, '�kizce', 52),
(704, 'Kabad�z', 52),
(705, 'Kabata�', 52),
(706, 'Alt�nordu', 52),
(707, 'Arde�en', 53),
(708, '�aml�hem�in', 53),
(709, '�ayeli', 53),
(710, 'F�nd�kl�', 53),
(711, '�kizdere', 53),
(712, 'Kalkandere', 53),
(713, 'Pazar / Rize', 53),
(714, 'Rize Merkez', 53),
(715, 'G�neysu', 53),
(716, 'Derepazar�', 53),
(717, 'Hem�in', 53),
(718, '�yidere', 53),
(719, 'Akyaz�', 54),
(720, 'Geyve', 54),
(721, 'Hendek', 54),
(722, 'Karasu', 54),
(723, 'Kaynarca', 54),
(724, 'Sapanca', 54),
(725, 'Kocaali', 54),
(726, 'Pamukova', 54),
(727, 'Tarakl�', 54),
(728, 'Ferizli', 54),
(729, 'Karap�r�ek', 54),
(730, 'S���tl�', 54),
(731, 'Adapazar�', 54),
(732, 'Arifiye', 54),
(733, 'Erenler', 54),
(734, 'Serdivan', 54),
(735, 'Ala�am', 55),
(736, 'Bafra', 55),
(737, '�ar�amba', 55),
(738, 'Havza', 55),
(739, 'Kavak', 55),
(740, 'Ladik', 55),
(741, 'Terme', 55),
(742, 'Vezirk�pr�', 55),
(743, 'Asarc�k', 55),
(744, '19 May�s', 55),
(745, 'Sal�pazar�', 55),
(746, 'Tekkek�y', 55),
(747, 'Ayvac�k / Samsun', 55),
(748, 'Yakakent', 55),
(749, 'Atakum', 55),
(750, 'Canik', 55),
(751, '�lkad�m', 55),
(752, 'Baykan', 56),
(753, 'Eruh', 56),
(754, 'Kurtalan', 56),
(755, 'Pervari', 56),
(756, 'Siirt Merkez', 56),
(757, '�irvan', 56),
(758, 'Tillo', 56),
(759, 'Ayanc�k', 57),
(760, 'Boyabat', 57),
(761, 'Dura�an', 57),
(762, 'Erfelek', 57),
(763, 'Gerze', 57),
(764, 'Sinop Merkez', 57),
(765, 'T�rkeli', 57),
(766, 'Dikmen', 57),
(767, 'Sarayd�z�', 57),
(768, 'Divri�i', 58),
(769, 'Gemerek', 58),
(770, 'G�r�n', 58),
(771, 'Hafik', 58),
(772, '�mranl�', 58),
(773, 'Kangal', 58),
(774, 'Koyulhisar', 58),
(775, 'Sivas Merkez', 58),
(776, 'Su�ehri', 58),
(777, '�ark��la', 58),
(778, 'Y�ld�zeli', 58),
(779, 'Zara', 58),
(780, 'Ak�nc�lar', 58),
(781, 'Alt�nyayla / Sivas', 58),
(782, 'Do�an�ar', 58),
(783, 'G�lova', 58),
(784, 'Ula�', 58),
(785, '�erkezk�y', 59),
(786, '�orlu', 59),
(787, 'Hayrabolu', 59),
(788, 'Malkara', 59),
(789, 'Muratl�', 59),
(790, 'Saray / Tekirda�', 59),
(791, '�ark�y', 59),
(792, 'Marmaraere�lisi', 59),
(793, 'Ergene', 59),
(794, 'Kapakl�', 59),
(795, 'S�leymanpa�a', 59),
(796, 'Almus', 60),
(797, 'Artova', 60),
(798, 'Erbaa', 60),
(799, 'Niksar', 60),
(800, 'Re�adiye', 60),
(801, 'Tokat Merkez', 60),
(802, 'Turhal', 60),
(803, 'Zile', 60),
(804, 'Pazar / Tokat', 60),
(805, 'Ye�ilyurt / Tokat', 60),
(806, 'Ba��iftlik', 60),
(807, 'Sulusaray', 60),
(808, 'Ak�aabat', 61),
(809, 'Arakl�', 61),
(810, 'Arsin', 61),
(811, '�aykara', 61),
(812, 'Ma�ka', 61),
(813, 'Of', 61),
(814, 'S�rmene', 61),
(815, 'Tonya', 61),
(816, 'Vakf�kebir', 61),
(817, 'Yomra', 61),
(818, 'Be�ikd�z�', 61),
(819, '�alpazar�', 61),
(820, '�ar��ba��', 61),
(821, 'Dernekpazar�', 61),
(822, 'D�zk�y', 61),
(823, 'Hayrat', 61),
(824, 'K�pr�ba�� / Trabzon', 61),
(825, 'Ortahisar', 61),
(826, '�emi�gezek', 62),
(827, 'Hozat', 62),
(828, 'Mazgirt', 62),
(829, 'Naz�miye', 62),
(830, 'Ovac�k / Tunceli', 62),
(831, 'Pertek', 62),
(832, 'P�l�m�r', 62),
(833, 'Tunceli Merkez', 62),
(834, 'Ak�akale', 63),
(835, 'Birecik', 63),
(836, 'Bozova', 63),
(837, 'Ceylanp�nar', 63),
(838, 'Halfeti', 63),
(839, 'Hilvan', 63),
(840, 'Siverek', 63),
(841, 'Suru�', 63),
(842, 'Viran�ehir', 63),
(843, 'Harran', 63),
(844, 'Eyy�biye', 63),
(845, 'Haliliye', 63),
(846, 'Karak�pr�', 63),
(847, 'Banaz', 64),
(848, 'E�me', 64),
(849, 'Karahall�', 64),
(850, 'Sivasl�', 64),
(851, 'Ulubey / U�ak', 64),
(852, 'U�ak Merkez', 64),
(853, 'Ba�kale', 65),
(854, '�atak', 65),
(855, 'Erci�', 65),
(856, 'Geva�', 65),
(857, 'G�rp�nar', 65),
(858, 'Muradiye', 65),
(859, '�zalp', 65),
(860, 'Bah�esaray', 65),
(861, '�ald�ran', 65),
(862, 'Edremit / Van', 65),
(863, 'Saray / Van', 65),
(864, '�pekyolu', 65),
(865, 'Tu�ba', 65),
(866, 'Akda�madeni', 66),
(867, 'Bo�azl�yan', 66),
(868, '�ay�ralan', 66),
(869, '�ekerek', 66),
(870, 'Sar�kaya', 66),
(871, 'Sorgun', 66),
(872, '�efaatli', 66),
(873, 'Yerk�y', 66),
(874, 'Yozgat Merkez', 66),
(875, 'Ayd�nc�k / Yozgat', 66),
(876, '�and�r', 66),
(877, 'Kad��ehri', 66),
(878, 'Saraykent', 66),
(879, 'Yenifak�l�', 66),
(880, '�aycuma', 67),
(881, 'Devrek', 67),
(882, 'Ere�li / Zonguldak', 67),
(883, 'Zonguldak Merkez', 67),
(884, 'Alapl�', 67),
(885, 'G�k�ebey', 67),
(886, 'Kilimli', 67),
(887, 'Kozlu', 67),
(888, 'Aksaray Merkez', 68),
(889, 'Ortak�y / Aksaray', 68),
(890, 'A�a��ren', 68),
(891, 'G�zelyurt', 68),
(892, 'Sar�yah�i', 68),
(893, 'Eskil', 68),
(894, 'G�la�a�', 68),
(895, 'Bayburt Merkez', 69),
(896, 'Ayd�ntepe', 69),
(897, 'Demir�z�', 69),
(898, 'Ermenek', 70),
(899, 'Karaman Merkez', 70),
(900, 'Ayranc�', 70),
(901, 'Kaz�mkarabekir', 70),
(902, 'Ba�yayla', 70),
(903, 'Sar�veliler', 70),
(904, 'Delice', 71),
(905, 'Keskin', 71),
(906, 'K�r�kkale Merkez', 71),
(907, 'Sulakyurt', 71),
(908, 'Bah�ili', 71),
(909, 'Bal��eyh', 71),
(910, '�elebi', 71),
(911, 'Karake�ili', 71),
(912, 'Yah�ihan', 71),
(913, 'Batman Merkez', 72),
(914, 'Be�iri', 72),
(915, 'Gerc��', 72),
(916, 'Kozluk', 72),
(917, 'Sason', 72),
(918, 'Hasankeyf', 72),
(919, 'Beyt���ebap', 73),
(920, 'Cizre', 73),
(921, '�dil', 73),
(922, 'Silopi', 73),
(923, '��rnak Merkez', 73),
(924, 'Uludere', 73),
(925, 'G��l�konak', 73),
(926, 'Bart�n Merkez', 74),
(927, 'Kuruca�ile', 74),
(928, 'Ulus', 74),
(929, 'Amasra', 74),
(930, 'Ardahan Merkez', 75),
(931, '��ld�r', 75),
(932, 'G�le', 75),
(933, 'Hanak', 75),
(934, 'Posof', 75),
(935, 'Damal', 75),
(936, 'Aral�k', 76),
(937, 'I�d�r Merkez', 76),
(938, 'Tuzluca', 76),
(939, 'Karakoyunlu', 76),
(940, 'Yalova Merkez', 77),
(941, 'Alt�nova', 77),
(942, 'Armutlu', 77),
(943, '��narc�k', 77),
(944, '�iftlikk�y', 77),
(945, 'Termal', 77),
(946, 'Eflani', 78),
(947, 'Eskipazar', 78),
(948, 'Karab�k Merkez', 78),
(949, 'Ovac�k / Karab�k', 78),
(950, 'Safranbolu', 78),
(951, 'Yenice / Karab�k', 78),
(952, 'Kilis Merkez', 79),
(953, 'Elbeyli', 79),
(954, 'Musabeyli', 79),
(955, 'Polateli', 79),
(956, 'Bah�e', 80),
(957, 'Kadirli', 80),
(958, 'Osmaniye Merkez', 80),
(959, 'D�zi�i', 80),
(960, 'Hasanbeyli', 80),
(961, 'Sumbas', 80),
(962, 'Toprakkale', 80),
(963, 'Ak�akoca', 81),
(964, 'D�zce Merkez', 81),
(965, 'Y���lca', 81),
(966, 'Cumayeri', 81),
(967, 'G�lyaka', 81),
(968, '�ilimli', 81),
(969, 'G�m��ova', 81),
(970, 'Kayna�l�', 81);