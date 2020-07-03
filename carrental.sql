-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Lip 2020, 18:43
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `carrental`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id` int(6) NOT NULL,
  `imie` char(12) NOT NULL,
  `nazwisko` char(12) NOT NULL,
  `adres` char(10) NOT NULL,
  `telefon` int(12) NOT NULL,
  `email` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id`, `imie`, `nazwisko`, `adres`, `telefon`, `email`) VALUES
(1, 'łukasz', 'legitymacja', 'starachowi', 777666555, 'luki@gmail.com'),
(2, 'rafal', 'tanajno', 'warszawa', 666777555, 'rt@gmail.com'),
(5, 'adasd', 'dsad', 'asdas', 123213, '22'),
(6, 'adasd', 'a', 'asdas', 1111, '22'),
(7, 'adasd', 'dsad', 'swda', 123213, '22'),
(8, 'asdasdasd', 'sad', 'asdas', 123, '6934583u'),
(9, 'WIESLAW', 'a', 'swda', 1111, 'adam.palega'),
(10, 'kurkur', 'sad', 'asd', 123213, '6934583u'),
(11, 'kurkur', 'sad', 'asd', 123213, '6934583u'),
(12, 'KASKDKASDKA', 'a', 'swda', 123213, 'adam.palega'),
(13, 'a', 'a', 'a', 123, 'adampalega98@gm'),
(14, 'a', 'a', 'a', 123, 'adampalega98@gm'),
(15, 'a', 'a', 'a', 123, 'ss'),
(16, 'a', 'a', 'a', 0, 'ada'),
(17, 'pawel', 'rafal', 'woladzbadz', 123, '22@22.pl'),
(18, 'pawel', 'zzz', 'woladzbadz', 123, 'dd'),
(19, 'rafal', 'rychwalski', 'woladzbadz', 123, 'sss'),
(20, 'kajko', 'kokosz', 'woladzbadz', 123, '2faf'),
(21, 'pawel', 'rafal', 'woladzbadz', 123, 'www2'),
(22, 'ADOLF', 'STALIN', 'NOWOSYBIRS', 222, '2'),
(23, 'ww', 'ww', 'w', 0, 'whann965q@bbov9'),
(24, 'adasd', 'sad', 'swda', 0, 'adam.palega'),
(25, 'asd', '11', 'asd', 0, '22'),
(26, 'a', 'dsad', 'asdas', 0, '6934583u'),
(27, 'adasd', '11', 'sss', 0, 'adam.palega'),
(28, 'adasd', 'sad', 'a', 0, 'adam.palega'),
(29, 'adasd', 'sad', 'swda', 0, 'adam.palega');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pakiety`
--

CREATE TABLE `pakiety` (
  `id` int(11) NOT NULL,
  `nazwa` char(12) NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pakiety`
--

INSERT INTO `pakiety` (`id`, `nazwa`, `cena`) VALUES
(1, 'silver', 0),
(2, 'gold', 50),
(3, 'platinium', 70);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(4) NOT NULL,
  `imie` char(12) NOT NULL,
  `nazwisko` char(12) NOT NULL,
  `telefon` int(10) NOT NULL,
  `mail` char(12) NOT NULL,
  `adres` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `telefon`, `mail`, `adres`) VALUES
(1, 'adam', 'asus', 898787454, 'eee@ee.pl', 'krakow');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE `rezerwacja` (
  `id_rezerwacji` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_samochodu` int(11) NOT NULL,
  `id_pracownika` int(11) NOT NULL,
  `data_wypozyczenia` date NOT NULL,
  `data_zwrotu` date NOT NULL,
  `id_pakietu` int(11) NOT NULL,
  `rabat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezerwacja`
--

INSERT INTO `rezerwacja` (`id_rezerwacji`, `id_klienta`, `id_samochodu`, `id_pracownika`, `data_wypozyczenia`, `data_zwrotu`, `id_pakietu`, `rabat`) VALUES
(4, 1, 43, 1, '2020-06-03', '2020-06-11', 2, 20),
(5, 1, 43, 1, '2020-06-03', '2020-06-11', 2, 20),
(6, 1, 37, 1, '2020-06-01', '2020-06-16', 1, 0),
(7, 1, 37, 1, '2020-06-01', '2020-06-16', 1, 222),
(8, 16, 15, 1, '2020-06-17', '2020-06-25', 1, 1),
(9, 17, 22, 1, '2020-06-03', '2020-06-10', 1, 1),
(10, 18, 23, 1, '2020-06-05', '2020-06-11', 1, 1),
(11, 19, 23, 1, '2020-06-11', '2020-06-27', 1, 1),
(12, 19, 23, 1, '2020-06-11', '2020-06-27', 1, 1),
(13, 20, 23, 1, '2020-06-11', '2020-06-26', 1, 1),
(14, 20, 23, 1, '2020-06-11', '2020-06-26', 1, 1),
(15, 21, 15, 1, '2020-06-18', '2020-07-02', 1, 1),
(16, 21, 15, 1, '2020-06-18', '2020-07-02', 1, 1),
(17, 22, 23, 1, '2020-06-20', '2020-06-28', 1, 1),
(18, 22, 23, 1, '2020-06-20', '2020-06-28', 1, 1),
(19, 23, 41, 1, '2020-06-17', '2020-06-17', 1, 1),
(20, 24, 32, 1, '2020-06-03', '2020-06-07', 1, 1),
(21, 24, 32, 1, '2020-06-03', '2020-06-07', 1, 1),
(22, 24, 32, 1, '2020-06-03', '2020-06-07', 1, 1),
(23, 25, 30, 1, '2020-06-16', '2020-06-25', 1, 1),
(24, 26, 33, 1, '2020-06-01', '2020-06-04', 1, 1),
(25, 27, 33, 1, '2020-06-03', '2020-06-18', 1, 1),
(26, 28, 29, 1, '2020-06-02', '2020-06-24', 1, 1),
(27, 28, 29, 1, '2020-06-02', '2020-06-24', 1, 1),
(28, 28, 29, 1, '2020-06-02', '2020-06-24', 1, 1),
(29, 28, 29, 1, '2020-06-02', '2020-06-24', 1, 1),
(30, 29, 23, 1, '2020-07-23', '2020-07-29', 1, 1),
(31, 29, 23, 1, '2020-07-23', '2020-07-29', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochod`
--

CREATE TABLE `samochod` (
  `id` int(6) NOT NULL,
  `id_segment` int(5) NOT NULL,
  `marka` char(10) NOT NULL,
  `model` char(10) NOT NULL,
  `lokalizacja` int(10) NOT NULL,
  `data_sprzedazy` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `samochod`
--

INSERT INTO `samochod` (`id`, `id_segment`, `marka`, `model`, `lokalizacja`, `data_sprzedazy`) VALUES
(1, 2, 'toyota', 'proace', 5555, '2021-06-17'),
(8, 2, 'TOYOTA', 'AYGO', 19614, '2021-06-17'),
(9, 2, 'TOYOTA', 'AYGO', 156, '2020-10-08'),
(10, 2, 'OPEL', 'ADAM', 464, '2020-11-18'),
(11, 2, 'DAYHATSU', 'CHARADE', 9849, '2021-02-16'),
(12, 2, 'TOYOTA', 'IQ', 94, '2020-12-18'),
(13, 3, 'TOYOTA', 'YARIS', 2548, '2021-04-22'),
(14, 3, 'SKODA', 'FABIA', 498, '2021-05-06'),
(15, 3, 'SUBARU', 'JUSTY', 14654, '2021-09-09'),
(16, 3, 'BMW', '', 0, '0000-00-00'),
(17, 2, 'TOYOTA', 'AYGO', 19614, '2021-06-17'),
(18, 2, 'TOYOTA', 'AYGO', 156, '2020-10-08'),
(19, 2, 'OPEL', 'ADAM', 464, '2020-11-18'),
(20, 2, 'DAYHATSU', 'CHARADE', 9849, '2021-02-16'),
(21, 2, 'TOYOTA', 'IQ', 94, '2020-12-18'),
(22, 3, 'TOYOTA', 'YARIS', 2548, '2021-04-22'),
(23, 3, 'SKODA', 'FABIA', 498, '2021-05-06'),
(24, 3, 'SUBARU', 'JUSTY', 14654, '2021-09-09'),
(25, 4, 'TOYOTA', 'COROLLA', 2137, '2021-08-19'),
(26, 4, 'SEAT', 'LEON', 6666, '2021-07-14'),
(27, 4, 'BMW', '1', 514, '2021-01-26'),
(28, 4, 'AUDI', 'A3', 494, '2020-12-04'),
(29, 7, 'VOLKSWAGEN', 'PASSAT', 2137, '2021-07-08'),
(30, 7, 'SKODA', 'SUPERB', 7312, '2021-04-15'),
(31, 7, 'OPEL', 'INSIGNIA', 749874, '2021-11-30'),
(32, 7, 'MAZDA', '6', 9584, '2021-07-14'),
(33, 7, 'HYUNDAI', 'I40', 156, '2021-12-08'),
(34, 4, 'TOYOTA', 'COROLLA', 2137, '2021-08-19'),
(35, 4, 'SEAT', 'LEON', 6666, '2021-07-14'),
(36, 4, 'BMW', '1', 514, '2021-01-26'),
(37, 4, 'AUDI', 'A3', 494, '2020-12-04'),
(38, 7, 'VOLKSWAGEN', 'PASSAT', 2137, '2021-07-08'),
(39, 7, 'SKODA', 'SUPERB', 7312, '2021-04-15'),
(40, 7, 'OPEL', 'INSIGNIA', 749874, '2021-11-30'),
(41, 7, 'MAZDA', '6', 9584, '2021-07-14'),
(42, 7, 'HYUNDAI', 'I40', 156, '2021-12-08'),
(43, 8, 'AUDI', 'A6', 777, '2021-06-23'),
(44, 8, 'BMW', '5', 6666, '2021-04-15'),
(45, 8, 'BMW', 'I8', 498, '2020-09-16'),
(46, 8, 'LEXUS', 'RC', 5611, '2021-01-06'),
(47, 1, 'OPEL', 'VIVARO', 19514, '2020-10-08'),
(48, 1, 'PEUGEOT', 'BOXER MAXI', 149, '2021-02-23'),
(49, 1, 'FORD', 'TRANSIT', 191, '2021-01-08'),
(50, 1, 'PEUGEOT', 'EXPERT VAN', 5961, '2021-06-15'),
(51, 1, 'REANAULT', 'MASTER', 7481, '2021-08-26'),
(52, 1, 'VOLKSWAGEN', 'CRAFTER', 1914, '2021-12-14'),
(53, 8, 'AUDI', 'A6', 777, '2021-06-23'),
(54, 8, 'BMW', '5', 6666, '2021-04-15'),
(55, 8, 'BMW', 'I8', 498, '2020-09-16'),
(56, 8, 'LEXUS', 'RC', 5611, '2021-01-06'),
(57, 1, 'OPEL', 'VIVARO', 19514, '2020-10-08'),
(58, 1, 'PEUGEOT', 'BOXER MAXI', 149, '2021-02-23'),
(59, 1, 'FORD', 'TRANSIT', 191, '2021-01-08'),
(60, 1, 'PEUGEOT', 'EXPERT VAN', 5961, '2021-06-15'),
(61, 1, 'REANAULT', 'MASTER', 7481, '2021-08-26'),
(62, 1, 'VOLKSWAGEN', 'CRAFTER', 1914, '2021-12-14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `segment`
--

CREATE TABLE `segment` (
  `id` int(2) NOT NULL,
  `nazwa` char(5) NOT NULL,
  `cena` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `segment`
--

INSERT INTO `segment` (`id`, `nazwa`, `cena`) VALUES
(1, 'van', 150),
(2, 'a', 70),
(3, 'b', 90),
(4, 'c', 120),
(7, 'd', 150),
(8, 'p', 220);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD PRIMARY KEY (`id_rezerwacji`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_pakietu` (`id_pakietu`),
  ADD KEY `id_samochodu` (`id_samochodu`),
  ADD KEY `id_pracownika` (`id_pracownika`);

--
-- Indeksy dla tabeli `samochod`
--
ALTER TABLE `samochod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_segment` (`id_segment`);

--
-- Indeksy dla tabeli `segment`
--
ALTER TABLE `segment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `pakiety`
--
ALTER TABLE `pakiety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  MODIFY `id_rezerwacji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT dla tabeli `samochod`
--
ALTER TABLE `samochod`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT dla tabeli `segment`
--
ALTER TABLE `segment`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD CONSTRAINT `rezerwacja_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id`),
  ADD CONSTRAINT `rezerwacja_ibfk_2` FOREIGN KEY (`id_pakietu`) REFERENCES `pakiety` (`id`),
  ADD CONSTRAINT `rezerwacja_ibfk_3` FOREIGN KEY (`id_samochodu`) REFERENCES `samochod` (`id`),
  ADD CONSTRAINT `rezerwacja_ibfk_4` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownicy` (`id`);

--
-- Ograniczenia dla tabeli `samochod`
--
ALTER TABLE `samochod`
  ADD CONSTRAINT `samochod_ibfk_1` FOREIGN KEY (`id_segment`) REFERENCES `segment` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
