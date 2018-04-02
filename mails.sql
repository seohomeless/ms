-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 02 2018 г., 16:23
-- Версия сервера: 5.6.37
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mails`
--

-- --------------------------------------------------------

--
-- Структура таблицы `addressee`
--

CREATE TABLE `addressee` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Структура таблицы `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `them` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `mailto` varchar(100) NOT NULL,
  `date_send` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Дамп данных таблицы `mail`
--

INSERT INTO `mail` (`id`, `sender_id`, `them`, `body`, `mailto`, `date_send`) VALUES
(29, 66, 'йцу', 'йцу', 'asd@asd.ru', '2018-02-04 12:38:50'),
(30, 66, '33333', '123', 'seohomeless@gmail.com', '2018-02-04 13:07:50'),
(32, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com', '2018-02-04 15:11:24'),
(33, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com', '0000-00-00 00:00:00'),
(34, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail2@gmail.com', '0000-00-00 00:00:00'),
(35, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com', '2018-02-04 15:13:40'),
(36, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com', '0000-00-00 00:00:00'),
(37, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail2@gmail.com', '0000-00-00 00:00:00'),
(38, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com', '2018-02-04 15:14:17'),
(39, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com', '0000-00-00 00:00:00'),
(40, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail2@gmail.com', '0000-00-00 00:00:00'),
(41, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com', '2018-02-04 15:14:52'),
(42, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com', '2018-02-04 15:15:12'),
(43, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail2@gmail.com', '2018-02-04 15:15:12'),
(44, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com', '2018-02-04 15:15:15'),
(45, 66, 'dd', 'mail1@gmail.com; mail2@gmail.com', 'mail2@gmail.com', '2018-02-04 15:15:15'),
(46, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail1@gmail.com', '2018-02-04 15:15:23'),
(47, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail2@gmail.com', '2018-02-04 15:15:23'),
(48, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail1@gmail.com', '2018-02-04 15:15:23'),
(49, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail2@gmail.com', '2018-02-04 15:15:23'),
(50, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail1@gmail.com', '2018-02-04 15:16:18'),
(51, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail2@gmail.com', '2018-02-04 15:16:18'),
(52, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail1@gmail.com', '2018-02-04 15:16:18'),
(53, 66, 'mail1@gmail.com; mail2@gmail.com', 'mail1@gmail.com; mail2@gmail.com\r\n', 'mail2@gmail.com', '2018-02-04 15:16:18'),
(54, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:28:50'),
(55, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:28:50'),
(56, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:31:58'),
(57, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:31:58'),
(58, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:32:58'),
(59, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:32:58'),
(60, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:33:37'),
(61, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:33:37'),
(62, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:34:04'),
(63, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:34:04'),
(64, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:37:04'),
(65, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:37:04'),
(66, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:38:37'),
(67, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:38:37'),
(68, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:41:25'),
(69, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:41:25'),
(70, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:41:55'),
(71, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:41:55'),
(72, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:43:01'),
(73, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:43:01'),
(74, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:43:03'),
(75, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:43:03'),
(76, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:43:32'),
(77, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:43:32'),
(78, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:43:43'),
(79, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:43:43'),
(80, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:43:46'),
(81, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:43:46'),
(82, 66, 'Проверка 10', 'Проверка писем. Привет', 'seohomeless@gmail.com', '2018-02-04 15:43:50'),
(83, 66, 'Проверка 10', 'Проверка писем. Привет', 'salaev.andrey@yandex.ua', '2018-02-04 15:43:50'),
(84, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:15'),
(85, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:15'),
(86, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:15'),
(87, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:15'),
(88, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:15'),
(89, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:15'),
(90, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:15'),
(91, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:15'),
(92, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:31'),
(93, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:31'),
(94, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:31'),
(95, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:31'),
(96, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:31'),
(97, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:31'),
(98, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:31'),
(99, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:31'),
(100, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:35'),
(101, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:35'),
(102, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:35'),
(103, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:35'),
(104, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:35'),
(105, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:35'),
(106, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:35'),
(107, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:35'),
(108, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:42'),
(109, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:42'),
(110, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:42'),
(111, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:42'),
(112, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:42'),
(113, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:42'),
(114, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:44:42'),
(115, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:44:42'),
(116, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:45:43'),
(117, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:45:43'),
(118, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:45:43'),
(119, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:45:43'),
(120, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:45:43'),
(121, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:45:43'),
(122, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:45:43'),
(123, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:45:43'),
(124, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:02'),
(125, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:02'),
(126, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:02'),
(127, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:02'),
(128, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:02'),
(129, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:02'),
(130, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:02'),
(131, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:02'),
(132, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:56'),
(133, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:56'),
(134, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:56'),
(135, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:56'),
(136, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:56'),
(137, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:56'),
(138, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:48:56'),
(139, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:48:56'),
(140, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:02'),
(141, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:02'),
(142, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:02'),
(143, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:02'),
(144, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:02'),
(145, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:02'),
(146, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:02'),
(147, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:02'),
(148, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:59'),
(149, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:59'),
(150, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:59'),
(151, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:59'),
(152, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:59'),
(153, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:59'),
(154, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:49:59'),
(155, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:49:59'),
(156, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:09'),
(157, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:09'),
(158, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:09'),
(159, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:09'),
(160, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:09'),
(161, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:09'),
(162, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:09'),
(163, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:09'),
(164, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:25'),
(165, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:25'),
(166, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:25'),
(167, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:25'),
(168, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:25'),
(169, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:25'),
(170, 66, 'd', 'd', 'mail1@gmail.com', '2018-02-04 15:51:25'),
(171, 66, 'd', 'd', 'mail2@gmail.com', '2018-02-04 15:51:25'),
(172, 66, 'asd', 'asd', 'mail1@gmail.com', '2018-02-04 15:51:35'),
(173, 66, 'asd', 'asd', 'mail2@gmail.com', '2018-02-04 15:51:35'),
(174, 66, 'asd', 'asd', 'mail1@gmail.com', '2018-02-04 15:52:20'),
(175, 66, 'asd', 'asd', 'mail2@gmail.com', '2018-02-04 15:52:20'),
(176, 66, 'asd', 'asd', 'mail1@gmail.com', '2018-02-04 15:53:35'),
(177, 66, 'asd', 'asd', 'mail2@gmail.com', '2018-02-04 15:53:35'),
(178, 66, 'asd', 'asd', 'mail1@gmail.com', '2018-02-04 15:54:00'),
(179, 66, 'asd', 'asd', 'mail2@gmail.com', '2018-02-04 15:54:00'),
(180, 66, 'asd', 'asd', 'mail1@gmail.com', '2018-02-04 15:59:29'),
(181, 66, 'asd', 'asd', 'mail2@gmail.com', '2018-02-04 15:59:29'),
(182, 66, 'sss', 'sss', 'seohomeless@gmail.com', '2018-02-04 16:12:40'),
(183, 66, 'Проверка последняя', 'фывфывфв фв ф', 'seohomeless@gmail.com', '2018-02-04 16:14:50');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `mail`) VALUES
(47, '123123123', '23123', '123123@asd.ru'),
(48, '123', '123', '123123@asd.ru'),
(49, '123123123', '123', '123123@asd.ru'),
(50, '123123123', '123', '123123@asd.ru'),
(51, '123', '123', '123123@asd.ru'),
(52, '1', '11', '123123@asd.ru'),
(53, '13123', '123123', '123123@asd.ru'),
(54, '1231', '123', '123123@asd.ru'),
(55, '2222222', '222222222', '123123@asd.r12u'),
(56, '22222', '222222222222', '22222222A@asd.ru'),
(57, '22222222222', '2', '22222222A@asd.ru'),
(58, '2222222222', '22222222222222', '222222222222222@sd.ru'),
(59, '4', '44', '123123@asd.ru'),
(60, '222222222', '2222222', 'asd@das.ru'),
(61, '333333333333', '3333333333', 'asd@das.ru'),
(62, '2222222222222', '222222222', '22222222A@asd.ru'),
(63, 'dasd', '12231123', 'asdasdasd@asdasdasdasd.ru'),
(64, 'andrey1', '123', 'asd@das.ru'),
(65, '12313', '123', 'asd@das.ru'),
(66, '3333333ыв', '123', '123123@asd.ru'),
(67, 'dddddddd', '111111', 'asd@das.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `addressee`
--
ALTER TABLE `addressee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_id` (`mail_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `addressee`
--
ALTER TABLE `addressee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `addressee`
--
ALTER TABLE `addressee`
  ADD CONSTRAINT `addressee_ibfk_1` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `addressee_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
