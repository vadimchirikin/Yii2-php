-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 16 2019 г., 11:01
-- Версия сервера: 5.7.23-24
-- Версия PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u0785083_yii2basic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(52) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1565901180),
('m190815_203041_create_user_table', 1565901187);

-- --------------------------------------------------------

--
-- Структура таблицы `servicelist`
--

CREATE TABLE IF NOT EXISTS `servicelist` (
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
(0, 'Proxy', 'Jason Bourne', '100.0.2.11', 'net.ru', 1),
(1, 'Hosting', 'Jason Bourne', '8.8.8.8', 'kgb.com', 1),
(2, 'Hosting', 'Gleb Jiglov', '10.10.10.10', 'news.ru', 12),
(3, 'Proxy', 'Piter Pen', '8.8.8.8', '12345.ua', 10),
(7, 'Hosting', 'Jason Bourne', '8.8.8.8', '12345.ru', 1),
(15, 'Hosting', 'James Bond', '192.168.1.1', '12345.ru', 2),
(17, 'Hosting', 'John Rambo', '100.0.2.11', 'net.ua', 9),
(18, 'Proxy', 'New client Best client', '1.1.1.1', 'yandex.ru', 4),
(19, 'Hosting', 'Jason Born', '10.0.2.155', 'mail.ru', 8),
(20, 'Proxy', 'Gleb Jiglov', '1.1.1.1', '12345.ua', 13),
(23, 'Hosting', 'Super Hero', '1.1.1.1', 'net.ru', 17);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'zrQn0pIhFb6mARN9C0kHgfKKrak-UV0A', '$2y$13$aPyjDw6PPk6E1LV5kzuNveEnv.A/bEZWr3e4UujogSgtzg./MNgsK', NULL, 'admin@mysite.ru', 10, 1565901551, 1565901551);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
