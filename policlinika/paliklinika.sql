-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 21 2025 г., 14:27
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
-- База данных: `paliklinika`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appointment`
--

CREATE TABLE `appointment` (
  `id` int NOT NULL,
  `pacient_name` int DEFAULT NULL,
  `doctor_name` int DEFAULT NULL,
  `appointment_date` varchar(10) DEFAULT NULL,
  `appointment_time` varchar(5) DEFAULT NULL,
  `cabinet` int DEFAULT NULL,
  `usluga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `appointment`
--

INSERT INTO `appointment` (`id`, `pacient_name`, `doctor_name`, `appointment_date`, `appointment_time`, `cabinet`, `usluga`) VALUES
(1, 1, 1, '15.05.2025', '9:00', 101, 1),
(2, 2, 2, '16.05.2025', '10:30', 205, 2),
(3, 3, 3, '17.05.2025', '11:15', 312, 3),
(4, 4, 4, '18.05.2025', '14:00', 104, 4),
(5, 5, 5, '19.05.2025', '8:30', 208, 5),
(6, 6, 1, '20.05.2025', '13:45', 101, 1),
(7, 7, 2, '21.05.2025', '15:20', 205, 2),
(8, 8, 3, '22.05.2025', '16:00', 312, 3),
(9, 9, 4, '23.05.2025', '9:45', 104, 4),
(10, 10, 5, '24.05.2025', '12:30', 208, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE `cards` (
  `id` int NOT NULL,
  `pacientname` int DEFAULT NULL,
  `diagnos` int DEFAULT NULL,
  `lastcheck` varchar(10) DEFAULT NULL,
  `recommendations` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `cards`
--

INSERT INTO `cards` (`id`, `pacientname`, `diagnos`, `lastcheck`, `recommendations`) VALUES
(1, 1, 1, '10.05.2025', 'Диета, контроль давления'),
(2, 2, 2, '11.05.2025', 'Щадящее питание'),
(3, 3, 3, '12.05.2025', 'Очки -2.5'),
(4, 4, 4, '13.05.2025', 'ЭКГ раз в 3 месяца'),
(5, 5, 5, '14.05.2025', 'Постельный режим'),
(6, 6, 6, '15.05.2025', 'Препараты железа'),
(7, 7, 7, '16.05.2025', 'Гипс на 4 недели'),
(8, 8, 8, '17.05.2025', 'Антигистаминные'),
(9, 9, 9, '18.05.2025', 'ЛФК, массаж'),
(10, 10, 10, '19.05.2025', 'Ингаляции');

-- --------------------------------------------------------

--
-- Структура таблицы `days`
--

CREATE TABLE `days` (
  `id` int NOT NULL,
  `days` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `days`
--

INSERT INTO `days` (`id`, `days`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда '),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота');

-- --------------------------------------------------------

--
-- Структура таблицы `diagnos`
--

CREATE TABLE `diagnos` (
  `id` int NOT NULL,
  `diagnos` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `diagnos`
--

INSERT INTO `diagnos` (`id`, `diagnos`) VALUES
(1, 'Гипертония'),
(2, 'Гастрит'),
(3, 'Близорукость'),
(4, 'Аритмия'),
(5, 'ОРВИ'),
(6, 'Анемия'),
(7, 'Перелом руки'),
(8, 'Аллергия'),
(9, 'Остеохондроз'),
(10, 'Бронхит');

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `dr_name` int DEFAULT NULL,
  `speciality` int DEFAULT NULL,
  `cabinet` int DEFAULT NULL,
  `grath` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`id`, `dr_name`, `speciality`, `cabinet`, `grath`) VALUES
(1, 1, 1, 101, 'Пн-Пт, 8:00-16:00'),
(2, 2, 2, 205, 'Вт-Сб, 9:00-17:00'),
(3, 3, 3, 312, 'Пн-Ср-Пт, 10:00-18:00'),
(4, 4, 4, 104, 'Пн-Пт, 9:00-15:00'),
(5, 5, 5, 208, 'Пн-Сб, 8:00-14:00'),
(6, 1, 1, 101, 'Пн-Пт, 8:00-16:00'),
(7, 2, 2, 205, 'Вт-Сб, 9:00-17:00'),
(8, 3, 3, 312, 'Пн-Ср-Пт, 10:00-18:00'),
(9, 4, 4, 104, 'Пн-Пт, 9:00-15:00'),
(10, 5, 5, 208, 'Пн-Сб, 8:00-14:00');

-- --------------------------------------------------------

--
-- Структура таблицы `drnames`
--

CREATE TABLE `drnames` (
  `id` int NOT NULL,
  `dr_name` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `drnames`
--

INSERT INTO `drnames` (`id`, `dr_name`) VALUES
(1, 'Соколова Мария Ивановна'),
(2, 'Лебедев Алексей Петрович'),
(3, 'Воробьева Екатерина Сергеевна'),
(4, 'Громов Денис Олегович'),
(5, 'Зайцева Анна Дмитриевна');

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `id` int NOT NULL,
  `gender` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Њ'),
(2, '†');

-- --------------------------------------------------------

--
-- Структура таблицы `pacient`
--

CREATE TABLE `pacient` (
  `id` int NOT NULL,
  `pacient_name` int DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  `adress` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `pacient`
--

INSERT INTO `pacient` (`id`, `pacient_name`, `birthday`, `gender`, `phone_number`, `adress`) VALUES
(1, 1, '15.03.1985', 1, 79123456789, 'ул. Ленина, д. 10'),
(2, 2, '22.07.1990', 2, 79234567890, 'пр. Мира, д. 5'),
(3, 3, '10.11.1978', 1, 79035678901, 'ул. Гагарина, д. 15'),
(4, 4, '05.05.1995', 2, 79146789012, 'ул. Садовая, д. 3'),
(5, 5, '30.09.1982', 1, 79257890123, 'пр. Космонавтов, д. 8'),
(6, 6, '18.12.1987', 2, 79368901234, 'ул. Центральная, д. 1'),
(7, 7, '25.04.1975', 1, 79479012345, 'ул. Пушкина, д. 12'),
(8, 8, '12.08.1993', 2, 79580123456, 'ул. Лесная, д. 7'),
(9, 9, '07.01.1980', 1, 79691234567, 'пр. Строителей, д. 4'),
(10, 10, '20.06.1989', 2, 79702345678, 'ул. Школьная, д. 9');

-- --------------------------------------------------------

--
-- Структура таблицы `pacients`
--

CREATE TABLE `pacients` (
  `id` int NOT NULL,
  `pacients` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `pacients`
--

INSERT INTO `pacients` (`id`, `pacients`) VALUES
(1, 'Иванов Иван Иванович'),
(2, 'Петрова Анна Сергеевна'),
(3, 'Сидоров Дмитрий Петрович'),
(4, 'Кузнецова Елена Владимировна'),
(5, 'Федоров Михаил Олегович'),
(6, 'Смирнова Ольга Дмитриевна'),
(7, 'Николаев Артем Игоревич'),
(8, 'Васильева Татьяна Андреевна'),
(9, 'Павлов Сергей Викторович'),
(10, 'Козлова Наталья Александровна');

-- --------------------------------------------------------

--
-- Структура таблицы `raspisanie`
--

CREATE TABLE `raspisanie` (
  `id` int NOT NULL,
  `doctor` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  `start` varchar(4) DEFAULT NULL,
  `end` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `raspisanie`
--

INSERT INTO `raspisanie` (`id`, `doctor`, `day`, `start`, `end`) VALUES
(1, 1, 1, '8:00', '16:00'),
(2, 1, 2, '8:00', '16:00'),
(3, 1, 3, '8:00', '16:00'),
(4, 1, 4, '8:00', '16:00'),
(5, 1, 5, '8:00', '16:00'),
(6, 2, 2, '9:00', '17:00'),
(7, 2, 3, '9:00', '17:00'),
(8, 2, 4, '9:00', '17:00'),
(9, 2, 5, '9:00', '17:00'),
(10, 2, 6, '9:00', '17:00');

-- --------------------------------------------------------

--
-- Структура таблицы `speciality`
--

CREATE TABLE `speciality` (
  `id` int NOT NULL,
  `speciality` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `speciality`
--

INSERT INTO `speciality` (`id`, `speciality`) VALUES
(1, 'терапевт'),
(2, 'хирург'),
(3, 'офтальмолог'),
(4, 'кардиолог'),
(5, 'педиатр');

-- --------------------------------------------------------

--
-- Структура таблицы `usluga`
--

CREATE TABLE `usluga` (
  `id` int NOT NULL,
  `usluga` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `time` int DEFAULT NULL,
  `uslugcabinet` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `usluga`
--

INSERT INTO `usluga` (`id`, `usluga`, `price`, `time`, `uslugcabinet`) VALUES
(1, 1, 1500, 30, 101),
(2, 2, 10000, 120, 205),
(3, 3, 2000, 45, 312),
(4, 4, 2500, 20, 104),
(5, 5, 800, 15, 208);

-- --------------------------------------------------------

--
-- Структура таблицы `uslugi`
--

CREATE TABLE `uslugi` (
  `id` int NOT NULL,
  `usluga` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `uslugi`
--

INSERT INTO `uslugi` (`id`, `usluga`) VALUES
(1, 'Консультация терапевта'),
(2, 'Операция (хирург)'),
(3, 'Проверка зрения'),
(4, 'ЭКГ'),
(5, 'Вакцинация');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pacient_name` (`pacient_name`),
  ADD KEY `doctor_name` (`doctor_name`),
  ADD KEY `appointment_ibfk_3` (`usluga`);

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pacientname` (`pacientname`),
  ADD KEY `diagnos` (`diagnos`);

--
-- Индексы таблицы `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `diagnos`
--
ALTER TABLE `diagnos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dr_name` (`dr_name`),
  ADD KEY `speciality` (`speciality`);

--
-- Индексы таблицы `drnames`
--
ALTER TABLE `drnames`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pacient`
--
ALTER TABLE `pacient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender` (`gender`),
  ADD KEY `pacient_name` (`pacient_name`);

--
-- Индексы таблицы `pacients`
--
ALTER TABLE `pacients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `raspisanie`
--
ALTER TABLE `raspisanie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `day` (`day`),
  ADD KEY `doctor` (`doctor`);

--
-- Индексы таблицы `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `usluga`
--
ALTER TABLE `usluga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usluga_ibfk_1` (`usluga`);

--
-- Индексы таблицы `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `days`
--
ALTER TABLE `days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `diagnos`
--
ALTER TABLE `diagnos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `drnames`
--
ALTER TABLE `drnames`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pacient`
--
ALTER TABLE `pacient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `pacients`
--
ALTER TABLE `pacients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `raspisanie`
--
ALTER TABLE `raspisanie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `speciality`
--
ALTER TABLE `speciality`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `usluga`
--
ALTER TABLE `usluga`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`pacient_name`) REFERENCES `pacients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctor_name`) REFERENCES `drnames` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`usluga`) REFERENCES `uslugi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`pacientname`) REFERENCES `pacients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cards_ibfk_2` FOREIGN KEY (`diagnos`) REFERENCES `diagnos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`dr_name`) REFERENCES `drnames` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`speciality`) REFERENCES `speciality` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `pacient`
--
ALTER TABLE `pacient`
  ADD CONSTRAINT `pacient_ibfk_1` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `pacient_ibfk_2` FOREIGN KEY (`pacient_name`) REFERENCES `pacients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `raspisanie`
--
ALTER TABLE `raspisanie`
  ADD CONSTRAINT `raspisanie_ibfk_1` FOREIGN KEY (`day`) REFERENCES `days` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `raspisanie_ibfk_2` FOREIGN KEY (`doctor`) REFERENCES `drnames` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `usluga`
--
ALTER TABLE `usluga`
  ADD CONSTRAINT `usluga_ibfk_1` FOREIGN KEY (`usluga`) REFERENCES `uslugi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
