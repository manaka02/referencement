-- phpMyAdmin SQL Dump
-- version 4.0.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 28 Septembre 2016 à 09:04
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `news`
--
CREATE DATABASE IF NOT EXISTS `news` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `news`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `detail`) VALUES
(1, 'Technologies', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dol'),
(2, 'Sciences', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dol'),
(3, 'Arts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dol'),
(4, 'Sports', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dol'),
(5, 'Réligions', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dol');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `fk_comments_users_idx` (`user_id`),
  KEY `fk_comments_posts1_idx` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

CREATE TABLE IF NOT EXISTS `medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime DEFAULT NULL,
  `online` int(11) DEFAULT NULL,
  `category_id` varchar(225) DEFAULT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `fk_posts_categories_idx` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `name`, `subtitle`, `content`, `created`, `online`, `category_id`, `slug`, `user_id`) VALUES
(2, 'Galaxy S8, un monstre de puissance doté d''un pico-projecteur', 'Le Galaxy S8 fait encore parler de lui. En pleine phase de reconquête Samsung pourrait frapper un grand coup et distancer la concurrence.', '<p>Que le bal des rumeurs (même les plus folles) commence ! Alors qu''il ne devrait pas être présenté avant plusieurs mois, courant février/mars,  le Galaxy S8 est déjà sur toutes les lèvres. En pleine phase de reconquête, Samsung doit frapper un grand coup afin de faire oublier les mésaventures enflammées du Galaxy Note 7.</p>\r\n<h3>Un processeur puissant et économe en énergie</h3>\r\n<p>Voilà qui tombe à pic, une fiche technique très intéressante vient de fuiter sur le site Weibo. Ce nouveau bijou de technologie devrait disposer d''un écran 4K de 5.2 pouces (définition de 4096 x 2160 pixels), d''une immense batterie de 4200 mAh et d''un processeur Exynos 8895 à faible consommation d''énergie. Ce dernier serait déjà passé sur Geekbench avec des scores de 7019 en multi core et 2301 en single core. Pour épauler ce beau monde, 6 Go de RAM et 64 Go de stockage interne. \r\n\r\nLa partie photo ne serait pas en reste avec un capteur dorsal de 30 mégapixels et stabilisation optique ainsi qu''un APN frontal de 9 mégapixels. Les précédentes rumeurs indiquaient plutôt un double capteur de 13 + 12 mégapixels. Enfin, dernière grosse surprise et certainement la moins probable. Le Galaxy S8 disposerait même d''un picoprojecteur. Une fonctionnalité que le coréen avait intégré pour la première fois en 2012 sur son Galaxy Beam. Les pico-projecteurs LED étant assez énergivores, la grande capacité annoncée de la batterie ne serait donc pas du luxe.</p>', '2016-09-27 10:44:00', 1, '1', 'Galaxy-s8', 1),
(3, 'iPhone 7 : la finition noir de jais séduit, mais les ventes resteraient inférieures à l''iPhone 6s', 'L''iPhone 7 noir de jais est en pénurie. Il représenterait un tiers des ventes mondiales. Une forte demande qui ne suffirait pas pour redresser les ventes.', '<p>Si vous souhaitez acquérir un iPhone 7 noir de jais, il va falloir s''armer de patience, depuis quelques jours, les délais d''expédition sont passés à plusieurs semaines.</p>\r\n<h3>Finition noir de jais : "50% de la demande en Chine"</h3>\r\n<p>Deux raisons à cette pénurie d''iPhone "glossy" : tout d''abord, selon KGI Securites la demande serait très forte. La finition noir de jais / Jet Black représenterait un tiers des ventes mondiales et jusqu''à 50% en Chine. La grande fragilité de son revêtement, Apple conseille d’ailleurs de le glisser dans une coque de protection, n''a semble-t-il pas calmé l''enthousiasme du consommateur.  \r\n\r\nDeuxième point, mis en exergue par KGI, le taux d''échec dans la fabrication des coques noir de jais. Afin de respecter les normes et le strict cahier des charges d''Apple, le taux de rendement serait en chute libre de 60 à 70% avec bon nombre de coque remisé à la benne. Résultat, moins de terminaux sortent des chaînes de fabrication ralentissant ainsi l''approvisionnement.</p>\r\n<h3>Des ventes inférieures à l''iPhone 6s</h3>\r\n<p>Enfin, KGI indique avoir revue à la hausse les estimations de ventes pour l''iPhone 7, passant de 65 millions à 75 millions. Un chiffre qui resterait néanmoins inférieur aux ventes de l''iPhone 6s et cela malgré les mésaventures du Galaxy Note 7 de Samsung. Une chose semble certaine, pour reprendre l''ascendant et provoquer une importante adhésion du consommateur, Apple devra présenter un modèle de rupture qui suscite l''effet "Whaou". Cet iPhone de "rupture" est attendu pour l''année prochaine.\r\n</p>', '2016-09-27 00:00:00', 1, '1', 'Iphone-7-finition', 1),
(4, 'Windows 10 installé sur 400 millions d''appareils', 'Microsoft a communiqué sur le nombre de systèmes Windows 10 utilisés sur différents terminaux, la croissance ralentit mais continue de progresser.', '<p>C''est lors de la conférence Microsoft Ignite qui se tient cette semaine à Atlanta que Microsoft a choisi de dévoiler les chiffres de progression de son système Windows 10. Le nombre d''appareils utilisant le dernier OS Microsoft est toujours en progression.</p>\r\n<p>La dernière communication avait été faite en juin dernier quelques semaines avant la fin de la gratuité qui permettait de passer d''un système Windows 7 ou 8 à Windows 10 sans mettre la main à la poche. C''est donc en toute logique que la progression est moins importante fin septembre même si les utilisateurs peuvent encore officieusement réaliser cette migration gratuite.\r\n</p>\r\n<p>En l''espace de trois mois 50 millions de nouveaux appareils ont été installés, ou mis en service, avec Windows 10. Cela porte le nombre de terminaux à 400 millions à l''heure actuelle. Le site Neowin a réalisé un graphique montrant la progression de l''adoption de Windows 10 en sa basant sur les chiffres communiqués par Microsoft. Après un départ en fanfare le nombre de mises en service s''est stabilisé et a même légèrement diminué depuis le début de l''été.</p>\r\n<p>La progression reste toutefois relativement stable malgré la fin de l''offre de mise à niveau gratuite alors que Microsoft a arrêté toute incitation au sein des anciens système depuis l''arrivée de la mise à jour anniversaire. Microsoft garde comme objectif le milliard d''appareils utilisant Windows 10 bien que le date initialement évoquée, 2018, n''est plus d''actualité après que Microsoft ait avoué que ce chiffres serait probablement plus long à atteindre que prévu.</p>', '2016-09-26 00:00:00', 1, '1', 'windows-10-installation', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`) VALUES
(1, 'root', 'root', 'root@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
