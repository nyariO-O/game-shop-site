-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 25 2026 г., 13:18
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newgen`
--

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `game_img` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `game_description` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `game_price` int(11) NOT NULL,
  `game_min_req` int(11) NOT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `developer` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `release_date` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slider` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`game_id`, `game_name`, `game_img`, `game_description`, `game_price`, `game_min_req`, `publisher`, `developer`, `release_date`, `language`, `slider`) VALUES
(1, 'Peak', 'img/peak', 'Игра предлагает совместное восхождение на генерируемую гору после крушения на таинственном острове. До четырёх игроков управляют скаутами-альпинистами, которые пытаются достичь вершины, преодолевая разнообразные биомы, включая прибрежные скалы, тропики, ледяные альпы и лавовую кальдеру. Карта обновляется каждые 24 часа, гарантируя уникальные маршруты при каждом новом запуске.\r\nPEAK построена вокруг системы выносливости, которая расходуется на все действия: бег, прыжки, карабканье, сопротивление холоду и даже переваривание пищи. Основные ресурсы — еда, вода, медикаменты, верёвки, гарпуны и питоны — находятся в разбросанных по уровню чемоданах.\r\nМеханики взаимодействия включают подсадки, совместное использование снаряжения и помощь упавшим игрокам. После гибели участник становится призраком, способным помогать оставшимся в команде до следующей точки возрождения.В одиночном режиме игрока может преследовать особый враг — Лесничий, что делает прохождение существенно более сложным.', 200, 1, 'Landfall Games', 'Aggro Crab', '6 июня 2025', 'Русский, Англйиский', 1),
(2, 'CS2 Prime', 'img/cs2', 'Прайм-статус (Prime Status) в CS2 — это платный (около $14.99 или ~1200-1400 руб.) уровень аккаунта, необходимый для игры с другими прайм-игроками, что значительно снижает количество читеров. Он открывает доступ к рейтингу (Premier), получению опыта, званий и еженедельных дропов. Покупается навсегда через Steam Store.', 1200, 1, 'Valve', 'Valve', '27 сентября 2023', 'Русский, Английский', 1),
(3, 'The Sims 4', 'img/sims', 'The Sims — культовая серия компьютерных игр-симуляторов жизни, созданная Maxis и изданная Electronic Arts. Игрок управляет виртуальными людьми (симами), удовлетворяя их потребности, развивая навыки, строя дома и выстраивая взаимоотношения. Это игра-песочница без фиксированного финала, где можно моделировать различные жизненные сценарии.', 2000, 1, 'Electronic Arts', 'Maxis ', ' 2 сентября 2014 ', 'Английский', NULL),
(4, 'GTA 5', 'img/gta', 'Grand Theft Auto V (сокр. GTA V) — компьютерная игра в жанре action-adventure с открытым миром, разработанная компанией Rockstar North и изданная компанией Rockstar Games. Изначально игра была выпущена для игровых консолей PlayStation 3 и Xbox 360 в 2013 году, в 2014 году переиздана для PlayStation 4 и Xbox One, в 2015 году для Windows и в 2022 году для PlayStation 5 и Xbox Series X/S. Является пятнадцатой по счёту игрой серии Grand Theft Auto и следующей крупной игрой после Grand Theft Auto IV, выпущенной в 2008 году[9]. В России и СНГ издателем Grand Theft ', 1500, 2, 'Rockstar Games', 'Rockstar North', '17 сентября 2013', 'Английский', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `game_genre`
--

CREATE TABLE `game_genre` (
  `id_genre` int(11) NOT NULL,
  `genre_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `game_genre`
--

INSERT INTO `game_genre` (`id_genre`, `genre_name`) VALUES
(1, 'Экшн'),
(2, 'Симулятор выживания'),
(3, 'Шутер'),
(4, 'Приключенческий экшн'),
(5, 'Инди'),
(6, 'Симулятор жизни');

-- --------------------------------------------------------

--
-- Структура таблицы `game_genre_id`
--

CREATE TABLE `game_genre_id` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `game_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `game_genre_id`
--

INSERT INTO `game_genre_id` (`id`, `game_id`, `game_genre`) VALUES
(1, 4, 4),
(2, 4, 6),
(3, 1, 5),
(4, 1, 1),
(5, 3, 6),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `min_sys_req`
--

CREATE TABLE `min_sys_req` (
  `min_req_id` int(11) NOT NULL,
  `os` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cpu` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ram` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_card` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `directx` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cd` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `min_sys_req`
--

INSERT INTO `min_sys_req` (`min_req_id`, `os`, `cpu`, `ram`, `video_card`, `directx`, `cd`) VALUES
(1, 'Windows 10', 'Intel Core i7-8700K or AMD Ryzen 5 1600X', '12 GB ОЗУ', 'NVIDIA GeForce GTX 1060, 6 GB or AMD Radeon RX 590, 8 GB or Intel Arc A750, 8 GB', 'Версии 12', '25 GB'),
(2, 'Windows 11', 'Intel Core i5-12600K or AMD Ryzen 7 5800X', '16 GB ОЗУ', 'NVIDIA GeForce RTX 3070, 8GB or AMD Radeon RX 6800, 16 GB', 'версии 12', '100 GB');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `key_min_req` (`game_min_req`),
  ADD KEY `key_img` (`game_img`);

--
-- Индексы таблицы `game_genre`
--
ALTER TABLE `game_genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Индексы таблицы `game_genre_id`
--
ALTER TABLE `game_genre_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_game_id` (`game_id`),
  ADD KEY `key_genre_id` (`game_genre`);

--
-- Индексы таблицы `min_sys_req`
--
ALTER TABLE `min_sys_req`
  ADD PRIMARY KEY (`min_req_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `game_genre`
--
ALTER TABLE `game_genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `game_genre_id`
--
ALTER TABLE `game_genre_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `min_sys_req`
--
ALTER TABLE `min_sys_req`
  MODIFY `min_req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `key_min_req` FOREIGN KEY (`game_min_req`) REFERENCES `min_sys_req` (`min_req_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `game_genre_id`
--
ALTER TABLE `game_genre_id`
  ADD CONSTRAINT `key_game_id` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `key_genre_id` FOREIGN KEY (`game_genre`) REFERENCES `game_genre` (`id_genre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
