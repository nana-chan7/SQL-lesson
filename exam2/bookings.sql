-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2023 年 7 月 26 日 15:29
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `bookings`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `reserves`
--

CREATE TABLE `reserves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `checkin_at` datetime NOT NULL,
  `checkout_at` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `reserves`
--

INSERT INTO `reserves` (`id`, `user_id`, `room_id`, `checkin_at`, `checkout_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-07-07 15:00:00', '2023-07-08 10:00:00', '2023-07-26 22:04:42', '2023-07-26 22:04:42'),
(2, 2, 5, '2023-07-01 15:00:00', '2023-07-02 10:00:00', '2023-07-26 22:05:16', '2023-07-26 22:05:16'),
(3, 17, 5, '2023-07-03 15:00:00', '2023-07-04 10:00:00', '2023-07-26 22:11:32', '2023-07-26 22:11:32'),
(4, 10, 1, '2023-07-07 15:00:00', '2023-07-08 10:00:00', '2023-07-26 22:12:18', '2023-07-26 22:12:18'),
(5, 3, 1, '2023-07-01 15:00:00', '2023-07-03 10:00:00', '2023-07-26 22:13:18', '2023-07-26 22:13:18'),
(6, 9, 2, '2023-07-02 15:00:00', '2023-07-03 10:00:00', '2023-07-26 22:14:03', '2023-07-26 22:14:03'),
(7, 4, 3, '2023-07-01 15:00:00', '2023-07-03 10:00:00', '2023-07-26 22:15:10', '2023-07-26 22:15:10'),
(8, 5, 2, '2023-07-06 15:00:00', '2023-07-07 10:00:00', '2023-07-26 22:16:09', '2023-07-26 22:16:09'),
(9, 8, 4, '2023-07-07 15:00:00', '2023-07-08 10:00:00', '2023-07-26 22:18:19', '2023-07-26 22:18:19'),
(10, 6, 6, '2023-07-01 15:00:00', '2023-07-10 10:00:00', '2023-07-26 22:18:19', '2023-07-26 22:18:19'),
(11, 2, 3, '2023-07-08 15:00:00', '2023-07-09 10:00:00', '2023-07-26 22:22:42', '2023-07-26 22:22:42'),
(12, 2, 2, '2023-07-08 15:00:00', '2023-07-09 10:00:00', '2023-07-26 22:23:28', '2023-07-26 22:23:28'),
(13, 20, 4, '2023-07-08 15:00:00', '2023-07-09 10:00:00', '2023-07-26 22:37:38', '2023-07-26 22:37:38'),
(14, 17, 2, '2023-07-01 15:00:00', '2023-07-02 10:00:00', '2023-07-26 22:39:56', '2023-07-26 22:39:56'),
(15, 16, 4, '2023-07-02 15:00:00', '2023-07-04 10:00:00', '2023-07-26 22:42:25', '2023-07-26 22:42:25'),
(16, 15, 5, '2023-07-02 15:00:00', '2023-07-03 10:00:00', '2023-07-26 22:43:32', '2023-07-26 22:43:32'),
(17, 11, 3, '2023-07-03 15:00:00', '2023-07-05 10:00:00', '2023-07-26 22:47:50', '2023-07-26 22:47:50'),
(18, 18, 1, '2023-07-08 15:00:00', '2023-07-10 10:00:00', '2023-07-26 22:49:15', '2023-07-26 22:49:15'),
(19, 7, 3, '2023-07-06 15:00:00', '2023-07-07 10:00:00', '2023-07-26 22:53:55', '2023-07-26 22:53:55'),
(20, 12, 4, '2023-07-04 15:00:00', '2023-07-08 10:00:00', '2023-07-26 23:09:02', '2023-07-26 23:09:02'),
(21, 13, 4, '2023-07-06 15:00:00', '2023-07-07 10:00:00', '2023-07-26 23:20:03', '2023-07-26 23:20:03'),
(22, 14, 3, '2023-07-07 15:00:00', '2023-07-08 10:00:00', '2023-07-26 23:23:11', '2023-07-26 23:23:11');

-- --------------------------------------------------------

--
-- テーブルの構造 `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '101', '2023-07-26 12:45:37', '2023-07-26 12:45:37'),
(2, '102', '2023-07-26 12:45:56', '2023-07-26 12:45:56'),
(3, '103', '2023-07-26 12:45:56', '2023-07-26 12:45:56'),
(4, '201', '2023-07-26 12:46:29', '2023-07-26 12:46:29'),
(5, '202', '2023-07-26 12:46:29', '2023-07-26 12:46:29'),
(6, '203', '2023-07-26 12:46:47', '2023-07-26 12:46:47');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Adam', '000001', '2023-07-26 21:52:16', '2023-07-26 21:52:16'),
(2, 'Bob', '000002', '2023-07-26 21:52:36', '2023-07-26 21:52:36'),
(3, 'Chris', '000003', '2023-07-26 21:52:47', '2023-07-26 21:52:47'),
(4, 'David', '000004', '2023-07-26 22:05:59', '2023-07-26 22:05:59'),
(5, 'Elen', '000005', '2023-07-26 22:06:37', '2023-07-26 22:06:37'),
(6, 'Fred', '000006', '2023-07-26 22:07:10', '2023-07-26 22:07:10'),
(7, 'George', '000007', '2023-07-26 22:07:43', '2023-07-26 22:07:43'),
(8, 'Harry', '000008', '2023-07-26 22:08:23', '2023-07-26 22:08:23'),
(9, 'John', '000009', '2023-07-26 22:10:05', '2023-07-26 22:10:05'),
(10, 'Kenny', '000010', '2023-07-26 22:10:44', '2023-07-26 22:10:44'),
(11, 'Leon', '000011', '2023-07-26 22:28:27', '2023-07-26 22:28:27'),
(12, 'Michael', '000012', '2023-07-26 22:30:32', '2023-07-26 22:30:32'),
(13, 'Nancy', '000013', '2023-07-26 22:31:29', '2023-07-26 22:31:29'),
(14, 'Olive', '000014', '2023-07-26 22:32:34', '2023-07-26 22:32:34'),
(15, 'Parker', '000015', '2023-07-26 22:33:11', '2023-07-26 22:33:11'),
(16, 'Rose', '000016', '2023-07-26 22:33:45', '2023-07-26 22:33:45'),
(17, 'Sherry', '000017', '2023-07-26 22:34:44', '2023-07-26 22:34:44'),
(18, 'Tony', '000018', '2023-07-26 22:35:16', '2023-07-26 22:35:16'),
(19, 'Veronica', '000019', '2023-07-26 22:35:57', '2023-07-26 22:35:57'),
(20, 'Whitney', '000020', '2023-07-26 22:36:25', '2023-07-26 22:36:25');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reserves_user_id` (`user_id`),
  ADD KEY `reserves_room_id` (`room_id`);

--
-- テーブルのインデックス `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `reserves`
--
ALTER TABLE `reserves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルの AUTO_INCREMENT `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `reserves`
--
ALTER TABLE `reserves`
  ADD CONSTRAINT `reserves_room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserves_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
