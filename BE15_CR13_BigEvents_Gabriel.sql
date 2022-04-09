-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2022 at 01:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE15_CR13_BigEvents_Gabriel`
--
CREATE DATABASE IF NOT EXISTS `BE15_CR13_BigEvents_Gabriel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BE15_CR13_BigEvents_Gabriel`;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `events_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `capacity` int(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(30) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` int(30) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `event`
--

TRUNCATE TABLE `event`;
--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `events_name`, `date`, `description`, `photo`, `capacity`, `email`, `phone_number`, `city`, `address`, `zip`, `type`) VALUES
(11, 'ERDgespräche 2022', '2017-01-01', 'Organisiert werden die ERDgespräche vom Verein NEONGREEN Network und mit der tatkräftigen Unterstützung zahlreicher Volunteers. Finanziert werden die ERDgespräche großteils durch Spenden.  Ehrenschutz  Bundespräsident Alexander Van der Bellen', 'conf1-62516c54b32bb.jpg', 500, 'change@neongreen.net', 765744536, 'Wien', 'Museumsplatz 1 Halle E', 1070, 'conferences'),
(12, '4th European Sustainable Phosphorous Conference - ESPC4', '2022-06-20', 'European Sustainable Phosphorus Conferences are unique events bringing together companies, stakeholders, regional and national authorities, innovators and researchers', 'esp-625161f0d33b5.png', 127, 'stadt.wien@mail.coom', 800510, 'Wein', 'Arsenalstrasse 10', 1100, 'conferences'),
(13, 'HANDELSKOLLOQUIUM 2022', '2022-04-21', 'Der traditionsreichste österreichische Handelskongress ist ein Highlight für die gesamte Handelsbranche. Wir holen die neuesten Trends und Entwicklungen rund um die Themen Arbeit, Standort und Nachhaltigkeit vor den Vorhang.', 'hasel-625163b6b8ff6.jpg', 700, 'handelskollo@gmail.com', 477656553, 'Wien', 'Grünbergstraße 16', 1130, 'conferences'),
(14, 'Imagine Dragons', '2022-06-23', 'Mit 46 Millionen Alben und 55 Millionen verkauften Songs weltweit sowie 74 Milliarden Streams, sind Imagine Dragons eine der erfolgreichsten Rockbands', 'imgdr-625166ebd1a63.jpg', 10000, 'imagine@mail.com', 765464567, 'Wien', 'Alserstraße 24/13', 1090, 'music'),
(15, 'THE ROLLING STONES', '2022-07-15', 'Es folgen dann noch 2 weitere Shows im Londoner Hyde Park. In Österreich waren die The Rolling Stones zuletzt 2017 in Spielberg beim Red Bull Ring im Rahmen ihrer \"Stones – No Filter\" Tour zu sehen.', 'rolst-625168702dd68.jpg', 10000, 'stones@mail.com', 54353445, 'Wien', 'Meiereistraße 7', 1020, 'music'),
(16, 'Guns N\' Roses', '2022-07-08', 'Mit ihrem Debütalbum „Appetite For Destruction“ veränderten Guns N‘ Roses im Jahr 1987 den Lauf der Rockmusik. Beim Release im August war Sänger Axl Rose, den Gitarristen Slash und Izzy Stradlin, Bassist Duff McKagan und Drummer Steven Adle', 'gnr-625169120d4eb.jpg', 10000, 'gunsnroses@mail.com', 54635654, 'Wien', 'Meiereistraße 7', 1020, 'music'),
(17, 'Latin Night Special', '2022-04-29', 'Wenn über Wien die Sonne untergeht, einem der frische Geruch von Minze und Limette um die Nase weht und der Rochusmarkt sich in den Malecon verwandelt, dann ist es wieder soweit', 'ltnnght-62516b07e2882.jpg', 85, 'ballsaal@mail.com', 5437677, 'Wien', 'Kundmanngasse 30', 1030, 'dance'),
(18, 'Casual Sunday', '2022-04-10', 'In relaxter Atmospäre wird gemeinsam auf 500m2 Fläche geübt und gelacht. Falls doch ein Problemchen auftauchen sollte kann man sich in an der \"Ersten Tanzhilfe\" Station', 'gwt-62516d03942dc.jpg', 300, 'ballsaal@mail.com', 5636553, 'Wien', 'Kundmanngasse 30', 1030, 'dance'),
(19, '\"Wien tanzt...\"', '2022-04-09', 'Tanzen bedeutet mehr als nur Schrittkombinationen, Körperhaltung und Takt. Tanzen ist vielmehr ein Ausdruck von Lebensgefühl und gehört in allen Gesellschaften der Erde zu den ursprünglichsten Bedürfnissen der Menschen\".', 'wt-62516c0c8843d.jpg', 400, 'ballsaal@mail.com', 4145417, 'Wien', 'Kundmanngasse 30', 1030, 'dance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
