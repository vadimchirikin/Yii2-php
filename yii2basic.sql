-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 12 2019 г., 06:15
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--home page: http://localhost/basic/web/index.php?r=site%2Flogin
-- База данных: `yii2basic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id`, `fname`, `lname`) VALUES
(1, 'Jason', 'Bourne'),
(2, 'James', 'Bond'),
(3, 'Ethan', 'Hunt'),
(4, 'New client', 'Best client'),
(5, 'New client', 'Best client'),
(6, 'New client', '1234'),
(8, 'The', 'First'),
(9, 'John', 'Rambo'),
(10, 'Piter', 'Pen'),
(11, 'Jason', 'Born'),
(12, 'Gleb', 'Jiglov'),
(13, 'New client', 'Best client'),
(14, 'Super', 'Hero');

-- --------------------------------------------------------

--
-- Структура таблицы `servicelist`
--

CREATE TABLE `servicelist` (
  `id` int(11) NOT NULL,
  `type` varchar(7) NOT NULL,
  `user` varchar(30) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `servicelist`
--

INSERT INTO `servicelist` (`id`, `type`, `user`, `ip`, `domain`, `user_id`) VALUES
(0, 'Proxy', 'Jason Bourne', '100.0.2.11', 'net.ua', 1),
(1, 'Hosting', 'Jason Bourne', '8.8.8.8', 'kgb.com', 1),
(2, 'Hosting', 'Gleb Jiglov', '10.10.10.10', 'news.ru', 12),
(3, 'Proxy', 'Piter Pen', '8.8.8.8', '12345.ua', 10),
(7, 'Hosting', 'Jason Bourne', '8.8.8.8', '12345.ru', 1),
(15, 'Hosting', 'James Bond', '192.168.1.1', '12345.ru', 2),
(17, 'Hosting', 'John Rambo', '100.0.2.11', 'net.ua', 9),
(18, 'Proxy', 'New client Best client', '1.1.1.1', 'yandex.ru', 4),
(19, 'Hosting', 'Jason Born', '10.0.2.155', 'mail.ru', 8),
(20, 'Proxy', 'Gleb Jiglov', '1.1.1.1', '12345.ua', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servicelist`
--
ALTER TABLE `servicelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
