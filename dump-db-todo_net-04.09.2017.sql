-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 04 2017 г., 19:03
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `todo_net`
--

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `name`, `user_id`) VALUES
(31, 'list-1', 2),
(32, 'list-2', 2),
(33, 'list-3 & 13 tasks done', 2),
(34, 'list-4', 2),
(35, 'list-5', 2),
(36, 'new list-5', 2),
(37, 'new a list -6', 2),
(38, 'new a list-7', 2),
(39, 'list-8 with duplicated tasks & 11 tasks done', 2),
(40, 'Garage', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `priority` tinyint(4) NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `status`, `deadline`, `priority`, `project_id`) VALUES
(145, '1-1111', 0, '2017-09-02 08:26:08', 1, 31),
(146, '1-222', 0, '2017-09-02 08:26:13', 2, 31),
(147, '1-333', 0, '2017-09-02 08:26:16', 3, 31),
(148, '1-444', 0, '2017-09-02 08:26:19', 4, 31),
(149, '2-111', 0, '2017-09-02 08:26:31', 1, 32),
(150, '2-222', 0, '2017-09-02 08:26:34', 2, 32),
(151, '2-3333', 0, '2017-09-02 08:26:38', 3, 32),
(152, '2-4444', 0, '2017-09-02 08:26:41', 4, 32),
(153, '2-5555', 0, '2017-09-02 08:26:45', 5, 32),
(154, '2-66', 0, '2017-09-02 08:26:55', 6, 32),
(155, '2-777', 0, '2017-09-02 08:26:59', 7, 32),
(156, '2-8888', 0, '2017-09-02 08:27:04', 8, 32),
(157, '2-999', 0, '2017-09-02 08:27:07', 9, 32),
(158, '2-10', 0, '2017-09-02 08:27:09', 10, 32),
(159, '2-11', 0, '2017-09-02 08:27:11', 11, 32),
(160, '2-12', 0, '2017-09-02 08:27:15', 12, 32),
(161, '3-01', 1, '2017-09-02 10:18:00', 1, 33),
(162, '3-02', 1, '2017-09-02 10:18:01', 2, 33),
(163, '3-03', 1, '2017-09-02 10:51:47', 3, 33),
(164, '3-04', 1, '2017-09-02 10:51:46', 4, 33),
(165, '3-05', 1, '2017-09-02 10:51:44', 5, 33),
(166, '3-06', 1, '2017-09-02 10:51:44', 6, 33),
(167, '3-08', 1, '2017-09-02 10:51:42', 8, 33),
(168, '3-09', 1, '2017-09-02 10:51:41', 9, 33),
(169, '3-10', 1, '2017-09-02 10:51:41', 10, 33),
(170, '3-11', 1, '2017-09-02 10:51:40', 11, 33),
(171, '3-12', 1, '2017-09-02 10:51:40', 12, 33),
(172, '3-13', 1, '2017-09-02 10:51:39', 13, 33),
(173, '1-555', 0, '2017-09-02 09:56:15', 5, 31),
(174, '3-14', 0, '2017-09-02 09:56:52', 14, 33),
(175, '3-07', 1, '2017-09-02 10:51:43', 7, 33),
(176, '4-01', 0, '2017-09-02 09:57:58', 1, 34),
(177, 'n5-1', 0, '2017-09-02 10:19:39', 1, 36),
(178, 'n5-2', 0, '2017-09-02 10:19:42', 2, 36),
(179, 'n5-3', 0, '2017-09-02 10:19:48', 3, 36),
(180, 'n6 - 1', 0, '2017-09-02 10:26:03', 1, 37),
(181, 'n6-2', 0, '2017-09-02 10:26:14', 2, 37),
(182, 'n6-3', 0, '2017-09-02 10:26:18', 3, 37),
(183, 'n7-1', 0, '2017-09-02 10:26:41', 1, 38),
(184, 'n7-2', 0, '2017-09-02 10:26:45', 2, 38),
(185, 'task without proj - 1', 0, '2017-09-04 09:49:03', 1, NULL),
(186, 'task without proj - 2', 0, '2017-09-04 09:49:03', 2, NULL),
(187, '8-1', 1, '2017-09-02 10:51:11', 1, 39),
(188, '8-1', 1, '2017-09-02 10:51:10', 2, 39),
(189, '8-1', 1, '2017-09-02 10:51:09', 3, 39),
(190, '8-1', 1, '2017-09-02 10:51:08', 4, 39),
(191, '8-5', 1, '2017-09-02 10:51:07', 5, 39),
(192, '8-6', 1, '2017-09-02 10:51:05', 6, 39),
(193, 'n7-2', 0, '2017-09-02 10:46:24', 3, 38),
(194, 'n7-2', 0, '2017-09-02 10:46:28', 4, 38),
(195, 'n6-3', 0, '2017-09-02 10:46:35', 4, 37),
(196, '2-13', 0, '2017-09-02 10:46:46', 13, 32),
(197, '2-13', 0, '2017-09-02 10:46:52', 14, 32),
(198, '2-13', 0, '2017-09-02 10:46:55', 15, 32),
(199, '8-7', 1, '2017-09-02 10:51:04', 7, 39),
(200, '8-8', 1, '2017-09-02 10:51:03', 8, 39),
(201, '8-9', 1, '2017-09-02 10:51:02', 9, 39),
(202, '8-10', 1, '2017-09-02 10:51:01', 10, 39),
(203, '8-11', 1, '2017-09-02 10:51:00', 11, 39),
(204, '8-12', 0, '2017-09-02 12:15:39', 12, 39),
(205, 'g1-done', 1, '2017-09-04 09:32:41', 1, 40),
(206, 'g1-done', 0, '2017-09-04 09:38:23', 2, 40),
(207, 'g2-undone', 0, '2017-09-04 09:33:16', 3, 40),
(208, 'g2-undone', 0, '2017-09-04 09:33:32', 4, 40),
(209, '8-13', 0, '2017-09-02 12:15:36', 13, 39),
(210, '8-14', 0, '2017-09-02 12:15:35', 14, 39),
(211, '8-15', 0, '2017-09-02 12:15:34', 15, 39),
(212, 'g3-01', 0, '2017-09-04 09:33:43', 5, 40),
(213, 'g4-02', 0, '2017-09-04 09:33:50', 6, 40),
(214, 'g1-done', 0, '2017-09-04 09:37:34', 7, 40),
(215, 'g1-done', 0, '2017-09-04 09:37:06', 8, 40);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `joined`) VALUES
(1, 'John Doe', '$2y$12$qPzSdGUD2YHrb2mr6PCkFOBixQOAtnOOXPwLoDEg5hFwnwciAmQVy', '2017-08-23 00:00:00'),
(2, 'John Snow', '$2y$12$vwH2Eyz7uIMD0UN9jAdcd.LyYiAMteGks3tC3WiD185VtZwF9O.kS', '2017-08-16 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(6, 2, '9d5c08d9cdd5e8d74c55e85aa8e9b1e413d00780261e83c0e7');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
