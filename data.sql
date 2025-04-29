-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 29 avr. 2025 à 04:22
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_shop_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Enfant'),
(3, 'Femme'),
(5, 'Homme');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250314131158', '2025-03-14 14:14:33', 160),
('DoctrineMigrations\\Version20250315171902', '2025-03-15 18:19:47', 153),
('DoctrineMigrations\\Version20250317035624', '2025-03-17 04:57:39', 25),
('DoctrineMigrations\\Version20250323051448', '2025-03-23 06:16:12', 282),
('DoctrineMigrations\\Version20250324141243', '2025-03-24 15:13:20', 44),
('DoctrineMigrations\\Version20250324141552', '2025-03-24 15:15:58', 190),
('DoctrineMigrations\\Version20250325140843', '2025-03-25 15:09:05', 43),
('DoctrineMigrations\\Version20250327040706', '2025-03-27 05:07:59', 44),
('DoctrineMigrations\\Version20250328075507', '2025-03-28 08:55:12', 40),
('DoctrineMigrations\\Version20250328075634', '2025-03-28 08:56:43', 21),
('DoctrineMigrations\\Version20250328080412', '2025-03-28 09:04:17', 75),
('DoctrineMigrations\\Version20250410032356', '2025-04-10 05:24:11', 157),
('DoctrineMigrations\\Version20250413194407', '2025-04-13 21:44:46', 341),
('DoctrineMigrations\\Version20250416133000', '2025-04-16 15:30:13', 133);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:168:\\\"https://127.0.0.1:8000/verify/email?expires=1742062994&signature=7SBSp8T7R1tR2i5ynymoy%2BOB5629F4VDeEqWK8Jkyeg%3D&token=jtdaAfXHnYe50CzwR96eUmqmrkiZhydDfHxbFV%2FQyGc%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"ya.ramdane@laposte.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:13:\\\"Stubborn-Shop\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"admin@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2025-03-15 17:23:15', '2025-03-15 17:23:15', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:168:\\\"https://127.0.0.1:8000/verify/email?expires=1742550093&signature=2YEzObDFCrIjZSnY2yySStj9bClq8HGOkO3mTRuvdrU%3D&token=n1yhUK7m1HQoh1DbkQBOwg7F0wPX%2FGOwfN3x4hTY6%2B0%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"ya.ramdane@laposte.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:13:\\\"Stubborn-Shop\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:24:\\\"djangoLePython@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2025-03-21 08:41:34', '2025-03-21 08:41:34', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:166:\\\"https://127.0.0.1:8000/verify/email?expires=1742560571&signature=OfVaJq45bWjvUi2q3WQlfdxDK7D0mSzeNVlZYySjMec%3D&token=7NuEHFifCwd0Tax330eorgbzPPVvYf0Zh%2FLgqNVBWqc%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"ya.ramdane@laposte.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:13:\\\"Stubborn-Shop\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:24:\\\"djangoLePython@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2025-03-21 11:36:11', '2025-03-21 11:36:11', NULL),
(4, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:166:\\\"https://127.0.0.1:8000/verify/email?expires=1742560646&signature=iLRdL5a7cBKjSM9opYkXBUYCECzMz6fJkmf45WHLnbc%3D&token=elMu%2BFQgRV7Lv7TvP8YtNji6xoc4phRU8gev2irNRB0%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"ya.ramdane@laposte.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:13:\\\"Stubborn-Shop\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:18:\\\"GokuSSJ4@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2025-03-21 11:37:26', '2025-03-21 11:37:26', NULL),
(5, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:168:\\\"https://127.0.0.1:8000/verify/email?expires=1742560713&signature=qG3Euws%2BJMhTI5SV23FYf%2BxKHvPVDpVlG6pTZhQCTuA%3D&token=2pF8PzS8B8BrE35u0MEmvfxLVeY9ZFhSWD0LRBQ0yZ0%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"ya.ramdane@laposte.net\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:13:\\\"Stubborn-Shop\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:20:\\\"PrinceVege@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2025-03-21 11:38:33', '2025-03-21 11:38:33', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `stock_xs` int(11) DEFAULT NULL,
  `stock_s` int(11) DEFAULT NULL,
  `stock_m` int(11) DEFAULT NULL,
  `stock_l` int(11) DEFAULT NULL,
  `stock_xl` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `nom`, `description`, `stock_xs`, `stock_s`, `stock_m`, `stock_l`, `stock_xl`, `image`, `stock`, `price`) VALUES
(6, 'BlackBelt XS', NULL, 1, NULL, NULL, NULL, NULL, '1-67e6590cf1716.jpg', NULL, 29.00),
(7, 'BlackBelt XS', NULL, 1, NULL, NULL, NULL, NULL, '1-67e6592ebfb1f.jpg', NULL, 29.00),
(8, 'BlackBelt S', NULL, NULL, 1, NULL, NULL, NULL, '1-67e6594bade1c.jpg', NULL, 29.00),
(9, 'BlackBelt S', NULL, NULL, 1, NULL, NULL, NULL, '1-67e659ecb6bb3.jpg', NULL, 29.00),
(10, 'BlackBelt M', NULL, NULL, NULL, 1, NULL, NULL, '1-67e65a2328a23.jpg', NULL, 29.00),
(11, 'BlackBelt M', NULL, NULL, NULL, 1, NULL, NULL, '1-67e65a47d3444.jpg', NULL, 29.00),
(12, 'BlackBelt L', NULL, NULL, NULL, NULL, 1, NULL, '1-67e665098cbf8.jpg', NULL, 29.00),
(13, 'BlackBelt L', NULL, NULL, NULL, NULL, 1, NULL, '1-67e6654aeadea.jpg', NULL, 29.00),
(14, 'BlackBelt XL', NULL, NULL, NULL, NULL, NULL, 1, '1-67e66576b0310.jpg', NULL, 29.00),
(15, 'BlackBelt XL', NULL, NULL, NULL, NULL, NULL, 1, '1-67e66595939c0.jpg', NULL, 29.00),
(18, 'BlueBelt XS', NULL, 1, NULL, NULL, NULL, NULL, '2-67e6674fad616.jpg', NULL, 29.00),
(19, 'BlueBelt XS', NULL, 1, NULL, NULL, NULL, NULL, '2-67e6676d5b8ef.jpg', NULL, 29.00),
(20, 'BlueBelt S', NULL, NULL, 1, NULL, NULL, NULL, '2-67e66793a5542.jpg', NULL, 29.00),
(21, 'BlueBelt S', NULL, NULL, 1, NULL, NULL, NULL, '2-67e667accd4e3.jpg', NULL, 29.00),
(22, 'BlueBelt M', NULL, NULL, NULL, 1, NULL, NULL, '2-67e6680d48c4f.jpg', NULL, 29.00),
(23, 'BlueBelt M', NULL, NULL, NULL, 1, NULL, NULL, '2-67e6682c25723.jpg', NULL, 29.00),
(24, 'BlueBelt L', NULL, NULL, NULL, NULL, 1, NULL, '2-67e668500abf5.jpg', NULL, 29.00),
(25, 'BlueBelt L', NULL, NULL, NULL, NULL, 1, NULL, '2-67e6687085a7f.jpg', NULL, 29.00),
(26, 'BlueBelt XL', NULL, NULL, NULL, NULL, NULL, 1, '2-67e66899b5623.jpg', NULL, 29.00),
(27, 'BlueBelt XL', NULL, NULL, NULL, NULL, NULL, 1, '2-67e668b2c44e1.jpg', NULL, 29.00),
(28, 'Street XS', NULL, 1, NULL, NULL, NULL, NULL, '3-67e668efd3f56.jpg', NULL, 29.00),
(29, 'Street XS', NULL, 1, NULL, NULL, NULL, NULL, '3-67e669057f784.jpg', NULL, 29.00),
(30, 'Street S', NULL, NULL, 1, NULL, NULL, NULL, '3-67e66923cebe0.jpg', NULL, 29.00),
(31, 'Street S', NULL, NULL, 1, NULL, NULL, NULL, '3-67e6694369d8b.jpg', NULL, 29.00),
(32, 'Street M', NULL, NULL, NULL, 1, NULL, NULL, '3-67e66962391b2.jpg', NULL, 29.00),
(33, 'Street M', NULL, NULL, NULL, 1, NULL, NULL, '3-67e682ce3621e.jpg', NULL, 29.00),
(34, 'Street L', NULL, NULL, NULL, NULL, 1, NULL, '3-67e682eeafbbe.jpg', NULL, 29.00),
(35, 'Street L', NULL, NULL, NULL, NULL, 1, NULL, '3-67e6830bda8bd.jpg', NULL, 29.00),
(36, 'Street XL', NULL, NULL, NULL, NULL, NULL, 1, '3-67e68332435e7.jpg', NULL, 29.00),
(37, 'Street XL', NULL, NULL, NULL, NULL, NULL, 1, '3-67e6834ddb1fb.jpg', NULL, 29.00),
(38, 'Pokeball XS', NULL, 1, NULL, NULL, NULL, NULL, '4-67e68397ea746.jpg', NULL, 45.00),
(39, 'Pokeball XS', NULL, 1, NULL, NULL, NULL, NULL, '4-67e683c1290e4.jpg', NULL, 45.00),
(40, 'Pokeball S', NULL, NULL, 1, NULL, NULL, NULL, '4-67e683e5c2b80.jpg', NULL, 45.00),
(41, 'Pokeball S', NULL, NULL, 1, NULL, NULL, NULL, '4-67e684013ddb6.jpg', NULL, 45.00),
(42, 'Pokeball M', NULL, NULL, NULL, 1, NULL, NULL, '4-67e6842cdacc5.jpg', NULL, 45.00),
(43, 'Pokeball M', NULL, NULL, NULL, 1, NULL, NULL, '4-67e6844979fd9.jpg', NULL, 45.00),
(44, 'Pokeball L', NULL, NULL, NULL, NULL, 1, NULL, '4-67e6847030095.jpg', NULL, 45.00),
(45, 'Pokeball L', NULL, NULL, NULL, NULL, 1, NULL, '4-67e6848813f93.jpg', NULL, 45.00),
(46, 'Pokeball XL', NULL, NULL, NULL, NULL, NULL, 1, '4-67e684aa166f8.jpg', NULL, 45.00),
(47, 'Pokeball XL', NULL, NULL, NULL, NULL, NULL, 1, '4-67e684bfa43ce.jpg', NULL, 45.00),
(48, 'PinkLady XS', NULL, 1, NULL, NULL, NULL, NULL, '5-67e68505a5505.jpg', NULL, 29.00),
(49, 'PinkLady XS', NULL, 1, NULL, NULL, NULL, NULL, '5-67e6851c48e96.jpg', NULL, 29.00),
(50, 'PinkLady S', NULL, NULL, 1, NULL, NULL, NULL, '5-67e6853e306fb.jpg', NULL, 29.00),
(51, 'PinkLady S', NULL, NULL, 1, NULL, NULL, NULL, '5-67e685654cce9.jpg', NULL, 29.00),
(52, 'PinkLady M', NULL, NULL, NULL, 1, NULL, NULL, '5-67e68590b3ac0.jpg', NULL, 29.00),
(53, 'PinkLady M', NULL, NULL, NULL, 1, NULL, NULL, '5-67e685afcd514.jpg', NULL, 29.00),
(54, 'PinkLady L', NULL, NULL, NULL, NULL, 1, NULL, '5-67e685d461b1a.jpg', NULL, 29.00),
(55, 'PinkLady L', NULL, NULL, NULL, NULL, 1, NULL, '5-67e685f16cda1.jpg', NULL, 29.00),
(56, 'PinkLady XL', NULL, NULL, NULL, NULL, NULL, 1, '5-67e68614da20f.jpg', NULL, 29.00),
(57, 'PinkLady XL', NULL, NULL, NULL, NULL, NULL, 1, '5-67e6863196107.jpg', NULL, 29.00),
(58, 'Snow XS', NULL, 1, NULL, NULL, NULL, NULL, '6-67e686750f098.jpg', NULL, 32.00),
(59, 'Snow XS', NULL, 1, NULL, NULL, NULL, NULL, '6-67e686904817b.jpg', NULL, 32.00),
(60, 'Snow S', NULL, NULL, 1, NULL, NULL, NULL, '6-67e686c329578.jpg', NULL, 32.00),
(61, 'Snow S', NULL, NULL, 1, NULL, NULL, NULL, '6-67e686e3197ec.jpg', NULL, 32.00),
(62, 'Snow M', NULL, NULL, NULL, 1, NULL, NULL, '6-67e68705098e9.jpg', NULL, 32.00),
(63, 'Snow M', NULL, NULL, NULL, 1, NULL, NULL, '6-67e687208726a.jpg', NULL, 32.00),
(64, 'Snow L', NULL, NULL, NULL, NULL, 1, NULL, '6-67e68744de869.jpg', NULL, 32.00),
(65, 'Snow L', NULL, NULL, NULL, NULL, 1, NULL, '6-67e6875f8df20.jpg', NULL, 32.00),
(66, 'Snow XL', NULL, NULL, NULL, NULL, NULL, 1, '6-67e687853f13b.jpg', NULL, 32.00),
(67, 'Snow XL', NULL, NULL, NULL, NULL, NULL, 1, '6-67e687a04fefe.jpg', NULL, 32.00),
(68, 'Graybach XS', NULL, 1, NULL, NULL, NULL, NULL, '7-67e6880fe8282.jpg', NULL, 28.00),
(69, 'Graybach XS', NULL, 1, NULL, NULL, NULL, NULL, '7-67e68825d8a2f.jpg', NULL, 28.00),
(70, 'Graybach S', NULL, NULL, 1, NULL, NULL, NULL, '7-67e6884e59b3e.jpg', NULL, 28.00),
(71, 'Graybach S', NULL, NULL, 1, NULL, NULL, NULL, '7-67e6887e7dd39.jpg', NULL, 28.00),
(72, 'Graybach M', NULL, NULL, NULL, 1, NULL, NULL, '7-67e688bf5a82b.jpg', NULL, 28.00),
(73, 'Graybach M', NULL, NULL, NULL, 1, NULL, NULL, '7-67e688dde1bb7.jpg', NULL, 28.00),
(74, 'Graybach L', NULL, NULL, NULL, NULL, 1, NULL, '7-67e6892a9c0bf.jpg', NULL, 28.00),
(75, 'Graybach L', NULL, NULL, NULL, NULL, 1, NULL, '7-67e68943ef7ef.jpg', NULL, 28.00),
(76, 'Graybach XL', NULL, NULL, NULL, NULL, NULL, 1, '7-67e6896781253.jpg', NULL, 28.00),
(77, 'Graybach XL', NULL, NULL, NULL, NULL, NULL, 1, '7-67e689ca63a57.jpg', NULL, 28.00),
(78, 'BlueCloud XS', NULL, 1, NULL, NULL, NULL, NULL, '8-67e68a201612e.jpg', NULL, 45.00),
(79, 'BlueCloud XS', NULL, 1, NULL, NULL, NULL, NULL, '8-67e68a99586e4.jpg', NULL, 45.00),
(80, 'BlueCloud S', NULL, NULL, 1, NULL, NULL, NULL, '8-67e68abef38ad.jpg', NULL, 45.00),
(81, 'BlueCloud S', NULL, NULL, 1, NULL, NULL, NULL, '8-67e68adca839b.jpg', NULL, 45.00),
(82, 'BlueCloud M', NULL, NULL, NULL, 1, NULL, NULL, '8-67e68affbfdeb.jpg', NULL, 45.00),
(83, 'BlueCloud M', NULL, NULL, NULL, 1, NULL, NULL, '8-67e68b6edcba0.jpg', NULL, 45.00),
(84, 'BlueCloud L', NULL, NULL, NULL, NULL, 1, NULL, '8-67e68b9ec7687.jpg', NULL, 45.00),
(85, 'BlueCloud L', NULL, NULL, NULL, NULL, 1, NULL, '8-67e68beb7f253.jpg', NULL, 45.00),
(86, 'BlueCloud XL', NULL, NULL, NULL, NULL, NULL, 1, '8-67e68c0d6bc98.jpg', NULL, 45.00),
(87, 'BlueCloud XL', NULL, NULL, NULL, NULL, NULL, 1, '8-67e68c28b7b46.jpg', NULL, 45.00),
(88, 'BornInUsa XS', NULL, 1, NULL, NULL, NULL, NULL, '9-67e68cc32a9b4.jpg', NULL, 59.00),
(89, 'BornInUsa XS', NULL, 1, NULL, NULL, NULL, NULL, '9-67e68ce9d5b12.jpg', NULL, 59.00),
(90, 'BornInUsa S', NULL, NULL, 1, NULL, NULL, NULL, '9-67e68d1209791.jpg', NULL, 59.00),
(91, 'BornInUsa S', NULL, NULL, 1, NULL, NULL, NULL, '9-67e68d6cd2b15.jpg', NULL, 59.00),
(92, 'BornInUsa M', NULL, NULL, NULL, 1, NULL, NULL, '9-67e68d8e628a9.jpg', NULL, 59.00),
(93, 'BornInUsa M', NULL, NULL, NULL, 1, NULL, NULL, '9-67e68f2170feb.jpg', NULL, 59.00),
(94, 'BornInUsa L', NULL, NULL, NULL, NULL, 1, NULL, '9-67e68f65f1c23.jpg', NULL, 59.00),
(95, 'BornInUsa L', NULL, NULL, NULL, NULL, 1, NULL, '9-67e68fb47e3e8.jpg', NULL, 59.00),
(96, 'BornInUsa XL', NULL, NULL, NULL, NULL, NULL, 1, '9-67e68fd9dec13.jpg', NULL, 59.00),
(97, 'BornInUsa XL', NULL, NULL, NULL, NULL, NULL, 1, '9-67e68ff4e700f.jpg', NULL, 59.00),
(98, 'GreenSchool XS', NULL, 1, NULL, NULL, NULL, NULL, '10-67e69039b34fe.jpg', NULL, 42.00),
(99, 'GreenSchool XS', NULL, 1, NULL, NULL, NULL, NULL, '10-67e69057678e8.jpg', NULL, 42.00),
(100, 'GreenSchool S', NULL, NULL, 1, NULL, NULL, NULL, '10-67e69073d7b31.jpg', NULL, 42.00),
(101, 'GreenSchool S', NULL, NULL, 1, NULL, NULL, NULL, '10-67e690b679589.jpg', NULL, 42.00),
(102, 'GreenSchool M', NULL, NULL, NULL, 1, NULL, NULL, '10-67e690d8a49ef.jpg', NULL, 42.00),
(103, 'GreenSchool M', NULL, NULL, NULL, 1, NULL, NULL, '10-67e690f18d5dc.jpg', NULL, 42.00),
(104, 'GreenSchool L', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 42.00),
(105, 'GreenSchool L', NULL, NULL, NULL, NULL, 1, NULL, '10-67e6912d731f5.jpg', NULL, 42.00),
(106, 'GreenSchool XL', NULL, NULL, NULL, NULL, NULL, 1, '10-67e6914e82c95.jpg', NULL, 42.00),
(107, 'GreenSchool XL', NULL, NULL, NULL, NULL, NULL, 1, '10-67e691732a766.jpg', NULL, 42.00);

-- --------------------------------------------------------

--
-- Structure de la table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `product_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_sub_category`
--

INSERT INTO `product_sub_category` (`product_id`, `sub_category_id`) VALUES
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(18, 4),
(19, 4),
(20, 4),
(21, 3),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 7),
(49, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(55, 7),
(56, 7),
(57, 7),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
(64, 8),
(65, 8),
(66, 8),
(67, 8),
(68, 9),
(69, 9),
(70, 9),
(71, 9),
(72, 9),
(73, 9),
(74, 9),
(75, 9),
(76, 9),
(77, 9),
(78, 10),
(79, 10),
(80, 10),
(81, 10),
(82, 10),
(83, 10),
(84, 10),
(85, 10),
(86, 10),
(87, 10),
(88, 11),
(89, 11),
(90, 11),
(91, 11),
(92, 11),
(93, 11),
(94, 11),
(95, 11),
(96, 11),
(97, 11),
(98, 12),
(99, 12),
(100, 12),
(101, 12),
(102, 12),
(103, 12),
(104, 12),
(105, 12),
(106, 12),
(107, 12);

-- --------------------------------------------------------

--
-- Structure de la table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `nom`) VALUES
(3, 5, 'sweet BlackBelt'),
(4, 5, 'sweet BlueBelt'),
(5, 5, 'sweet Street'),
(6, 5, 'sweet Pokeball'),
(7, 5, 'sweet PinkLady'),
(8, 5, 'sweet Snow'),
(9, 5, 'sweet Graybach'),
(10, 5, 'sweet BlueCloud'),
(11, 5, 'sweetBornInUsa'),
(12, 5, 'sweet GreenSchool');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `nom_utilisateur` varchar(255) NOT NULL,
  `adresse_de_livraison` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `nom_utilisateur`, `adresse_de_livraison`) VALUES
(1, 'admin@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_EDITOR\",\"ROLE_USER\"]', '$2y$13$Tvr7TS2rhLcD2WI./.j/HO2gczPmMFW8QfctRoxYiVjIgHUWDgw0G', 0, 'admin', '10 avenue des Champs Elysees'),
(3, 'djangoLePython@gmail.com', '[\"ROLE_EDITOR\",\"ROLE_USER\"]', '$2y$13$4eFKeqUCopiyFnD16BlCL.yVPAfWtR2Us/lMfMNsi.eIozaLXroBK', 0, 'Django', 'Cef learning 75004 Paris'),
(4, 'GokuSSJ4@gmail.com', '[]', '$2y$13$X/fD81qW0zpYX93362XN4OG6DHUl/yO5UblKGhlxjOwANvWvSye4u', 0, 'Goku', 'Goku\'s house'),
(5, 'PrinceVege@gmail.com', '[]', '$2y$13$SsTlSIBTqQo2r/xbxtXmh.56vtij5MSRvyqCbKKWdy9wvolPOP/km', 0, 'Vegeta', 'Kame House\'s bulma');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_64C19C15E237E06` (`name`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5242B8EBA35F2858` (`_order_id`),
  ADD KEY `IDX_5242B8EB4584665A` (`product_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`product_id`,`sub_category_id`),
  ADD KEY `IDX_3147D5F34584665A` (`product_id`),
  ADD KEY `IDX_3147D5F3F7BFE87C` (`sub_category_id`);

--
-- Index pour la table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BCE3F79812469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `FK_5242B8EB4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_5242B8EBA35F2858` FOREIGN KEY (`_order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD CONSTRAINT `FK_3147D5F34584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3147D5F3F7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `FK_BCE3F79812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
