-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 09:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be16_cr13_bigeventsmohamad`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220805125933', '2022-08-05 15:00:01', 59);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `image`, `capacity`, `email`, `phone_number`, `street_name`, `zip`, `city`, `type`, `start_date`, `end_date`) VALUES
(1, 'Acapella Events', 'A cappella music is a performance by a singer or a singing group without instrumental accompaniment, or a piece intended to be performed in this way.', 'https://images.pexels.com/photos/12969578/pexels-photo-12969578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 1000, 'nsuggate0@php.net', '+4356489434', 'Victoria', 249070, 'Puyung', 'music', '2022-08-05 21:03:39', '2022-08-05 20:01:00'),
(2, 'Event Rebel', 'Public · Event · by REBELLIØN and MARX HALLE', 'https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 2000, 'aclemendet1@mtv.com', '+425168465', 'Menomonie', 36192, 'Emmaboda', 'music', '2022-08-05 19:15:35', '2023-09-05 15:52:00'),
(3, 'FestiVista', 'festivities definition: the parties, meals, and other social activities with which people', 'https://images.pexels.com/photos/154147/pexels-photo-154147.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3000, 'jlydster3@youtu.be', '+43541684684', 'Continental', 623850, 'Miami', 'music', '2022-09-20 15:52:31', '2022-10-12 15:52:31'),
(4, 'Sportskeeda', 'Sportskeeda is a sports and esports news website, founded in 2009. The website has\r\nnews, features, commentary and videos on sports like Cricket, Football, WWE, Tennis, NFL,\r\nNBA, and also video games such as Minecraft, Fortnite, PUBG, Valorant, CS:GO, Fr', 'https://images.pexels.com/photos/598631/pexels-photo-598631.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 10000, 'jlydster3@youtu.be', '+564684253', 'Manitowish', 45168, 'Emmaboda', 'sport', '2022-08-05 19:43:47', '2021-04-04 21:17:00'),
(5, 'Rivalry game', 'In Rivalry, two players take turns at moving their ragdoll character\'s limbs and weapons until one is victorious. While the beginning stages of each game captures the strategic essence of swordplay, as damage and limbs are taken, the endgame turns rather', 'https://images.pexels.com/photos/264382/pexels-photo-264382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 50000, 'asdasdasd@asdjasd.com', '+1254835186', 'syezafovich6@columbia.edu', 5487, 'Oak Valley', 'sport', '2022-08-05 19:47:03', '2021-09-11 04:05:00'),
(7, 'Sports star 5', 'Here\'s a common question from IELTS Speaking Part 2: Describe a sportsperson you admire. You should say: who the person is; what sport he or she does', 'https://images.pexels.com/photos/5470380/pexels-photo-5470380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 50000, 'lcolvine4@google.nl', '+4327858725', 'Hoepker', 17318, 'Emmaboda', 'sport', '2022-08-05 19:50:13', '2021-05-17 00:00:00'),
(8, 'CinemaOps', 'A movie theater (American English), cinema (British English), or\r\ncinema hall (Indian English), also known as a picture house, the\r\npictures, picture theater, the silver screen, the big screen or the', 'https://media.istockphoto.com/photos/happy-latin-american-couple-at-the-movies-picture-id688782978?b=1&k=20&m=688782978&s=612x612&w=0&h=v_w3sh7IDwKlfDKkrPuZN49mEppXfJzAHlZC7RW5IXM=', 1000, 'chabertd@parallels.com', '+6598746548', 'Forest Run', 11127, 'Santa Cruz do Sul', 'theater', '2022-08-05 19:55:14', '2022-01-07 21:00:00'),
(9, 'Scribe Theater', 'A Scribe play, long or short, is a masterpiece of plot construction. It is as artistically put together as a master watch; the smallest piece is perfectly in place, and the removal of any', 'https://images.pexels.com/photos/63328/wells-theatre-norfolk-virginian-seats-63328.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 5000, 'wjennyf@blinklist.com', '+23648423185', 'Victoria', 36192, 'Tanggung', 'theater', '2022-08-05 20:55:57', '2022-10-15 03:03:00'),
(10, 'Movie Plug', 'Many movies that play at AMC Theatres are audio-described. ... standard headphone', 'https://images.pexels.com/photos/7991579/pexels-photo-7991579.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 200, 'gfairbanksh@shop-pro.jp', '+165878942', 'Spaight', 9760022, 'Luci', 'theater', '2022-08-05 20:58:30', '2022-11-20 19:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
