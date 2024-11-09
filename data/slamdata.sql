-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 09 nov. 2024 à 13:12
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `slamdata`
--

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `achievements`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `achievements` (
`slam_ref` varchar(10)
,`Total_Wins` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `Code` varchar(3) NOT NULL,
  `Label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`Code`, `Label`) VALUES
('ABW', 'Aruba'),
('AFG', 'Afghanistan'),
('AGO', 'Angola'),
('AIA', 'Anguilla'),
('ALA', 'Aland Islands'),
('ALB', 'Albania'),
('AND', 'Andorra'),
('ARE', 'United Arab Emirates'),
('ARG', 'Argentina'),
('ARM', 'Armenia'),
('ASM', 'American Samoa'),
('ATA', 'Antarctica'),
('ATF', 'French Southern Territories'),
('ATG', 'Antigua and Barbuda'),
('AUS', 'Australia'),
('AUT', 'Austria'),
('AZE', 'Azerbaijan'),
('BDI', 'Burundi'),
('BEL', 'Belgium'),
('BEN', 'Benin'),
('BES', 'Bonaire, Sint Eustatius and Saba'),
('BFA', 'Burkina Faso'),
('BGD', 'Bangladesh'),
('BGR', 'Bulgaria'),
('BHR', 'Bahrain'),
('BHS', 'Bahamas'),
('BIH', 'Bosnia and Herzegovina'),
('BLM', 'Saint Barthélemy'),
('BLR', 'Belarus'),
('BLZ', 'Belize'),
('BMU', 'Bermuda'),
('BOL', 'Bolivia'),
('BRA', 'Brazil'),
('BRB', 'Barbados'),
('BRN', 'Brunei Darussalam'),
('BTN', 'Bhutan'),
('BVT', 'Bouvet Island'),
('BWA', 'Botswana'),
('CAF', 'Central African Republic'),
('CAN', 'Canada'),
('CCK', 'Cocos (Keeling) Islands'),
('CHE', 'Switzerland'),
('CHL', 'Chile'),
('CHN', 'China'),
('CIV', 'Cote d\'Ivoire'),
('CMR', 'Cameroon'),
('COD', 'Congo, The Democratic Republic of '),
('COG', 'Congo'),
('COK', 'Cook Islands'),
('COL', 'Colombia'),
('COM', 'Comoros'),
('CPV', 'Cape Verde'),
('CRI', 'Costa Rica'),
('CUB', 'Cuba'),
('CUW', 'Curaçao'),
('CXR', 'Christmas Island'),
('CYM', 'Cayman Islands'),
('CYP', 'Cyprus'),
('CZE', 'Czechia'),
('DEU', 'Germany'),
('DJI', 'Djibouti'),
('DMA', 'Dominica'),
('DNK', 'Denmark'),
('DOM', 'Dominican Republic'),
('DZA', 'Algeria'),
('ECU', 'Ecuador'),
('EGY', 'Egypt'),
('ERI', 'Eritrea'),
('ESH', 'Western Sahara'),
('ESP', 'Spain'),
('EST', 'Estonia'),
('ETH', 'Ethiopia'),
('FIN', 'Finland'),
('FJI', 'Fiji'),
('FLK', 'Falkland Islands (Malvinas)'),
('FRA', 'France'),
('FRO', 'Faroe Islands'),
('FSM', 'Micronesia, Federated States of'),
('GAB', 'Gabon'),
('GBR', 'United Kingdom'),
('GEO', 'Georgia'),
('GGY', 'Guernsey'),
('GHA', 'Ghana'),
('GIB', 'Gibraltar'),
('GIN', 'Guinea'),
('GLP', 'Guadeloupe'),
('GMB', 'Gambia'),
('GNB', 'Guinea-Bissau'),
('GNQ', 'Equatorial Guinea'),
('GRC', 'Greece'),
('GRD', 'Grenada'),
('GRL', 'Greenland'),
('GTM', 'Guatemala'),
('GUF', 'French Guiana'),
('GUM', 'Guam'),
('GUY', 'Guyana'),
('HKG', 'Hong Kong'),
('HMD', 'Heard and Mc Donald Islands'),
('HND', 'Honduras'),
('HRV', 'Croatia'),
('HTI', 'Haiti'),
('HUN', 'Hungary'),
('IDN', 'Indonesia'),
('IMN', 'Isle of Man'),
('IND', 'India'),
('IOT', 'British Indian Ocean Territory'),
('IRL', 'Ireland'),
('IRN', 'Iran, Islamic Republic of'),
('IRQ', 'Iraq'),
('ISL', 'Iceland'),
('ISR', 'Israel'),
('ITA', 'Italy'),
('JAM', 'Jamaica'),
('JEY', 'Jersey'),
('JOR', 'Jordan'),
('JPN', 'Japan'),
('KAZ', 'Kazakstan'),
('KEN', 'Kenya'),
('KGZ', 'Kyrgyzstan'),
('KHM', 'Cambodia'),
('KIR', 'Kiribati'),
('KNA', 'Saint Kitts & Nevis'),
('KOR', 'Korea, Republic of'),
('KWT', 'Kuwait'),
('LAO', 'Lao, People\'s Democratic Republic'),
('LBN', 'Lebanon'),
('LBR', 'Liberia'),
('LBY', 'Libyan Arab Jamahiriya'),
('LCA', 'Saint Lucia'),
('LIE', 'Liechtenstein'),
('LKA', 'Sri Lanka'),
('LSO', 'Lesotho'),
('LTU', 'Lithuania'),
('LUX', 'Luxembourg'),
('LVA', 'Latvia'),
('MAC', 'Macao'),
('MAF', 'Saint Martin'),
('MAR', 'Morocco'),
('MCO', 'Monaco'),
('MDA', 'Moldova, Republic of'),
('MDG', 'Madagascar'),
('MDV', 'Maldives'),
('MEX', 'Mexico'),
('MHL', 'Marshall Islands'),
('MKD', 'Macedonia, The Former Yugoslav Republic Of'),
('MLI', 'Mali'),
('MLT', 'Malta'),
('MMR', 'Myanmar'),
('MNE', 'Montenegro'),
('MNG', 'Mongolia'),
('MNP', 'Northern Mariana Islands'),
('MOZ', 'Mozambique'),
('MRT', 'Mauritania'),
('MSR', 'Montserrat'),
('MTQ', 'Martinique'),
('MUS', 'Mauritius'),
('MWI', 'Malawi'),
('MYS', 'Malaysia'),
('MYT', 'Mayotte'),
('NAM', 'Namibia'),
('NCL', 'New Caledonia'),
('NER', 'Niger'),
('NFK', 'Norfolk Island'),
('NGA', 'Nigeria'),
('NIC', 'Nicaragua'),
('NIU', 'Niue'),
('NLD', 'Netherlands'),
('NOR', 'Norway'),
('NPL', 'Nepal'),
('NRU', 'Nauru'),
('NZL', 'New Zealand'),
('OMN', 'Oman'),
('PAK', 'Pakistan'),
('PAN', 'Panama'),
('PCN', 'Pitcairn'),
('PER', 'Peru'),
('PHL', 'Philippines'),
('PLW', 'Palau'),
('PNG', 'Papua New Guinea'),
('POL', 'Poland'),
('PRI', 'Puerto Rico'),
('PRK', 'Korea, Democratic People\'s Republic of'),
('PRT', 'Portugal'),
('PRY', 'Paraguay'),
('PSE', 'Palestinian Territory, Occupied'),
('PYF', 'French Polynesia'),
('QAT', 'Qatar'),
('REU', 'Reunion'),
('ROU', 'Romania'),
('RUS', 'Russia Federation'),
('RWA', 'Rwanda'),
('SAU', 'Saudi Arabia'),
('SDN', 'Sudan'),
('SEN', 'Senegal'),
('SGP', 'Singapore'),
('SGS', 'South Georgia & The South Sandwich Islands'),
('SHN', 'Saint Helena'),
('SJM', 'Svalbard and Jan Mayen'),
('SLB', 'Solomon Islands'),
('SLE', 'Sierra Leone'),
('SLV', 'El Salvador'),
('SMR', 'San Marino'),
('SOM', 'Somalia'),
('SPM', 'Saint Pierre and Miquelon'),
('SRB', 'Republic of Serbia'),
('SSD', 'South Sudan'),
('STP', 'Sao Tome and Principe'),
('SUR', 'Suriname'),
('SVK', 'Slovakia'),
('SVN', 'Slovenia'),
('SWE', 'Sweden'),
('SWZ', 'Swaziland'),
('SXM', 'Sint Maarten'),
('SYC', 'Seychelles'),
('SYR', 'Syrian Arab Republic'),
('TCA', 'Turks and Caicos Islands'),
('TCD', 'Chad'),
('TGO', 'Togo'),
('THA', 'Thailand'),
('TJK', 'Tajikistan'),
('TKL', 'Tokelau'),
('TKM', 'Turkmenistan'),
('TLS', 'Timor-Leste'),
('TON', 'Tonga'),
('TTO', 'Trinidad and Tobago'),
('TUN', 'Tunisia'),
('TUR', 'Turkey'),
('TUV', 'Tuvalu'),
('TWN', 'Taiwan, Province of China'),
('TZA', 'Tanzania, United Republic of'),
('UGA', 'Uganda'),
('UKR', 'Ukraine'),
('UMI', 'United States Minor Outlying Islands'),
('URS', 'URSS'),
('URY', 'Uruguay'),
('USA', 'United States'),
('UZB', 'Uzbekistan'),
('VAT', 'Holy See (Vatican City State)'),
('VCT', 'Saint Vincent and the Grenadines'),
('VEN', 'Venezuela'),
('VGB', 'Virgin Islands, British'),
('VIR', 'Virgin Islands, U.S.'),
('VNM', 'Vietnam'),
('VUT', 'Vanuatu'),
('WLF', 'Wallis and Futuna'),
('WSM', 'Samoa'),
('XKX', 'Kosovo (temporary code)'),
('XTX', 'Turkish Rep N Cyprus (temporary code)'),
('YEM', 'Yemen'),
('ZAF', 'South Africa'),
('ZMB', 'Zambia'),
('ZWE', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `Id` int(10) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `ref_nationality` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`Id`, `last_name`, `first_name`, `ref_nationality`) VALUES
(1, 'Laver', 'Rod', 'AUS'),
(2, 'Gimeno', 'Andrés', 'ESP'),
(3, 'Ashe', 'Arthur', 'USA'),
(4, 'Crealy', 'Dick', 'AUS'),
(5, 'Rosewall', 'Ken', 'AUS'),
(6, 'Anderson', 'Malcolm', 'AUS'),
(7, 'Newcombe', 'John', 'AUS'),
(8, 'Parun', 'Onny', 'NZL'),
(9, 'Connors', 'Jimmy', 'USA'),
(10, 'Dent', 'Phil', 'AUS'),
(11, 'Edmondson', 'Mark', 'AUS'),
(12, 'Tanner', 'Roscoe', 'USA'),
(13, 'Vilas', 'Guillermo', 'ARG'),
(14, 'Gerulaitis', 'Vitas', 'USA'),
(15, 'Lloyd', 'John', 'GBR'),
(16, 'Marks', 'John', 'AUS'),
(17, 'Sadri', 'John', 'USA'),
(18, 'Teacher', 'Brian', 'USA'),
(19, 'Warwick', 'Kim', 'AUS'),
(20, 'Kriek', 'Johan', 'ZAF'),
(21, 'Denton', 'Steve', 'USA'),
(22, 'Wilander', 'Mats', 'SWE'),
(23, 'Lendl', 'Ivan', 'CZE'),
(24, 'Curren', 'Kevin', 'ZAF'),
(25, 'Edberg', 'Stefan', 'SWE'),
(26, 'Cash', 'Pat', 'AUS'),
(27, 'Mečíř', 'Miloslav', 'CZE'),
(28, 'Becker', 'Boris', 'DEU'),
(29, 'Courier', 'Jim', 'USA'),
(30, 'Sampras', 'Pete', 'USA'),
(31, 'Martin', 'Todd', 'USA'),
(32, 'Agassi', 'Andre', 'USA'),
(33, 'Chang', 'Michael', 'USA'),
(34, 'Moyá', 'Carlos', 'ESP'),
(35, 'Korda', 'Petr', 'CZE'),
(36, 'Ríos', 'Marcelo', 'CHL'),
(37, 'Kafelnikov', 'Yevgeny', 'RUS'),
(38, 'Enqvist', 'Thomas', 'SWE'),
(39, 'Clément', 'Arnaud', 'FRA'),
(40, 'Johansson', 'Thomas', 'SWE'),
(41, 'Safin', 'Marat', 'RUS'),
(42, 'Schüttler', 'Rainer', 'DEU'),
(43, 'Federer', 'Roger', 'SWE'),
(44, 'Hewitt', 'Lleyton', 'AUS'),
(45, 'Baghdatis', 'Marcos', 'CYP'),
(46, 'González', 'Fernando', 'CHL'),
(47, 'Djokovic', 'Novak', 'SRB'),
(48, 'Tsonga', 'Jo-Wilfried', 'FRA'),
(49, 'Nadal', 'Rafael', 'ESP'),
(50, 'Murray', 'Andy', 'GBR'),
(51, 'Wawrinka', 'Stan', 'SWE'),
(52, 'Cilic', 'Marin', 'HRV'),
(53, 'Thiem', 'Dominic', 'AUT'),
(54, 'Medvedev', 'Daniil', 'RUS'),
(55, 'Kodeš', 'Jan', 'CZE'),
(56, 'Franulović', 'Željko', 'SRB'),
(57, 'Năstase', 'Ilie', 'ROU'),
(58, 'Proisy', 'Patrick', 'FRA'),
(59, 'Pilić', 'Nikola', 'SRB'),
(60, 'Borg', 'Björn', 'SWE'),
(61, 'Orantes', 'Manuel', 'ESP'),
(62, 'Panatta', 'Adriano', 'ITA'),
(63, 'Solomon', 'Harold', 'USA'),
(64, 'Gottfried', 'Brian', 'USA'),
(65, 'Pecci', 'Víctor', 'PRY'),
(66, 'Noah', 'Yannick', 'FRA'),
(67, 'McEnroe', 'John', 'USA'),
(68, 'Pernfors', 'Mikael', 'SWE'),
(69, 'Leconte', 'Henri', 'FRA'),
(70, 'Gómez', 'Andrés', 'ECU'),
(71, 'Bruguera', 'Sergi', 'ESP'),
(72, 'Berasategui', 'Alberto', 'ESP'),
(73, 'Muster', 'Thomas', 'AUT'),
(74, 'Stich', 'Michael', 'DEU'),
(75, 'Kuerten', 'Gustavo', 'BRA'),
(76, 'Corretja', 'Àlex', 'ESP'),
(77, 'Medvedev', 'Andrei', 'UKR'),
(78, 'Norman', 'Magnus', 'SWE'),
(79, 'Costa', 'Albert', 'ESP'),
(80, 'Carlos', 'Juan', 'ESP'),
(81, 'Verkerk', 'Martin', 'NLD'),
(82, 'Gaudio', 'Gastón', 'ARG'),
(83, 'Coria', 'Guillermo', 'ARG'),
(84, 'Puerta', 'Mariano', 'ARG'),
(85, 'Söderling', 'Robin', 'SWE'),
(86, 'Ferrer', 'David', 'ESP'),
(87, 'Roche', 'Tony', 'AUS'),
(88, 'Smith', 'Stan', 'USA'),
(89, 'Metreveli', 'Alex', 'URS'),
(90, 'Lewis', 'Chris', 'NZL'),
(91, 'Ivanišević', 'Goran', 'HRV'),
(92, 'Krajicek', 'Richard', 'NLD'),
(93, 'Washington', 'MaliVai', 'USA'),
(94, 'Pioline', 'Cédric', 'FRA'),
(95, 'Rafter', 'Patrick', 'AUS'),
(96, 'Nalbandian', 'David', 'ARG'),
(97, 'Philippoussis', 'Mark', 'AUS'),
(98, 'Roddick', 'Andy', 'USA'),
(99, 'Berdych', 'Tomáš', 'CZE'),
(100, 'Raonic', 'Milos', 'CAN'),
(101, 'Čilić', 'Marin', 'HRV'),
(102, 'Anderson', 'Kevin', 'ZAF'),
(103, 'Okker', 'Tom', 'NLD'),
(104, 'Rusedski', 'Greg', 'GBR'),
(105, 'Martin', 'Juan', 'ARG'),
(106, 'Nishikori', 'Kei', 'JPN'),
(107, 'Zverev', 'Alexander', 'DEU'),
(108, 'Sinner', 'Jannik', 'ITA'),
(109, 'Alcaraz', 'Carlos', 'ESP'),
(111, 'Tsitsipás', 'Stéfanos', 'GRC'),
(112, 'Berretiini', 'Matteo', 'ITA'),
(113, 'Ruud', 'Casper', 'NOR'),
(114, 'Kyrgios', 'Nick', 'AUS'),
(117, 'Fritz', 'Taylor', 'USA');

-- --------------------------------------------------------

--
-- Structure de la table `slam`
--

CREATE TABLE `slam` (
  `Code` varchar(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Surface` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `slam`
--

INSERT INTO `slam` (`Code`, `Name`, `Location`, `Surface`) VALUES
('AO', 'Australian Open', 'Melbourne, Australia', 'Hard'),
('RG', 'Roland-Garros', 'Paris, France', 'Clay'),
('USO', 'US Open', 'New-York, US', 'Hard'),
('WIM', 'Wimbledon', 'London, England', 'Grass');

-- --------------------------------------------------------

--
-- Structure de la table `tournament`
--

CREATE TABLE `tournament` (
  `slam_year` varchar(8) NOT NULL,
  `slam_ref` varchar(10) NOT NULL,
  `Champion` int(10) NOT NULL,
  `Seed_Champion` int(11) NOT NULL,
  `Runner_up` int(10) NOT NULL,
  `Seed_Runner_up` int(11) NOT NULL,
  `Final_Score` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tournament`
--

INSERT INTO `tournament` (`slam_year`, `slam_ref`, `Champion`, `Seed_Champion`, `Runner_up`, `Seed_Runner_up`, `Final_Score`) VALUES
('1968', 'RG', 5, 2, 1, 1, '6–3, 6–1, 2–6, 6–2'),
('1968', 'USO', 3, 5, 103, 8, '14–12, 5–7, 6–3, 3–6, 6–3'),
('1968', 'WIM', 1, 1, 87, 15, '6–3, 6–4, 6–2'),
('1969', 'AO', 1, 1, 2, 9, '6–3, 6–4, 7–5'),
('1969', 'RG', 1, 1, 5, 4, '6–4, 6–3, 6–4'),
('1969', 'USO', 1, 1, 87, 3, '7–9, 6–1, 6–2, 6–2'),
('1969', 'WIM', 1, 1, 7, 6, '6–4, 5–7, 6–4, 6–4'),
('1970', 'AO', 3, 4, 4, 12, '6–4, 9–7, 6–2'),
('1970', 'RG', 55, 7, 56, 5, '6–2, 6–4, 6–0'),
('1970', 'USO', 5, 3, 87, 4, '2–6, 6–4, 7–6(5–2), 6–3[g]'),
('1970', 'WIM', 7, 2, 5, 5, '5–7, 6–3, 6–2, 3–6, 6–1'),
('1971', 'AO', 5, 2, 3, 3, '6–1, 7–5, 6–3'),
('1971', 'RG', 55, 1, 57, 3, '8–6, 6–2, 2–6, 7–5'),
('1971', 'USO', 88, 2, 55, 0, '3–6, 6–3, 6–2, 7–6(5–3)'),
('1971', 'WIM', 7, 2, 88, 4, '6–3, 5–7, 2–6, 6–4, 6–4'),
('1972', 'AO', 5, 2, 6, 8, '7–6(7–2), 6–3, 7–5'),
('1972', 'RG', 2, 6, 58, 9, '4–6, 6–3, 6–1, 6–1'),
('1972', 'USO', 57, 4, 3, 6, '3–6, 6–3, 6–7(1–5), 6–4, 6–3'),
('1972', 'WIM', 88, 1, 57, 2, '4–6, 6–3, 6–3, 4–6, 7–5'),
('1973', 'AO', 7, 2, 8, 12, '6–3, 6–7, 7–5, 6–1'),
('1973', 'RG', 57, 2, 59, 0, '6–3, 6–3, 6–0'),
('1973', 'USO', 7, 10, 55, 6, '6–4, 1–6, 4–6, 6–2, 6–3'),
('1973', 'WIM', 55, 2, 89, 4, '6–1, 9–8(7–5), 6–3'),
('1974', 'AO', 9, 2, 10, 9, '7–6(9–7), 6–4, 4–6, 6–3'),
('1974', 'RG', 60, 3, 61, 14, '2–6, 6–7(1–7), 6–0, 6–1, 6–1'),
('1974', 'USO', 9, 1, 5, 5, '6–1, 6–0, 6–1'),
('1974', 'WIM', 9, 3, 5, 9, '6–1, 6–1, 6–4'),
('1975', 'AO', 7, 2, 9, 1, '7–5, 3–6, 6–4, 7–6(9–7)'),
('1975', 'RG', 60, 1, 13, 4, '6–2, 6–3, 6–4'),
('1975', 'USO', 61, 3, 9, 1, '6–4, 6–3, 6–3'),
('1975', 'WIM', 3, 6, 9, 1, '6–1, 6–1, 5–7, 6–4'),
('1976', 'AO', 11, 0, 7, 2, '6–7, 6–3, 7–6, 6–1'),
('1976', 'RG', 62, 8, 63, 7, '6–1, 6–4, 4–6, 7–6(7–3)'),
('1976', 'USO', 9, 1, 60, 2, '6–4, 3–6, 7–6(11–9), 6–4'),
('1976', 'WIM', 60, 4, 57, 3, '6–4, 6–2, 9–7'),
('1977', 'AO', 12, 2, 13, 1, '6–3, 6–3, 6–3'),
('1977', 'RG', 13, 3, 64, 5, '6–0, 6–3, 6–0'),
('1977', 'USO', 13, 4, 9, 2, '2–6, 6–3, 7–6(7–4), 6–0'),
('1977', 'WIM', 60, 2, 9, 1, '3–6, 6–2, 6–1, 5–7, 6–4'),
('1977(2)', 'AO', 14, 1, 15, 0, '6–3, 7–6(7–1), 5–7, 3–6, 6–2'),
('1978', 'AO', 13, 1, 16, 0, '6–4, 6–4, 3–6, 6–3'),
('1978', 'RG', 60, 1, 13, 2, '6–1, 6–1, 6–3'),
('1978', 'USO', 9, 2, 60, 1, '6–4, 6–2, 6–2'),
('1978', 'WIM', 60, 1, 9, 2, '6–2, 6–2, 6–3'),
('1979', 'AO', 13, 1, 17, 6, '7–6(7–4), 6–3, 6–2'),
('1979', 'RG', 60, 1, 65, 0, '6–3, 6–1, 6–7(6–8), 6–4'),
('1979', 'USO', 67, 3, 14, 4, '7–5, 6–3, 6–3'),
('1979', 'WIM', 60, 1, 12, 5, '6–7(4–7), 6–1, 3–6, 6–3, 6–4'),
('1980', 'AO', 18, 8, 19, 14, '7–5, 7–6(7–4), 6–3'),
('1980', 'RG', 60, 1, 14, 5, '6–4, 6–1, 6–2'),
('1980', 'USO', 67, 2, 60, 1, '7–6(7–4), 6–1, 6–7(5–7), 5–7, 6–4'),
('1980', 'WIM', 60, 1, 67, 2, '1–6, 7–5, 6–3, 6–7(16–18), 8–6'),
('1981', 'AO', 20, 4, 21, 0, '6–2, 7–6(7–1), 6–7(1–7), 6–4'),
('1981', 'RG', 60, 1, 23, 5, '6–1, 4–6, 6–2, 3–6, 6–1'),
('1981', 'USO', 67, 1, 60, 2, '4–6, 6–2, 6–4, 6–3'),
('1981', 'WIM', 67, 2, 60, 1, '4–6, 7–6(7–1), 7–6(7–4), 6–4'),
('1982', 'AO', 20, 1, 21, 2, '6–3, 6–3, 6–2'),
('1982', 'RG', 22, 0, 13, 3, '1–6, 7–6(8–6), 6–0, 6–4'),
('1982', 'USO', 9, 2, 23, 3, '6–3, 6–2, 4–6, 6–4'),
('1982', 'WIM', 9, 2, 67, 1, '3–6, 6–3, 6–7(2–7), 7–6(7–5), 6–4'),
('1983', 'AO', 22, 3, 23, 1, '6–1, 6–4, 6–4'),
('1983', 'RG', 66, 6, 22, 5, '6–2, 7–5, 7–6(7–3)'),
('1983', 'USO', 9, 3, 23, 2, '6–3, 6–7(2–7), 7–5, 6–0'),
('1983', 'WIM', 67, 2, 90, 0, '6–2, 6–2, 6–2'),
('1984', 'AO', 22, 2, 24, 9, '6–7(5–7), 6–4, 7–6(7–3), 6–2'),
('1984', 'RG', 23, 2, 67, 1, '3–6, 2–6, 6–4, 7–5, 7–5'),
('1984', 'USO', 67, 1, 23, 2, '6–3, 6–4, 6–1'),
('1984', 'WIM', 67, 1, 9, 3, '6–1, 6–1, 6–2'),
('1985', 'AO', 25, 6, 22, 3, '6–4, 6–3, 6–3'),
('1985', 'RG', 22, 4, 23, 2, '3–6, 6–4, 6–2, 6–2'),
('1985', 'USO', 23, 2, 67, 1, '7–6(7–1), 6–3, 6–4'),
('1985', 'WIM', 28, 0, 24, 8, '6–3, 6–7(4–7), 7–6(7–3), 6–4'),
('1986', 'RG', 23, 1, 68, 0, '6–3, 6–2, 6–4'),
('1986', 'USO', 23, 1, 27, 16, '6–4, 6–2, 6–0'),
('1986', 'WIM', 28, 4, 23, 1, '6–4, 6–3, 7–5'),
('1987', 'AO', 25, 4, 26, 11, '6–3, 6–4, 3–6, 5–7, 6–3'),
('1987', 'RG', 23, 1, 22, 4, '7–5, 6–2, 3–6, 7–6(7–3)'),
('1987', 'USO', 23, 1, 22, 3, '6–7(7–9), 6–0, 7–6(7–4), 6–4'),
('1987', 'WIM', 26, 11, 23, 2, '7–6(7–5), 6–2, 7–5'),
('1988', 'AO', 22, 3, 26, 4, '6–3, 6–7(3–7), 3–6, 6–1, 8–6'),
('1988', 'RG', 22, 3, 69, 1, '7–5, 6–2, 6–1'),
('1988', 'USO', 22, 2, 23, 1, '6–4, 4–6, 6–3, 5–7, 6–4'),
('1988', 'WIM', 25, 3, 28, 6, '4–6, 7–6(7–2), 6–4, 6–2'),
('1989', 'AO', 23, 2, 27, 9, '6–2, 6–2, 6–2'),
('1989', 'RG', 33, 15, 25, 3, '6–1, 3–6, 4–6, 6–4, 6–2'),
('1989', 'USO', 28, 2, 23, 1, '7–6(7–2), 1–6, 6–3, 7–6(7–4)'),
('1989', 'WIM', 28, 3, 25, 2, '6–0, 7–6(7–1), 6–4'),
('1990', 'AO', 23, 1, 25, 3, '4–6, 7–6(7–3), 5–2 retired'),
('1990', 'RG', 70, 4, 32, 3, '6–3, 2–6, 6–4, 6–4'),
('1990', 'USO', 30, 12, 32, 4, '6–4, 6–3, 6–2'),
('1990', 'WIM', 25, 3, 28, 2, '6–2, 6–2, 3–6, 3–6, 6–4'),
('1991', 'AO', 28, 2, 23, 3, '1–6, 6–4, 6–4, 6–4'),
('1991', 'RG', 29, 9, 32, 4, '3–6, 6–4, 2–6, 6–1, 6–4'),
('1991', 'USO', 25, 2, 29, 4, '6–2, 6–4, 6–0'),
('1991', 'WIM', 74, 6, 28, 2, '6–4, 7–6(7–4), 6–4'),
('1992', 'AO', 29, 2, 25, 1, '6–3, 3–6, 6–4, 6–2'),
('1992', 'RG', 29, 1, 35, 7, '7–5, 6–2, 6–1'),
('1992', 'USO', 25, 2, 30, 3, '3–6, 6–4, 7–6(7–5), 6–2'),
('1992', 'WIM', 32, 12, 91, 8, '6–7(8–10), 6–4, 6–4, 1–6, 6–4'),
('1993', 'AO', 29, 1, 25, 2, '6–2, 6–1, 2–6, 7–5'),
('1993', 'RG', 71, 10, 29, 2, '6–4, 2–6, 6–2, 3–6, 6–3'),
('1993', 'USO', 30, 2, 94, 15, '6–4, 6–4, 6–3'),
('1993', 'WIM', 30, 1, 29, 3, '7–6(7–3), 7–6(8–6), 3–6, 6–3'),
('1994', 'AO', 30, 1, 31, 9, '7–6(7–4), 6–4, 6–4'),
('1994', 'RG', 71, 6, 72, 0, '6–3, 7–5, 2–6, 6–1'),
('1994', 'USO', 32, 0, 74, 4, '6–1, 7–6(7–5), 7–5'),
('1994', 'WIM', 30, 1, 91, 4, '7–6(7–2), 7–6(7–5), 6–0'),
('1995', 'AO', 32, 2, 30, 1, '4–6, 6–1, 7–6(8–6), 6–4'),
('1995', 'RG', 73, 5, 33, 6, '7–5, 6–2, 6–4'),
('1995', 'USO', 30, 2, 32, 1, '6–4, 6–3, 4–6, 7–5'),
('1995', 'WIM', 30, 2, 28, 3, '6–7(5–7), 6–2, 6–4, 6–2'),
('1996', 'AO', 28, 4, 33, 5, '6–2, 6–4, 2–6, 6–2'),
('1996', 'RG', 37, 6, 74, 15, '7–6(7–4), 7–5, 7–6(7–4)'),
('1996', 'USO', 30, 1, 33, 2, '6–1, 6–4, 7–6(7–3)'),
('1996', 'WIM', 92, 17, 93, 0, '6–3, 6–4, 6–3'),
('1997', 'AO', 30, 1, 34, 0, '6–2, 6–3, 6–3'),
('1997', 'RG', 75, 0, 71, 16, '6–3, 6–4, 6–2'),
('1997', 'USO', 95, 13, 104, 0, '6–3, 6–2, 4–6, 7–5'),
('1997', 'WIM', 30, 1, 94, 0, '6–4, 6–2, 6–4'),
('1998', 'AO', 35, 6, 36, 9, '6–2, 6–2, 6–2'),
('1998', 'RG', 34, 12, 76, 14, '6–3, 7–5, 6–3'),
('1998', 'USO', 95, 3, 97, 0, '6–3, 3–6, 6–2, 6–0'),
('1998', 'WIM', 30, 1, 91, 14, '6–7(2–7), 7–6(11–9), 6–4, 3–6, 6–2'),
('1999', 'AO', 37, 10, 38, 0, '4–6, 6–0, 6–3, 7–6(7–1)'),
('1999', 'RG', 32, 13, 77, 0, '1–6, 2–6, 6–4, 6–3, 6–4'),
('1999', 'USO', 32, 2, 31, 7, '6–4, 6–7(5–7), 6–7(2–7), 6–3, 6–2'),
('1999', 'WIM', 30, 1, 32, 4, '6–3, 6–4, 7–5'),
('2000', 'AO', 32, 1, 37, 2, '3–6, 6–3, 6–2, 6–4'),
('2000', 'RG', 75, 5, 78, 3, '6–2, 6–3, 2–6, 7–6(8–6)'),
('2000', 'USO', 41, 6, 30, 4, '6–4, 6–3, 6–3'),
('2000', 'WIM', 30, 1, 95, 12, '6–7(10–12), 7–6(7–5), 6–4, 6–2'),
('2001', 'AO', 32, 6, 39, 15, '6–4, 6–2, 6–2'),
('2001', 'RG', 75, 1, 76, 13, '6–7(3–7), 7–5, 6–2, 6–0'),
('2001', 'USO', 44, 4, 30, 10, '7–6(7–4), 6–1, 6–1'),
('2001', 'WIM', 91, 0, 95, 3, '6–3, 3–6, 6–3, 2–6, 9–7'),
('2002', 'AO', 40, 16, 41, 9, '3–6, 6–4, 6–4, 7–6(7–4)'),
('2002', 'RG', 79, 20, 80, 11, '6–1, 6–0, 4–6, 6–3'),
('2002', 'USO', 30, 17, 32, 6, '6–3, 6–4, 5–7, 6–4'),
('2002', 'WIM', 44, 1, 96, 28, '6–1, 6–3, 6–2'),
('2003', 'AO', 32, 2, 42, 31, '6–2, 6–2, 6–1'),
('2003', 'RG', 80, 3, 81, 0, '6–1, 6–3, 6–2'),
('2003', 'USO', 98, 4, 80, 3, '6–3, 7–6(7–2), 6–3'),
('2003', 'WIM', 43, 4, 97, 0, '7–6(7–5), 6–2, 7–6(7–3)'),
('2004', 'AO', 43, 2, 41, 0, '7–6(7–3), 6–4, 6–2'),
('2004', 'RG', 82, 0, 83, 3, '0–6, 3–6, 6–4, 6–1, 8–6'),
('2004', 'USO', 43, 1, 44, 4, '6–0, 7–6(7–3), 6–0'),
('2004', 'WIM', 43, 1, 98, 2, '4–6, 7–5, 7–6(7–3), 6–4'),
('2005', 'AO', 41, 4, 44, 3, '1–6, 6–3, 6–4, 6–4'),
('2005', 'RG', 49, 4, 84, 0, '6–7(6–8), 6–3, 6–1, 7–5'),
('2005', 'USO', 43, 1, 32, 7, '6–3, 2–6, 7–6(7–1), 6–1'),
('2005', 'WIM', 43, 1, 98, 2, '6–2, 7–6(7–2), 6–4'),
('2006', 'AO', 43, 1, 45, 0, '5–7, 7–5, 6–0, 6–2'),
('2006', 'RG', 49, 2, 43, 1, '1–6, 6–1, 6–4, 7–6(7–4)'),
('2006', 'USO', 43, 1, 98, 9, '6–2, 4–6, 7–5, 6–1'),
('2006', 'WIM', 43, 1, 49, 2, '6–0, 7–6(7–5), 6–7(2–7), 6–3'),
('2007', 'AO', 43, 1, 46, 10, '7–6(7–2), 6–4, 6–4'),
('2007', 'RG', 49, 2, 43, 1, '6–3, 4–6, 6–3, 6–4'),
('2007', 'USO', 43, 1, 47, 3, '7–6(7–4), 7–6(7–2), 6–4'),
('2007', 'WIM', 43, 1, 49, 2, '7–6(9–7), 4–6, 7–6(7–3), 2–6, 6–2'),
('2008', 'AO', 47, 3, 48, 0, '4–6, 6–4, 6–3, 7–6(7–2)'),
('2008', 'RG', 49, 2, 43, 1, '6–1, 6–3, 6–0'),
('2008', 'USO', 43, 2, 50, 6, '6–2, 7–5, 6–2'),
('2008', 'WIM', 49, 2, 43, 1, '6–4, 6–4, 6–7(5–7), 6–7(8–10), 9–7'),
('2009', 'AO', 49, 1, 43, 2, '7–5, 3–6, 7–6(7–3), 3–6, 6–2'),
('2009', 'RG', 43, 2, 85, 23, '6–1, 7–6(7–1), 6–4'),
('2009', 'USO', 105, 6, 43, 1, '3–6, 7–6(7–5), 4–6, 7–6(7–4), 6–2'),
('2009', 'WIM', 43, 2, 98, 6, '5–7, 7–6(8–6), 7–6(7–5), 3–6, 16–14'),
('2010', 'AO', 43, 1, 50, 5, '6–3, 6–4, 7–6(13–11)'),
('2010', 'RG', 49, 2, 85, 5, '6–4, 6–2, 6–4'),
('2010', 'USO', 49, 1, 47, 3, '6–4, 5–7, 6–4, 6–2'),
('2010', 'WIM', 49, 2, 99, 12, '6–3, 7–5, 6–4'),
('2011', 'AO', 47, 3, 50, 5, '6–4, 6–2, 6–3'),
('2011', 'RG', 49, 1, 43, 3, '7–5, 7–6(7–3), 5–7, 6–1'),
('2011', 'USO', 47, 1, 49, 2, '6–2, 6–4, 6–7(3–7), 6–1'),
('2011', 'WIM', 47, 2, 49, 1, '6–4, 6–1, 1–6, 6–3'),
('2012', 'AO', 47, 1, 49, 2, '5–7, 6–4, 6–2, 6–7(5–7), 7–5'),
('2012', 'RG', 49, 2, 47, 1, '6–4, 6–3, 2–6, 7–5'),
('2012', 'USO', 50, 3, 47, 2, '7–6(12–10), 7–5, 2–6, 3–6, 6–2'),
('2012', 'WIM', 43, 3, 50, 4, '4–6, 7–5, 6–3, 6–4'),
('2013', 'AO', 47, 1, 50, 3, '6–7(2–7), 7–6(7–3), 6–3, 6–2'),
('2013', 'RG', 49, 3, 86, 4, '6–3, 6–2, 6–3'),
('2013', 'USO', 49, 2, 47, 1, '6–2, 3–6, 6–4, 6–1'),
('2013', 'WIM', 50, 2, 47, 1, '6–4, 7–5, 6–4'),
('2014', 'AO', 51, 8, 49, 1, '6–3, 6–2, 3–6, 6–3'),
('2014', 'RG', 49, 1, 47, 2, '3–6, 7–5, 6–2, 6–4'),
('2014', 'USO', 101, 14, 106, 10, '6–3, 6–3, 6–3'),
('2014', 'WIM', 47, 1, 43, 4, '6–7(7–9), 6–4, 7–6(7–4), 5–7, 6–4'),
('2015', 'AO', 47, 1, 50, 6, '7–6(7–5), 6–7(4–7), 6–3, 6–0'),
('2015', 'RG', 51, 8, 47, 1, '4–6, 6–4, 6–3, 6–4'),
('2015', 'USO', 47, 1, 43, 2, '6–4, 5–7, 6–4, 6–4'),
('2015', 'WIM', 47, 1, 43, 2, '7–6(7–1), 6–7(10–12), 6–4, 6–3'),
('2016', 'AO', 47, 1, 50, 2, '6–1, 7–5, 7–6(7–3)'),
('2016', 'RG', 47, 1, 50, 2, '3–6, 6–1, 6–2, 6–4'),
('2016', 'USO', 51, 3, 47, 1, '6–7(1–7), 6–4, 7–5, 6–3'),
('2016', 'WIM', 50, 2, 100, 6, '6–4, 7–6(7–3), 7–6(7–2)'),
('2017', 'AO', 43, 17, 49, 9, '6–4, 3–6, 6–1, 3–6, 6–3'),
('2017', 'RG', 49, 4, 51, 3, '6–2, 6–3, 6–1'),
('2017', 'USO', 49, 1, 102, 28, '6–3, 6–3, 6–4'),
('2017', 'WIM', 43, 3, 101, 7, '6–3, 6–1, 6–4'),
('2018', 'AO', 43, 2, 52, 6, '6-2, 6-7(7-5), 6-3, 3-6, 6-1'),
('2018', 'RG', 49, 1, 53, 7, '6-4, 6-3, 6-2'),
('2018', 'USO', 47, 6, 105, 3, '6-3,7-6(7-4), 6-3'),
('2018', 'WIM', 47, 12, 102, 8, '6-2, 6-2, 7-6(7-3)'),
('2019', 'AO', 47, 1, 49, 2, '6–3, 6–2, 6–3'),
('2019', 'RG', 49, 2, 53, 4, '6-3, 5-7, 6-1, 6-1'),
('2019', 'USO', 49, 2, 54, 5, '7-5, 6-3, 5-7, 4-6, 6-4'),
('2019', 'WIM', 47, 1, 43, 2, '7-6(7-5), 1-6, 7-6(7-4), 4-6, 13-12(7-3)'),
('2020', 'AO', 47, 2, 53, 5, '6-4, 4-6, 2-6, 6-3, 6-4'),
('2020', 'RG', 49, 2, 47, 1, '6-0, 6-2, 7-5'),
('2020', 'USO', 53, 2, 107, 5, '2-6, 4-6, 6-4, 6-3, 7-6(8-6)'),
('2021', 'AO', 47, 1, 54, 4, '7-5, 6-2, 6-2'),
('2021', 'RG', 47, 1, 111, 5, '6/7(6/8), 2/6, 6/3, 6/2, 6/4'),
('2021', 'USO', 54, 2, 47, 1, '6/4, 6/4, 6/4'),
('2021', 'WIM', 47, 1, 112, 7, '6/7(4/7), 6/4, 6/4, 6/3'),
('2022', 'AO', 49, 6, 54, 2, '2/6, 6/7(5/7), 6/4, 6/4, 7/5'),
('2022', 'RG', 49, 5, 113, 8, '6/3, 6/3, 6/0'),
('2022', 'USO', 109, 3, 113, 5, '6/4, 2/6, 7/6(7/1), 6/3'),
('2022', 'WIM', 47, 1, 114, 0, '4/6, 6/3, 6/4, 7/6(7/3)'),
('2023', 'AO', 47, 4, 111, 3, '6/3, 7/6(7/4), 7/6(7/5)'),
('2023', 'RG', 47, 3, 113, 4, '7/6(7/1), 6/3, 7/5'),
('2023', 'USO', 47, 2, 54, 3, '6/3, 7/6(7/5), 6/3'),
('2023', 'WIM', 109, 1, 47, 2, '1/6, 7/6(8/6), 6/1, 3/6, 6/4'),
('2024', 'AO', 108, 4, 54, 3, '3/6, 3/6, 6/4, 6/4, 6/3'),
('2024', 'RG', 109, 3, 107, 4, '6-3, 2-6, 5-7, 6-1, 6-2'),
('2024', 'USO', 108, 1, 117, 12, '6-3, 6-4, 7-5'),
('2024', 'WIM', 109, 3, 47, 2, '6-2, 6-2, 7-6(7-4)');

-- --------------------------------------------------------

--
-- Structure de la vue `achievements`
--
DROP TABLE IF EXISTS `achievements`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `achievements`  AS SELECT ifnull(`t`.`slam_ref`,'TOTAL') AS `slam_ref`, count(0) AS `Total_Wins` FROM (`tournament` `t` join `player` `p1` on((`p1`.`Id` = `t`.`Champion`))) WHERE (concat(`p1`.`first_name`,' ',`p1`.`last_name`) = 'Roger Federer') GROUP BY `t`.`slam_ref` with rollup  ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Code`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Country / Player` (`ref_nationality`);

--
-- Index pour la table `slam`
--
ALTER TABLE `slam`
  ADD PRIMARY KEY (`Code`);

--
-- Index pour la table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`slam_year`,`slam_ref`),
  ADD KEY `Tournament / Slam` (`slam_ref`),
  ADD KEY `Match - Joueur 2` (`Champion`),
  ADD KEY `Match - Joueur 1` (`Runner_up`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `Country / Player` FOREIGN KEY (`ref_nationality`) REFERENCES `country` (`Code`);

--
-- Contraintes pour la table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `Match - Joueur 1` FOREIGN KEY (`Runner_up`) REFERENCES `player` (`Id`),
  ADD CONSTRAINT `Match - Joueur 2` FOREIGN KEY (`Champion`) REFERENCES `player` (`Id`),
  ADD CONSTRAINT `Tournament / Slam` FOREIGN KEY (`slam_ref`) REFERENCES `slam` (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
