-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 07 2025 г., 10:41
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `world`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `ID` int NOT NULL,
  `countries` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `countries-hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `capital-hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `people` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`ID`, `countries`, `countries-hash`, `capital`, `capital-hash`, `people`) VALUES
(16, 'Россия', '$2y$10$v9m4BO33nejCzOCUPFWcFuaXg1.mqtD6Was2ri2tkjoxDIA3QIjf.', ' Москва', '$2y$10$FNvLK4stjMiUftTF4.9FLuJw1mcUbSo4tcmvvpFn6QuOj3ejHc2V6', '146000000'),
(17, 'Германия', '$2y$10$0/xmJCJ9H03FoVIo7OYuGegMD/d4CvMJWFbYwKeQF8x.LSSilMpUu', ' Берлин', '$2y$10$i5PX81LnQTKV0YczduisweA0HoIV0c6iOHUFwbcAZPLVab3M6lHBa', '83000000'),
(18, 'Франция', '$2y$10$ll8fKD1E54pn/DfwWAmga.i.ddMt5afSSqsvaJy4h0sPvYPrpuuqK', ' Париж', '$2y$10$4dJxudbKoK5UJIxxcO2gpelYLPKh4YphZ3GmWjw3w7PX1KIs9R6ze', '67000000'),
(19, 'Италия', '$2y$10$DD7FAJCFXICl/B2v43usqOxwdQwzi72yv/bkX7Br9o0znElC2eY.e', ' Рим', '$2y$10$zvCuR1Gat2s7rwh7i2lwoOc.ygL5Hl9yyIYbeOoPVKbc2/iojFcfm', '60000000'),
(20, 'Япония', '$2y$10$5o3t/ZbYsevGthFPUQiOeeUPjS20QvJL9d09kaa.kzjmbzY6upIo.', ' Токио', '$2y$10$0k9KIzWYV/hFE.GFfF1eV.bDgtnB40vpbHYKn78uEceK1Por.4CqS', '126000000'),
(21, 'Канада', '$2y$10$zNOcOf19Z.xGDRzXbCYP4eIoCaEhfvFL0Ny/3FUBvEPbNKPbYCSi6', ' Оттава', '$2y$10$stijsuOyzJZfBGWQgCV6FOY18r/0.XZavqckM3rDe5jWBX7iQBtzu', '38000000'),
(22, 'Бразилия', '$2y$10$1s9XD4qBK5E9ZZOQP18Sj.OYb/MxqLzBMwW9py5VDvYfEfuM5iCDC', ' Бразилиа', '$2y$10$fuXGoxYvbxW.QG7MKjjdXubVptyqhmN5gu/t0HYYELYCyYb/FaLPq', '213000000'),
(23, 'Индия', '$2y$10$a8uh0wXzIfcjpz6A07UTneLJ2yR2m/xEruCnCSDX8qz5vL0bIzUNW', ' Нью-Дели', '$2y$10$9D2uaNk42iWXmrAgXh5cVu9N1dVsvhYCiA107Z0vbdipHqwNLW/Lu', '1380000000'),
(24, 'Китай', '$2y$10$rRmGFlNO/vZdPDXUhibZzukvcHyksDYDoErnd4pUdSDQ7eOE3cNmO', ' Пекин', '$2y$10$JXt48.1FeeZ9fIzb4rYlceqgCSesZJK5vomPikr6i5VtSpURtn5I6', '1400000000'),
(25, 'США', '$2y$10$9gB7q6B7ONlqCtqMsFTggOVsYNkKCj490UqzHccNI3IVp0HreepNe', ' Вашингтон', '$2y$10$unrMu7M8Ka2cEkoy3qmjReFL9tuZ/W0GS2M9zEXdDSo7EzzTfYZsa', '331000000'),
(26, 'Мексика', '$2y$10$oo8WpNAeJqG72H.mWfHkFuVa/05Sv/mwTwcYmVOCImq84fVsVNLLW', ' Мехико', '$2y$10$E6u2rrLRQN40mpZwMAPddudRcD0J/kV8bUHpGbQR0s7cBg3UE2c3O', '126000000'),
(27, 'Испания', '$2y$10$17701h2NyapSQd0MYSk4iussr385iOJVj8VgxFgYmJdCIZFbrXEKG', ' Мадрид', '$2y$10$OOgZfSfFwbv9oKnLUkj0BuPT8spucdXibhHmRnBErwfeeqx4jrR2K', '47000000'),
(28, 'Великобритания', '$2y$10$gRlCZHunuunIA2//0kWS1OOMFKJinKhcb8jvqmRu.5v1.2XXpeHkW', ' Лондон', '$2y$10$IPSEkYf7zWY8ampzSK2C/emLcExNROA9.mbCyFwkZJAKSKB5y..q6', '67000000'),
(29, 'ЮАР', '$2y$10$CZJO1E2GLIct5dMu0b.SVOJKG5fnXJtNKO5PtQvBv/XMCOMsItohy', ' Претория', '$2y$10$ceOrohwHfT.uHmzVRkI/LustGj1agibFCWhqTQ0T2EkuDfEeWvxx6', '59000000'),
(30, 'Австралия', '$2y$10$VdpybHJYSfr7eGwo1sU1yO/2VX3MisUrw9aQPhG0HNJXJnqX2yOO.', ' Канберра', '$2y$10$mIafpcNbqzvSvZZ7oqHF2.OkHHOnq6VnIT4IplZa9osn0uipIGoDC', '26000000');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
