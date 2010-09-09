-- phpMyAdmin SQL Dump
-- version 3.1.5
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 08. 09 2010 kl. 11:24:33
-- Serverversion: 5.0.32
-- PHP-version: 5.2.0-8+etch15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koldstart`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `varer`
--

CREATE TABLE IF NOT EXISTS `varer` (
  `id` int(6) NOT NULL auto_increment,
  `leverandør` varchar(100) default NULL,
  `varenavn` varchar(255) default NULL,
  `varegruppe` varchar(100) default NULL,
  `undergruppe` varchar(100) default NULL,
  `sted` varchar(255) default NULL,
  `dato` varchar(100) default NULL,
  `pris` int(10) default NULL,
  `qerw` varchar(234) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Data dump for tabellen `varer`
--

INSERT INTO `varer` (`id`, `leverandør`, `varenavn`, `varegruppe`, `undergruppe`, `sted`, `dato`, `pris`, `qerw`) VALUES
(1, 'Hostrup Musik', 'Die Forelle (Schubert)', 'koncert', 'Lied', 'Horsens', 'November 2010', 800, ''),
(2, 'Event Shopping', 'Indkøbstaske m. hjul til trapper', 'hjælpemidler', 'indkøbsvogne', NULL, NULL, 499, ''),
(3, 'Event Shopping', 'Up Go Shopping Vogn', 'hjælpemidler', 'indkøbsvogne', NULL, NULL, 299, ''),
(4, 'Event Shopping', 'Violinkoncert (Brahms)', 'koncert', 'violinkoncert', 'Amager', 'Oktober 2010', 300, ''),
(5, 'Trolley Shoppen', 'Indkøbstaske m. hjul til trapper', 'hjælpemidler', 'indkøbsvogne', NULL, NULL, 199, ''),
(6, 'Trolley Shoppen', 'Up Go Shopping Vogn', 'hjælpemidler', 'indkøbsvogne', NULL, NULL, 299, ''),
(7, 'Seniorshoppen', 'Tellme C115', 'kommunikation', 'telefoner', NULL, NULL, 149900, ''),
(8, 'Seniorshoppen', 'Fleksibel flaskeåbner', 'hjælpemidler', 'køkken', NULL, NULL, 4900, ''),
(9, 'ForDeÆldre.dk', 'Good Grip ske', 'hjælpemidler', 'køkken', NULL, NULL, 10400, ''),
(10, 'ForDeÆldre.dk', 'Panax siddepude', 'hjælpemidler', 'bekvemmelighed', NULL, NULL, 29900, ''),
(11, 'Trolley Shoppen', 'Håndtaske m. ekstra plads', 'hjælpemidler', 'indkøbsvogne', NULL, NULL, 99900, ''),
(12, 'TilTiden', 'Termokrus med hank', 'hjælpemidler', 'køkken', NULL, NULL, 8000, ''),
(13, 'ForDeÆldre.dk', 'Lysterapi lampe', 'hjælpemidler', 'lamper', NULL, NULL, 149900, ''),
(14, 'PensionisterIDanmark', 'Flex kørestol', 'hjælpemidler', 'personlig transport', NULL, NULL, 375000, ''),
(15, 'PensionisterIDanmark', 'Vision kørestol', 'hjælpemidler', 'personlig transport', NULL, NULL, 625000, ''),
(16, 'Seniorshoppen', 'Proaktiv kørestol', 'hjælpemidler', 'personlig transport', NULL, NULL, 375000, ''),
(17, 'PensionisterIDanmark', 'Massagestol', 'bekvemmelighed', 'soveværelse', NULL, NULL, 419900, ''),
(18, 'TilTiden', 'Pro-Travel XS Rejsescooter', 'transport', 'personlig transport', NULL, NULL, 1990000, ''),
(19, 'ForDeÆldre.dk', 'Pro-Home 3', 'transport', 'personlig transport', NULL, NULL, 1690000, ''),
(20, 'Seniorshoppen', 'Albuestok m. standard håndtag', 'hjælpemidler', 'krykke', NULL, NULL, 13900, ''),
(21, 'Event Shopping', 'Opera (Romeo & Julie)', 'underholdning', 'opera', 'Københavns', 'December 2011', 42500, ''),
(22, 'Event Shopping', 'Alsang På Skansen 2010', 'underholdning', 'koncert', 'Silkeborg', 'Juli 2011', 40000, ''),
(23, 'Trolley Shoppen', 'Motion Rollator', 'transport', 'personlig transport', NULL, NULL, 149900, ''),
(24, 'Trolley Shoppen', 'Volaris S3 rollator', 'transport', 'personlig transport', NULL, NULL, 249500, ''),
(25, 'TilTiden', 'Termo ankelbind', 'hjælpemidler', 'special tøj', NULL, NULL, 14900, ''),
(26, 'PensionisterIDanmark', 'Albuebandage', 'hjælpemidler', 'special tøj', NULL, NULL, 19900, ''),
(27, 'PensionisterIDanmark', 'Knæbind', 'hjælpemidler', 'special tøj', NULL, NULL, 11900, ''),
(28, 'ForDeÆldre.dk', 'Stavgang (video)', 'transport', 'personlig transport', NULL, NULL, 9900, ''),
(29, 'TilTiden', 'Phoneeasy 410 gsm', 'kommunikation', 'telefoner', NULL, NULL, 129900, ''),
(30, 'Seniorshoppen', 'SeePlus 314ci', 'kommunikation', 'telefoner', NULL, NULL, 89900, ''),
(31, 'Event Shopping', 'Kandis', 'underholdning', 'koncert', 'Odense', 'Januar 2011', 34900, ''),
(32, 'Event Shopping', 'Biograf klub (København)', 'underholdning', 'biograf', 'København', NULL, 25000, ''),
(33, 'Event Shopping', 'Biograf klub (Køge)', 'underholdning', 'biograf', 'Køge', NULL, 25000, ''),
(34, 'PensionisterIDanmark', 'Sengebånd med plastgreb', 'hjælpemidler', 'soveværelse', NULL, NULL, 11000, ''),
(35, 'PensionisterIDanmark', 'Sensan 1 hovedpude', 'hjælpemidler', 'soveværelse', NULL, NULL, 19900, ''),
(36, 'ForDeÆldre.dk', 'Good Grip kniv', 'hjælpemidler', 'køkken', NULL, NULL, 10400, ''),
(37, 'ForDeÆldre.dk', 'Good Grip gaffel', 'hjælpemidler', 'køkken', NULL, NULL, 10400, ''),
(38, 'ÆldreRejser', 'Stockholm (en uge)', 'rejser', 'Skandinavien', 'København', 'Marts 2011', 399900, ''),
(39, 'ÆldreRejser', 'Oslo (en uge)', 'rejser', 'Skandinavien', 'København', 'Januar 2011', 450000, ''),
(40, 'ÆldreRejser', 'Berlin (en uge)', 'rejser', 'Europa', 'København', 'December 2011', 349900, ''),
(41, 'ÆldreRejser', 'Paris (en uge)', 'rejser', 'Europa', 'København', 'December 2011', 799900, ''),
(42, 'ÆldreRejser', 'London (en uge)', 'rejser', 'Europa', 'København', 'Februar 2011', 589900, ''),
(43, 'ÆldreRejser', 'Caribien Krydstogt (en uge)', 'rejser', 'De Vestindiske Øer', 'Aalborg', 'Januar 2011', 1299900, ''),
(44, 'ÆldreRejser', 'Krydstogt I Middelhavet (en uge)', 'rejser', 'Europa', 'København', 'August 2011', 1499900, ''),
(45, 'TilTiden', 'Massagestol', 'hjælpemidler', 'bekvemmelighed', NULL, NULL, 349900, ''),
(46, 'SeniorShoppen', 'Albuestok (hvid)', 'hjælpemidler', 'personlig transport', NULL, NULL, 8900, ''),
(47, 'SeniorShoppen', 'Badebænk med ryglæn', 'hjælpemidler', 'badeværelse', NULL, NULL, 114900, ''),
(48, 'ForDeÆldre.dk', 'Sikkerhedsbademåtte', 'hjælpemidler', 'badeværelse', NULL, NULL, 19900, ''),
(49, 'ForDeÆldre.dk', 'Monterbart håndgreb (plastic)', 'hjælpemidler', 'badeværelse', NULL, NULL, 12900, ''),
(50, 'TilTiden', 'Vægbøjle (marmor)', 'hjælpemidler', 'badeværelse', NULL, NULL, 99900, ''),
(51, 'PensionisterIDanmark', 'Lågåbner', 'hjælpemidler', 'køkken', NULL, NULL, 17400, ''),
(52, 'PensionisterIDanmark', 'Brødkniv m. bølgeskær', 'hjælpemidler', 'køkken', NULL, NULL, 29900, ''),
(53, 'MuseerIDanmark', 'Impressionisme i 1900-tallet', 'underholdning', 'kultur', 'Køge', 'November 2010', 19900, ''),
(54, 'MuseerIDanmark', 'Den Amerikanske Borgerkrig', 'underholdning', 'kultur', 'København', 'December 2010', 24900, ''),
(55, 'MuseerIDanmark', 'Skagensmalerne', 'underholdning', 'kultur', 'Hillerød', 'Januar 2011', 24900, ''),
(56, 'MuseerIDanmark', 'Danmark I Middelalderen', 'underholdning', 'kultur', 'Odense', 'Januar 2011', 29900, ''),
(57, 'Trolley Shoppen', 'Promovec Electric Bicycle', 'hjælpemidler', 'personlig transport', NULL, NULL, 1399900, ''),
(58, 'Trolley Shoppen', 'Promovec Ergonomic Seat', 'hjælpemidler', 'personlig transport', NULL, NULL, 49900, ''),
(59, 'ForDeÆldre.dk', 'Niceole (Plejeseng)', 'hjælpemidler', 'soveværelse', NULL, NULL, 899900, ''),
(60, 'ForDeÆldre.dk', 'Peggy (Plejeseng)', 'hjælpemidler', 'soveværelse', NULL, NULL, 999900, ''),
(61, 'PensionisterIDanmark', 'Melanie (Plejeseng)', 'hjælpemidler', 'soveværelse', NULL, NULL, 899900, ''),
(62, 'Seniorshoppen', 'B-veg skum madras', 'hjælpemidler', 'soveværelse', NULL, NULL, 349900, ''),
(63, 'Event Shopping', 'Danmarks Største Loppemarked', 'rejser', 'Danmark', 'Lyngby', 'November 2010', 4900, ''),
(64, 'PensionisterIDanmark', 'Badetaburet med PUR sæde', 'hjælpemidler', 'badeværelse', NULL, NULL, 139900, ''),
(65, 'TilTiden', 'Kørestolspude, sort', 'hjælpemidler', 'personlig transport', NULL, NULL, 29900, ''),
(66, 'ForDeÆldre.dk', 'Indkøbsnet til kørestole', 'hjælpemidler', 'personlig transport', NULL, NULL, 19900, ''),
(67, 'Seniorshoppen', 'Spisepude', 'hjælpemidler', 'køkken', NULL, NULL, 39900, ''),
(68, 'PensionisterIDanmark', 'Senge- og læsebord med 4 hjul', 'hjælpemidler', 'soveværelse', NULL, NULL, 139900, '',
(69, 'ÆldreRejser', 'Frankfurt (3 dage)', 'rejser', 'Europa', 'København', 'September 2011', 500000, ''),
(70, 'MuseerIDanmark', 'Guldhornene', 'underholdning', 'kultur', 'Hillerød', 'November 2011', 29900, ''),
(71, 'ForDeÆldre.dk', 'Oticon Agil Høreapparat', 'hjælpemidler', 'bekvemmelighed', NULL, NULL, 1099900, ''),
(72, 'ForDeÆldre.dk', 'Siemens Life Høreapparat', 'hjælpemidler', 'bekvemmelighed', NULL, NULL, 999900, ''),
(73, 'SeniorShoppen', 'Widex Passion Høreapparat', 'hjælpemidler', 'bekvemmelighed', NULL, NULL, 1200000, '');
