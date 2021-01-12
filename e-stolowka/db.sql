-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Sty 2021, 16:50
-- Wersja serwera: 10.4.16-MariaDB
-- Wersja PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktualne_menu`
--

CREATE TABLE `aktualne_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `typ` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `aktualne_menu`
--

INSERT INTO `aktualne_menu` (`id`, `title`, `date`, `typ`) VALUES
(1, 'Zupa krem z zielonych warzyw', '2020-12-23', 'obiad'),
(2, 'Ryż na parze z sosem meksykańskim', '2020-12-23', 'obiad'),
(3, 'Filet z indyka na parze', '2020-12-23', 'obiad'),
(4, 'Zupa pomidorowa z makaronem', '2020-12-17', 'obiad'),
(5, 'Barszcz czerwony z jajkiem', '2020-12-17', 'obiad'),
(6, 'Łosoś na parze z ziemniakami', '2020-11-17', 'obiad'),
(7, 'Bułeczka drożdżowa', '2020-12-23', 'kolacja'),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi', '2020-12-15', 'obiad'),
(9, 'Musli na mleku', '2020-12-23', 'kolacja'),
(10, 'Zupa jarzynowa z ziemniakami', '2020-12-16', 'obiad'),
(11, 'Potrawka z kurczaka z ryżem', '2020-12-23', 'sniadanie'),
(12, 'Rosół z makaronem', '2020-12-16', 'obiad'),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem', '2020-12-23', 'kolacja'),
(14, 'Pulpety drobiowe z sosem pomidorowym', '2020-12-21', 'obiad'),
(15, 'Zupa szczawiowa', '2020-12-21', 'sniadanie'),
(16, 'Kluski lane ze strogonowem', '2020-12-23', 'sniadanie'),
(17, 'Zupa krupnik z ziemniakami', '2020-12-20', 'obiad'),
(18, 'Naleśnik owsiany z serkiem naturalnym', '2020-12-23', 'sniadanie'),
(19, 'Kotlety ziemniaczane', '2020-12-19', 'obiad');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dania`
--

CREATE TABLE `dania` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `dania`
--

INSERT INTO `dania` (`id`, `title`) VALUES
(1, 'Zupa krem z zielonych warzyw'),
(2, 'Ryż na parze z sosem meksykańskim'),
(3, 'Filet z indyka na parze'),
(4, 'Zupa pomidorowa z makaronem'),
(5, 'Barszcz czerwony z jajkiem'),
(6, 'Łosoś na parze z ziemniakami'),
(7, 'Bułeczka drożdżowa'),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi'),
(9, 'Musli na mleku'),
(10, 'Zupa jarzynowa z ziemniakami'),
(11, 'Potrawka z kurczaka z ryżem'),
(12, 'Rosół z makaronem'),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem'),
(14, 'Pulpety drobiowe z sosem pomidorowym'),
(15, 'Zupa szczawiowa'),
(16, 'Kluski lane ze strogonowem'),
(17, 'Zupa krupnik z ziemniakami'),
(18, 'Naleśnik owsiany z serkiem naturalnym'),
(19, 'Kotlety ziemniaczane');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(1, 'Internet of Things World Forum', '2020-06-17', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(2, 'The Future of Money and Technology Summit', '2020-06-27', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(3, 'Chrome Dev Summit', '2020-06-13', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(4, 'The Lean Startup Conference', '2020-07-07', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(5, 'Web Submit for Developers', '2020-07-29', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(6, 'Digital Codex Submit 2019', '2020-08-11', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(7, 'Google for Games Developer Summit', '2020-06-17', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(8, 'Android Dev Summit 2020', '2020-06-27', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(9, 'Flutter Interact', '2020-06-27', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(10, 'Software Architecture Conference', '2020-07-18', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(11, 'Lead Dev London', '2020-06-30', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(12, 'Cyber Security & Cloud Expo', '2020-06-30', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(13, 'Blockchain Expo Europe', '2020-07-07', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(14, 'International Conference on Next Generation Computer and Information Technology', '2020-07-20', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(15, '5G Expo North America', '2020-07-04', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(16, '5G Expo North America', '2020-06-13', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(17, 'IoT Tech Expo North America', '2020-08-21', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(18, 'CYBER SECURITY & CLOUD EXPO NORTH AMERICA', '2020-08-21', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(19, '5G Expo Global', '2020-08-31', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `title`, `date`, `username`) VALUES
(1, 'Zupa krem z zielonych warzyw', '2020-12-23', 'amilewski'),
(2, 'Ryż na parze z sosem meksykańskim', '2020-12-23', 'amilewski'),
(3, 'Filet z indyka na parze', '2020-12-17', 'amilewski'),
(4, 'Zupa pomidorowa z makaronem', '2020-12-17', 'amilewski'),
(5, 'Barszcz czerwony z jajkiem', '2020-12-17', 'amilewski'),
(6, 'Łosoś na parze z ziemniakami', '2020-11-17', 'amilewski'),
(7, 'Bułeczka drożdżowa', '2020-12-15', 'amilewski'),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi', '2020-12-15', 'amilewski'),
(9, 'Musli na mleku', '2020-12-23', 'amilewski'),
(10, 'Zupa jarzynowa z ziemniakami', '2020-12-16', 'amilewski'),
(11, 'Potrawka z kurczaka z ryżem', '2020-12-16', 'amilewski'),
(12, 'Rosół z makaronem', '2020-12-16', 'amilewski'),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem', '2020-11-30', 'amilewski'),
(14, 'Pulpety drobiowe z sosem pomidorowym', '2020-12-21', 'amilewski'),
(15, 'Zupa szczawiowa', '2020-12-21', 'amilewski'),
(16, 'Kluski lane ze strogonowem', '2020-12-17', 'amilewski'),
(17, 'Zupa krupnik z ziemniakami', '2020-12-20', 'amilewski'),
(18, 'Naleśnik owsiany z serkiem naturalnym', '2020-12-19', 'amilewski'),
(19, 'Kotlety ziemniaczane', '2020-12-19', 'amilewski');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktualne_menu`
--
ALTER TABLE `aktualne_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `aktualne_menu`
--
ALTER TABLE `aktualne_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
