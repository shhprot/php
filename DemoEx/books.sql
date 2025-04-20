-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 16 2025 г., 12:22
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
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `authors` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `authors`) VALUES
(1, 'крокодилобомбардиро'),
(2, 'фрулифрула'),
(3, 'тралалелутрлала');

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int NOT NULL,
  `book_name` int DEFAULT NULL,
  `autor_name` int DEFAULT NULL,
  `genre` int DEFAULT NULL,
  `reader_name` int DEFAULT NULL,
  `date_of_issue` varchar(10) DEFAULT NULL,
  `return_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `book_name`, `autor_name`, `genre`, `reader_name`, `date_of_issue`, `return_date`) VALUES
(1, 1, 1, 1, 1, '', NULL),
(2, 2, 2, 2, 2, '05.03.2025', NULL),
(3, 3, 3, 3, 3, '12.02.2025', '12.04.2025');

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int NOT NULL,
  `genres` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `genres`) VALUES
(1, 'лирика'),
(2, 'роман'),
(3, 'сказочки');

-- --------------------------------------------------------

--
-- Структура таблицы `papers`
--

CREATE TABLE `papers` (
  `id` int NOT NULL,
  `paper_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `papers`
--

INSERT INTO `papers` (`id`, `paper_name`) VALUES
(1, 'асаламалекум'),
(2, 'брат2700рублей'),
(3, 'налирикуи2тропа');

-- --------------------------------------------------------

--
-- Структура таблицы `uses`
--

CREATE TABLE `uses` (
  `id` int NOT NULL,
  `login` varchar(6) DEFAULT NULL,
  `pass` varchar(6) DEFAULT NULL,
  `reader_name` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `uses`
--

INSERT INTO `uses` (`id`, `login`, `pass`, `reader_name`) VALUES
(1, 'admin1', 'admin1', 'тунтунтунсахур'),
(2, 'user1', 'user1', 'балеринакапучина'),
(3, 'user2', 'user2', 'крокодилдопенисини');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reader_name` (`reader_name`),
  ADD KEY `genre` (`genre`),
  ADD KEY `autor_name` (`autor_name`),
  ADD KEY `book_name` (`book_name`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `papers`
--
ALTER TABLE `papers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `uses`
--
ALTER TABLE `uses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`reader_name`) REFERENCES `uses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`autor_name`) REFERENCES `authors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`book_name`) REFERENCES `papers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
