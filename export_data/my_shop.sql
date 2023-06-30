-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-06-23 07:39:13
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `my_shop`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `items`
--

INSERT INTO `items` (`id`, `code`, `name`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'D00001', 'コーヒー', 300, 150, '2023-06-23 13:11:43', '2023-06-23 13:11:43'),
(2, 'D00002', '紅茶', 350, 120, '2023-06-23 13:12:12', '2023-06-23 13:12:12'),
(3, 'D00003', 'ほうじ茶', 400, 90, '2023-06-23 13:12:39', '2023-06-23 14:02:13');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(16) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `created_at`, `updated_at`) VALUES
(1, '三宅 直子', 'vaoyama@yahoo.co.jp', '$2y$10$kWW8LFKan0NpGOvfHA4w1eX4/zrAr7RcTW7Q48kpbQMvo9Z.kQnfC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(2, '渡辺 直人', 'yumiko.sato@hotmail.co.jp', '$2y$10$S9n.vg7s8T4lRIOiggVlMOuWgR1tZSBKLwToX5S.nbZ2iRcZvK8w6', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(3, '三宅 聡太郎', 'hamada.shuhei@yahoo.co.jp', '$2y$10$WPFbspl1unFTXhPpqAJ26.Hr053A3JVYSbjfuXMaycq3WGYrUNnqG', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(4, '原田 真綾', 'idaka.ryosuke@tanaka.info', '$2y$10$NivEs2ZjWDWeZsTERBE1XO2ywST0lXid6KyM4s29c8yoJmlOSVQGG', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(5, '井上 亮介', 'kudo.satomi@nagisa.jp', '$2y$10$xJ.kEQDhb.skF7Iqh6Y7Be211m3AlQiPDqnb5NTUA5Fi2DKXyuETe', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(6, '津田 稔', 'uno.mai@gmail.com', '$2y$10$W0Mt2RHAUkwVYI539yuzvOwZxGwVvm/ut0DFm1e7yFMbijm5acJyu', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(7, '山本 香織', 'hirokawa.yumiko@suzuki.com', '$2y$10$u6aN/TnmgfadJ/gxF9wBZuaggJB4bgVf0xD6KN18r3N3UxUt3mCoq', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(8, '工藤 千代', 'soutaro.yamada@ishida.net', '$2y$10$kVvw01KLUxPsgCj4az4kuePgxl46gZ36AGxyljKK9MQCLYTtnpwka', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(9, '吉田 知実', 'pnakajima@mail.goo.ne.jp', '$2y$10$dHVCG4Vj.VntZwLbsMAvHuYFYIB1/uETTcTDAN9jVp0t/HiTQoATi', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(10, '近藤 淳', 'gwakamatsu@nakatsugawa.jp', '$2y$10$cz3gW60YdmK.nNkNEKWFKOZ6Zk5rENXA2JfMvyevwqPLMgHcldvFO', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(11, '佐藤 千代', 'sasaki.yoko@mail.goo.ne.jp', '$2y$10$6eW4B11oMmT.hlq3RXNQ7.qKct/Qq55WWXnGZZRwVdz7obqxDorJa', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(12, '中島 充', 'takuma.kudo@nakajima.com', '$2y$10$n2Htr66.K5D7gHJ6yww.5e.bQBWq004Vz0WntpAhxFiuzHZy6Mk.S', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(13, '中村 亮介', 'ryosuke94@kijima.jp', '$2y$10$2QuI/e18.gsLXTV2CxZcJOJyxBg.MlHoG4sWngauzyxwS5yRRQpQy', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(14, '井上 真綾', 'lsuzuki@watanabe.com', '$2y$10$GbY82xqbO9Fr7sSUtv0qzuzOnpX5U0tf0jnEycTCyDpjEnl5VewzC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(15, '石田 裕太', 'kondo.yui@hotmail.co.jp', '$2y$10$zHMkBzxiR0UnxHilDhhhQ.ev1UjO/ZyBE...dQ1UJ7sZ0XGCmD6pm', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(16, '渚 翼', 'naoko97@fujimoto.com', '$2y$10$ICYHd9wv8D/ee88/64itiuU88HV4NmoAs/9NsAZvhr/GDuZ3dyfWS', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(17, '中島 零', 'nakajima.yosuke@hotmail.co.jp', '$2y$10$AHgY8bYMbRXiaxXn9BvSkurC29iPqfDCsxSHotlm3Kgup8C9KHafW', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(18, '工藤 直子', 'tsakamoto@hotmail.co.jp', '$2y$10$wKRO.LsNbm8.8KGGE6NsP.2eC9TQcuZY2lMA4NDU1/RXdArwNdScq', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(19, '井高 千代', 'dito@nakamura.biz', '$2y$10$qbNeuFCoaLhzORGvifETP..Gtqs/851U45ZE2HgBJl9T45syU9uVW', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(20, '伊藤 京助', 'ukudo@nakajima.com', '$2y$10$oZStjP02yQLsm3ixQU8EbOmeYRDMVc7OYPJ/gbVSm2JXNalBkXCEu', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(21, '佐々木 結衣', 'mikako82@yahoo.co.jp', '$2y$10$2LE9.Xgqjr3OFi/n5G6R3u06k4xMX9FoUoZgreDtJM8JwXb7IeFGq', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(22, '中島 さゆり', 'yamaguchi.akemi@aota.com', '$2y$10$se.zv3OCv6xLndDIuWwGh.3bhePUnlEbJ0aYuCE7d7bhUQPMpmh5u', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(23, '鈴木 直子', 'ttanabe@mail.goo.ne.jp', '$2y$10$9XdZ.He5bFRTyOW3cvZO2uiqS7VjAlUpllJ8L6UHJ9cFOPO8MV5ky', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(24, '大垣 直人', 'xsugiyama@hotmail.co.jp', '$2y$10$EuOhvDhvVpmbTfeedu2nBOEBWy.PBxk.Ampb7lgpQLmK7yuUK..Ie', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(25, '井高 美加子', 'rnakajima@hamada.net', '$2y$10$HfERz.pebY9spHV.mLWRHesaYLP1VfM/f09o4YW2LaNufaOTT9AiC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(26, '杉山 京助', 'tkijima@gmail.com', '$2y$10$WfT1QsJq3/.b17Y6V4hHcuL7jAjBh/rNBrd4LulPSSfQRtH8Kbr/a', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(27, '田辺 あすか', 'saoyama@matsumoto.jp', '$2y$10$etE8dZhNOitaWSgUvfw/WuOq/OEzKuRoQtx4nHbKeF9zP5oeHXhsK', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(28, '渡辺 英樹', 'rika84@harada.com', '$2y$10$mstL7fTqeXXlzaXfH6qZC.sZlVLNkDYHG53ijj7Ev1FD0oNoKCffG', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(29, '若松 桃子', 'psuzuki@gmail.com', '$2y$10$aHgdhJCfmNdnRVVxilmUO.QO9hnXy7sZTibe3746T/f65PuG6fwEO', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(30, '山田 裕太', 'kkato@yahoo.co.jp', '$2y$10$KPRgrFVPULYTCoV1a3cGV.ALYT6d.OpGjFUQWbPF0RDGZ92rCMRFm', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(31, '浜田 花子', 'kyosuke.kondo@wakamatsu.jp', '$2y$10$hXlKYXppO7JILRJihxsiNO7/lhhvmqDtjpcTa5qG1g5AF9mz5opWy', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(32, '佐藤 翼', 'ito.minoru@miyake.com', '$2y$10$ufpdPWCoxDTrxrVf1cQCse4qcwr287mF0lW0WYxVbCNDcpJYG17xW', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(33, '中津川 稔', 'soutaro92@yahoo.co.jp', '$2y$10$.ABNUgTXOb/wUC8yoh7ueu8wl9e2Yvmogkw6MLzajpmnfy7YMIlPy', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(34, '井高 裕美子', 'nanami12@tanabe.biz', '$2y$10$aKNbIPMROSGJ8.JN/cxtwOTSwRKU/hm602eQkwdSpTa3cKU5vQiSq', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(35, '工藤 裕美子', 'wakamatsu.nanami@ekoda.biz', '$2y$10$PP/vlMcDPhWAeL0CpPnASOpTlcp0lRHNYfyHzofJ9TGzLe4CPzBdm', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(36, '高橋 翔太', 'ryohei.nishinosono@matsumoto.com', '$2y$10$Cm3xqMMTb1PBapmV4uy5AeE91GvBgI52urcHzxrreT.FvLiQvGkgK', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(37, '西之園 零', 'ryosuke65@hotmail.co.jp', '$2y$10$AYgyuSmeN2Nj8p.QR8rZa.rg6/UOtPhfPVDuSYqGefV1qkPc3sFXe', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(38, '小泉 篤司', 'kanou.rika@kimura.jp', '$2y$10$HDB72ey0OiyCbYGrpXw9YOqu29qUpHRpMZA.ntYTs7uuD6cQy1FFK', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(39, '石田 結衣', 'sasaki.mai@mail.goo.ne.jp', '$2y$10$2OZSQcIU9GWsqFAL4pNaI.BotmXbZSevoaaXUQ1PNUijktNvZx8pC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(40, '井上 結衣', 'wtanaka@kobayashi.jp', '$2y$10$CVFnxFS0miSWnibK3aOHu.uIZE0LQp.7G54XC74Xk8upIvFK8Pqre', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(41, '小林 結衣', 'miyake.kana@saito.jp', '$2y$10$dfVpC4tT0bO2BtqTcsWrverGvUv41B3M0oimHiujmUNeDoyTNmIcu', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(42, '原田 知実', 'isasaki@nakajima.info', '$2y$10$HR7Mgp7ScLMnokaSi558GOmdoVeIsi302xsF0m0Asz3ojfscf2zC2', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(43, '田中 篤司', 'osakamoto@hirokawa.jp', '$2y$10$ZmYQW.zFqFt3BSZZv89gDOsnK9BDpQD1SFyQ7W1rFZ2HMdyHYgSiC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(44, '桐山 陽子', 'yamada.akemi@saito.biz', '$2y$10$w5Em6vbfqxqn//izsRmiyuvDNSik8zE/7zyQ1oW676AlxonFfyXA6', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(45, '笹田 学', 'uno.kyosuke@aota.com', '$2y$10$tMVFWND1LnX99GUnFejBEurHpWk9PfND/FICrxfriKyj2Bpqb6aXe', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(46, '原田 知実', 'mmiyazawa@aoyama.com', '$2y$10$VNHzPKM7fljaEZ29IOfPzeOF2lREK9MkfzcpP0coionDoDOrOxto2', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(47, '加納 太一', 'ryohei07@sasaki.net', '$2y$10$A9r64EYh0NCFBDLYWDpC3u.KoJtPaRm.RAkUx4f1uYszDfnYPswm6', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(48, '工藤 幹', 'watanabe.yasuhiro@yahoo.co.jp', '$2y$10$V66VipreoMW4tAKmwRjB3uOXG.7dmVgTx/qGNIccWtTpnGIh61g86', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(49, '吉本 京助', 'syamagishi@yamaguchi.jp', '$2y$10$z1K/jb53soPe9WJg6ymSEOFj2/u/3GrAvJMQBu6ZHXLMsm/YJyAVG', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(50, '鈴木 里佳', 'murayama.kumiko@gmail.com', '$2y$10$LvKanELpzjlWtDbbNPhKuOfrp7RO1xdV7PgoJG6v1Ohyg7ROgo.La', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(51, '青田 加奈', 'vkato@idaka.net', '$2y$10$bbLxfsDf6bFXLDU0DREU0uOcvcUjcgCq3cAU1N2tf4ffGgkD/pBRe', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(52, '津田 美加子', 'maaya64@takahashi.com', '$2y$10$DJuB4/rI3RkmtgtkHM1veOcdc3a.K9GJxANaza7XgNHKH3LjtRp0K', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(53, '渚 裕樹', 'satomi20@ito.info', '$2y$10$dHcsR7KArQMzg2wYtXpj5et4JuMNevPQPPjOGOALZ/u8BgryzsI0a', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(54, '鈴木 明美', 'wkudo@sasada.com', '$2y$10$Rq7YIZ.I/YhrvtKCjeLUZucMHX.b1MRuwdFWr5Qs5qmKDpNXKuIJ6', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(55, '野村 翔太', 'ykanou@ito.jp', '$2y$10$an5NyNBaklQG1mfk2LwUsuTH14PBCU8Tu6E2LwXITpA3fKHKIUv5W', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(56, '宇野 太郎', 'atsushi.suzuki@hotmail.co.jp', '$2y$10$9rayYAHBtfDBL9fdCs9X8eMRZ7I5z8OrbmId/2omc7qO1Zhb37o6i', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(57, '井上 陽子', 'kimura.rei@mail.goo.ne.jp', '$2y$10$bewrL3I0u/yQz9veQPfH5.Fs/Qoj3tvhZchoNZ4VJG4FnEp6gpmvm', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(58, '三宅 真綾', 'akemi.miyake@mail.goo.ne.jp', '$2y$10$VZs6RVKpgmxIRSWVfWtIWuuPCKImi2VUXdTyDYZ0HAL5JyTx1apJy', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(59, '佐藤 千代', 'ysasada@koizumi.com', '$2y$10$c8YAHrPlX/iuEvTA8A3CxOFOaQ6g.Ls7z98hhY.sSEVkc4gIfYP9C', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(60, '青田 真綾', 'gsato@gmail.com', '$2y$10$/smi3nvHpwbfccT8aHM3AezFgp9X96ATOFvd9eknEOHeTxMR8u54.', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(61, '田中 稔', 'kumiko74@nomura.jp', '$2y$10$0tZk72tErhT8ZcEQDKTVAug6ih2/4AR2GFbLeDS0Fr8lO1u/puVxi', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(62, '宮沢 充', 'hito@gmail.com', '$2y$10$FNYguDTMt9WjhoV4o9ZkXeTx8NPGppsN0IoCKEmhC4pAc29hPLvYC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(63, '宮沢 花子', 'taichi.koizumi@sugiyama.jp', '$2y$10$LnTp/al8TIhmWS6fA4hsgOPOo37IQFE95ZQaYKKYzDFlx4QMS4CLe', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(64, '石田 千代', 'fujimoto.naoki@yahoo.co.jp', '$2y$10$Le3GCDwWAmlrH2StDx1nV.tUY4B7kvcHwXWx2.BTx6HVVW4APBL9G', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(65, '藤本 晃', 'nomura.kaori@gmail.com', '$2y$10$WPyhjtD7bJlm/2eeWHRN3e5cci2p4yK2HOd4Uk6yMvdcERc88XFri', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(66, '井上 英樹', 'tsubasa.nishinosono@kondo.info', '$2y$10$d9ic.KqecNWJ5LGZoVrdY.siIA4HwM0aedbAvl7avtmwtZ8WSkbxm', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(67, '加藤 洋介', 'tsubasa.ishida@gmail.com', '$2y$10$I7TtSLtihFOYTS4jTPfnmevZBqe5TyUGZpwvJCmLOB0u.AekpjTLm', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(68, '坂本 浩', 'kaori.aota@kobayashi.jp', '$2y$10$fT3WvyhPf.AeXi3mMw/UAe/9FOuWLzI9d2h0Dba6llfkCN3wUEjIK', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(69, '中津川 里佳', 'yuta66@yahoo.co.jp', '$2y$10$E/wNWitnc1y/NScfXeYHrezrhC0Cb.N1/tSwL0HROHIrirMGBOoTG', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(70, '鈴木 加奈', 'ykondo@yahoo.co.jp', '$2y$10$FbmHZmTbaOOvlWswbpgRCuYzCGTM870voxrwHlRX0ELjIRtH4NBlC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(71, '佐々木 知実', 'osamu91@kudo.info', '$2y$10$2VBqsLexY1SnUv4GoXH6cu2ThkTyIt4O4cu3k4wiIzUXVd8wj5n2a', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(72, '青山 晃', 'kyosuke.aoyama@mail.goo.ne.jp', '$2y$10$uujuGHsQy7.rNl.tDUh0pu5GDsSqivorBeopgX8nlcxfCezOxK73e', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(73, '小林 亮介', 'hirokawa.shuhei@yoshimoto.com', '$2y$10$.Wew1XfPbDN7m8IKs.XAcOXYAbIf4EPazBSTJPDlpSn4j2MVURf8O', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(74, '村山 あすか', 'tsuda.hanako@kato.com', '$2y$10$ynhc7sneBCSMCSWLWoj.VuUf80zsnqZNQ8eQitM9rJPVOt/.xL..e', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(75, '廣川 篤司', 'yamamoto.haruka@gmail.com', '$2y$10$86Xbv8sdYad1Jeo15D5ajeRoNaGqq/iCwAyI/FETGo5..euiSFWj.', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(76, '山田 太郎', 'tkanou@yoshimoto.jp', '$2y$10$9F0Q6ko1BJEFZZq3L7Kuju9ToFh3YT1JbQtYo8xFU19Ym7iifhmN.', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(77, '井高 修平', 'yamaguchi.soutaro@nakajima.com', '$2y$10$gRoFG3B1MHtsF6PiAgmT5eKocsMSaG3it0Q5RvsENGNsJ87Fd6tFC', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(78, '小林 拓真', 'iyoshimoto@yoshimoto.com', '$2y$10$gntwTOPD2m0M/VOZR3.hPeLX./DId.tHO2uTEcrD1u//DdVFKHTPW', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(79, '大垣 陽子', 'kato.miki@kanou.jp', '$2y$10$hydfluz6lgbAgB9u83TaJ.Xh8U0QCjEOEAf0/e3oFkOpHQDCT2UIS', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(80, '浜田 稔', 'tanabe.miki@mail.goo.ne.jp', '$2y$10$A8PbBv7pDyMOUQUIWt0usuK/tw/8KPgTwYa4TCpPldaKdtyUA0Tka', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(81, '山本 直樹', 'kenichi19@yamaguchi.jp', '$2y$10$fLapkMEbc.xmjlyk2JhVy.6/jLtCyhk50V5Izc4nmYVXqlrDvW6C2', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(82, '石田 直樹', 'akemi25@hotmail.co.jp', '$2y$10$Cmg4cGxJN5T8R3yNCbWFTeNyoQPKMZlcvVEASZBdmQDRiliHtet6a', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(83, '吉田 くみ子', 'chiyo96@hotmail.co.jp', '$2y$10$Q8f286tx.5NB9xR4k/P5C.RdiiQwYwowtAv8M6psJKNipLVCbVBDi', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(84, '大垣 春香', 'hideki.kato@hotmail.co.jp', '$2y$10$4u.ZnZRVUd0tyHYI2I77tuJpohZoV.L51Xf6ck0FbZaf/ezxTmPg6', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(85, '宮沢 真綾', 'hirokawa.naoto@gmail.com', '$2y$10$PYiu/Ld7MObuhYehxVvvnecRLf6bDnMBxu6JK/ia3zTx1iCc.7SPm', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(86, '桐山 聡太郎', 'akemi.sasaki@kijima.com', '$2y$10$u/vX4lh5VVYyUuTJwtTXA.HfgyksTEq3pYs/YFb./egECIJkJ9226', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(87, '井高 結衣', 'kudo.yoko@yahoo.co.jp', '$2y$10$77RiZyo1THN/4e7AmbZYjOXOzKztuoTKrYGHcomlTRPUiCS9z26.W', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(88, '村山 さゆり', 'tomoya18@nagisa.jp', '$2y$10$TMe9/i1tEaej2Ba1JgJdPuBCRECI6waYb8yscMwkX2MsF0YEE2mIG', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(89, '井高 太郎', 'taro55@hotmail.co.jp', '$2y$10$ek/rob9WK9bumTN5qGQDreRkT0SF7T.WqC42VrdDkwKEXFUE8nfIa', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(90, '吉本 真綾', 'jun.hamada@gmail.com', '$2y$10$9PNXxjFOiSeuwYudyiFzXudaeyhgipAQX6xdXohl1MJ/OA11/VfGG', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(91, '渡辺 美加子', 'akira.yamamoto@nagisa.jp', '$2y$10$GazHhEw.wWNhSJGJard76u.ChQo1wGxYXW.Z/z08n0w44kYvpRpsC', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(92, '斉藤 幹', 'yuta.nomura@hotmail.co.jp', '$2y$10$AKw0kZa5VsYoAJIFwP1QiOWvoFqIZ9GPTJNi1eXPg1tpWGcyv8aP6', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(93, '杉山 知実', 'rnakamura@hotmail.co.jp', '$2y$10$Q7uWrwxNgeP/QZcEI4DpE.M99ncW3M9akuuwcWBPHV2dCz6bWvsOi', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(94, '伊藤 舞', 'kazuya.sugiyama@mail.goo.ne.jp', '$2y$10$fYqAn72xXggqQfYn1Eq2b.dY72OUfj6gFg9PTJB/LeyoZzOF.qdCy', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(95, '坂本 さゆり', 'kato.yui@hotmail.co.jp', '$2y$10$ASdDu1Hi0IircN4mQqkO8eI6hSaGfDhwyXOJ6VwcGOFVJZNUfLHt2', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(96, '木村 陽子', 'rfujimoto@mail.goo.ne.jp', '$2y$10$U.d.taOBIVGVbkoZ4iv.dOtZsf22y34M6JsVliW4RJbWRHyuyNp92', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(97, '藤本 翼', 'shuhei.watanabe@hotmail.co.jp', '$2y$10$/JlkkAyN2FdCypncwVgjM.sAHvmUHWrHlwuXgQ74TdntF8aVm5rVi', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(98, '山田 康弘', 'mai04@nishinosono.info', '$2y$10$3MbZ1PFoXbjkWzwbpHDr0uPCElbHLRA8qHrjuU3n14puAwyT7X2re', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(99, '中村 桃子', 'tsuda.kenichi@idaka.com', '$2y$10$DMWt8A/oYxAAeqC2Y6pyl.dDhm6QaGhh1/CPoufvjZVqsLHQJB8Pu', 'female', '2023-06-23 10:50:51', '2023-06-23 10:50:51'),
(100, '喜嶋 あすか', 'kobayashi.akemi@yahoo.co.jp', '$2y$10$iBnBR5/3k.mrH4SWum2w6OPVF8nGXo9qpnULrkJWQq85DsVA5.usO', 'male', '2023-06-23 10:50:51', '2023-06-23 10:50:51');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_items`
--

CREATE TABLE `user_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- テーブルのインデックス `user_items`
--
ALTER TABLE `user_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_items_item_id_fkey` (`item_id`),
  ADD KEY `user_items_user_id_fkey` (`user_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- テーブルの AUTO_INCREMENT `user_items`
--
ALTER TABLE `user_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `user_items`
--
ALTER TABLE `user_items`
  ADD CONSTRAINT `user_items_item_id_fkey` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `user_items_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
