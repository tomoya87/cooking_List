-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd05_04`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cooking_table`
--

CREATE TABLE `cooking_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `cooking_table`
--

INSERT INTO `cooking_table` (`id`, `task`, `deadline`, `price`, `created_at`, `updated_at`) VALUES
(2, 'おにぎり', '2020-02-02', '500円以内', '2020-02-02 16:07:21', '2020-02-02 16:07:21'),
(3, 'オムライス', '2020-02-02', '500円以内', '2020-02-02 16:12:11', '2020-02-02 16:12:11'),
(4, 'カレー', '2020-02-02', '1000円以内', '2020-02-02 16:12:55', '2020-02-02 16:12:55'),
(5, 'ハヤシライス', '2020-02-04', '1000円以内', '2020-02-04 11:21:15', '2020-02-04 11:21:15'),
(6, 'オムレツ', '2020-02-04', '', '2020-02-04 11:21:29', '2020-02-04 11:21:29'),
(7, '肉じゃが', '2020-02-04', '500円以内', '2020-02-04 11:57:02', '2020-02-04 11:57:02'),
(8, 'オムそば', '2020-02-04', '1000円以上', '2020-02-04 12:03:16', '2020-02-04 12:03:16'),
(9, '寄せ鍋', '2020-02-05', '1000円以内', '2020-02-04 12:03:32', '2020-02-04 12:03:32'),
(10, 'キムチ鍋', '2020-02-04', '1000円以上', '2020-02-04 12:06:08', '2020-02-04 12:06:08'),
(11, 'コーンスープ', '2020-02-04', '500円以内', '2020-02-04 12:06:46', '2020-02-04 12:06:46'),
(12, '味噌汁', '2020-02-04', '1000円以内', '2020-02-04 12:10:50', '2020-02-04 12:10:50');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `task`, `deadline`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'PHP課題', '2020-02-04', 'easy', '2020-02-01 15:45:26', '2020-02-01 15:45:26'),
(2, '今夜のご飯', '2020-02-03', 'カレー', '2020-02-01 15:50:07', '2020-02-01 15:50:07'),
(3, '明日の朝食', '2020-02-02', 'パン', '2020-02-01 15:52:56', '2020-02-01 15:52:56'),
(4, '明日の予定', '2020-02-02', 'プログラミング', '2020-02-01 15:53:41', '2020-02-01 15:53:41'),
(5, '卒制', '2020-02-22', '決まらない', '2020-02-01 15:55:07', '2020-02-01 15:55:07'),
(6, 'ごみ出し', '2020-02-02', '月曜日', '2020-02-01 15:58:12', '2020-02-01 15:58:12'),
(7, '好きな食べ物', '2020-02-02', 'リンゴ', '2020-02-01 15:58:41', '2020-02-01 15:58:41'),
(8, '嫌いな物', '2020-02-02', 'シイタケ', '2020-02-01 15:59:49', '2020-02-01 15:59:49'),
(9, 'ミス', '2020-02-02', 'スペルミス', '2020-02-01 16:00:27', '2020-02-01 16:00:27'),
(10, '掃除', '2020-02-02', 'リビング', '2020-02-01 16:01:00', '2020-02-01 16:01:00'),
(11, 'IIIIIII', '2020-02-21', 'AAAAAAAA', '2020-02-01 16:57:48', '2020-02-01 16:57:48'),
(12, 'PHP理解', '2020-02-01', '理解', '2020-02-01 17:10:27', '2020-02-01 17:10:27'),
(13, '名前', '2020-02-01', 'たたたたた', '2020-02-01 17:13:32', '2020-02-01 17:13:32'),
(14, 'aaaaa', '2020-02-01', 'こんにちは', '2020-02-01 17:16:46', '2020-02-01 17:16:46');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `cooking_table`
--
ALTER TABLE `cooking_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `cooking_table`
--
ALTER TABLE `cooking_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
