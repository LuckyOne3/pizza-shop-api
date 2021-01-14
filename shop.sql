-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 15 2021 г., 01:00
-- Версия сервера: 5.6.39-83.1
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `parktofly_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` text NOT NULL,
  `flatoffice` text NOT NULL,
  `floor` text NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `street`, `flatoffice`, `floor`, `totalprice`, `currency`, `created_at`, `updated_at`) VALUES
(1, 'John', '', '', '', '', '', '', NULL, NULL),
(2, 'John', '', '', '', '', '', '', NULL, NULL),
(3, 'Johnn', '', '', '', '', '', '', NULL, NULL),
(5, 'guest', 'guest@gmail.com', 'dsf', 'dfg', '2', '60', 'USD', '2021-01-14 17:28:35', '2021-01-14 17:28:35'),
(6, 'guest', 'guest@gmail.com', 'ret', 'ssgd', '1111', '100', 'USD', '2021-01-14 17:29:52', '2021-01-14 17:29:52'),
(7, 'guest', 'guest', 'rthqdq', 'sdfs', '1', '60', 'USD', '2021-01-14 17:30:45', '2021-01-14 17:30:45'),
(8, 'guest', 'guest', 'efef', 'ewrwer', '23', '42.29', 'EUR', '2021-01-14 17:36:37', '2021-01-14 17:36:37'),
(9, 'guest', 'guest', 'sdf', 'sdf', '1312', '49.66', 'EUR', '2021-01-14 17:46:12', '2021-01-14 17:46:12'),
(10, 'alex', 'mmm@gmail.com', 'df', 'fdg', '32', '35', 'USD', '2021-01-14 17:58:04', '2021-01-14 17:58:04'),
(11, 'guest', 'guest', 'sdf', 'sdf', 'dsff', '44', 'USD', '2021-01-14 18:06:41', '2021-01-14 18:06:41'),
(12, 'alex', 'aaasss@gmail.com', 'df', 'sfs', 'sdf', '44', 'USD', '2021-01-14 18:13:12', '2021-01-14 18:13:12'),
(13, 'alex', 'aaasss@gmail.com', 'afasf', 'dfs', 'daf', '44', 'USD', '2021-01-14 18:28:49', '2021-01-14 18:28:49'),
(14, 'alex', 'aaasss@gmail.com', 'dfgdfg', 'dsffsfd', 'efwfe', '61.95', 'EUR', '2021-01-14 18:30:19', '2021-01-14 18:30:19'),
(15, 'guest', 'guest', 'dsfsf', 'sdfsdf', 'dsfdf', '44', 'USD', '2021-01-14 18:32:09', '2021-01-14 18:32:09'),
(16, 'alex', 'aaas@gmail.com', 'dsfsdf', 'sdsfsdf', 'sdfs', '49.66', 'EUR', '2021-01-14 18:33:22', '2021-01-14 18:33:22'),
(17, 'alex', 'aaas@gmail.com', 'dfgd', 'sdf', 'sdf', '49.66', 'EUR', '2021-01-14 18:33:56', '2021-01-14 18:33:56'),
(18, 'alex', 'aaas@gmail.com', 'dfg', 'dfgdqfdgd', 'sfdg', '90', 'USD', '2021-01-14 18:34:30', '2021-01-14 18:34:30');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `imageUrl` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `imageUrl`, `name`, `price`) VALUES
(1, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/2ffc31bb-132c-4c99-b894-53f7107a1441.jpg', 'cheesy', 'EUR:5.74;USD:7'),
(2, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/6652fec1-04df-49d8-8744-232f1032c44b.jpg', 'cheesyBBQ chicken', 'EUR:6.55;USD:8;'),
(4, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/af553bf5-3887-4501-b88e-8f0f55229429.jpg', 'Sweet and sour chicken', 'EUR:7.37;USD:9;'),
(5, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/b750f576-4a83-48e6-a283-5a8efb68c35d.jpg', 'Cheeseburger Pizza', 'EUR:8.19;USD:10;'),
(6, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/1e1a6e80-b3ba-4a44-b6b9-beae5b1fbf27.jpg', 'Crazy pepperoni', 'EUR:5.74;USD:7;'),
(7, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/d2e337e9-e07a-4199-9cc1-501cc44cb8f8.jpg', 'pepperoni', 'EUR:6.55;USD:8;'),
(8, 'https://dodopizza.azureedge.net/static/Img/Products/f035c7f46c0844069722f2bb3ee9f113_584x584.jpeg', 'Pepperoni Fresh with pepper', 'EUR:7.37;USD:9;'),
(11, 'https://dodopizza.azureedge.net/static/Img/Products/Pizza/ru-RU/2ffc31bb-132c-4c99-b894-53f7107a1441.jpg', 'cheezy OMG', 'EUR:6.55;USD:8;');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'aaa', 'my@gmail.com', '$2y$10$wdge213m//O.bQsGlmrhDOLsIMh4rHLI4gqidKuAgMza6VGsNnIx2', NULL, '2021-01-12 21:46:03', '2021-01-12 21:46:03'),
(3, 'aaaa', 'myy@gmail.com', '$2y$10$AGwd8BQ27K55vbR7FZGrr.cdILsArnNj2UiJYUoKDOPT31jfh39Pq', NULL, '2021-01-12 21:54:52', '2021-01-12 21:54:52'),
(5, 'aaaas', 'myyy@gmail.com', '$2y$10$0MGdV.l.nws1vLTgnu4BLOAKF9PF3f2rQvObAFhhnHdGierFNMdKe', NULL, '2021-01-12 21:58:06', '2021-01-12 21:58:06'),
(6, 'aaaasa', 'myyyy@gmail.com', '$2y$10$ChqI.TM95jWU6lNWOM.i9uCcMcZkySPz2WPnfoKrXRcp5KnuIrHHy', NULL, '2021-01-12 22:02:30', '2021-01-12 22:02:30'),
(7, 'aaaasaa', 'myyyya@gmail.com', '$2y$10$KuZMgoZqnOXOdMcI1k8uKO5Aqo6dTUuxYz2dYqJKL7FW2m04joj6K', NULL, '2021-01-12 22:04:15', '2021-01-12 22:04:15'),
(8, 'aaaasaaa', 'myyyyaa@gmail.com', '$2y$10$7gS5RSEw6Xc0plKIjXrGP.QpW83b7gN4qeJLUhidD4S0y3.kZw8YS', NULL, '2021-01-12 22:05:10', '2021-01-12 22:05:10'),
(9, 'alexx', 'myyyyattta@gmail.com', '$2y$10$z9WArTLnvTgqzgPYyA003uQH7fRd1NUKKRBfg9A1lhl1BRmEe0Wey', NULL, '2021-01-12 22:22:54', '2021-01-12 22:22:54'),
(10, 'alexxa', 'myyyyattata@gmail.com', '$2y$10$4cUpe2IKNELwzxsA1S8LrOWN7rWz3TD8L.Ug5/9r0TwWogKdOS7xa', NULL, '2021-01-12 22:23:21', '2021-01-12 22:23:21'),
(12, 'alexalex', 'myyyyassssssa@gmail.com', '$2y$10$bqcBrMArVbdGhkGEVQhdvuglqzyqSlZsOl7Zs9gYQDjii7PrJ/xY6', NULL, '2021-01-12 22:40:34', '2021-01-12 22:40:34'),
(13, 'alexssdass', 'alexesssao@gmail.com', '$2y$10$IoZgqWTuD4a5D/4MOY2AqOGA2.vXOxu8xPyCiY2zoGNaWbA4x3Rne', NULL, '2021-01-14 17:21:47', '2021-01-14 17:21:47'),
(14, 'alexssdsssass', 'alexaesssao@gmail.com', '$2y$10$8HENc/cOhCMYU25684Tc..wdGWmii8OU6w3pdDpFb.HWdO07yoM7G', NULL, '2021-01-14 17:22:11', '2021-01-14 17:22:11'),
(15, 'alex', 'mm@gmail.com', '$2y$10$jMlllIIDBM7yCEIn3vMqqOdhtrRBf01LtNj8EW4zesOGaeWfyU7oi', NULL, '2021-01-14 17:44:57', '2021-01-14 17:44:57'),
(16, 'alex', 'mmm@gmail.com', '$2y$10$.G7TP6gZjqvDW/zeIKjBXea.0wn.CQGhVYYFNmU1fqAL180TBhXfy', NULL, '2021-01-14 17:57:49', '2021-01-14 17:57:49'),
(17, 'alex', 'aaa@gmail.com', '$2y$10$WiVndBNh6jjnMBGYazPOxOkm/AZSyHedmNiyqrGLVsdz9ajB6vW4u', NULL, '2021-01-14 18:05:27', '2021-01-14 18:05:27'),
(18, 'alex', 'aas@gmail.com', '$2y$10$s/aCOS.nmuRfMExF.8FHD.pJD0ELxkmE/JEOPfF0adQzCvY5ugjVO', NULL, '2021-01-14 18:11:42', '2021-01-14 18:11:42'),
(19, 'alex', 'aaasss@gmail.com', '$2y$10$Afza0roirkHvhUcliAXybOj0ewBCUkghGgfHHeKKeDzKTE5xS5Pme', NULL, '2021-01-14 18:12:52', '2021-01-14 18:12:52'),
(20, 'alex', 'aaas@gmail.com', '$2y$10$HrPom1XMOFUpDNR70DBzCeYF7vYXCiDEcVMI5oYa0UnJze/3Q1sT2', NULL, '2021-01-14 18:32:43', '2021-01-14 18:32:43');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
