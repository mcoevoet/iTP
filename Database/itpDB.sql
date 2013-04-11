-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 11 Avril 2013 à 11:51
-- Version du serveur: 5.1.44
-- Version de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `itpDB_v1.0`
--

-- --------------------------------------------------------

--
-- Structure de la table `calend_Calendrier médical`
--

CREATE TABLE `calend_Calendrier médical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(20) DEFAULT NULL,
  `item0` varchar(20) DEFAULT NULL,
  `item1` varchar(20) DEFAULT NULL,
  `item2` varchar(20) DEFAULT NULL,
  `item3` varchar(20) DEFAULT NULL,
  `item4` varchar(20) DEFAULT NULL,
  `item5` varchar(20) DEFAULT NULL,
  `item6` varchar(20) DEFAULT NULL,
  `item7` varchar(20) DEFAULT NULL,
  `item8` varchar(20) DEFAULT NULL,
  `item9` varchar(20) DEFAULT NULL,
  `item10` varchar(20) DEFAULT NULL,
  `item11` varchar(20) DEFAULT NULL,
  `item12` varchar(20) DEFAULT NULL,
  `item13` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Contenu de la table `calend_Calendrier médical`
--


-- --------------------------------------------------------

--
-- Structure de la table `calend_Calendrier physico-technique`
--

CREATE TABLE `calend_Calendrier physico-technique` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(20) DEFAULT NULL,
  `item0` varchar(20) DEFAULT NULL,
  `item1` varchar(20) DEFAULT NULL,
  `item2` varchar(20) DEFAULT NULL,
  `item3` varchar(20) DEFAULT NULL,
  `item4` varchar(20) DEFAULT NULL,
  `item5` varchar(20) DEFAULT NULL,
  `item6` varchar(20) DEFAULT NULL,
  `item7` varchar(20) DEFAULT NULL,
  `item8` varchar(20) DEFAULT NULL,
  `item9` varchar(20) DEFAULT NULL,
  `item10` varchar(20) DEFAULT NULL,
  `item11` varchar(20) DEFAULT NULL,
  `item12` varchar(20) DEFAULT NULL,
  `item13` varchar(20) DEFAULT NULL,
  `item14` varchar(20) DEFAULT NULL,
  `item15` varchar(20) DEFAULT NULL,
  `item16` varchar(20) DEFAULT NULL,
  `item17` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=259 ;

--
-- Contenu de la table `calend_Calendrier physico-technique`
--


-- --------------------------------------------------------

--
-- Structure de la table `calend_Maintenance`
--

CREATE TABLE `calend_Maintenance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(20) DEFAULT NULL,
  `item0` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=224 ;

--
-- Contenu de la table `calend_Maintenance`
--


-- --------------------------------------------------------

--
-- Structure de la table `calend_struct`
--

CREATE TABLE `calend_struct` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `time_unit` varchar(20) NOT NULL,
  `nb_display` int(10) NOT NULL,
  `edit_by` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `data2` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `calend_struct`
--


-- --------------------------------------------------------

--
-- Structure de la table `com_book`
--

CREATE TABLE `com_book` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `text_com` text NOT NULL,
  `read_item` text NOT NULL,
  `unread_item` text NOT NULL,
  `insert_date` varchar(50) NOT NULL,
  `dest_fonction` varchar(10) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `com_book`
--


-- --------------------------------------------------------

--
-- Structure de la table `docs_cat`
--

CREATE TABLE `docs_cat` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `docs_cat`
--


-- --------------------------------------------------------

--
-- Structure de la table `docs_db`
--

CREATE TABLE `docs_db` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `doc` varchar(100) NOT NULL,
  `descr` text NOT NULL,
  `cat` varchar(50) NOT NULL,
  `add_date` int(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `docs_db`
--


-- --------------------------------------------------------

--
-- Structure de la table `dosi`
--

CREATE TABLE `dosi` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `machine` varchar(255) NOT NULL,
  `energie` varchar(255) NOT NULL,
  `type_mes` varchar(255) NOT NULL,
  `DATA1` text NOT NULL,
  `DATA2` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1313 ;

--
-- Contenu de la table `dosi`
--


-- --------------------------------------------------------

--
-- Structure de la table `general_settings`
--

CREATE TABLE `general_settings` (
  `conf_id` int(11) NOT NULL,
  `mail_data` text NOT NULL,
  `general_data` text NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `general_settings`
--

INSERT INTO `general_settings` VALUES(0, 'a:6:{s:4:"smtp";s:20:"smtp.stluc.ucl.ac.be";s:4:"port";s:2:"25";s:9:"user_name";s:4:"user";s:8:"password";s:4:"none";s:11:"from_adress";s:39:"radiotherapie-itp-saintluc@uclouvain.be";s:9:"from_name";s:3:"iTP";}', 'a:6:{s:8:"language";s:2:"fr";s:12:"refresh_time";s:2:"15";s:15:"emergency_delay";s:1:"3";s:13:"limitVolCible";s:2:"31";s:8:"limitPTV";s:2:"13";s:9:"limitPlan";s:2:"16";}');

-- --------------------------------------------------------

--
-- Structure de la table `gestion_pages`
--

CREATE TABLE `gestion_pages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `call_name` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `access` varchar(255) NOT NULL,
  `directory` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Contenu de la table `gestion_pages`
--

INSERT INTO `gestion_pages` VALUES(1, 'administration', 'administration.php', '2.4.1,2.4.2,1.4.1,1.4.2,1.2.3,1.3.1,1.4.3,1.3.2', 'pages');
INSERT INTO `gestion_pages` VALUES(11, 'gestion_pages', 'gestion_pages.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(12, 'gestion_pages_new', 'gestion_pages_new.php', '2.4.1,1.1.1,1.2.1,1.3.1,2.5.2,1.4.1,1.4.2,', 'pages');
INSERT INTO `gestion_pages` VALUES(13, 'gestion_pages_mod', 'gestion_pages_mod.php', '2.4.1,1.1.1,1.2.1,1.3.1,2.5.2,1.4.1,1.4.2,', 'pages');
INSERT INTO `gestion_pages` VALUES(14, 'login', 'login.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(15, 'workflow', 'workflow.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(16, 'new_patient', 'new_patient.php', ',2.4.2,1.1.1,1.1.2', 'pages');
INSERT INTO `gestion_pages` VALUES(17, 'user_admin_list', 'user_admin_list.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(18, 'user_settings', 'user_settings.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(19, 'generatedStep', 'generatedStep.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(20, 'request_management', 'request_management.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(21, 'user_modif', 'user_modif.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(22, 'user_new', 'user_new.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(23, 'contacts', 'contacts_list.php', ',2.4.1,2.4.2,2.1.2,2.2.1,2.2.2,1.2.1,1.5.3,1.1.1,1.1.2,1.1.3,1.1.4,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2', 'pages');
INSERT INTO `gestion_pages` VALUES(24, 'contacts', 'contacts.php', ',2.4.1,2.4.2,2.1.2,2.2.1,2.2.2,1.2.1,1.5.3,1.1.1,1.1.2,1.1.3,1.1.4,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2', 'pages');
INSERT INTO `gestion_pages` VALUES(25, 'gestion_pages_access', 'gestion_pages_access.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(26, 'admin_mail', 'admin_mail.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(27, 'message_inbox', 'message_inbox.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(28, 'message_new', 'message_new.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(29, 'memotech_main', 'memotech_main.php', '2.4.1,2.4.2,1.2.1,1.4.2,1.4.1,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(30, 'calend_new', 'calend_new', '2.4.1,2.4.2,1.1.2,1.1.1,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(31, 'calend_select', 'calend_select', '2.4.1,2.4.2,1.1.1,1.1.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.1.3,1.1.4,1.2.3,1.2.4,1.3.3,1.3.4,1.4.3,1.4.4,1.5.3,1.5.4', 'calendar');
INSERT INTO `gestion_pages` VALUES(32, 'calend_admin', 'calend_admin', '2.4.1,2.4.2, 1.1.1,1.1.1,1.1.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(33, 'calend_mod', 'calend_mod', ',2.4.1,2.4.2,1.1.1,1.1.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(34, 'calend_view', 'calend_view', '2.4.1,2.4.2,1.1.1,1.1.3,1.2.2,1.1.2,1.2.1,1.3.1,1.3.2,1.2.3,1.3.3,1.4.1,1.4.2,1.4.3,1.5.1,1.5.2,1.5.3,2.1.1,2.1.2,2.1.3,2.2.1,2.2.2,2.2.3,2.3.1,2.3.2,2.3.3,2.4.3,2.5.1,2.5.2,2.5.3,1.2.4,1.1.4,1.3.4,1.4.4,1.5.4', 'calendar');
INSERT INTO `gestion_pages` VALUES(35, 'calend_admin', 'calend_admin.php', '2.4.1,2.4.2, 1.1.1,1.1.1,1.1.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(36, 'calend_mod', 'calend_mod.php', ',2.4.1,2.4.2,1.1.1,1.1.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(37, 'calend_new', 'calend_new.php', '2.4.1,2.4.2,1.1.2,1.1.1,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(38, 'calend_select', 'calend_select.php', '2.4.1,2.4.2,1.1.1,1.1.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.5.1,1.5.2,1.1.3,1.1.4,1.2.3,1.2.4,1.3.3,1.3.4,1.4.3,1.4.4,1.5.3,1.5.4', 'calendar');
INSERT INTO `gestion_pages` VALUES(39, 'calend_view', 'calend_view.php', '2.4.1,2.4.2,1.1.1,1.1.3,1.2.2,1.1.2,1.2.1,1.3.1,1.3.2,1.2.3,1.3.3,1.4.1,1.4.2,1.4.3,1.5.1,1.5.2,1.5.3,2.1.1,2.1.2,2.1.3,2.2.1,2.2.2,2.2.3,2.3.1,2.3.2,2.3.3,2.4.3,2.5.1,2.5.2,2.5.3,1.2.4,1.1.4,1.3.4,1.4.4,1.5.4', 'calendar');
INSERT INTO `gestion_pages` VALUES(40, 'calend_edit', 'calend_edit.php', '2.4.1,2.4.2, 1.1.1,1.5.2,1.5.1,1.4.2,1.4.1,1.3.2,1.3.1,1.2.2,1.2.1,1.1.2,1.1.1,1.2.3', 'calendar');
INSERT INTO `gestion_pages` VALUES(41, 'workflowConditions', 'workflowConditions.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(42, 'workflowManagement', 'workflowManagement.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(43, 'workflowManagement_AddAction', 'workflowManagement_AddAction.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(44, 'workflowManagement_AddInfo', 'workflowManagement_AddInfo.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(45, 'workflowManagement_AddStep', 'workflowManagement_AddStep.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(46, 'workflowPrescription', 'workflowPrescription.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(47, 'new_patient_valid', 'new_patient_valid.php', '2.4.1,1.1.1,1.1.2', 'pages');
INSERT INTO `gestion_pages` VALUES(48, 'deletepatient', 'deletepatient.php', '2.4.1,1.1.1,1.1.2,1.1.3,1.4.1,1.2.1', 'pages');
INSERT INTO `gestion_pages` VALUES(49, 'I125_menu', 'I125_menu.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(50, 'invivo_main', 'main.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.2.3,1.1.1,1.1.2,1.1.3,1.2.4,1.3.2,1.3.1,1.4.1,1.4.2', 'invivo');
INSERT INTO `gestion_pages` VALUES(51, 'I125_admin', 'I125_admin.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(52, 'settings', 'settings.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(53, 'settings_save', 'settings_save.php', '2.4.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(54, 'invivo_select', 'choixpatient.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.2.3,1.2.4,1.1.1,1.1.2,1.1.3,1.1.4,1.3.2,1.3.1', 'invivo');
INSERT INTO `gestion_pages` VALUES(55, 'I125_main', 'I125_main.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(56, 'I125_current_list', 'current_list.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(57, 'I125_check_plaque', 'I125_check_plaque.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(58, 'bib_sources', 'bib_main.php', '2.4.1,2.4.2,1.2.2,1.2.1,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(61, 'bib_sources_I125_add', 'addI125a.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(60, 'listI125', 'listI125.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(62, 'extractI125', 'extractI125a.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(63, 'radioprotection', 'radioprotection.php', '2.4.1,2.4.2', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(64, 'bib_sources_I125_suppr', 'supprsources2.php', '2.4.1,2.4.2,1.2.1,1.2.2,', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(65, 'listIr192', 'listIr192.php', '2.4.1,2.4.2,1.2.2,1.2.1,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(66, 'bib_sources_Ir192_detail', 'Ir192_detail.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(67, 'bib_sources_Ir192_add', 'addIr192a.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(68, 'I125_view_checked_plaque', 'I125_view_checked_plaque.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(69, 'I125_display_pat', 'I125_display_pat.php', '2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(70, 'I125_calc', 'calc.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(71, 'invivo_showfactors', 'showfactors.php', '2.4.1,2.4.2,1.1.2,1.1.3,1.2.1,1.2.2,1.2.3,1.2.4,1.1.1,1.4.1,1.4.2,1.3.1,1.3.2', 'invivo');
INSERT INTO `gestion_pages` VALUES(72, 'top_main', 'top.php', '2.4.1,2.4.2,1.4.1,1.4.2,1.4.3,1.2.1,1.2.2,1.2.3,1.2.4', 'top');
INSERT INTO `gestion_pages` VALUES(73, 'dosi', 'dosi_main.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.3.1,1.3.2,1.4.1,1.4.2,1.2.3', 'dosi');
INSERT INTO `gestion_pages` VALUES(74, 'I125_archive_list', 'archive_list.php', '2.4.1,2.4.2,1.2.1,1.2.2', 'I125');
INSERT INTO `gestion_pages` VALUES(75, 'pannes_menu', 'pannes_menu.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(76, 'pannes_liste', 'pannes_liste.php', '2.4.1,2.4.2,1.4.1,1.4.2,1.2.1,1.2.2', 'pages');
INSERT INTO `gestion_pages` VALUES(77, 'pannes_stats', 'pannes_stats.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.1.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(78, 'pannes_downtime', 'pannes_downtime.php', '2.4.1,2.4.2,1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.2.2', 'pages');
INSERT INTO `gestion_pages` VALUES(79, 'pannes_new', 'pannes_new.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(80, 'memotech_new', 'memotech_new.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(81, 'memotech_mod', 'memotech_mod.php', '2.4.1,2.4.2,1.4.2,1.4.1', 'pages');
INSERT INTO `gestion_pages` VALUES(82, 'gpi_main', 'liste.php', '2.4.1,2.4.2,1.4.1,1.4.2,1.4.3,1.2.3', 'gpi');
INSERT INTO `gestion_pages` VALUES(83, 'gpi_info_pc', 'info_PC.php', '2.4.1,2.4.2,1.4.1,1.4.2,1.4.3,1.2.3', 'gpi');
INSERT INTO `gestion_pages` VALUES(84, 'gpi_info_PC_mod', 'info_PC_mod_1.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'gpi');
INSERT INTO `gestion_pages` VALUES(85, 'gpi_new', 'new_PC_1.php', '2.4.1,2.4.2,1.4.1,1.4.2', 'gpi');
INSERT INTO `gestion_pages` VALUES(86, 'proc_list', 'proc_list.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(87, 'protoc_list', 'protoc_list.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(88, 'docs_list', 'docs_list.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(89, 'lien_liste', 'lien_liste.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(90, 'rosis_new', 'rosis_new.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(91, 'lien_admin_liste', 'lien_admin_liste.php', ',1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(92, 'docs_admin_list', 'docs_admin_list.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(93, 'protoc_admin_list', 'protoc_admin_list.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(94, 'proc_admin_list', 'proc_admin_list.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(95, 'docs_modif', 'docs_modif.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(96, 'proc_modif', 'proc_modif.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(97, 'proc_new', 'proc_new.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(98, 'protoc_new', 'protoc_new.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(99, 'protoc_modif', 'protoc_modif.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(100, 'docs_new', 'docs_new.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(101, 'machine_list', 'machine_list.php', ',1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(102, 'machine_modif', 'machine_modif.php', ',1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(103, 'machine_new', 'machine_new.php', ',1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(104, 'invivo_admin', 'invivo_admin.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(105, 'invivo_mod_info_patient', 'mod_info_patient.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(106, 'invivo_archive', 'listepatient_archive.php', ',1.2.1,1.2.2,1.2.3,', 'invivo');
INSERT INTO `gestion_pages` VALUES(107, 'invivo_main_archive', 'mainarchive.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(108, 'invivo_factors', 'facteurs.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(109, 'invivo_fdiode', 'fdiode.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(110, 'invivo_fchamp', 'fchamp.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(111, 'invivo_fdsp', 'fdsp.php', ',1.2.1,1.2.2,1.2.3', 'invivo');
INSERT INTO `gestion_pages` VALUES(112, 'rosis_list', 'rosis_list.php', ',1.4.1,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(113, 'rosis_view', 'rosis_view.php', ',1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(114, 'lien_new', 'lien_new.php', '2.4.1,2.4.2,1.1.1,1.2.1,1.3.1,1.4.1', 'pages');
INSERT INTO `gestion_pages` VALUES(115, 'lien_modif', 'lien_modif.php', '2.4.1,2.4.2,1.1.1,1.2.1,1.3.1,1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(118, 'help', 'help.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(119, 'invivo_new_list', 'new_iv_liste.php', '2.4.1,2.4.2,1.2.1,1.2.2,1.2.3,1.1.1,1.1.2,1.3.1,1.3.2,1.4.1,1.4.2,1.2.4', 'invivo');
INSERT INTO `gestion_pages` VALUES(120, 'IV_delete_patient', 'IV_deletepatient.php', ',1.2.1,1.2.2,1.2.3,1.2.4', 'invivo');
INSERT INTO `gestion_pages` VALUES(121, 'corrdsp', 'corrdsp.php', ',1.2.1,1.2.2,1.2.3,1.4.1,1.4.2,1.2.4', 'top');
INSERT INTO `gestion_pages` VALUES(122, 'com_book_admin_list', 'com_book_admin_list.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(123, 'com_book_admin_new', 'com_book_admin_new.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(124, 'com_book_admin_view', 'com_book_admin_view.php', ',1.1.1,1.2.1,1.3.1,1.4.1,1.4.2,1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(125, 'com_book_list', 'com_book_list.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(126, 'com_book_view', 'com_book_view.php', '1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2,1.5.3,1.5.4', 'pages');
INSERT INTO `gestion_pages` VALUES(127, 'tomo_dev', 'tomo_dev.php', ',1.3.3,1.3.2,1.3.1,1.3.4,1.4.1,1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.4.3,', 'pages');
INSERT INTO `gestion_pages` VALUES(128, 'user_reset_pass', 'user_reset_pass.php', ',1.4.1,1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(129, 'invivo_newpatient', 'newpatient.php', ',1.2.1,1.2.2,1.2.3,1.2.4,1.4.1,1.4.2,1.3.1,1.3.2', 'invivo');
INSERT INTO `gestion_pages` VALUES(130, 'licence', 'licence.php', ',1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.4,1.5.3,1.5.2,1.5.1', 'pages');
INSERT INTO `gestion_pages` VALUES(131, 'bib_sources_Ir192_suppr', 'supprsourcesIr2.php', ',1.2.1,1.2.2,1.4.1,1.4.2,1.4.3', 'bib_sources');
INSERT INTO `gestion_pages` VALUES(132, 'rosis_menu', 'rosis_menu.php', ',2.4.1,2.4.2,2.1.2,2.2.1,2.2.2,1.2.1,1.5.3,1.1.1,1.1.2,1.1.3,1.1.4,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.1,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2', 'pages');
INSERT INTO `gestion_pages` VALUES(133, 'pannes_treat_time', 'pannes_treat_time.php', '1.4.1, 1.4.2', 'pages');
INSERT INTO `gestion_pages` VALUES(134, 'stats_main', 'stats_main.php', '1.4.1,1.4.2,1.4.3,1.3.2', 'pages');
INSERT INTO `gestion_pages` VALUES(135, 'tomo_stats', 'tomo_stats.php', '1.4.3', 'pages');
INSERT INTO `gestion_pages` VALUES(136, 'calend_year_overview', 'calend_year_overview.php', '1.4.1,1.1.1,1.1.2,1.1.3,1.1.4,1.2.1,1.2.2,1.2.3,1.2.4,1.3.1,1.3.2,1.3.3,1.3.4,1.4.2,1.4.3,1.4.4,1.5.1,1.5.2', 'calendar');

-- --------------------------------------------------------

--
-- Structure de la table `gpi`
--

CREATE TABLE `gpi` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `IP` varchar(100) NOT NULL,
  `data1` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Contenu de la table `gpi`
--


-- --------------------------------------------------------

--
-- Structure de la table `lien`
--

CREATE TABLE `lien` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `actif` varchar(3) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `lien`
--

INSERT INTO `lien` VALUES(1, 'Google', 'http://www.google.be', 'oui', 'google.png');
INSERT INTO `lien` VALUES(2, 'Météo', 'http://www.meteo.be', 'oui', 'weather_icon.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) NOT NULL,
  `actif` varchar(3) NOT NULL,
  `date_install` int(50) NOT NULL,
  `constructeur` varchar(20) NOT NULL,
  `descr` text NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `invivo` varchar(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `machine`
--

INSERT INTO `machine` VALUES(1, 'SL25', 'oui', 1997, 'Elekta', 'Linac MLC photons 6MV 18 MV Electrons 4MeV 6MeV 8MeV 10MeV 12MeV 15MeV 18MeV 20MeV 22MeV', '5150_600w600h.jpg', 'oui');
INSERT INTO `machine` VALUES(2, 'SL75', 'non', 1996, 'Elekta', 'Linac 6MV', '', 'oui');
INSERT INTO `machine` VALUES(3, 'Tomo1', 'oui', 2005, 'Tomotherapy', 'Tomotherapy Hi Art SN110055', 'tomo-gantry.gif', '');
INSERT INTO `machine` VALUES(4, 'Tomo2', 'oui', 2011, 'Tomotherapy', 'Tomotherapy HD SN110394', '46882_thumb_TomoHD_wOverlay.jpg', 'non');
INSERT INTO `machine` VALUES(5, 'SP18', 'oui', 2008, 'Elekta', 'Linac MLC photons 6MV 18 MV Electrons  6MeV 8MeV 10MeV 12MeV 18MeV', 'HD6_2180-Modifier.jpg', 'oui');
INSERT INTO `machine` VALUES(6, 'CT-SIM', 'oui', 2010, 'Toshiba', 'Scanner de simulation', 'toshiba-aquilion-lb-ct-alt3.jpg', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `memotech`
--

CREATE TABLE `memotech` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `date_limit` int(255) NOT NULL,
  `recurence` varchar(255) NOT NULL,
  `period` int(255) NOT NULL,
  `date_entree` int(255) NOT NULL,
  `pris_en_charge` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `archive` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `alert_time` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `memotech`
--


-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `exp` varchar(10) NOT NULL,
  `dest` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message_patient_data` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` int(20) NOT NULL,
  `read_item` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `message`
--


-- --------------------------------------------------------

--
-- Structure de la table `pannes`
--

CREATE TABLE `pannes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(100) NOT NULL,
  `h` varchar(5) NOT NULL,
  `min` varchar(5) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `mois` varchar(20) NOT NULL,
  `annee` varchar(10) NOT NULL,
  `machine` varchar(20) NOT NULL,
  `symptome` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `intervenant` varchar(20) NOT NULL,
  `actions` text NOT NULL,
  `hfin` varchar(5) NOT NULL,
  `minfin` varchar(5) NOT NULL,
  `downtime_h` varchar(5) NOT NULL,
  `downtime_min` varchar(5) NOT NULL,
  `perturbation` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2331 ;

--
-- Contenu de la table `pannes`
--

INSERT INTO `pannes` VALUES(104, '1086162000', '09', '40', '02', '06', '2004', 'SL25', 'Machoires', 'Machine', 'Technique', 'Passage à un autre champ pour débloquer la machoire', '9', '45', '0', '5', 'non');
INSERT INTO `pannes` VALUES(105, '1076058000', '10', '00', '06', '02', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'Technique', 'Relance de la machine.\r\nDosi X6, X25.', '10', '45', '0', '45', 'oui');
INSERT INTO `pannes` VALUES(624, '1078226100', '12', '15', '02', '03', '2004', 'SL25', 'Table descend toute seule', 'Machine', 'Technique', 'Remplacement de la carte comme le 19 avril 2002', '12', '35', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(625, '1079539800', '17', '10', '17', '03', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD et de Visir\r\nBypass des timers', '17', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(626, '1080565800', '15', '10', '29', '03', '2004', 'SL25', 'SL25 en état CLOSED - plus de mouvement gantry table et autre', 'Machine', 'GD', 'Reset Motor\r\nLog Off passage en RTHService\r\nBypass des timers\r\nLog On en SL25 ', '15', '20', '00', '10', 'non');
INSERT INTO `pannes` VALUES(108, '1076658300', '08', '45', '13', '02', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Reboot visir et reset motor', '8', '50', '0', '5', 'non');
INSERT INTO `pannes` VALUES(643, '1095232200', '09', '10', '15', '09', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timers', '09', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(642, '1095166800', '15', '00', '14', '09', '2004', 'SL25', 'Timer', 'Machine', 'GD', 'Reboot du RTD et de VISIR', '15', '10', '00', '10', 'non');
INSERT INTO `pannes` VALUES(113, '1077715200', '14', '20', '25', '02', '2004', 'SL25', 'Field centered', 'Machine', 'MC', 'Centrer le champ avec la floche "bouton field center"', '14', '25', '0', '5', 'non');
INSERT INTO `pannes` VALUES(114, '1078154700', '16', '25', '01', '03', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Reboot du RTD et de VISIR', '16', '40', '0', '25', 'oui');
INSERT INTO `pannes` VALUES(115, '1078490700', '13', '45', '05', '03', '2004', 'SL25', 'Wedge', 'Machine', 'GD', 'Log off et recharge du patient', '13', '55', '0', '10', 'non');
INSERT INTO `pannes` VALUES(644, '1095830100', '07', '15', '22', '09', '2004', 'SL25', 'Thyratron Grid', 'Machine', 'GD', 'Check des fibres optiques. Celle nommée "Thyratron G1 Mon" éteinte donc pb d''alim du Thyratron.\r\nCheck des tensions Thy. 0v au rouge.\r\nCheck des fusibles à l''alim du Thy, remplacement du fusible défectueux 10A 35v.\r\nDosi OK', '08', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(117, '1079691000', '11', '10', '19', '03', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'Pb de T°, relance du RTD et by pass des timer', '11', '25', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(118, '1080029700', '09', '15', '23', '03', '2004', 'SL25', 'Wedge', 'Informatique', 'MC', 'Reboot du RTD et VISIR', '9', '25', '0', '10', 'non');
INSERT INTO `pannes` VALUES(627, '1081927200', '09', '20', '14', '04', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'Restart RTD et Visir\r\nByPass des timers\r\nOk\r\nTel au service tech pour le remplacement des filtres', '09', '30', '00', '10', 'non');
INSERT INTO `pannes` VALUES(120, '1080634800', '10', '20', '30', '03', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'By pass des timer', '10', '30', '0', '10', 'non');
INSERT INTO `pannes` VALUES(121, '1081173900', '16', '5', '05', '04', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'La t° et tres basse, reboot du RTD et VISIR', '16', '20', '0', '15', 'non');
INSERT INTO `pannes` VALUES(122, '1081502700', '11', '25', '09', '04', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'log off du RTDet recharge du patient', '11', '35', '0', '10', 'non');
INSERT INTO `pannes` VALUES(123, '1082098500', '08', '55', '16', '04', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'log off et reboot RTD et VISIR', '9', '5', '0', '10', 'non');
INSERT INTO `pannes` VALUES(124, '1082368800', '12', '00', '19', '04', '2004', 'SL25', 'Plantage Visir', 'Informatique', 'GD', 'reboot du pc visir et du RTD', '12', '10', '0', '10', 'non');
INSERT INTO `pannes` VALUES(125, '1082369700', '12', '15', '19', '04', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot RTD et VISIR ', '12', '30', '0', '15', 'non');
INSERT INTO `pannes` VALUES(126, '1082388300', '17', '25', '19', '04', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Reboot du RTD et de VISIR', '17', '35', '0', '10', 'non');
INSERT INTO `pannes` VALUES(128, '1082458200', '12', '50', '20', '04', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'Reboot et By pass des timer', '13', '5', '0', '15', 'non');
INSERT INTO `pannes` VALUES(129, '1082624100', '10', '55', '22', '04', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'reboot et by pass des timer', '11', '15', '0', '20', 'non');
INSERT INTO `pannes` VALUES(130, '1082967300', '10', '15', '26', '04', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'pour plusieurs jours ( 6 jours et dont 15 interventions)\r\ndu 26 avril au 3 mai.\r\nReboot et by pass', '', '', '2', '30', 'oui');
INSERT INTO `pannes` VALUES(640, '1094483700', '17', '15', '06', '09', '2004', 'SL25', 'Pb d''accessoires', 'Machine', 'Technique', 'Relance du RTD', '17', '30', '00', '15', 'non');
INSERT INTO `pannes` VALUES(132, '1085132700', '11', '45', '21', '05', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Pd de t°\r\nReboot et by pass des timer', '12', '20', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(133, '1086254100', '11', '15', '03', '06', '2004', 'SL25', 'Wedge', 'Informatique', 'MC', 'Reboot du RTD et de VISIR', '11', '30', '0', '15', 'non');
INSERT INTO `pannes` VALUES(134, '1086339600', '11', '00', '04', '06', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'Reboot et by pass des timer', '11', '10', '0', '10', 'non');
INSERT INTO `pannes` VALUES(135, '1086771000', '10', '50', '09', '06', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'log off du RTD et bypass des timer', '10', '55', '0', '5', 'non');
INSERT INTO `pannes` VALUES(136, '1086862200', '12', '10', '10', '06', '2004', 'SL25', 'Field centered', 'Machine', 'GD', 'Avec la floche, il faut utiliser la fonction "center field"', '12', '20', '0', '10', 'non');
INSERT INTO `pannes` VALUES(137, '1086863700', '12', '35', '10', '06', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD et de VISIR', '12', '50', '0', '15', 'non');
INSERT INTO `pannes` VALUES(138, '1087382700', '12', '45', '16', '06', '2004', 'SL25', 'Fine pot X1 offset', 'Machine', 'MC', 'Pb de lame, deplacement manuel des lames en mode "rthservice" pour les debloquees.', '13', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(639, '1094219700', '15', '55', '03', '09', '2004', 'SL25', 'Plus d''iso rot', 'Machine', 'Technique', 'Remplacement de la carte C dans le cabinet arrière.\r\nMême carte que pour la hauteur table.', '16', '15', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(140, '1087567200', '16', '00', '18', '06', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Debloquage via soft manuel en mode rthservice.', '16', '5', '0', '5', 'non');
INSERT INTO `pannes` VALUES(141, '1087826400', '16', '00', '21', '06', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'debloquage', '16', '5', '0', '5', 'non');
INSERT INTO `pannes` VALUES(638, '1094137200', '17', '00', '02', '09', '2004', 'SL25', 'Table descend toute seule', 'Machine', 'GD', 'Remplacement de la carte à l''arrière du cabinet "carte C".', '17', '15', '00', '15', 'non');
INSERT INTO `pannes` VALUES(143, '1088164200', '13', '50', '25', '06', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Reboot du RTD et b pass des timer', '14', '5', '0', '15', 'non');
INSERT INTO `pannes` VALUES(144, '1088405700', '08', '55', '28', '06', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Pb de lame avec la reflection du porte plateau. Une lame est trop sortie. Debloquage avec le soft.', '9', '10', '0', '15', 'non');
INSERT INTO `pannes` VALUES(145, '1088508600', '13', '30', '29', '06', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD et VISIR', '13', '45', '0', '15', 'non');
INSERT INTO `pannes` VALUES(146, '1086083400', '11', '50', '01', '06', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'La T° chute, reboot du RTD et by pass des timer', '12', '5', '0', '15', 'non');
INSERT INTO `pannes` VALUES(147, '1089094500', '08', '15', '06', '07', '2004', 'SL25', 'Gaz pres', 'Machine', 'GD', 'Remplacement de la bombonne de SF6', '8', '30', '0', '15', 'non');
INSERT INTO `pannes` VALUES(148, '1089727200', '16', '00', '13', '07', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Durant un IMRT, Reflection de reticule. Tapoter sur le reticule.', '16', '10', '0', '10', 'non');
INSERT INTO `pannes` VALUES(149, '1089634800', '14', '20', '12', '07', '2004', 'SL25', 'Fx links', 'Informatique', 'GD', 'Sans doute duau patient IMRT, reboot de RTD et de VISIR', '14', '30', '0', '10', 'non');
INSERT INTO `pannes` VALUES(150, '1089962400', '09', '20', '16', '07', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Probleme de reticule, mais remise en place de la lame via soft.', '9', '30', '0', '10', 'non');
INSERT INTO `pannes` VALUES(151, '1092060300', '16', '5', '09', '08', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass des timer', '16', '10', '0', '5', 'non');
INSERT INTO `pannes` VALUES(637, '1094040000', '14', '00', '01', '09', '2004', 'SL25', 'iView', 'Machine', 'MC', 'Iview ne s''allume pas.\r\n\r\nBouton ON/OFF de l''alim dans le Gantry (à 0°) à droite boîte noire.\r\n(Oubli d''Elekta)', '14', '05', '00', '05', 'non');
INSERT INTO `pannes` VALUES(153, '1093356600', '16', '10', '24', '08', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Reboot de RTD ', '16', '25', '0', '15', 'non');
INSERT INTO `pannes` VALUES(154, '1090707840\r\n', '12', '10', '26', '07', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Debloquage soft en mode service. Bypass de s timer', '12', '15', '0', '5', 'non');
INSERT INTO `pannes` VALUES(636, '1088675700', '11', '55', '01', '07', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'La t° chute\r\nImpossible de bypasser les timers\r\nReboot du RTD + bypass des timers', '12', '05', '00', '10', 'non');
INSERT INTO `pannes` VALUES(156, '1094486400', '18', '00', '06', '09', '2004', 'SL25', 'Focus 2', 'Machine', 'GD', 'Voir la solution en date du 7 septembre 2004.', '18', '45', '0', '45', 'oui');
INSERT INTO `pannes` VALUES(157, '1094564700', '15', '45', '07', '09', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD et de VISIR', '16', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(158, '1095078900', '14', '35', '13', '09', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Dr Watson sur le RTD.\r\nReboot total', '14', '50', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(159, '1106057700', '15', '15', '18', '01', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass', '15', '25', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(160, '1106131200', '11', '40', '19', '01', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass', '11', '50', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(161, '1106131200', '11', '40', '19', '01', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass', '11', '50', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(162, '1106145900', '15', '45', '19', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot RTD', '16', '10', '0', '25', 'oui');
INSERT INTO `pannes` VALUES(163, '1106201400', '07', '10', '20', '01', '2005', 'SL25', 'Error au demrrage du RTD', 'Informatique', 'MC', 'Au niveau des "Log viewer" il y a un checksum de la DB.\r\nLancer et les fichiers seront remis correctement enforme.\r\nEteindre le PC visir', '9', '00', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(164, '1106219700', '12', '15', '20', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Reboot + Pblm de demarage', '12', '45', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(165, '1106294400', '09', '00', '21', '01', '2005', 'SL25', 'Plantage Visir', 'Informatique', 'MC', 'Reboot du PC visir', '9', '5', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(166, '1106301000', '10', '50', '21', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Meme panne a 12H et 13H\r\nVerification des video line\r\nReboot', '', '', '0', '40', 'oui');
INSERT INTO `pannes` VALUES(167, '1106576700', '15', '25', '24', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot', '15', '40', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(168, '1106658000', '14', '00', '25', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot + probleme de demarrage\r\ntimer', '15', '00', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(169, '1106733600', '11', '00', '26', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot et probleme au demarrage dans le service starting \r\n"Message: service Messanger stopped.\r\nEntrer dans diagnostic, Checksum et reboot 3X, puis etteindre le PC visir', '12', '00', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(170, '1106751600', '16', '00', '26', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Inversion des cartes de commandes des moteurs Y1 et Y2 pour test.', '17', '00', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(171, '1106935200', '19', '00', '28', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Remplacement de la carte de commande des moteurs Y2.\r\nEn dehors des heurres de traitement.', '20', '00', '1', '00', 'non');
INSERT INTO `pannes` VALUES(173, '1107260700', '13', '25', '01', '02', '2005', 'SL25', 'Plantage Visir', 'Informatique', 'MC', 'Probleme avec patient passant du SL75 au SL25.\r\nReboot Visir', '13', '35', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(174, '1107278100', '18', '15', '01', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '18', '20', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(175, '1107255600', '12', '00', '01', '02', '2005', 'SL25', 'Plantage Visir', 'Informatique', 'Technique', 'Plusieurs fois durant la journee, plantage du server Visir.\r\nRebbot du serveur.', '', '', '0', '35', 'oui');
INSERT INTO `pannes` VALUES(176, '1107773400', '11', '50', '07', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '11', '55', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(177, '1108019700', '08', '15', '10', '02', '2005', 'SL25', 'plus de rotation de gantry', 'Machine', 'GD', 'Plus de mouvement gantry, ni avec auto setup, ni en salle avec la floche. Le reste des mouvements fonctionnent.\r\nApres restart du RTD et reflection (difficile), debloquage en poussant sur le gantry tout en deveroullant le frein du moteur. petit levier gris sur la boite de vitesse a cote du moteur.', '8', '35', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(178, '1108033200', '12', '00', '10', '02', '2005', 'SL25', 'Probleme gantry', 'Machine', 'GD', 'Suite au probleme de bloquage du gantry et de sa vitesse reduite (tout ca en une matinee), remplacement du moteur de celui ci. ', '12', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(179, '1108037700', '13', '15', '10', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '13', '20', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(629, '1085469300', '09', '15', '25', '05', '2004', 'SL25', 'Database Visir Full', 'Informatique', 'Technique', 'Création d''une nouvelle base de données sur le serveur.', '11', '30', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(181, '1105549500', '18', '5', '12', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Reboot RTD pour refroidir', '18', '25', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(182, '1104938100', '16', '15', '05', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot RTD (camera)', '16', '30', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(183, '1105633200', '17', '20', '13', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot RTD (pour refroidir)', '17', '40', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(184, '1105969500', '14', '45', '17', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reboot RTD (refroidir)', '15', '15', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(185, '1108468800', '13', '00', '15', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass', '13', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(186, '1089810000', '15', '00', '14', '07', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '15', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(187, '1092553800', '09', '10', '15', '08', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '9', '20', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(188, '1095416100', '12', '15', '17', '09', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '12', '25', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(189, '1095760800', '12', '00', '21', '09', '2004', 'SL25', 'Faisceau', 'Machine', 'GD', 'Probleme E12, sortent difficilement et donne une erreur 2T\r\n', '12', '5', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(190, '1095861000', '15', '50', '22', '09', '2004', 'SL25', 'iView', 'Machine', 'MC', 'On/off du disjoncteur derriere la machine, sur le control cabonet', '15', '55', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(191, '1095942300', '14', '25', '23', '09', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Le champ ne passe pas, probleme due a la valeur de table lateral (message en bas dans visir); Mise a 0 des valeurs de table. ', '14', '30', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(192, '1096446600', '10', '30', '29', '09', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '10', '40', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(193, '1096554300', '16', '25', '30', '09', '2004', 'SL25', 'Touchgarde reste actif sur la table', 'Machine', 'Technique', 'porte plomb mal fixe', '16', '30', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(194, '1096613400', '08', '50', '01', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '8', '55', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(195, '1097486400', '11', '20', '11', '10', '2004', 'SL25', 'Plantage Visir', 'Informatique', 'GD', 'Reboot du PC Visir', '11', '30', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(196, '1097561700', '08', '15', '12', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '8', '20', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(197, '1097563500', '08', '45', '12', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '9', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(198, '1097678700', '16', '45', '13', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '17', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(199, '1097832000', '11', '20', '15', '10', '2004', 'SL25', 'Dr Watson sur visir', 'Machine', 'MC', 'Reboot PC Visir', '11', '25', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(200, '1097836200', '12', '30', '15', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '12', '40', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(201, '1098085800', '09', '50', '18', '10', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Ouverture de la camera trop forte. diminution de celle ci;', '10', '00', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(202, '1098173400', '10', '10', '19', '10', '2004', 'SL25', 'Inhibit D rot Stp et Gantry Stp.', 'Machine', 'GD', 'Inhibit D rot Stp et Gantry Stp.\r\nMouvement en salles OK, plus moyen de passer les champs.\r\nFaire un terminate, reset motor et recharger le champ, OK.', '10', '20', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(634, '1088061300', '09', '15', '24', '06', '2004', 'SL25', 'Problèmes de lames', 'Machine', 'GD', 'Remplacement de l''ampoule du champ lumineux', '09', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(635, '1088080200', '14', '30', '24', '06', '2004', 'SL25', 'Problèmes de lames', 'Machine', 'GD', 'Remplacement de l''ampoule du champ lumineux', '14', '55', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(204, '1098190800', '15', '00', '19', '10', '2004', 'SL25', 'Plantage Visir', 'Informatique', 'GD', 'Reboot du PC Visir', '15', '5', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(205, '1098283200', '16', '40', '20', '10', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Reglage de la camera', '17', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(206, '1098287400', '17', '50', '20', '10', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Ecran bleu sur le RTD\r\nReboot \r\nTo Unlok le patient voir bouquin "premium therapy" P. 7.8', '18', '20', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(207, '1098353100', '12', '5', '21', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des timer', '12', '15', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(208, '1098430800', '09', '40', '22', '10', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '9', '55', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(209, '1098971700', '15', '55', '28', '10', '2004', 'SL25', 'Plantage Visir', 'Informatique', 'GD', 'Bug visir lors du remplacementdu n° de plomb.\r\nReboot du PC visir.', '15', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(210, '1099034100', '09', '15', '29', '10', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Plantage RTD, recharge du champ,\r\nreboot du RTD, probleme au demarrage.\r\nShutdown complet du rtd OK', '10', '00', '0', '45', 'oui');
INSERT INTO `pannes` VALUES(211, '1099418100', '18', '55', '02', '11', '2004', 'SL25', 'Mfil-Vmon', 'Machine', '', 'Bypass des timer', '19', '5', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(631, '1086248100', '09', '35', '03', '06', '2004', 'SL25', 'T/T Dem', 'Machine', 'GD', 'Action sur les switchs de l''iso rot de la table. Mouvement de l''iso rot et remise des valeurs utiles pour le traitement.', '10', '00', '00', '05', 'non');
INSERT INTO `pannes` VALUES(632, '1084859100', '07', '45', '18', '05', '2004', 'SL25', 'Facility one state', 'Machine', 'Physique', 'Beaucoup de mal à démarrer en X6 (Dose Rate Fault).\r\nEssai en X25 => OK retour W6 ok, mais interrupt après 200 UM\r\nReboot ALL avec Warm Up!', '08', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(215, '1100075400', '09', '30', '10', '11', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '9', '45', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(216, '1100101200', '16', '40', '10', '11', '2004', 'SL25', 'lat dem', 'Machine', 'MC', 'Bouger la table avec le moteur', '16', '45', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(217, '1100514000', '11', '20', '15', '11', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Faire un terminate et recharger le patient', '11', '25', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(218, '1100858400', '11', '00', '19', '11', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '11', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(219, '1101214800', '14', '00', '23', '11', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timer', '14', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(633, '1087994400', '14', '40', '23', '06', '2004', 'SL25', 'Porte plateau trop réfléchissant', 'Machine', 'MC', 'Chargement du champ sans le porte plateau.', '14', '50', '00', '10', 'non');
INSERT INTO `pannes` VALUES(221, '1101378000', '11', '20', '25', '11', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reglage de la camera', '11', '25', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(222, '1101385800', '13', '30', '25', '11', '2004', 'SL25', 'Gant 2 dem', 'Machine', 'GD', 'Faire tourner le gantry avec la floche de droite.\r\nProbleme de valeur de table pour un champ remise a 0 des valeurs de tables dans visir.', '13', '50', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(223, '1101465900', '11', '45', '26', '11', '2004', 'SL25', 'Gant 2 dem', 'Machine', 'MC', 'Probleme de valeur de table pour un champ remise a 0 des valeurs de tables dans visir.', '12', '55', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(224, '1101451200', '07', '40', '26', '11', '2004', 'SL25', 'Faisceau', 'Machine', 'Physique', 'Interuption de faisceau X25 pdf desimetrie\r\nFacility 1 state.\r\nReset (clef) insuffisant\r\nReboot RTD', '8', '00', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(225, '1101455100', '08', '45', '26', '11', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '8', '55', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(226, '1102668300', '09', '45', '10', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '9', '55', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(227, '1102929900', '10', '25', '13', '12', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'Reboot du RTD\r\nBypass des Timer', '10', '40', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(228, '1102946700', '15', '5', '13', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '15', '10', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(630, '1085581800', '16', '30', '26', '05', '2004', 'SL25', 'iView', 'Machine', 'GD', 'Action manuelle en le déverrouillant bouton vert.\r\nAction sur le disjoncteur Iview (à l''arrière de la machine) ON/OFF/ON.\r\nReprise en main des commandes de l''Iview.', '16', '40', '00', '10', 'non');
INSERT INTO `pannes` VALUES(230, '1103006400', '07', '40', '14', '12', '2004', 'SL25', 'Low press et timer', 'Machine', 'Physique', 'Remise de la pression.', '8', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(231, '1103011200', '09', '00', '14', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'Physique', 'Reboot du RTD car "ejectee" par celui ci.\r\nBypass des timer', '9', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(232, '1103018700', '11', '5', '14', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '11', '15', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(233, '1103028300', '13', '45', '14', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '13', '50', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(234, '1103272200', '09', '30', '17', '12', '2004', 'SL25', 'MM con C', 'Machine', 'GD', 'Touchgard de la table (bouton rouge) enfonce. Le desaciver.', '9', '45', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(235, '1103292900', '15', '15', '17', '12', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Leaves not ready Y1: sur la lame n° 21.\r\nRelance du RTD pour refroidir la camera.\r\nCoffrage ouvert pour mieux refroidir.', '15', '50', '0', '35', 'oui');
INSERT INTO `pannes` VALUES(236, '1103562000', '18', '00', '20', '12', '2004', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Probleme de lame Y1 tjrs la n°21 \r\nRelance du RTD pour refroidir.\r\nAeration du colli.', '8', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(237, '1103716800', '13', '00', '22', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'Technique', 'Bypass des Timer', '13', '5', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(238, '1103796000', '11', '00', '23', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des Timer', '11', '5', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(239, '1103870100', '07', '35', '24', '12', '2004', 'SL25', 'Faisceau', 'Machine', 'Physique', 'Facility one state, faisceau off pdt le warmup\r\nThy timer, Magn timer \r\nReboot RTD', '8', '00', '0', '0', 'non');
INSERT INTO `pannes` VALUES(240, '1104140700', '10', '45', '27', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des Timer', '10', '50', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(241, '1104228000', '11', '00', '28', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des Timer', '11', '5', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(242, '1104242700', '15', '5', '28', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '', '', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(243, '1104304800', '08', '20', '29', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des Timer', '', '', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(244, '1104310200', '09', '50', '29', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '', '', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(245, '1104327900', '14', '45', '29', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '', '', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(246, '1108544400', '10', '00', '16', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass des Timer', '10', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(247, '1075302600', '16', '10', '28', '01', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Redémarrage du RTD et de Visir.', '16', '25', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(248, '1075824900', '17', '15', '03', '02', '2004', 'SL25', 'Liaison Vx et lenteur du système', 'Informatique', 'GD', 'Reboot complet du système', '17', '30', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(249, '1076055600', '09', '20', '06', '02', '2004', 'SL25', 'Accessory changed', 'Machine', 'MC', 'Recharge du champ, remise ne place du plomb.', '9', '25', '0', '5', 'non');
INSERT INTO `pannes` VALUES(250, '1076056800', '09', '40', '06', '02', '2004', 'SL25', 'Machoires', 'Machine', 'Technique', 'La mâchoire x1 ne retrouve plus sa place. Passage à un autre champ pour débloquer la mâchoire.', '9', '45', '0', '5', 'non');
INSERT INTO `pannes` VALUES(251, '1076085300', '17', '35', '06', '02', '2004', 'SL25', 'Wedge', 'Machine', 'MC', 'Arrêt dans le wedge.\r\nRelance de Visir + RESET Motor.', '17', '45', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(645, '1096041600', '18', '00', '24', '09', '2004', 'SL25', 'Pb des E20 à 270° qui ne sortent que par paquet de 15 tops.', 'Machine', 'GD', 'Réglage "2T balance" ancienne valeur 21.00, nouvelle valeur 20.70.\r\nMaintenant bon à 270° mais mauvais à 90°.\r\n!! Attention, il faut faire absolument un contrôle à la victoreen avant et après la modification et au plus vite un contrôle des profils.', '18', '30', '00', '00', 'non');
INSERT INTO `pannes` VALUES(253, '1076936400', '14', '00', '16', '02', '2004', 'SL25', 'Plantage Visir-RTD', 'Machine', 'MC', 'Lenteur de communication entre le RTD et Visir.\r\nReboot ALL.', '14', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(254, '1077527700', '10', '15', '23', '02', '2004', 'SL25', 'Wedge', 'Machine', 'GD', 'Problème au passage du Wedge. \r\nTerminate - Reset Motor - Recharge du patient.', '10', '25', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(255, '1077543000', '14', '30', '23', '02', '2004', 'SL25', 'Plantage Visir-RTD', 'Machine', 'GD', 'Plantage entre Visir - RTD.\r\nRTD Reboot au milieu du traitement.', '14', '40', '0', '10', 'non');
INSERT INTO `pannes` VALUES(256, '1077714600', '14', '10', '25', '02', '2004', 'SL25', 'Accessory changed', 'Machine', 'MC', 'Remettre le support, changer de champ.', '14', '15', '0', '5', 'non');
INSERT INTO `pannes` VALUES(257, '1077714900', '14', '15', '25', '02', '2004', 'SL25', 'Field centered', 'Machine', 'MC', 'Bouton sur commande "Field Center".', '14', '20', '0', '5', 'non');
INSERT INTO `pannes` VALUES(258, '1058709600', '16', '00', '20', '07', '2003', 'SL25', 'tops non enregistres', 'Informatique', 'Technique', 'visirsimulation', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(259, '1060004700', '15', '45', '04', '08', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'Plus de X25.\r\nMise la machine en mode service + test OK.????', '16', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(260, '1061185500', '07', '45', '18', '08', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'Pas de X25 ni de X6.\r\nPb de fibre optique. remplacement du sp1par opt5.', '07', '55', '00', '10', 'non');
INSERT INTO `pannes` VALUES(261, '1061220600', '17', '30', '18', '08', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'Probleme de fibre optique. Bricolage avec le reste des fibres pour que ca marche.', '17', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(262, '1061278200', '09', '30', '19', '08', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'remplacement de la fibre optique par une nouvelle.', '10', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(263, '1061803800', '11', '30', '25', '08', '2003', 'SL25', 'Probleme de clavier', 'Informatique', 'Technique', 'remplacement du clavier.', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(265, '1062162900', '15', '15', '29', '08', '2003', 'SL25', 'Gantry cct', 'Machine', 'GD', 'Pb de lecture des potentiometres du gantry.\r\nVerification de la lecture OK.\r\nControl des switchs et rotation dugantry a la main, tjrs probleme.\r\nVerification des connecteurs qui ne faisaient plus bien contacts. remise en place de ceux ci tout et redevenu correct.', '15', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(266, '1062657300', '08', '35', '04', '09', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD et de Visir', '08', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(267, '1063086300', '07', '45', '09', '09', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'Physique', 'Log Off restart et OK', '08', '00', '00', '15', 'non');
INSERT INTO `pannes` VALUES(268, '1063866600', '08', '30', '18', '09', '2003', 'SL25', 'plantage du RTD lors du database checks', 'Informatique', 'GD', 'Voir panne du 24/07/03', '09', '25', '00', '55', 'oui');
INSERT INTO `pannes` VALUES(269, '1064411400', '15', '50', '24', '09', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Ecran bleu sur le RTD.\r\nReboot du RTD.', '16', '10', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(270, '1063951200', '08', '00', '19', '09', '2003', 'SL25', 'D rot X', 'Machine', 'GD', 'Le colli est aller trop loing et bute sur le fin de course.\r\ndebloquage de celui ci grace au jeux mecanique', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(271, '1063951200', '08', '00', '19', '09', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'Physique', 'remplacement des filtres', '08', '30', '00', '30', 'non');
INSERT INTO `pannes` VALUES(273, '1065516000', '10', '40', '07', '10', '2003', 'SL25', 'Thy Grid', 'Machine', 'Technique', 'Remplacement de la fibre => pas ca.\r\nApres quelques minutes tout rentre en ordre.?????', '11', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(274, '1065535800', '16', '10', '07', '10', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'Technique', 'Reboot du RTD et de VISIR', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(275, '1066036200', '11', '10', '13', '10', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'Technique', 'By pass des timer', '11', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(276, '1066221000', '14', '30', '15', '10', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'Technique', 'Remplacement des filtres par les plombiers.', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(277, '1066113000', '08', '30', '14', '10', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD', '08', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(278, '1066122900', '11', '15', '14', '10', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Pb avec la lame n°8 en Y2.\r\ndebloquage de la lame', '11', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(279, '1066719600', '09', '00', '21', '10', '2003', 'SL25', 'Plantage Visir', 'Informatique', 'Technique', 'nbr de tops RTD inferieurs aux nbr de tops de visir.\r\nRTD bloque.\r\nFaire un terminate au RTD et relancer le champ.', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(280, '1067934000', '09', '20', '04', '11', '2003', 'SL25', 'Pb de reconnaissance du plomb', 'Machine', 'Technique', 'Le RTD ne reconnait pas le n° de plomb.\r\nremplacement du plateau.', '09', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(281, '1068021000', '09', '30', '05', '11', '2003', 'SL25', 'plus de mouvement machine', 'Machine', 'GD', 'le bicca strips autour du colli a du etre remplacer par Elekta.', '13', '30', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(282, '1068118500', '12', '35', '06', '11', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'by pass des timer', '12', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(283, '1068469200', '14', '00', '10', '11', '2003', 'SL25', 'syst on, reset,????', 'Machine', 'Technique', 'Log off et reset des timer.', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(285, '1069754400', '11', '00', '25', '11', '2003', 'SL25', 'Plantage Visir', 'Informatique', 'Technique', 'plantage au passage du wedge.\r\nTerminate, recharge du champ', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(286, '1069851600', '14', '00', '26', '11', '2003', 'SL25', 'Plantage Visir', 'Informatique', 'Technique', 'Terminate et recharge du champ.', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(287, '1070385300', '18', '15', '02', '12', '2003', 'SL25', 'HT interlock RTA - HT interlock RTB', 'Machine', 'MC', 'Redemarrage en mode service, plus de probleme. ', '18', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(288, '1070439600', '09', '20', '03', '12', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'reglage e la camera;', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(289, '1070628300', '13', '45', '05', '12', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'Technique', 'By pass des timers', '14', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(290, '1070904600', '18', '30', '08', '12', '2003', 'SL25', 'Plantage Visir', 'Informatique', 'MC', 'Champ du patient tres lent a charger. \r\nReboot du PC Visir', '18', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(291, '1070917200', '22', '00', '08', '12', '2003', 'SL25', 'Wedge', 'Machine', 'GD', 'demontage du Wedge\r\nverification des 4 switchs\r\ndeplacement du wedge manuellement\r\nOK', '23', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(292, '1072087500', '11', '05', '22', '12', '2003', 'SL25', 'Probleme avec le porte plomb', 'Machine', 'GD', 'remplacement du plomb, nettoyage des connecteurs et tjrs le probleme.\r\n?????\r\n', '11', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(293, '1072112400', '18', '00', '22', '12', '2003', 'SL25', 'Probleme avec le porte plomb', 'Machine', 'GD', 'Verification des connections et du cablage?????', '19', '30', '01', '30', 'non');
INSERT INTO `pannes` VALUES(294, '1072798500', '16', '35', '30', '12', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass des Timer', '16', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(295, '1072867500', '11', '45', '31', '12', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'by pass des timer', '12', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(296, '1073489400', '16', '30', '07', '01', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'by pass des timer', '16', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(297, '1073635200', '09', '00', '09', '01', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'Bypass des timer', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(298, '1074156900', '09', '55', '15', '01', '2004', 'SL25', 'Champ ne passe pas ', 'Informatique', 'GD', 'Probleme avec les valeurs de tables. \r\nRemise des valeurs de table a 0 dans visir.', '10', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(299, '1074604500', '14', '15', '20', '01', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass des timer.', '14', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(300, '1074688200', '13', '30', '21', '01', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'by pass des timer', '13', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(301, '1074771000', '12', '30', '22', '01', '2004', 'SL25', 'Température élevée', 'Machine', 'GD', 'By pass des timer', '12', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(302, '1075111200', '11', '00', '26', '01', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass des timer', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(303, '1075207800', '13', '50', '27', '01', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot du rtd et de visir.', '14', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(304, '1075281000', '10', '10', '28', '01', '2004', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'recharge du patient', '10', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(305, '1108736400', '15', '20', '18', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass', '15', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(306, '1109073600', '13', '00', '22', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(307, '1109343600', '16', '00', '25', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(308, '1109599200', '15', '00', '28', '02', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass', '16', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(309, '1109863800', '16', '30', '03', '03', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass', '16', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(310, '1109924100', '09', '15', '04', '03', '2005', 'SL25', 'iView', 'Machine', 'MC', 'Desenclencher, reenclencher le fusible.  ', '09', '40', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(311, '1110268800', '09', '00', '08', '03', '2005', 'SL25', 'Plantage Visir-RTD', 'Machine', 'GD', 'Probleme de chargement du patient. \r\nLe RTD rale lors du chargement du champ, donne un prescription invalid, toute les valeurs dans visir sont a 0.\r\nMise du PC dans le mode Administrator et visir est OK.\r\nDue au test de visir 2.', '09', '45', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(312, '1110276000', '11', '00', '08', '03', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(313, '1110362400', '11', '00', '09', '03', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(314, '1110440400', '08', '40', '10', '03', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass', '08', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(315, '1110354600', '08', '50', '09', '03', '2005', 'SL25', 'inhibit terminate key', 'Machine', 'GD', 'Switch terminate enfonce au lieu du bouton start.\r\ndesenclencher le switch, reset motor => OK', '08', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(316, '1050060600', '13', '30', '11', '04', '2003', 'SL75', 'Champs lumineux', 'Machine', 'GD', 'La valeur de lecture de tbl lat dans visir, varie fortement par rapport a la veille (50 au lieu de 33).\r\nSans doute due a un angle de colonne de table?????', '14', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(317, '1059373800', '08', '30', '28', '07', '2003', 'SL75', 'Faisceau', 'Machine', 'Technique', 'Ch2 ne compte casiment plus, chambre foutue.', '17', '00', '08', '30', 'oui');
INSERT INTO `pannes` VALUES(318, '1062598200', '16', '10', '03', '09', '2003', 'SL75', 'Plantage Visir', 'Informatique', 'GD', 'error visir.\r\nReboot du PC visir', '16', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(319, '1069074000', '14', '00', '17', '11', '2003', 'SL75', 'Laser sagital sup', 'Machine', 'MC', 'reglage du laser.', '15', '20', '01', '20', 'oui');
INSERT INTO `pannes` VALUES(320, '1070436600', '08', '30', '03', '12', '2003', 'SL75', 'thyratron Magnetron', 'Machine', 'Technique', 'Remplacement du Thyratron  et du Magnetron par Elekta\r\n3 jours.', '17', '00', '24', '30', 'oui');
INSERT INTO `pannes` VALUES(321, '1092991200', '10', '40', '20', '08', '2004', 'SL75', 'Wedge', 'Machine', 'MC', 'Dia wedge.\r\nChamp trop grand. Max X 30 max Y 40', '10', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(322, '1100250900', '10', '15', '12', '11', '2004', 'SL75', 'plus de mouvement', 'Machine', 'MC', 'Verif du porte plomb.\r\nreset motor.', '10', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(323, '1105704300', '13', '05', '14', '01', '2005', 'SL75', 'No HT ON', 'Machine', 'GD', 'Reboot SL75 ', '13', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(324, '1105959600', '12', '00', '17', '01', '2005', 'SL75', 'Laser', 'Machine', 'Technique', 'Remplacement du laser.', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(325, '1106134200', '12', '30', '19', '01', '2005', 'SL75', 'Plateau plomb', 'Machine', 'Technique', 'remise en place du plateau.', '12', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(326, '1016119800', '16', '30', '14', '03', '2002', 'SL75', 'Wedge', 'Machine', 'Technique', 'Dia/wedge, ATTENTION a la taille du champ;\r\nMax en X; 30 et Max en Y; 40.', '16', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(327, '1019660400', '17', '00', '24', '04', '2002', 'SL75', 'Plantage Visir', 'Informatique', 'Technique', 'relance de la machine.', '17', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(328, '1020344400', '15', '00', '02', '05', '2002', 'SL75', 'Plantage Visir', 'Informatique', 'Technique', 'Plus asse de place dans visir; 200Mb en plus dans le serveur.', '15', '30', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(329, '1022677200', '15', '00', '29', '05', '2002', 'SL75', 'table', 'Machine', 'Technique', 'le moteur lateral patine.\r\nresserrer le collier de transmission.', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(330, '1023278700', '14', '05', '05', '06', '2002', 'SL75', 'Pb de plomb', 'Machine', 'GD', 'remplacement du porte plateau et du plomb.', '14', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(331, '1033653600', '16', '00', '03', '10', '2002', 'SL75', 'Colllision table porte K7', 'Machine', 'Technique', 'Collision entre la table et le porte K7. Pieds du porte K7 ecrase par la table.\r\nboitier de commande gauche casse. gaine de protection du cable ecrasee, tole de bas de table defoncee.\r\nboitier colle au double face remise en etat de la table et QC de la table.', '16', '45', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(332, '1035448800', '10', '40', '24', '10', '2002', 'SL75', 'Plantage Visir', 'Informatique', 'GD', 'reboot visir server', '11', '05', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(333, '1035552900', '15', '35', '25', '10', '2002', 'SL75', 'Mag fil fault', 'Machine', 'Technique', 'Control du fusible sur T2 (dans gantry droit)\r\ncontrol des tensions\r\nOK apres avoir eteint et allumer 2 fois.', '16', '00', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(453, '1107356400', '16', '00', '02', '02', '2005', 'SL25', 'Gan Dem 2', 'Machine', 'Technique', 'Molette de la floche à droite.', '', '', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(335, '1037261700', '09', '15', '14', '11', '2002', 'SL75', 'valeur de table mauvaise', 'Machine', 'GD', 'Mauvaise connection au connecteur "sol" des cables de table.', '09', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(336, '1037719800', '16', '30', '19', '11', '2002', 'SL75', 'Mag. Vil', 'Machine', 'Technique', 'Relance machine + timer\r\ntel a Elekta.', '16', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(337, '1037784600', '10', '30', '20', '11', '2002', 'SL75', 'Mag Vil', 'Machine', 'Technique', 'Relance machine + timer', '10', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(338, '1038308400', '12', '00', '26', '11', '2002', 'SL75', 'Mag fil fault', 'Machine', 'Technique', 'Remplacement des deux relais RLA RLB cote gauche (patient) dans le gantry.', '13', '40', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(339, '1041933600', '11', '00', '07', '01', '2003', 'SL25', 'Fx link', 'Informatique', 'Technique', 'Logoff sl25.\r\nRestart pc visir', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(340, '1042210800', '16', '00', '10', '01', '2003', 'SL25', 'lost leaf refl', 'Machine', 'Technique', 'Reglage de la luminosite de la camera.', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(341, '1042721400', '13', '50', '16', '01', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'Dose rate avec X6, X25 OK.\r\nC/LT, pbme, puissance fournie mais pas la dose.\r\nConnecteru SK17F (a droite de la cage haute tension, avec la fibre) casse.\r\nRecolle le connecteur et X6 OK', '18', '30', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(342, '1043767200', '16', '20', '28', '01', '2003', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'X2 bloque.\r\nBouge le moteur via soft, bouge le moteur a la main OK', '16', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(343, '1043928900', '13', '15', '30', '01', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'Technique', 'Reboot RTD et VISIR', '13', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(344, '1043935500', '15', '05', '30', '01', '2003', 'SL25', 'MLC lost reflector', 'Machine', 'Technique', 'Ouvrir legerement la focale de la camera. ', '15', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(345, '1044257400', '08', '30', '03', '02', '2003', 'SL25', 'Faisceau', 'Machine', 'Technique', 'X6 et X25 ne sortent pas.\r\nProbleme de fibre optique remplacer par Elekta (tjrs sous garantie).', '09', '05', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(346, '1044264600', '10', '30', '03', '02', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du PC visir et du RTD', '10', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(347, '1044295200', '19', '00', '03', '02', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'Technique', 'reboot du RTD et VISIR', '19', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(348, '1044354600', '11', '30', '04', '02', '2003', 'SL25', 'MLC link', 'Informatique', 'Technique', 'Reboot RTD', '11', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(349, '1044363600', '14', '00', '04', '02', '2003', 'SL25', 'MLC', 'Machine', 'Technique', 'ajuster la camera', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(350, '1044527400', '11', '30', '06', '02', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'PB de liaison RTD VISIR, due a des tests Physique.\r\nReboot', '11', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(351, '1044972300', '15', '05', '11', '02', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Pb de lame (reflexion du plateau) \r\nrestart RTD ', '15', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(628, '1084870800', '11', '00', '18', '05', '2004', 'SL25', 'Dr Watson', 'Informatique', 'GD', 'Relance de Visir + RTD\r\nByPass des Timers', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(353, '1045054800', '14', '00', '12', '02', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot RTD et VISIR', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(354, '1045037400', '09', '10', '12', '02', '2003', 'SL25', 'HT OVER TEMP', 'Machine', 'GD', 'Pb de fibre optique. \r\nInversion des fibres entre HT O/L et HT O/T', '09', '25', '00', '15', 'non');
INSERT INTO `pannes` VALUES(355, '1045131600', '11', '20', '13', '02', '2003', 'SL25', 'GT O/L plus de faisceau', 'Machine', 'GD', 'Remplacement de la fibre optique HT O/L', '11', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(356, '1045475100', '10', '45', '17', '02', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'Plus de X6 mais X25 ok.\r\nPb au tuner ctrl => ne monte plus au dessus de 200.\r\nVal max 394.0 et min 50.0\r\nPb au pignon de fin de course. Reglage par Elekta.\r\n', '13', '30', '03', '15', 'oui');
INSERT INTO `pannes` VALUES(357, '1045641600', '09', '00', '19', '02', '2003', 'SL25', 'Ht Crowbar', 'Machine', 'GD', 'Pb de fibre optique', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(358, '1045722600', '07', '30', '20', '02', '2003', 'SL25', 'HT crowbar', 'Machine', 'GD', 'Pb de fibre', '07', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(359, '1045725600', '08', '20', '20', '02', '2003', 'SL25', 'HT crowbar', 'Machine', 'GD', 'remplacement de la fibre optique', '11', '00', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(361, '1109863200', '16', '20', '03', '03', '2005', 'SL75', 'Machoires', 'Machine', 'MC', 'Les machoires X2 ne veulent pas aller aà 0 en autosetup.\r\nOK en manuel + modif eventuel du TP', '16', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(641, '1094651100', '15', '45', '08', '09', '2004', 'SL25', 'Plus de télémètre', 'Machine', 'GD', 'Remplacement de l''ampoule\r\nQC du télémètre', '16', '00', '00', '15', 'non');
INSERT INTO `pannes` VALUES(363, '1112419800', '07', '30', '02', '04', '2005', 'SL75', 'guide fault', 'Machine', 'Physique', 'Pas de faisceau;\r\nPression basse, la remettre a 30 PSI', '07', '45', '00', '15', 'non');
INSERT INTO `pannes` VALUES(364, '1110552300', '15', '45', '11', '03', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass et puis reboot car lenteur', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(365, '1110557700', '17', '15', '11', '03', '2005', 'SL25', 'Lat dem', 'Machine', 'MC', 'bouger la table de gauche a droite, avec les deux commandes de table.', '17', '35', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(366, '1110894600', '14', '50', '15', '03', '2005', 'SL25', 'MLC linck', 'Informatique', 'GD', 'Reboot du RTD et OK.\r\nPour prochaine fois voir si un reset du MLC ne suffit pas.\r\nProbleme pendant une maintenance.', '15', '05', '00', '15', 'non');
INSERT INTO `pannes` VALUES(367, '1110978600', '14', '10', '16', '03', '2005', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'Bypass des timer', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(368, '1114161000', '11', '10', '22', '04', '2005', 'SL25', 'M Mag Ctrl', 'Machine', 'GD', 'log off RTD \r\nLog off Visir', '11', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(369, '1114417800', '10', '30', '25', '04', '2005', 'SL25', 'M Mag Crtl', 'Machine', 'GD', 'Recharge du champ apres log off/on du RTD et de \r\nvisir', '13', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(370, '1114497000', '08', '30', '26', '04', '2005', 'SL25', 'Fine pot offset X1', 'Machine', 'MC', 'bouger les lames en rthservice', '08', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(371, '1114430400', '14', '00', '25', '04', '2005', 'SL25', 'M Mag Ctrl', 'Machine', 'Technique', 'Intervention Elekta\r\nLe Ma Mag Ctrl (courant de la bobine du magnetron) chute. passe de 34.5 (X25) a 19.5. De meme qu M Mag Vmon. Le probleme viend du thyristor 13D, flagrant quand on bouge le cable rose sur la gachette.', '18', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(372, '1114513200', '13', '00', '26', '04', '2005', 'SL25', 'M Mag Crtl Fine - offset Pot X1 - Check Pot X1', 'Machine', 'Technique', 'Intervention Elekta\r\nRemplacement du thyristor (enfin de stock chez Elekta)\r\nControl des connection des different pot de la machoire X1\r\nDosi poly et victoreen', '18', '30', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(373, '1045834800', '14', '40', '21', '02', '2003', 'SL25', 'Machoires', 'Machine', 'GD', 'Machoire X2 bloque, rotation du gantry vers la gauche.', '14', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(374, '1046872800', '15', '00', '05', '03', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'reglage de la camera.', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(375, '1047281400', '08', '30', '10', '03', '2003', 'SL25', 'Machoires', 'Machine', 'GD', 'reglage de la camera.\r\n', '09', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(376, '1047374100', '10', '15', '11', '03', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot du RTD', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(377, '1047396900', '16', '35', '11', '03', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Reboot du RTD', '16', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(378, '1047540900', '08', '35', '13', '03', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Pb de lames pendant le passage du wedge. \r\nMag timer et Thy timer.\r\nBy pass des timer', '08', '45', '00', '10', 'non');
INSERT INTO `pannes` VALUES(379, '1047646800', '14', '00', '14', '03', '2003', 'SL25', 'Fx link', 'Informatique', 'Technique', 'Relance du RTD, by pass des timer', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(380, '1048147200', '09', '00', '20', '03', '2003', 'SL25', 'Gas press gaz', 'Machine', 'Technique', 'Verifier le manometre doit etre entre 0.7 et 0.8. a gauche du gantry a cote du bloc HT.\r\nVerifier que le bouton bleu au detendeur de la bombonne est ouvert\r\nItem TOP UP GAS 1 set vlaue placer en open une a deux minute\r\nRefermer ITEM\r\nSi pas OK changer la bombonne, ATTENTION ne pas toucher a la vis du detendeur. \r\n', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(381, '1048500000', '11', '00', '24', '03', '2003', 'SL25', 'Long Dem', 'Machine', 'Technique', 'Bouger les switches de table en longitudinal.', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(382, '1048759200', '11', '00', '27', '03', '2003', 'SL25', 'Plantage Visir-RTD', 'Machine', 'GD', 'reboot du RTD', '11', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(383, '1048860000', '15', '00', '28', '03', '2003', 'SL25', 'Facility 1 sate', 'Machine', 'Technique', '???????????', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(384, '1049094600', '09', '10', '31', '03', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Reboot du RTD', '09', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(385, '1049709600', '12', '00', '07', '04', '2003', 'SL25', 'Mag V fil', 'Machine', 'Technique', 'Bypass des timer', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(386, '1049731200', '18', '00', '07', '04', '2003', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Lame y2-28 bloquee a droite.\r\ndecalage via soft', '18', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(387, '1049957700', '08', '55', '10', '04', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'Physique', 'Bypass des timer\r\nPb de filtre tel service tech pour faire venir les plombiers.', '09', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(388, '1049960400', '09', '40', '10', '04', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'by pass des timer', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(389, '1049979900', '15', '05', '10', '04', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Lame y2-28 bloquee.\r\nrotation gantry.\r\nmise en mouvement de la lame via soft.', '15', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(390, '1051012200', '13', '50', '22', '04', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'reboot RTD', '14', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(391, '1051184100', '13', '35', '24', '04', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'reboot RTD', '11', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(392, '1051182600', '13', '10', '24', '04', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'reboot du RTD', '13', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(393, '1051516800', '10', '00', '28', '04', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot du RTD\r\npour toute la journee.\r\n', '', '', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(394, '1051601400', '09', '30', '29', '04', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'reboot RTD', '09', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(395, '1052980200', '08', '30', '15', '05', '2003', 'SL25', 'Pb MLC apres intal de RTD 4.1', 'Informatique', 'Technique', 'Apres installation RTD 4.0 et 4.1, les champs rectangulaires donnent des problemes MLC.\r\nRelance machine', '09', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(396, '1053010800', '17', '00', '15', '05', '2003', 'SL25', 'E20 ne sortent pas a 395°, 2T Err', 'Machine', 'Technique', 'Ajustement du 2T balance de 20.68 a 19.50 en E20.\r\nDosi a faire apres cela.', '17', '30', '00', '30', 'non');
INSERT INTO `pannes` VALUES(397, '1053325800', '08', '30', '19', '05', '2003', 'SL25', 'Faisceau', 'Machine', 'Technique', 'X6 ne sorte pas, t° et humidite, du a la ventilation.\r\nLa chambre commence a faiblir.\r\nX6 changer le GUN I AIM a 245 au lieu de 234', '', '', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(398, '1053498600', '08', '30', '21', '05', '2003', 'SL25', 'Faisceau', 'Machine', 'Technique', 'irradier encore et encore ', '', '', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(399, '1053599400', '12', '30', '22', '05', '2003', 'SL25', 'iView', 'Machine', 'Technique', 'Problemede touchgard, remise en place du switch.', '15', '30', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(400, '1053697200', '15', '40', '23', '05', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'Technique', 'shutdownde la machine, mauvaise manip.\r\nreboot rtd', '15', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(401, '1054274400', '08', '00', '30', '05', '2003', 'SL25', 'Faisceau', 'Machine', 'GD', 'Prechauffage 2h, Prob de diff entre UM1 et UM2.\r\nReglage avec Elekta en X6 Dos 1 ref 20.95 vers 20.34\r\net en X25 dos 2 ref 15.71 vers 15.21', '11', '30', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(402, '1054620000', '08', '00', '03', '06', '2003', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass des timer\r\nremplacement des filtres', '08', '10', '00', '10', 'non');
INSERT INTO `pannes` VALUES(403, '1054646400', '15', '20', '03', '06', '2003', 'SL25', 'Plantage Visir-RTD', 'Machine', 'GD', 'perte des donnees tops du patient, rajout au lendemain. ', '15', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(404, '1054906800', '15', '40', '06', '06', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Rajout des um pour le lendemain', '15', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(405, '1054798500', '09', '35', '05', '06', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'RTD en reboot.\r\nRelance complete du RTD', '09', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(406, '1056609000', '08', '30', '26', '06', '2003', 'SL25', 'Trop difference entre UM1 et UM2', 'Machine', 'GD', 'remplacement de la chambre par Elekta.', '', '', '07', '30', 'oui');
INSERT INTO `pannes` VALUES(407, '1055941200', '15', '00', '18', '06', '2003', 'SL25', 'Plantage Visir', 'Informatique', 'Technique', 'reboot visir', '', '', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(408, '1057474800', '09', '00', '06', '07', '2003', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'Technique', 'Reboot', '', '', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(409, '1058428800', '10', '00', '17', '07', '2003', 'SL25', 'HT int HTB et RHB', 'Machine', 'Technique', 'Disparu tous seul, check des fibres optiques.', '', '', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(410, '1031232000', '15', '20', '05', '09', '2002', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot du tout', '15', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(411, '1031297400', '09', '30', '06', '09', '2002', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'Technique', 'reboot de tout', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(412, '1031579400', '15', '50', '09', '09', '2002', 'SL25', 'Drot y dem', 'Machine', 'GD', 'Plus de rotation colli avec les commandes en Y, Pb de rotation ref.\r\nRotation du colli avec les commandes X.\r\nRedownload du champ.', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(413, '1031815800', '09', '30', '12', '09', '2002', 'SL25', 'HT belows', 'Machine', 'Technique', 'Probleme de fibre optique. Voir la fibre avec le code Mod O/T.\r\nenlever la fibre, remettre ok', '10', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(414, '1033027200', '10', '00', '26', '09', '2002', 'SL25', 'Thy grid', 'Machine', 'GD', 'verification des tensions du thyratron. Jaune 6.3 Vac, rouge 5.5 Vac, vert 17.3Vdc.\r\nTest de la fibre optique, Pbl avec celle du thy. remplacement.', '10', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(415, '1033364700', '07', '45', '30', '09', '2002', 'SL25', 'HT PSU OT, over temp bellows.', 'Machine', 'GD', 'Verification du switch over temp,OK\r\nverification de la fibre optique HT O/T qui est deffectueuse, remplacement de celle ci.\r\nDosi', '09', '00', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(416, '1034769600', '14', '00', '16', '10', '2002', 'SL25', 'Drot X dem', 'Machine', 'GD', 'tripotage des switchs X de rotation du colli.', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(417, '1034842500', '10', '15', '17', '10', '2002', 'SL25', 'Fx link', 'Informatique', 'GD', 'Probleme de communication entre visir et RTD\r\nReboot', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(418, '1034859300', '14', '55', '17', '10', '2002', 'SL25', 'Plantage Visir', 'Informatique', 'Technique', 'Pbl de chargement du patient, 2 tops de perdu dans visir. recharge du patient, correction dans visir.', '15', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(419, '1034923500', '08', '45', '18', '10', '2002', 'SL25', 'coll lock', 'Machine', 'GD', 'Pour le coll lock, faire une rotation du colli.\r\ndownload du patient.', '09', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(420, '1035194400', '12', '00', '21', '10', '2002', 'SL25', 'Fx linck', 'Informatique', 'GD', 'Perte de liaison entre visir et le RTD. \r\nReboot.', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(421, '1035448800', '10', '40', '24', '10', '2002', 'SL25', 'Plantage Visir', 'Informatique', 'GD', 'reboot du server visir', '11', '05', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(422, '1035810000', '14', '00', '28', '10', '2002', 'SL25', 'iView', 'Machine', 'Technique', 'Iview bloque.\r\non/off du disjopnteur, pas ca.\r\nPbm mecanique au niveau du touchgard.', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(423, '1036395000', '08', '30', '04', '11', '2002', 'SL25', 'Touchgarde avec porte plomb electron', 'Machine', 'GD', 'Touchgard reste actif meme quand on enleve le porte accesoir. mettre un autre champ pour debloque le systeme.', '08', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(424, '1037098800', '12', '00', '12', '11', '2002', 'SL25', 'long dem', 'Machine', 'Technique', 'Tripotage des switchs de deplacement longitudinal de la table.', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(425, '1037278200', '13', '50', '14', '11', '2002', 'SL25', 'coll lock et gant 2 dem', 'Machine', 'GD', 'rotation du colli, jouer avec le switch fontion de la floche de droite.', '14', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(426, '1037951400', '08', '50', '22', '11', '2002', 'SL25', 'laser HS', 'Machine', 'GD', 'remplacement du laser et reglage de celui ci.', '09', '15', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(427, '1038324300', '16', '25', '26', '11', '2002', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot visir et RTD', '16', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(428, '1038925200', '15', '20', '03', '12', '2002', 'SL25', 'coll lock', 'Machine', 'GD', 'redemarrage du SLM25', '15', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(429, '1038926400', '15', '40', '03', '12', '2002', 'SL25', 'coll lock', 'Machine', 'GD', 'Rotation gantry a -90 rotation du colli.\r\nrelance du patient', '15', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(430, '1038939000', '19', '10', '03', '12', '2002', 'SL25', 'Y2 too naro', 'Machine', 'GD', 'Lame y1-21 bloque en exterieur,pas possible de debloque via soft, demontage de la ligne de moteur et remise en place de la lame manuellement. \r\nProbleme de rater avec les lame Y2-1 et Y2-29', '20', '40', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(431, '1039024800', '19', '00', '04', '12', '2002', 'SL25', 'lost leaf', 'Machine', 'Technique', 'reglage de la camera.', '19', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(432, '1039444500', '15', '35', '09', '12', '2002', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'reboot', '15', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(433, '1039513500', '10', '45', '10', '12', '2002', 'SL25', 'Drot chk', 'Machine', 'Technique', 'reglage des pot de rotation colli;\r\nmesure vont de 0 a 10.24\r\nles valeurs doivent etre identiques sinon DROT CHK', '', '', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(434, '1039530000', '15', '20', '10', '12', '2002', 'SL25', '2T error', 'Machine', 'Technique', 'En mode service erreur 2T entre 2.6 et 3.5 (inferieur a 5?????)', '15', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(435, '1039790100', '15', '35', '13', '12', '2002', 'SL25', 'Drot', 'Machine', 'GD', 'rotation a la main du gantry', '15', '40', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(436, '1040115600', '10', '00', '17', '12', '2002', 'SL25', 'Probleme de validation des valeurs de tables.', 'Machine', 'GD', 'remise des valeurs de tables a 0 dans visir pour tout les champs.', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(437, '1040971500', '07', '45', '27', '12', '2002', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'lames Y1-16 bloque, remise en place via soft.', '07', '50', '00', '05', 'non');
INSERT INTO `pannes` VALUES(438, '1041233400', '08', '30', '30', '12', '2002', 'SL25', 'Faisceau', 'Machine', 'Technique', 'X6 ne sort pas.\r\nX6 Gun Aim I passe de 7.39 a 7.49.\r\nSelon Elekta du aux variations climatiques. ', '09', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(439, '1041252000', '13', '40', '30', '12', '2002', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'juste touche un peu le plexi pour reactiver les lames.', '13', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(452, '1107500400', '08', '00', '04', '02', '2005', 'SL25', 'Thyratron Grid', 'Machine', 'Technique', 'Vérification de tout ce qui concerne le Thy Grid.\r\nSolution: fusible de lalim du Thy grillé ...', '', '', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(444, '1116922500', '10', '15', '24', '05', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'Bypass des timers.\r\nTel au Service Technique (5802) pour faire le nettoyage des filtres à l''arrivée de l''eau.', '', '', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(445, '1117453500', '13', '45', '30', '05', '2005', 'SL25', 'Fx Link', 'Machine', 'GD', 'Reboot PC Visir.', '', '', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(446, '1117691100', '07', '45', '02', '06', '2005', 'SL25', 'Room doors 3-2-1', 'Machine', 'Physique', 'Fusible HT Interlock avait sauté. Ré-enclenché.', '', '', '00', '05', 'non');
INSERT INTO `pannes` VALUES(447, '1114408800', '08', '00', '25', '04', '2005', 'SL25', 'Champs lumineux', 'Machine', 'MC', 'Plus de champs lumineux:\r\n- Remplacement de l''ampoule\r\n- Contrôle du champs lumineux\r\n- (avec problème de développeuse)', '', '', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(448, '1114176600', '15', '30', '22', '04', '2005', 'SL25', 'Champs lumineux', 'Machine', 'MC', 'Ampoule des lames OFF:\r\n- Vérif connecteur: OK\r\n- Films 20x20 & 10x10: OK', '', '', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(449, '1114150500', '08', '15', '22', '04', '2005', 'SL25', 'No reflector', 'Machine', 'GD', 'Faux contact sur l''ampoule du champ lumineux', '', '', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(450, '1112886000', '17', '00', '07', '04', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass', '', '', '00', '05', 'non');
INSERT INTO `pannes` VALUES(451, '1112865000', '11', '10', '07', '04', '2005', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'Bypass', '', '', '00', '05', 'non');
INSERT INTO `pannes` VALUES(454, '1106815200', '09', '40', '27', '01', '2005', 'SL25', 'iView', 'Machine', 'GD', 'Action sur disjoncteur de l''iView (arrivé 2 fois dans la journée).', '', '', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(455, '1106654400', '13', '00', '25', '01', '2005', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Changement des moteurs avec Elekta.', '', '', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(456, '1117791900', '11', '45', '03', '06', '2005', 'SL25', 'Fx Link', 'Machine', 'GD', 'Terminate + Reset Motor + Recharge du champ', '', '', '00', '05', 'non');
INSERT INTO `pannes` VALUES(457, '1106117100', '07', '45', '19', '01', '2005', 'SL25', 'Fine Pot X1 Offset', 'Machine', 'MC', 'Rechargement du champ plusieurs fois.', '', '', '00', '20', 'non');
INSERT INTO `pannes` VALUES(458, '1118074500', '18', '15', '06', '06', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Lame y1 n3 bloque a 1 mm de sa position pour un IMRT. deblocage via soft, surement la vis sans fin qui est usee. Modification du champ par la physique. Control de la lame a la prochaine maintenance. ', '18', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(459, '1118125800', '08', '30', '07', '06', '2005', 'SL25', 'Fx Link', 'Informatique', 'GD', 'reboot de visr et log off/on du RTD.', '08', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(460, '1118208600', '07', '30', '08', '06', '2005', 'SL25', 'Thyratron Grid', 'Machine', 'MC', 'Fusible HT interlock et LT avaient saute. reenclanchement et reboot.', '07', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(461, '1118839200', '14', '40', '15', '06', '2005', 'SL25', 'Targ Type', 'Machine', 'Technique', 'Verification des switchsdans le gantry. Sous les plombs de protections et de la plaque rouge. On retrouve le moteur vert et 3 switchs. cotrol de ces 3 switchs.', '18', '00', '02', '20', 'oui');
INSERT INTO `pannes` VALUES(462, '1118906100', '09', '15', '16', '06', '2005', 'SL25', 'fuite d eau', 'Machine', 'GD', 'fuite d eau au niveau du wave guide. vidange du circuit et remise en etat du coude en L (voir photo dans le cahier).', '14', '00', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(463, '1118901600', '08', '00', '16', '06', '2005', 'SL25', 'fuite d eau sur le gantry', 'Machine', 'GD', 'Au niveau du tuyau jaune, photo dans le cahier. Mais apres inspection d Elekta, c est un autre tuyau rouge.\r\nremplacement de tout les tyau de la tete par Elekta.', '09', '20', '01', '20', 'oui');
INSERT INTO `pannes` VALUES(464, '1119365100', '16', '45', '21', '06', '2005', 'SL25', 'Too many reflectors', 'Machine', 'MC', 'Applic. plombs + caméra', '17', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(465, '1119420000', '08', '00', '22', '06', '2005', 'SL25', 'Fuite d eau colli', 'Machine', 'Technique', 'Réparation de la fuite d''eau dans le colli (remplacement de toute les tuyauteries par Elekta).\r\nRéglage du 2RI Ctrl comme inhibit lors de la dosi (il faut regarder 2R ERR et régler la valeur de 2RI Ctrl pour que le 2R ERR soit au plus proche de 0).\r\nAvant ça, réglage du gun atn I et guen I Ctrl à 6,17 (valeur indiquée dans la colonne de droite à gun I ctrl).', '16', '00', '18', '00', 'oui');
INSERT INTO `pannes` VALUES(466, '1120024800', '08', '00', '29', '06', '2005', 'SL25', 'Chambre', 'Machine', 'MC', 'Elekta: remplacement de la chambre.', '16', '00', '18', '00', 'oui');
INSERT INTO `pannes` VALUES(467, '1120815900', '11', '45', '08', '07', '2005', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Fine Pot X2 comme inhibit.\r\nReglage focus camera.', '12', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(468, '1121063400', '08', '30', '11', '07', '2005', 'SL25', 'Water temp', 'Machine', 'GD', 'By pass des timer\r\nReboot Visir\r\nTel au 5802 pour que les plombiers changent le filtre de l arrive d eau', '08', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(469, '1121162400', '12', '00', '12', '07', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'PENDANT L HEURE DE TABLE\r\nune des lames (n 8 s emble t il) pose probleme. \r\ninversion des deux cartes de commandes des moteurs pour test.\r\nTest avec champ IMRT tjrs pbl de lame mais autre ???\r\n', '13', '00', '01', '00', 'non');
INSERT INTO `pannes` VALUES(470, '1121267700', '17', '15', '13', '07', '2005', 'SL25', 'Check pot Y2', 'Machine', 'Technique', 'APRES TAITEMENT\r\nControl des differentes connections et cablages aux niveaux des machoires, dans le colli. Rien de flagrant.\r\nTest de mouvements machoires et lames Tout semble OK.\r\nsurement un faut contact quelque part, apres plus de probleme de machoirs ni de lames ', '18', '00', '00', '45', 'non');
INSERT INTO `pannes` VALUES(471, '1122537600', '10', '00', '28', '07', '2005', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'log off/on du RTD\r\nrecharge du patient dans visir OK', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(472, '1127211300', '12', '15', '20', '09', '2005', 'SL25', 'Func 2 Dem', 'Machine', 'MC', 'Bidouille sure la floche, potentiometre function', '12', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(473, '1127453400', '07', '30', '23', '09', '2005', 'SL25', 'Func 2 dem', 'Machine', 'GD', 'La floche de droite, celle de l iview, pose probleme avec la molette function. Tjrs bidouille, plus achat d une nouvelle chez Elekta. Plus possible de regler les pot.\r\nDosi OK', '08', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(474, '1082982600', '14', '30', '26', '04', '2004', 'SL75', 'le gantry bouge tout seul', 'Machine', 'GD', 'Le bouton de l\\''auto setup etait rester enfonce sur la floche. Deblocage et tout est OK.', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(475, '1084536600', '14', '10', '14', '05', '2004', 'SL75', 'Plus d''auto setup', 'Machine', 'GD', 'recharge du pateint dans visir OK', '14', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(476, '1085469300', '09', '15', '25', '05', '2004', 'SL75', 'Plantage Visir', 'Informatique', 'Technique', 'Pb avec la data base du serveur visir.\r\ncreation d une nouvelle base de donnee sur le serveur.', '11', '30', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(477, '1086342900', '11', '55', '04', '06', '2004', 'SL75', 'touch gard plus de mouvement possible', 'Machine', 'GD', 'porte plomb pas bien fixe OK', '12', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(478, '1089102000', '10', '20', '06', '07', '2004', 'SL75', 'plus de mouvement hauteur table avec la floche', 'Machine', 'GD', 'apres check de la floche et un peut partout, magie ca refonctionne. sans doute un relais qui prend d age.', '10', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(479, '1092991200', '10', '40', '20', '08', '2004', 'SL75', 'Wedge', 'Machine', 'MC', 'Attention a la taille duchamp maximum. X 30 cm Y 40 cm', '10', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(480, '1100250900', '10', '15', '12', '11', '2004', 'SL75', 'Plus rien ne bouge', 'Machine', 'MC', 'verif du porte plomb.\r\nPlus stop motors', '10', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(481, '1105704300', '13', '05', '14', '01', '2005', 'SL75', 'No HT on', 'Machine', 'Technique', 'relance du SL75\r\nTimer\r\nTest OK', '13', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(482, '1105959600', '12', '00', '17', '01', '2005', 'SL75', 'laser sagital out', 'Machine', 'Technique', 'Remplacement du laser', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(483, '1106133000', '12', '10', '19', '01', '2005', 'SL75', 'Plb de reconnaissance du plateau n 92', 'Machine', 'Technique', 'remise en place du plateau', '12', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(484, '1109863200', '16', '20', '03', '03', '2005', 'SL75', 'Machoires', 'Machine', 'MC', 'X2 pose probleme, elle ne veut pas aller a 0 en auto setup.\r\nOK en manuel.', '16', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(485, '1110275100', '10', '45', '08', '03', '2005', 'SL75', 'ecran console noir', 'Informatique', 'GD', 'recharge du champ', '10', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(486, '1112419800', '07', '30', '02', '04', '2005', 'SL75', 'guide fault', 'Machine', 'Physique', 'Pression trop basse. en remettre avec la pompe a l arriere dugantry.', '07', '35', '00', '05', 'non');
INSERT INTO `pannes` VALUES(487, '1113215400', '12', '30', '11', '04', '2005', 'SL75', 'Plus de mouvement hauteur table reste OK', 'Machine', 'GD', 'Dans la fausse, en bas du pied de table, jouer avec les deux relais, surtout le plus gros. Faut contact.', '12', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(488, '1117629000', '14', '30', '01', '06', '2005', 'SL75', 'plus d auto setup', 'Machine', 'GD', 'retirer le porte plomb et tout est OK', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(489, '1118050800', '11', '40', '06', '06', '2005', 'SL75', 'SL75 bloque', 'Informatique', 'MC', 'Shutdown total de lamachine.', '11', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(490, '1119247200', '08', '00', '20', '06', '2005', 'SL75', 'Pas de top', 'Machine', 'MC', 'En fait il n\\''a pas ete eteind du W E. le gun etait sur off au lieu de power.\r\n', '09', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(491, '1123848000', '14', '00', '12', '08', '2005', 'SL75', 'telemetre plus reset motor', 'Machine', 'MC', 'Le telemetre ne marchait plus, recherche puis plus re reset motor.\r\nCause au reset motor, la diode aux bornes du relais RL60 F est HS', '18', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(492, '1124172000', '08', '00', '16', '08', '2005', 'SL75', 'plus de telemetre', 'Machine', 'MC', 'avec  Elekta, fusibles sur le transfo en haut agauchedela porte droite dugantry. Remplacement OK', '10', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(493, '1126789200', '15', '00', '15', '09', '2005', 'SL75', 'table tres basse, plus de mouvement possible', 'Machine', 'GD', 'Attention aux indication sur le bas de l ecran, le probleme est souvent inscrit. C etait l arret d urgence qui etait actif su la floche. Un deuxieme click pour desactiver et OK', '15', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(494, '1127977200', '09', '00', '29', '09', '2005', 'SL25', 'Lames bloquées', 'Machine', 'Physique', 'reglage de l ouverture de la camera.', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(495, '1127984400', '11', '00', '29', '09', '2005', 'SL25', 'Check pot Y2', 'Machine', 'GD', 'Probleme de faux contact dans le colli pour le potentiometre Y2. Control de tout les connecteurs et cu cablage. Attention des cartes se devissent.', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(496, '1133355600', '14', '00', '30', '11', '2005', 'Tomo1', 'Problème acquisition MVCT', 'Informatique', 'Technique', 'Impossible d\\''acquérir plus de 10 slices à la fois sans perte d\\''image... Solution: remplacement du switch à l\\''Operator Station.', '11', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(497, '1127995200', '14', '00', '29', '09', '2005', 'SL75', 'plus de mouvement de table', 'Machine', 'GD', 'deconnection et connection du cable de table', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(498, '1128922200', '07', '30', '10', '10', '2005', 'SL75', 'Mem error', 'Machine', 'GD', 'reboot du SL75', '08', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(499, '1130338800', '17', '00', '26', '10', '2005', 'SL75', 'Pb avec le mouvement du gantry', 'Machine', 'GD', 'Il tourne des que l\\\\\\''on appuie sur le switch d\\\\\\''activation de la floche et ne part pas dans la direction souhaitee.\r\nLe switch de l\\\\\\''auto setup est bloque, il faut le debloque.', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(500, '1130339700', '17', '15', '26', '10', '2005', 'SL75', 'bruit (claquement) quand le gantry tourne', 'Machine', 'Technique', 'remplacement du moteur pankake', '18', '00', '00', '45', 'non');
INSERT INTO `pannes` VALUES(501, '1133344800', '11', '00', '30', '11', '2005', 'SL75', 'Bip touchgard quand on a le porte plateau, la floche clignotte', 'Machine', 'GD', 'Swtich du touch gard pour le porte plateau (dans la tete du colli) et resistif donc faux contact. Remplacement di switch.\r\n\r\nConnecteur du porte plateau a ete egalement remplace. ', '13', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(502, '1134912600', '14', '30', '18', '12', '2005', 'SL75', 'Accessory changed', 'Informatique', 'GD', 'Le switch touch gard de la table (aux commandes) actif (allumee).', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(503, '1135237200', '08', '40', '22', '12', '2005', 'SL75', 'visir met des 0 en valeur lu au chargement du patient', 'Informatique', 'GD', 'Reboot PC visir et il faut rebooter le SL75 aussi ', '08', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(504, '1136205900', '13', '45', '02', '01', '2006', 'SL75', 'le gantry ne tourne plus', 'Machine', 'MC', 'Changement du pankake, pas de resultat', '18', '00', '04', '15', 'oui');
INSERT INTO `pannes` VALUES(505, '1136271600', '08', '00', '03', '01', '2006', 'SL75', 'gantry ne tourne plus', 'Machine', 'MC', 'demaontage puis remontage du clutch l\\''embrayage bien encrasse, un peu calle mecaniquement.\r\n\r\nCela se voyait car le I du pankake etait de 5 Amp.\r\nTrop gros pour la mecanique qui suivait;', '12', '45', '04', '45', 'oui');
INSERT INTO `pannes` VALUES(506, '1137138900', '08', '55', '13', '01', '2006', 'SL75', 'Plus de mouvement hauteur table', 'Machine', 'Physique', 'Les autres mouvements sont OK.\r\nFaire un stop motor et puis un reset motor.', '09', '10', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(507, '1128607200', '16', '00', '06', '10', '2005', 'SL25', 'gantry comme inhibit', 'Machine', 'GD', 'Le gantry esyt sur le fin de course.\r\ndeverouiller le moteur et tourner le moteur a la main.', '16', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(508, '1128678300', '11', '45', '07', '10', '2005', 'SL25', 'Plantage Visir', 'Informatique', 'GD', 'reboot RTD et by pass des timer.', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(509, '1129187700', '09', '15', '13', '10', '2005', 'SL25', 'table bancale avant/arriere', 'Machine', 'MC', 'Vis a la colonne desseree.', '09', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(510, '1129564800', '18', '00', '17', '10', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Probleme au connecteur de la camera.\r\nSuite le 18 octobre avec Elekta\r\nreglage du miroir, control champ lumineux et du reticule.', '11', '30', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(511, '1129704300', '08', '45', '19', '10', '2005', 'SL25', 'iView', 'Machine', 'GD', 'L\\''iview ne monte plus.\r\nOk pour la descente, sagital et lateral.\r\nrecentrage du plateau vers la droite et ensuite il se replace correctement.', '08', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(512, '1131467400', '17', '30', '08', '11', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Lame 12 Y1 coincee\r\nJeu sur les lames depuis la console', '17', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(513, '1131467400', '17', '30', '08', '11', '2005', 'SL25', 'Plantage Visir', 'Informatique', 'MC', 'visir ne veut plus traiter les beams des patients pour le reste de la journee.\r\nre exporter une fraction depuis le TMS', '19', '30', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(514, '1131525000', '09', '30', '09', '11', '2005', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Lame 12 Y1\r\n\r\nCahngement de moteur', '12', '00', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(515, '1131628500', '14', '15', '10', '11', '2005', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'reboot RTD', '14', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(516, '1133260200', '11', '30', '29', '11', '2005', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'lame y1 (1et2) bloquees en out toujours au meme endroit, ok pour le mouvement in.\r\n\r\nUne vis du capot est tombe dans le colli et s\\''est mise dans les vis des lames y1.\r\nGallere pour l\\''enlevee OK apres', '13', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(517, '1133941500', '08', '45', '07', '12', '2005', 'SL25', 'Plantage Visir', 'Machine', 'MC', 'impossible de traiter un champ. \r\nCelui ci etait hors session traitement car nbre exposition inferieur ua nbre de fraction.', '09', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(518, '1134655200', '15', '00', '15', '12', '2005', 'SL25', 'iView', 'Machine', 'GD', 'message d\\''erreur a l\\''iview.\r\nremise des anciennes valeurs de callibration dans l\\''iview.', '15', '20', '00', '20', 'non');
INSERT INTO `pannes` VALUES(519, '1134727200', '11', '00', '16', '12', '2005', 'SL25', 'offset pot x2', 'Machine', 'GD', 'le champ pause probleme.\r\nRotation du colli en salle. OK. (faut contact???)', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(520, '1135577100', '07', '05', '26', '12', '2005', 'SL25', 'diode O/L', 'Machine', 'GD', 'plusieurs disjoncteurs ont sauter (LT) et (D O/L)\r\nremise a niveau le niveau d\\''eau\r\nreboot RTD\r\n', '07', '20', '00', '15', 'non');
INSERT INTO `pannes` VALUES(521, '1135586700', '09', '45', '26', '12', '2005', 'SL25', 'fine pot x2', 'Machine', 'GD', 'rotation colli', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(522, '1135922400', '07', '00', '30', '12', '2005', 'SL25', 'Pb au demarrage gros bruit en salle ', 'Machine', 'GD', 'disjoncteurs soutees \r\nremise d\\''eau dans le circuit\r\nReboot', '09', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(523, '1104760800', '15', '00', '03', '01', '2005', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'MC', 'terminate et reboot', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(524, '1134549600', '09', '40', '14', '12', '2005', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown software + machine and restart', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(525, '1134562500', '13', '15', '14', '12', '2005', 'Tomo1', 'Gantry driver sent bacjk error', 'Unrecoverable', 'Physique', 'Gantry Driver sent back error, juste avant le traitement, après avoir repositionné le patient.\r\n\r\nShutdown - Restart - Ok.\r\n\r\nPuis, patient repositionné sur coordonnées prises après Setup-Yes.', '13', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(526, '1134993600', '13', '00', '19', '12', '2005', 'Tomo1', 'MU1 et MU2 diffèrent', 'Unrecoverable', 'Technique', 'MU1 et MU2 diffèrent beaucoup après MVCT.\r\n\r\nJ-Koops a remplacé le fichier \\"machine.properties\\" sur OS avec les valeurs corrigées.', '14', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(528, '1135074000', '11', '20', '20', '12', '2005', 'Tomo1', 'Couch', 'Unrecoverable', 'Physique', 'Shutdown + Restart ALL', '11', '25', '00', '05', 'non');
INSERT INTO `pannes` VALUES(529, '1135153200', '09', '20', '21', '12', '2005', 'Tomo1', 'Jaw Tasks - Status Code: 84', 'Unrecoverable', 'Physique', 'Shutdown + Restart ALL', '09', '05', '00', '10', 'non');
INSERT INTO `pannes` VALUES(530, '1135155900', '10', '05', '21', '12', '2005', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown + restart ALL', '10', '15', '00', '15', 'non');
INSERT INTO `pannes` VALUES(531, '1135246500', '11', '15', '22', '12', '2005', 'Tomo1', 'Logoff après MVCT', 'Unrecoverable', 'Technique', 'Shutdown - Restart ALL', '11', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(532, '1135247400', '11', '30', '22', '12', '2005', 'Tomo1', 'Gantry speed', 'Unrecoverable', 'Technique', 'Shutdown - Restart ALL', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(533, '1135251000', '12', '30', '22', '12', '2005', 'Tomo1', 'Interruption', 'Recoverable', 'Physique', 'Interruption dès entrée dans Bore. Message erreur sur position de la clé.\r\n\r\nPositionnement patient au départ, re-MVCT.', '12', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(534, '1135324500', '08', '55', '23', '12', '2005', 'Tomo1', 'Gantry speed error', 'Unrecoverable', 'Technique', 'Changement de la courroie par Jan Koops.\r\n+\r\nRecalibration de la vitesse du gantry.', '11', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(535, '1135336500', '12', '15', '23', '12', '2005', 'Tomo1', 'Error', 'Recoverable', 'Physique', 'Restart Software.', '12', '20', '00', '05', 'non');
INSERT INTO `pannes` VALUES(536, '1135338300', '12', '45', '23', '12', '2005', 'Tomo1', 'Gun board logic problem detected', 'Unrecoverable', 'Physique', 'Shutdown + restart.\r\nPositionnement du patient au départ (coord. notées).\r\nPuis Treat (right click sur procedure interrupted, generate completion procedure).\r\n+ print report (rigth click sur procedure interrupted, view report)', '12', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(537, '1135340100', '13', '15', '23', '12', '2005', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown - Restart - ReMVCT', '13', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(538, '1135342500', '13', '55', '23', '12', '2005', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown - Restart - ReMVCT', '14', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(539, '1135347900', '15', '25', '23', '12', '2005', 'Tomo1', 'Demande de shutdown ...', 'Unrecoverable', 'Physique', 'Shutdown + restart.', '15', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(540, '1135589700', '10', '35', '26', '12', '2005', 'Tomo1', 'Gantry', 'Recoverable', 'Physique', 'Gantry (2-5°) - Recoverable error avant MVCT.\r\n-> Relance du MVCT mais STOP (cumullation)\r\n\r\nProblème MVCT -> Relance.', '12', '00', '01', '25', 'oui');
INSERT INTO `pannes` VALUES(541, '1135697700', '16', '35', '27', '12', '2005', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Technique', 'Shutdown - Restart.', '16', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(542, '1135841400', '08', '30', '29', '12', '2005', 'Tomo1', 'Software not ready', 'Recoverable', 'Physique', 'Shutdown - Restart (même si recoverable - 3 interruptions consécutives).', '08', '40', '00', '05', 'non');
INSERT INTO `pannes` VALUES(543, '1136199900', '12', '05', '02', '01', '2006', 'Tomo1', 'Gntry driver sent back error', 'Unrecoverable', 'Technique', 'Shutdown - Restart plusieurs fois!', '12', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(544, '1136275200', '09', '00', '03', '01', '2006', 'Tomo1', 'Gantry error', 'Unrecoverable', 'Physique', 'Graissage après réparation de la pompe à graisse...\r\nAllons essayer nouveau type de graisse ...', '11', '50', '02', '50', 'oui');
INSERT INTO `pannes` VALUES(545, '1136368800', '11', '00', '04', '01', '2006', 'Tomo1', 'Error', 'Recoverable', 'Technique', 'But must reboot all', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(546, '1136538300', '10', '05', '06', '01', '2006', 'Tomo1', 'Front Jaw Error', 'Unrecoverable', 'Physique', 'Shutdown + restart', '10', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(547, '1136793600', '09', '00', '09', '01', '2006', 'Tomo1', 'Gantry error', 'Recoverable', 'Physique', 'Shutdown + Restart plusieurs fois', '10', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(548, '1136799600', '10', '40', '09', '01', '2006', 'Tomo1', 'Gantry error', 'Unrecoverable', 'MC', '... durant le scan ... Graissage', '11', '30', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(549, '1136881200', '09', '20', '10', '01', '2006', 'Tomo1', 'Error', 'Recoverable', 'Physique', 'Retry -> pas d''effet\r\nShutdown and restart all', '09', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(550, '1136895600', '13', '20', '10', '01', '2006', 'Tomo1', 'Error', 'Recoverable', 'Physique', 'Shutdown - Restart', '13', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(551, '1136891100', '12', '05', '10', '01', '2006', 'Tomo1', 'Gantry error', 'Recoverable', 'Physique', 'Retry - > Ok', '12', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(552, '1136962800', '08', '00', '11', '01', '2006', 'Tomo1', 'Timing + Gantry error', 'Unrecoverable', 'Technique', 'Graissage + Dosi', '10', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(553, '1136977800', '12', '10', '11', '01', '2006', 'Tomo1', 'Error après MVCT', 'Recoverable', 'Technique', 'Rescan ...', '12', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(554, '1137060000', '11', '00', '12', '01', '2006', 'Tomo1', 'Incorrect linac SSM machine State', 'Unrecoverable', 'Physique', 'Shutdown + Restart 2X', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(555, '1137069000', '13', '30', '12', '01', '2006', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown + Restart', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(556, '1137079500', '16', '25', '12', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'Physique', 'Shutdown - Restart', '16', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(557, '1137153300', '12', '55', '13', '01', '2006', 'Tomo1', 'Couch', 'Unrecoverable', 'Physique', 'Shutdown - Restart', '13', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(558, '1137407400', '11', '30', '16', '01', '2006', 'Tomo1', 'Error', 'Recoverable', 'Physique', 'Relancer la procédure', '11', '35', '00', '05', 'non');
INSERT INTO `pannes` VALUES(559, '1137492900', '11', '15', '17', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'Physique', 'Shutdown - Restart', '11', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(560, '1137499200', '13', '00', '17', '01', '2006', 'Tomo1', 'PTM dropped out at tick mode', 'Recoverable', 'Physique', 'Relance de la procédure', '13', '05', '00', '05', 'non');
INSERT INTO `pannes` VALUES(561, '1137505500', '14', '45', '17', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'Physique', 'Shutdown & Restart', '14', '50', '00', '05', 'non');
INSERT INTO `pannes` VALUES(562, '1137506400', '15', '00', '17', '01', '2006', 'Tomo1', 'Timed out while waiting for rotating timing', 'Recoverable', 'Physique', 'Relancer le scan', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(563, '1137509100', '15', '45', '17', '01', '2006', 'Tomo1', 'Process has cancelled', 'Recoverable', 'Physique', 'Relancer le scan', '15', '50', '00', '05', 'non');
INSERT INTO `pannes` VALUES(564, '1137576000', '10', '20', '18', '01', '2006', 'Tomo1', 'Timed out while waiting for rotating timing trigger', 'Recoverable', 'Physique', 'Création d''une procédure de complément et relancer', '10', '25', '00', '05', 'non');
INSERT INTO `pannes` VALUES(565, '1137581100', '11', '45', '18', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'Technique', 'Shutdown + Restart', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(566, '1137684600', '16', '30', '19', '01', '2006', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'MC', 'Shutdown & Restart', '16', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(567, '1137743700', '08', '55', '20', '01', '2006', 'Tomo1', 'Jaw Tasks - Status Code: 84', 'Unrecoverable', 'Physique', 'Shutdown & Restart', '09', '05', '00', '10', 'non');
INSERT INTO `pannes` VALUES(568, '1137744600', '09', '10', '20', '01', '2006', 'Tomo1', 'Couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown & Restart', '09', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(569, '1134462600', '09', '30', '13', '12', '2005', 'Tomo1', 'Interrupt failure', 'Unrecoverable', 'Physique', 'Restart All', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(570, '1134637200', '10', '00', '15', '12', '2005', 'Tomo1', 'Erreur dans le MVCT', 'Unrecoverable', 'Physique', 'Restart All\r\n\r\nGantry problem', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(571, '1137750600', '10', '50', '20', '01', '2006', 'Tomo1', 'Plantage après SCAN', 'Unrecoverable', 'GD', 'Shutdown restart', '11', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(572, '1137763800', '14', '30', '20', '01', '2006', 'Tomo1', 'Jaw Task', 'Unrecoverable', 'GD', '+ Recoverable car erreur dans le tournage de clef.', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(573, '1137765900', '15', '05', '20', '01', '2006', 'Tomo1', 'Gantry driver', 'Unrecoverable', 'GD', 'Reboot Tomo', '15', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(574, '1138029900', '16', '25', '23', '01', '2006', 'Tomo1', 'Gantry driver speed error', 'Unrecoverable', 'MC', 'Reboot All', '16', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(575, '1138086600', '08', '10', '24', '01', '2006', 'Tomo1', 'Jaw Task', 'Unrecoverable', 'Physique', 'Front jaw potentiometer verification failed.\r\nStats code 84.\r\n\r\nShutdown + Restart', '09', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(576, '1138090200', '09', '10', '24', '01', '2006', 'Tomo1', 'Jaw Task', 'Unrecoverable', 'Physique', 'Shutdown + Restart', '09', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(577, '1138114200', '15', '50', '24', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'MC', 'Reboot all', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(578, '1138118400', '17', '00', '24', '01', '2006', 'Tomo1', 'Status code 80', 'Unrecoverable', 'Physique', 'Reboot All', '17', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(579, '1138182900', '10', '55', '25', '01', '2006', 'Tomo1', 'The couch missed the desired position', 'Unrecoverable', 'Physique', 'Shutdown + Restart', '11', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(580, '1138268400', '10', '40', '26', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'MC', 'Restart All', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(581, '1138269000', '10', '50', '26', '01', '2006', 'Tomo1', 'Timming Error', 'Recoverable', 'GD', 'Relance du scan', '10', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(582, '1138352100', '09', '55', '27', '01', '2006', 'Tomo1', 'Jaw Task', 'Unrecoverable', 'Physique', 'Restart All', '10', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(583, '1138354800', '10', '40', '27', '01', '2006', 'Tomo1', 'Corba message time out.', 'Unrecoverable', 'Physique', 'Reboot', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(584, '1138356600', '11', '10', '27', '01', '2006', 'Tomo1', 'Couche Driver', 'Unrecoverable', 'GD', 'Recharge patient', '11', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(585, '1138357800', '11', '30', '27', '01', '2006', 'Tomo1', 'Error', 'Unrecoverable', 'GD', 'Reboot', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(586, '1138360500', '12', '15', '27', '01', '2006', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Reboot', '12', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(587, '1138637700', '17', '15', '30', '01', '2006', 'Tomo1', 'Gantry error', 'Recoverable', 'MC', 'Recommencer la procédure', '17', '20', '00', '05', 'non');
INSERT INTO `pannes` VALUES(588, '1138699800', '10', '30', '31', '01', '2006', 'Tomo1', 'Gantry driver sent back error', 'Unrecoverable', 'Physique', 'Shutdown - restart', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(589, '1138781400', '09', '10', '01', '02', '2006', 'Tomo1', 'Fsort jaw pot. verification failed', 'Unrecoverable', 'Physique', 'Reboot', '09', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(590, '1138790700', '11', '45', '01', '02', '2006', 'Tomo1', 'Receive safety pack from OBC', 'Unrecoverable', 'Physique', 'Reboot', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(591, '1138867200', '09', '00', '02', '02', '2006', 'Tomo1', 'Front jaw potentiometer failed', 'Unrecoverable', 'MC', 'Reboot All', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(592, '1029738600', '08', '30', '19', '08', '2002', 'SL25', 'Plus de pression d eau', 'Machine', 'GD', 'remplacement des filtre par les plombiers', '09', '10', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(593, '1029767400', '16', '30', '19', '08', '2002', 'SL25', 'iView', 'Machine', 'Technique', 'iview bloque, on off du disjoncteur', '16', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(594, '1030626900', '15', '15', '29', '08', '2002', 'SL25', 'func 2 dem', 'Machine', 'Technique', 'jouer avec la roulette function du la floche 2.\r\nRemplacement de la floche.', '15', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(595, '1032963900', '16', '25', '25', '09', '2002', 'SL25', 'Thyratron Grid', 'Machine', 'GD', 'Control du fusible T2.\r\nReboot du Sl25.', '16', '55', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(596, '1040720400', '10', '00', '24', '12', '2002', 'SL25', 'ecran bleu', 'Informatique', 'Technique', 'reboot', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(597, '1042117200', '14', '00', '09', '01', '2003', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Lame Y2 1 bloque\r\najustementde la camera', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(598, '1042195500', '11', '45', '10', '01', '2003', 'SL25', 'Wedge', 'Machine', 'Technique', 'wedge code\r\nchangement d energie et de wedge en mode service', '12', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(599, '1043650800', '08', '00', '27', '01', '2003', 'SL25', 'Faisceau', 'Machine', 'Technique', 'Plus de X6, OK pour les X25.\r\nprobleme sur le connecteur SK17F, remplacement de celui ci.', '17', '30', '07', '30', 'oui');
INSERT INTO `pannes` VALUES(600, '1046792700', '16', '45', '04', '03', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'remplacement de l ampoule et reglage de la camera.', '17', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(601, '1048667400', '09', '30', '26', '03', '2003', 'SL25', 'iView', 'Machine', 'GD', 'Plus de mouvement de l iview et bip de touchgard.\r\nSwitch sur l axe cote gauche trop a l exterieur. remise en place du switch', '10', '35', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(602, '1049953500', '07', '45', '10', '04', '2003', 'SL25', 'low water pressure', 'Machine', 'Physique', 'remonter la pression d eau a 12 psi', '07', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(603, '1049985900', '16', '45', '10', '04', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'machine en syst on.\r\nProbleme de filtre a l arrivee de l eau de refroidissement.\r\nRemplacement des filtres par les plombiers.', '17', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(604, '1050417900', '16', '45', '15', '04', '2003', 'SL25', 'focus 1', 'Machine', 'Technique', 'verification de l alim du focus 1, area 13 a cote des grosses bobines. les 7 gros fusibles blanc le FS 13 F est pour le focus 1.\r\nremplacement du fusible\r\n', '17', '15', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(605, '1051081200', '09', '00', '23', '04', '2003', 'SL25', 'page bleu', 'Informatique', 'GD', 'reboot RTD', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(606, '1051509600', '08', '00', '28', '04', '2003', 'SL25', 'Pas de X6', 'Machine', 'GD', 'Probleme d humidite, prechaufe avec des X25 et attendre que ca sorte. remettre le chauffage le soir en salle pour eviter l humidite.', '09', '15', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(607, '1059553800', '10', '30', '30', '07', '2003', 'SL25', 'panne LCD dose', 'Machine', 'Technique', 'Affichage UM sur lcd de la tour pc mort.\r\nremplacement de la carte.', '18', '30', '07', '30', 'oui');
INSERT INTO `pannes` VALUES(608, '1059028200', '08', '30', '24', '07', '2003', 'SL25', 'data base checks', 'Informatique', 'GD', 'voir cahier loogbook du 24 juillet 2003 au 28 janvier 2004 page 64', '10', '25', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(609, '1059987600', '11', '00', '04', '08', '2003', 'SL25', '2R error', 'Machine', 'Technique', 'remplacement de fibre optique', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(610, '1060062300', '07', '45', '05', '08', '2003', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'remplacement du filtre a eau par les plombier', '08', '35', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(611, '1062064800', '12', '00', '28', '08', '2003', 'SL25', 'room door 1', 'Machine', 'Technique', 'rajout d un relais sur la serie de switch pour la porte ', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(612, '1062153000', '12', '30', '29', '08', '2003', 'SL25', 'dose diff d1', 'Machine', 'GD', 'reset, relance du patient', '12', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(613, '1031811600', '08', '20', '12', '09', '2002', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'remplacement des filtres d eau de refroidissement.', '08', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(614, '1064905500', '09', '05', '30', '09', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'lame Y1 3 bloque, remplacement de l ampoule du champ lumineux', '09', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(615, '1064926200', '14', '50', '30', '09', '2003', 'SL25', 'Thyratron Grid', 'Machine', 'GD', 'remplacement de la fibre', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(616, '1066212300', '12', '05', '15', '10', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Lame Y1, reglage de la camera', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(617, '1067250600', '11', '30', '27', '10', '2003', 'SL25', 'Plus de faisceau ', 'Machine', 'GD', 'Pb de temperature', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(618, '1067614200', '16', '30', '31', '10', '2003', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'debloquage avec un autre champ ', '16', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(619, '1068720300', '11', '45', '13', '11', '2003', 'SL25', 'plantage RTD', 'Informatique', 'GD', 'reboot', '12', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(620, '1069856100', '15', '15', '26', '11', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'remplacement de l ampoule', '15', '35', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(621, '1070456400', '14', '00', '03', '12', '2003', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'changement de l ampoule', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(622, '1071653400', '10', '30', '17', '12', '2003', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'reglage de l ampoule', '11', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(623, '1072170000', '10', '00', '23', '12', '2003', 'SL25', 'Pb avec les accesoires sur le colli', 'Machine', 'Technique', 'remplacement d une carte dans le colli par elekta.', '12', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(646, '1098105300', '15', '15', '18', '10', '2004', 'SL25', 'iView', 'Machine', 'GD', 'Iview bloqué  + bip bip bip\r\n\r\nAction sur le disjoncteur de l''Iview, tjrs bip bip bip \r\n+\r\ndéploiement de l''Iview, OK', '15', '20', '00', '05', 'non');
INSERT INTO `pannes` VALUES(647, '1098175800', '10', '50', '19', '10', '2004', 'SL25', 'Plus de mouvement longitudinal', 'Machine', 'GD', 'Table bloquée vers la tête.\r\n- ni avec les switchs, ni avec le déverrouillage on entend le moteur.\r\n- avec le déverrouillage, forcer sur la table pour la faire revenir dans une meilleure position.', '11', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(648, '1098443400', '13', '10', '22', '10', '2004', 'SL25', 'Pb de Room doors 1', 'Machine', 'GD', 'Test du switch de porte.\r\nOk.\r\nEn fait le RTD s''est planté (barre exit grisée).\r\nFaire un terminate, charger un autre champ, remettre le champ actuel.', '13', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(649, '1099899600', '08', '40', '08', '11', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'By pass après qq minutes', '08', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(650, '1099467000', '08', '30', '03', '11', '2004', 'SL25', 'Pb de X25, parfois plus de X25 et Dose Rate Error', 'Machine', 'Technique', 'Réglage du Tuner par Marcel (Elekta). Ok', '09', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(651, '1099573200', '14', '00', '04', '11', '2004', 'SL25', 'Iview - L''acquisition de l''image ne se lance pas', 'Machine', 'GD', 'Problème avec la fibre optique', '18', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(652, '1100019600', '18', '00', '09', '11', '2004', 'SL25', 'Iview - L''acquisition de l''image ne se lance pas', 'Machine', 'Technique', 'Remplacement de la fibre', '20', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(653, '1101796200', '07', '30', '30', '11', '2004', 'SL25', 'Low pressure, Wedge Code, MLC not ready', 'Machine', 'Physique', 'Pression descendue à 2, remontée à 13.\r\nTjrs problème.\r\n\r\nFusible "Power Mouvement" avait sauté, réarmement, OK', '08', '15', '00', '00', 'non');
INSERT INTO `pannes` VALUES(654, '1102596600', '13', '50', '09', '12', '2004', 'SL25', 'Pb de comptage des UM', 'Machine', 'GD', 'Terminate', '13', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(655, '1102921200', '08', '00', '13', '12', '2004', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'Technique', 'Augmentation de la pression.\r\nRemise en route des fusibles ayant sautés à l''arrière de la machine:\r\n- LT\r\n- HT Interlock\r\nDosi', '08', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(656, '1102954500', '17', '15', '13', '12', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'MC', 'ByPass après avoir quitté - Relog en super', '17', '25', '00', '10', 'non');
INSERT INTO `pannes` VALUES(657, '1105441200', '12', '00', '11', '01', '2005', 'SL25', 'Mauvais Profil', 'Machine', 'Technique', 'Appel Elekta\r\nUn thyristor HS à remplacer (bien visible à l''oscillo).\r\nSwitch de la dosi maintenance.', '16', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(658, '1092120900', '08', '55', '10', '08', '2004', 'SL25', 'Shutdown automatique', 'Machine', 'MC', 'Restart + bypass des timers', '09', '05', '00', '10', 'non');
INSERT INTO `pannes` VALUES(659, '1093428600', '12', '10', '25', '08', '2004', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Débloquage manuel en mode service + Bypass des timers', '12', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(660, '1094202900', '11', '15', '03', '09', '2004', 'SL25', 'Mfil-Vmon', 'Machine', 'MC', 'Bypass des Timers', '11', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(661, '1094538600', '08', '30', '07', '09', '2004', 'SL25', 'Focus 2', 'Machine', 'GD', 'Vérification du Focus; area 13 (à côté des grosses bobines, à droite du Gantry). LVPSU vérification des 7 gros fusibles. Test OK.\r\n\r\nVérification sur le bornier TS22 (juste à côté de l''enrouleur des cables jaunes, à l''extrémité du disque).\r\n\r\nVérification aux bornes 20 et 19. Les câbles à la borne 20 sont brûlés. Réalisation d''une nouvelle connection avec un sucre => OK.\r\n\r\nDosi ok.', '09', '45', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(662, '1138958400', '10', '20', '03', '02', '2006', 'SL25', 'Les lames ne se positionnent pas', 'Machine', 'Technique', 'Auto setup en salle?\r\nIl nous semble que les lames se positionnent automatiquement quand on charge le champ. C''est le cas avec d''autres patients.', '10', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(663, '1137654900', '08', '15', '19', '01', '2006', 'SL75', 'Laser sagital sup OUT', 'Machine', 'GD', 'Remplacement du laser par un autre.', '08', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(664, '1139305200', '10', '40', '07', '02', '2006', 'SL75', 'Mag Fil Fault - Plus de mouvement', 'Machine', 'GD', 'Remplacement du redresseur (porte du gantry à droite du patient).\r\nProblème résolu mais plus de mouvement.', '19', '00', '05', '45', 'oui');
INSERT INTO `pannes` VALUES(665, '1139382000', '08', '00', '08', '02', '2006', 'SL75', 'Plus de mouvement', 'Machine', 'MC', 'Check avec Yvan (Elekta) de toute la série d''interlock des mouvements.\r\n=> Vis du relais RL60L n''était pas serrée sur la cosse ...', '12', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(666, '1139814000', '08', '00', '13', '02', '2006', 'SL75', 'Miroir en mylar déchiré', 'Machine', 'MC', 'Remplacement avec l''aide d''Elekta sur la fin.', '15', '00', '08', '30', 'oui');
INSERT INTO `pannes` VALUES(667, '1138884600', '13', '50', '02', '02', '2006', 'Tomo1', 'The Couch missed his position', 'Unrecoverable', 'Physique', 'Retry scan ...', '13', '55', '00', '05', 'non');
INSERT INTO `pannes` VALUES(668, '1138956300', '09', '45', '03', '02', '2006', 'Tomo1', 'Gantry error', 'Unrecoverable', 'GD', 'Reboot', '09', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(669, '1138957200', '10', '00', '03', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Reboot', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(670, '1138959900', '10', '45', '03', '02', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Relance', '10', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(671, '1138965300', '12', '15', '03', '02', '2006', 'Tomo1', 'Gantry Drive Error', 'Unrecoverable', 'GD', 'Reboot', '12', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(672, '1139213400', '09', '10', '06', '02', '2006', 'Tomo1', 'Jaw Task front jaw potentiometer failed', 'Unrecoverable', 'Physique', 'Reboot', '09', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(673, '1139302800', '10', '00', '07', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'Physique', 'Reboot', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(674, '1139480100', '11', '15', '09', '02', '2006', 'Tomo1', 'Clé tournée dans le mauvais sens', 'Recoverable', 'MC', 'Restart procedure', '11', '20', '00', '05', 'non');
INSERT INTO `pannes` VALUES(675, '1139487600', '13', '20', '09', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Reboot all', '13', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(676, '1139382000', '08', '00', '08', '02', '2006', 'Tomo1', 'La machine ne démarre pas, pas de faisceau', 'Unrecoverable', 'MC', 'Jan Koops (Tomo1) a fait des mesures, rien trouvé, mais ça marche en fin de journée.', '18', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(677, '1139504400', '18', '00', '09', '02', '2006', 'Tomo1', 'Gantry error - water pump qui ne démarre plus', 'Unrecoverable', 'MC', 'Après avoir essayé de tout redémarrer plusieurs fois, la solution est de tourner la clé, appuyer sur le bouton vert et refaire la procédure plusieurs rapidement:\r\nEnable, ON, Disable, Enable, ON, ...', '18', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(678, '1139565900', '11', '05', '10', '02', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'Physique', 'Enable-ON-Disable-Enable-ON-...\r\nComme hier.', '11', '25', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(679, '1139580900', '15', '15', '10', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'Physique', 'Shutdown + Restart plusieurs fois car pompe à eau a des soucis de démarrage.', '15', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(680, '1139584800', '16', '20', '10', '02', '2006', 'Tomo1', 'Timeout elapsed attempting to read realtime data.', 'Unrecoverable', 'Physique', 'Shutdown + restart', '16', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(681, '1139823000', '10', '30', '13', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Restart All', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(682, '1139840100', '15', '15', '13', '02', '2006', 'Tomo1', 'Clé tournée dans le mauvais sens', 'Unrecoverable', 'MC', 'Restart All', '15', '20', '00', '05', 'non');
INSERT INTO `pannes` VALUES(683, '1139904600', '09', '10', '14', '02', '2006', 'Tomo1', 'Jaw Task pot. failed', 'Unrecoverable', 'Physique', 'Restart all', '09', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(684, '1139993400', '09', '50', '15', '02', '2006', 'Tomo1', 'SF6 Low pressure', 'Unrecoverable', 'Physique', 'Shutdown + restart', '10', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(685, '1139997000', '10', '50', '15', '02', '2006', 'Tomo1', 'SF6 Low pressure', 'Unrecoverable', 'Physique', 'Shutdown + restart', '11', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(686, '1140084600', '11', '10', '16', '02', '2006', 'Tomo1', 'Interlock open durant treatment', 'Recoverable', 'MC', 'Generate completion procedure.\r\nRestartaprès avoir pris les valeurs de table, ...', '11', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(687, '1140087300', '11', '55', '16', '02', '2006', 'Tomo1', 'Low set point violation pendant traitement', 'Recoverable', 'MC', 'Generate completion procedure', '12', '00', '00', '05', 'non');
INSERT INTO `pannes` VALUES(688, '1140175200', '12', '20', '17', '02', '2006', 'Tomo1', 'High set violation point durant scan', 'Recoverable', 'MC', 'Relance de la procédure', '12', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(689, '1140091500', '13', '05', '16', '02', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '13', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(690, '1140094200', '13', '50', '16', '02', '2006', 'Tomo1', 'SF6 Low pressure', 'Unrecoverable', 'MC', 'Restart All', '13', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(691, '1140095400', '14', '10', '16', '02', '2006', 'Tomo1', 't° à -274°c', 'Unrecoverable', 'MC', 'Restart All', '14', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(692, '1140103500', '16', '25', '16', '02', '2006', 'Tomo1', 'SF6 Low pressure', 'Unrecoverable', 'MC', 'Restat All+\r\nScreen dump envoyé à Jan Koops Tomo1.', '16', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(693, '1140111000', '18', '30', '16', '02', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '18', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(694, '1140102000', '16', '00', '16', '02', '2006', 'Tomo1', 'SF6 Low pressure', 'Unrecoverable', 'MC', 'test Airscan et autres car bcp de temps perdu ...', '16', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(695, '1140109200', '18', '00', '16', '02', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Restart procedure', '18', '05', '00', '05', 'non');
INSERT INTO `pannes` VALUES(696, '1140164700', '09', '25', '17', '02', '2006', 'Tomo1', 'Time Out', 'Recoverable', 'Physique', 'Restart procedure', '09', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(697, '1140182400', '14', '20', '17', '02', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(698, '1140186600', '15', '30', '17', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Restart All', '15', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(699, '1140516000', '11', '00', '21', '02', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'After scan...\r\nRestart all', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(700, '1140535500', '16', '25', '21', '02', '2006', 'Tomo1', 'Time out pendant le traitement', 'Recoverable', 'Technique', '- Génération d''un complément interrompu (via message "OK" ou "cancel", donc cancel) de la procédure de génération.\r\n- Réalisation d''un view report et là plantage du PC reboot automatique.\r\n- Restart de la Tomo\r\n- Génératio d''un complément, tout ok jusqu''au message disant qu''il n''a pas pu sauver les valeurs (voir doc 21-06--06).\r\n- Relance du complément malgré tout.', '17', '00', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(701, '1140443400', '14', '50', '20', '02', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '14', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(702, '1140621600', '16', '20', '22', '02', '2006', 'Tomo1', 'Impossible de cliquer sur "SETUP" ou "READY" sur le PCP', 'Unrecoverable', 'MC', 'Cancel, restart procédure n''a rien fait.\r\nReboot All => OK.', '16', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(703, '1140678000', '08', '00', '23', '02', '2006', 'Tomo1', 'Pas de Warmup - Erreur SF6', 'Unrecoverable', 'Technique', '- Eteindre la machine, couper le disjoncteur de la workstation et couper la pression de l''air comprimé.\r\n- Redémarrer et faire tourner le gantry à 525 rpm pendant 15 min.\r\n- Eteindre la machine, remettre la pression (65 psi) et le disjoncteur.\r\n- Redémarrer la machine.', '10', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(704, '1140797400', '17', '10', '24', '02', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '17', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(705, '1141036200', '11', '30', '27', '02', '2006', 'Tomo1', 'Gantry drive - Gun board logic problem detected; Water flow fault.', 'Unrecoverable', 'GD', 'Reboot de la Tomo.\r\nOn disable, enable, on, disable, enable, on, ...\r\nRotation du gantry pour mettre la pompe à l''horizontal en bas du gantry.\r\nReboot et OK.', '13', '10', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(706, '1141051200', '15', '40', '27', '02', '2006', 'Tomo1', 'Water flow fault', 'Unrecoverable', 'GD', 'Jouer avec la clé disable, enable, on, ...', '16', '20', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(707, '1141056000', '17', '00', '27', '02', '2006', 'Tomo1', 'Water flow fault', 'Unrecoverable', 'GD', 'Clef disable, enable, on, ...\r\nEn fait le débit mètre du "Linac Window" était a un réglage limite. En théorie, Tomo demande de le mettre à 0,7v maispar expérience Jan le met à 0.85v ici on était à 0.51v et ça déclache à 0.5v.\r\nDonc réglage du débit pour le Linac Window après les traitements (22h15 -> 23h).', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(708, '1141059600', '18', '00', '27', '02', '2006', 'Tomo1', 'Idem qu''à 17h', 'Unrecoverable', 'GD', 'Idem qu''à 7h', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(709, '1141210800', '12', '00', '01', '03', '2006', 'Tomo1', 'Interlock open durant treatment', 'Recoverable', 'Physique', 'Restart All', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(710, '1141401000', '16', '50', '03', '03', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Restart Tomo', '17', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(711, '1141119300', '10', '35', '28', '02', '2006', 'Tomo1', 'Procedure cancelled during treatment', 'Recoverable', 'Physique', 'Cause safety interlock is open\r\nRestart procedure', '10', '40', '00', '05', 'non');
INSERT INTO `pannes` VALUES(712, '1141628400', '08', '00', '06', '03', '2006', 'Tomo1', 'Warmup ne démarre pas correctement. 2 UM puis arrêt', 'Unrecoverable', 'Technique', '- Plusieurs redémarrage sans succès.\r\n- Redémarrage avec PC live log\r\nWarmup OK, airscan OK.\r\n- DQA difficile car jaw task errors ... \r\nOK', '12', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(713, '1141653600', '15', '00', '06', '03', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Restart procedure', '15', '05', '00', '05', 'non');
INSERT INTO `pannes` VALUES(714, '1141662300', '17', '25', '06', '03', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Durant treatment ...\r\n\r\n- view report + print\r\n- generate completion procedure\r\n- restart procedure', '17', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(715, '1141668000', '19', '00', '06', '03', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '19', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(716, '1141718400', '09', '00', '07', '03', '2006', 'Tomo1', 'Dose trop faible', 'Unrecoverable', 'MC', 'Régalge du PFN de 4,02v à 4,13v.', '10', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(717, '1141802700', '08', '25', '08', '03', '2006', 'Tomo1', 'Jaw Task', 'Recoverable', 'Physique', 'Restart Tomo', '08', '30', '00', '05', 'non');
INSERT INTO `pannes` VALUES(718, '1141807500', '09', '45', '08', '03', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'Physique', 'Restart Tomo', '09', '50', '00', '05', 'non');
INSERT INTO `pannes` VALUES(719, '1141982400', '10', '20', '10', '03', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'Physique', 'Restart Tomo', '10', '25', '00', '05', 'non');
INSERT INTO `pannes` VALUES(720, '1141985100', '11', '05', '10', '03', '2006', 'Tomo1', 'Jaw Task', 'Unrecoverable', 'Physique', 'Restart Tomo', '11', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(721, '1141992900', '13', '15', '10', '03', '2006', 'Tomo1', 'Jaw Task error', 'Unrecoverable', 'Physique', 'Restart Tomo', '13', '20', '00', '05', 'non');
INSERT INTO `pannes` VALUES(722, '1140430800', '11', '20', '20', '02', '2006', 'SL25', 'start req', 'Informatique', 'Technique', 'Reboot du PC visir', '11', '50', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(723, '1138775400', '07', '30', '01', '03', '2006', 'SL25', 'water temp', 'Machine', 'GD', 'Temperature a 38 au lieu de 28.\r\nles 2 manometres sont a 5 bar de pression. Pas de debit. Appel aux plombiers qui avaient coupe l arrivee d eau.', '09', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(724, '1139913900', '11', '45', '14', '03', '2006', 'SL25', 'dose rate error, terminate fault', 'Machine', 'GD', 'reset au pc sl25.\r\nrecharge du champ de traitement. OK', '11', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(725, '1142496600', '09', '10', '16', '03', '2006', 'SL25', 'water temp', 'Machine', 'MC', 'Pas assez de debit d eau.\r\nAppel des plombiers pour les filtres.', '09', '30', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(726, '1142604000', '15', '00', '17', '03', '2006', 'SL25', 'reset motor', 'Machine', 'Technique', 'Quand on fait le reset motoril n y a aucun effet.tjrs reset motor demander.\r\nVerification du circuit d arret d urgence. casse tete. \r\nC etait le switch stop de la floche de gauche qui etait H.S.\r\nPanne le vendredi fin d apres midi, OK le lundi matin a 9H', '09', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(727, '1141996500', '14', '15', '10', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable ', 'MC', 'On continue la procedure.', '14', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(728, '1142009100', '17', '45', '10', '03', '2006', 'Tomo1', 'time out while waiting info, need to shutdown', 'Unrecoverable ', 'MC', 'juste apres fin de traitement.', '17', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(729, '1142263800', '16', '30', '13', '03', '2006', 'Tomo1', 'Gantry drive error', 'Recoverable ', 'GD', 'recoverable.\r\nview report, generate complete, traitement.\r\n', '16', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(730, '1142265000', '16', '50', '13', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable ', 'GD', 'reboot', '16', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(731, '1142329500', '10', '45', '14', '03', '2006', 'Tomo1', 'jaw task, flow water fault', 'Unrecoverable ', 'MC', 'reglage du debit au linac window meter.\r\npetit probleme de contact en refermant le capot.', '11', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(732, '1142339400', '13', '30', '14', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'MC', 'relance, continuation de la procedure.', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(733, '1142340300', '13', '45', '14', '03', '2006', 'Tomo1', 'jaw task', 'Unrecoverable', 'MC', 'continuation de la procedure.', '13', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(734, '1142348100', '15', '55', '14', '03', '2006', 'Tomo1', 'key in worng position', 'Unrecoverable', 'Technique', 'redemarer ok', '16', '10', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(735, '1142415900', '10', '45', '15', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'MC', 'unrecoverable\r\n\r\nreboot de la machine alors que l on aurait pu ne pas devoir le faire.', '10', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(736, '1142435100', '16', '05', '15', '03', '2006', 'Tomo1', 'gantry sent back error', 'Unrecoverable', 'MC', 'Unrecoverable avant scan\r\nRestart all', '16', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(737, '1142438700', '17', '05', '15', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'MC', 'continue la procedure', '17', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(738, '1142516100', '14', '35', '16', '03', '2006', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Unrecoverable\r\nreboot de la machine.\r\nAttention la pompe n est pas reparti du premier coup.', '14', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(739, '1142518200', '15', '10', '16', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'GD', 'Unrecoverable\r\nOn continue la procedure', '15', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(740, '1142496000', '09', '00', '16', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'Physique', 'Unrecoverable\r\nPlusieurs fois pendant la dosi.', '11', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(741, '1142582400', '09', '00', '17', '03', '2006', 'Tomo1', 'probleme de dose ', 'Unrecoverable', 'MC', 'probleme de dose pendant la dosi. Apres differents QA patient, problemes apparament disparus.\r\n????On a rien compris????', '12', '30', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(742, '1142528400', '18', '00', '16', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'GD', 'Unrecoverable\r\n3 fois sur la journee.\r\nsuite de la procedure', '18', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(743, '1142843700', '09', '35', '20', '03', '2006', 'Tomo1', 'jaw task error', 'Unrecoverable', 'GD', 'unrecoverable avant scan\r\n2 fois en suivant.\r\nOn contionue sans reboot', '09', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(744, '1143007200', '07', '00', '22', '03', '2006', 'SL25', 'Mfil-Vmon', 'Machine', 'GD', 'System on avec comme inhibit M fil Vmon, D OL...\r\nPlus asser de pression d eau et disjoncteur sauter.\r\nReboot SL25 OK\r\nDosi', '08', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(745, '1142945100', '13', '45', '21', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'MC', 'On continu la procedure.', '13', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(746, '1142959200', '17', '40', '21', '03', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'reset all', '17', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(747, '1143100800', '09', '00', '23', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Recoverable', 'MC', 'on continu la procedure.\r\n', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(748, '1143106800', '10', '40', '23', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'GD', 'Pour 4 fois sur la journee.\r\n', '11', '05', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(749, '1143129000', '16', '50', '23', '03', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'restart all', '16', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(750, '1142935200', '11', '00', '21', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Technique', 'on continu', '11', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(751, '1142938800', '12', '00', '21', '03', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'Technique', 'restart all', '12', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(752, '1142962800', '18', '40', '21', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'MC', 'µon continu la procedure', '18', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(753, '1143213600', '16', '20', '24', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Technique', 'On continu', '16', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(754, '1143210600', '15', '30', '24', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'MC', 'Reboot all', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(755, '1143444000', '09', '20', '27', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Physique', 'On continu la procedure', '09', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(756, '1143459000', '13', '30', '27', '03', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'restart all', '13', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(757, '1143463800', '14', '50', '27', '03', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'restart all', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(758, '1143549000', '14', '30', '28', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Physique', 'Rebot all', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(759, '1143553500', '15', '45', '28', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'GD', 'generate completion procedure', '15', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(760, '1143559800', '17', '30', '28', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'MC', 'need to reboot', '17', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(761, '1143619800', '10', '10', '29', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'MC', 'restart all', '10', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(762, '1143640200', '15', '50', '29', '03', '2006', 'SL25', '2 T error', 'Machine', 'MC', 'reset et recharge du champ.', '15', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(763, '1143641400', '16', '10', '29', '03', '2006', 'SL25', '2 T error', 'Machine', 'GD', 'Prise de la machine en mode service pour test.\r\nRAS sur le Gun aim I et Gun Ctrl.\r\nSurement les suites du changement de pompe a vide et du gun.', '16', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(764, '1143644400', '17', '00', '29', '03', '2006', 'SL25', '2 T errror', 'Machine', 'GD', 'reset et recharge du patient. Toujours en X25 et avec le gantry vers les 95 degres.', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(765, '1144627200', '02', '00', '10', '04', '2006', 'SL25', '2T error', 'Machine', 'Technique', 'Elekta s invite pour regler le probleme de 2T error a gantry 90 avec wedge', '11', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(766, '1144664700', '12', '25', '10', '04', '2006', 'SL25', 'fine pot X2', 'Machine', 'GD', 'il faut chipoter avec les cables et connecteurs du pot X2 dans le colli.', '12', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(767, '1145000100', '09', '35', '14', '04', '2006', 'SL25', 'Drot X term', 'Machine', 'MC', 'ouverture du colli et jeu sur les switchs X et Y.\r\nReparation de la floche (iview) remplacement du cable rj45', '10', '35', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(768, '1113312600', '15', '30', '12', '04', '2005', 'SL25', 'Plus de HT et message en rapport avec la pression d eau', 'Machine', 'GD', 'Avant unTBI\r\nPlus de pression d eau, electrovane ferme plus d alim sur sa commande.\r\nATTENTION fausse route, en fait coup de poing enfonce. \r\n\r\n', '22', '00', '06', '00', 'oui');
INSERT INTO `pannes` VALUES(769, '1145343000', '08', '50', '18', '04', '2006', 'SL25', 'start req', 'Machine', 'GD', 'Ce n''est pas que le pc visir qu il faut rebooter. Mais il faut aussi appuyer sur le bouton start.', '09', '10', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(770, '1144064100', '13', '35', '03', '04', '2006', 'Tomo1', 'fusion im&ge impossible', 'Unrecoverable', 'MC', 'Apres scan\r\nTentative en refaisant le scan, echec.\r\nRestart all', '15', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(771, '1144072800', '16', '00', '03', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', '', 'restart all', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(772, '1144216800', '08', '00', '05', '04', '2006', 'Tomo1', 'SF6 low pressure ', 'Unrecoverable', 'GD', 'remise a niveau de la pression SF6 (22psi)', '11', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(773, '1144242000', '15', '00', '05', '04', '2006', 'Tomo1', 'corba error', 'Unrecoverable', 'MC', 'apres scan\r\nrestart all ', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(774, '1144253700', '18', '15', '05', '04', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'restart all', '18', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(775, '1144306800', '09', '00', '06', '04', '2006', 'Tomo1', 'SF6 low pressure', 'Unrecoverable', 'GD', 'Appel chez tomo.\r\nFuite au niveau du guide d onde.\r\nremplacement de la 08 avril.\r\n2 jours d arret.', '20', '00', '20', '00', 'oui');
INSERT INTO `pannes` VALUES(776, '1144741800', '09', '50', '11', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'Technique', 'apres trait\r\nreboot all', '10', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(777, '1144913400', '09', '30', '13', '04', '2006', 'Tomo1', 'Gantry drive error', 'Recoverable', 'MC', 'continue la procedure', '09', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(778, '1144916400', '10', '20', '13', '04', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'continue la procedure', '10', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(779, '1144924800', '12', '40', '13', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apress scan\r\nrestart all', '12', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(780, '1145347500', '10', '05', '18', '04', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'continue procedure', '10', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(781, '1144767600', '17', '00', '11', '04', '2006', 'Tomo1', 'MLC error', 'Recoverable', 'GD', 'pendant le traitement (4 fois)\r\ncreation du complement trait.\r\non continue le traitement', '17', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(782, '1144760400', '15', '00', '11', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'reboot tomo', '15', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(783, '1143789300', '09', '15', '31', '03', '2006', 'Tomo1', 'Clé mauvais sens', 'Unrecoverable', 'MC', 'Reboot All', '09', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(784, '1143619200', '10', '00', '29', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Technique', '3 fois dans la matinée', '10', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(785, '1143624600', '11', '30', '29', '03', '2006', 'Tomo1', 'Error', 'Recoverable', 'Technique', 'Continue procedure', '11', '35', '00', '05', 'non');
INSERT INTO `pannes` VALUES(786, '1143703500', '09', '25', '30', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Technique', '26 fois l''erreur dans la journée!!\r\n26 reboot!!', '20', '00', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(787, '1143788700', '09', '05', '31', '03', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Technique', '14 fois dans la journée!!\r\n14 reboot!!\r\n', '18', '15', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(788, '1144051800', '10', '10', '03', '04', '2006', 'Tomo1', 'Jaw Tasks error', 'Unrecoverable', 'Technique', '11 fois le problème dans la journée!!\r\n11 reboot!!', '17', '20', '01', '50', 'oui');
INSERT INTO `pannes` VALUES(789, '1146201300', '07', '15', '28', '04', '2006', 'SL25', 'Reference Reflector', 'Machine', 'MC', 'Pas de réflecteurs, juste faire logoff-logon. Pas de perte de tps car dosi.', '01', '50', '00', '00', 'non');
INSERT INTO `pannes` VALUES(790, '1145370000', '16', '20', '18', '04', '2006', 'SL25', 'D rot X dem', 'Machine', 'GD', 'Tourner le colli a la main de 0.5 degres et faire un reset', '16', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(791, '1145881500', '14', '25', '24', '04', '2006', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'En mode service jouer avec les lames. Reglage de la camera.', '14', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(792, '1146123000', '09', '30', '27', '04', '2006', 'SL25', 'fine pot X2', 'Machine', 'GD', 'Chipoter avec les cables au niveau du pot X2 dans le colli.', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(793, '1146138300', '13', '45', '27', '04', '2006', 'SL25', 'Y2 lame 6 reflector too narrow', 'Machine', 'MC', 'Apres plusieurs tests, reglage de la camera', '14', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(794, '1145977200', '17', '00', '25', '04', '2006', 'SL25', 'fuite d eau ', 'Machine', 'GD', 'Apres les traitement.\r\nAu niveau du boitier magnetique gris. \r\nResserage du connecteur suivit de test.', '17', '20', '00', '20', 'non');
INSERT INTO `pannes` VALUES(795, '1145354400', '12', '00', '18', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Reboot All', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(796, '1145372400', '17', '00', '18', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Reboot All', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(797, '1145375700', '17', '55', '18', '04', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Reboot All', '18', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(798, '1145376300', '18', '05', '18', '04', '2006', 'Tomo1', 'OBC error', 'Recoverable', 'MC', 'Pendant treatment.\r\nGenerate completion procedure.\r\nSortir patient du bore, setup, ready).', '18', '10', '00', '05', 'non');
INSERT INTO `pannes` VALUES(799, '1145377800', '18', '30', '18', '04', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Continuation de la procédure', '18', '35', '00', '05', 'non');
INSERT INTO `pannes` VALUES(800, '1145544000', '16', '40', '20', '04', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Restart All', '16', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(801, '1145602800', '09', '00', '21', '04', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Reboot All', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(802, '1145613600', '12', '00', '21', '04', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Reboot All', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(803, '1145867400', '10', '30', '24', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', '', 'Reboot All', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(804, '1145950500', '09', '35', '25', '04', '2006', 'Tomo1', 'Gantry drive error', 'Recoverable', 'MC', 'password-Generate completion procedure\r\n->continuation', '09', '40', '00', '05', 'non');
INSERT INTO `pannes` VALUES(805, '1145962800', '13', '00', '25', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Reboot All', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(806, '1145966100', '13', '55', '25', '04', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Generate un nouveau traitement', '14', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(807, '1146035400', '09', '10', '26', '04', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Reboot All', '09', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(808, '1146130200', '11', '30', '27', '04', '2006', 'Tomo1', 'Gantry drive error', 'Recoverable', 'MC', '3 fois sur le même patient', '11', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(809, '1146141900', '14', '45', '27', '04', '2006', 'Tomo1', 'MLC sent back error + SSM State Error', 'Unrecoverable', 'MC', 'Generate completion procedure, puis unrecoverable donc reboot all...', '14', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(810, '1146212400', '10', '20', '28', '04', '2006', 'Tomo1', 'Couch monitor out of tolerance', 'Recoverable', 'MC', '60 sec proposées plutôt que 20 après generate completion procedure ...\r\nEnvoyé à Madison ...', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(811, '1146558600', '10', '30', '02', '05', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'on continue', '10', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(812, '1146573000', '14', '30', '02', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Reboot All', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(813, '1146643200', '10', '00', '03', '05', '2006', 'Tomo1', 'ne reconnait pas le scanner dejas fait', 'Recoverable', 'GD', 'on recommance le scanner', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(814, '1146740400', '13', '00', '04', '05', '2006', 'Tomo1', 'Couch over load monitor', 'Recoverable', 'MC', 'Pendant le trait\r\nGenerate complet\r\nOn continue', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(815, '1146743400', '13', '50', '04', '05', '2006', 'Tomo1', 'inhibit error', 'Recoverable', 'MC', 'Pendant scan\r\n4 eme fois donc reboot all', '14', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(816, '1146813600', '09', '20', '05', '05', '2006', 'Tomo1', 'low set point', 'Recoverable', 'GD', 'apres scan\r\nreprise et nouveau scan', '09', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(817, '1146814800', '09', '40', '05', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'Physique', 'apres trait\r\nreboot all', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(818, '1147073100', '09', '25', '08', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apres trait\r\nReboot all\r\n', '09', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(819, '1147073400', '09', '30', '08', '05', '2006', 'Tomo1', 'low set violation point ch 1', 'Recoverable', 'MC', 'remplacement du pulse shape du magnetron par tomo', '20', '00', '10', '00', 'oui');
INSERT INTO `pannes` VALUES(820, '1147158000', '09', '00', '09', '05', '2006', 'Tomo1', 'water flow', 'Unrecoverable', 'GD', 'Pression LW trop faible\r\najustement de la pression\r\nProbleme pour refermer le capot, connecteur\r\n', '09', '30', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(821, '1147170600', '12', '30', '09', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres scan\r\nReboot all ', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(822, '1147332600', '09', '30', '11', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Fin de traitement\r\nReboot all', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(823, '1147431000', '12', '50', '12', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apres traitement\r\nReboot all', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(824, '1147432200', '13', '10', '12', '05', '2006', 'Tomo1', 'high speed data', 'Unrecoverable', 'MC', 'Pendant scan\r\nreboot all', '13', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(825, '1147937400', '09', '30', '18', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'pendant traitement\r\nreboot all', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(826, '1147939200', '10', '00', '18', '05', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'apres scan\r\nsuite du programme', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(827, '1147948200', '12', '30', '18', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan \r\nReboot all', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(828, '1147771800', '11', '30', '16', '05', '2006', 'Tomo1', 'error timing', 'Recoverable', 'MC', 'Avant scan\r\nremttre de la graisse dans le gantry, pas ok\r\nappel tomo procedure test est OK ?????', '20', '00', '08', '30', 'oui');
INSERT INTO `pannes` VALUES(829, '1147960800', '16', '00', '18', '05', '2006', 'Tomo1', 'corbaserver error', 'Unrecoverable', 'MC', 'avant scan\r\nreboot os tomo ps et data serveur', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(830, '1146234000', '16', '20', '28', '04', '2006', 'SL25', 'leaf Y too narrow', 'Machine', 'GD', 'Plateau du plomb sale.\r\n si tjrs le cas changement de plateau.', '16', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(831, '1146573000', '14', '30', '02', '05', '2006', 'SL25', 'reset requird visir plante', 'Informatique', 'MC', 'reboot pc visir.\r\nperte des 335 UM donnees, fiare une resimul dans visir.', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(832, '1146743400', '13', '50', '04', '05', '2006', 'SL25', 'erreur de porte plateau', 'Machine', 'MC', 'enlever et remettre le plateau', '13', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(833, '1150960200', '09', '10', '22', '06', '2006', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'MC', 'by pass des timer', '09', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(834, '1148302800', '15', '00', '22', '05', '2006', 'SL25', 'HT interlock RHB et HTB', 'Machine', 'Technique', 'Check des fibres et haute tension rien.\r\ntel Elekta, du a un probleme de Drot pot casse et remplace.\r\nA coup du gantry, check des valeur GANT CHCK et GANT COARS qui doivent etre le plus proche possible.\r\nEcart faible mais present et limite, reglage par rotation de 4 dents a l engrenage au niveau du moteur.', '11', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(835, '1148376600', '11', '30', '23', '05', '2006', 'SL25', 'fine pot offset X2', 'Machine', 'MC', 'bouger le colli manuellement.', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(836, '1148455800', '09', '30', '24', '05', '2006', 'SL25', 'extinction de la machine sans raison', 'Machine', 'MC', 'restart all', '09', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(837, '1148458500', '10', '15', '24', '05', '2006', 'SL25', 'HTB interlock', 'Machine', 'MC', 'reset requierd\r\nlog off log on', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(838, '1148619600', '07', '00', '26', '05', '2006', 'SL25', 'room doors 1 2 et 3', 'Machine', 'MC', 'Ckeck HT interlock, fuse a reenclenche', '07', '10', '00', '10', 'non');
INSERT INTO `pannes` VALUES(839, '1148631900', '10', '25', '26', '05', '2006', 'SL25', 'LCS link failure et RCC failure', 'Machine', 'MC', 'reboot all et remplir eau.\r\npatient sur table gantry a 180', '11', '00', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(840, '1148895000', '11', '30', '29', '05', '2006', 'SL25', 'extinction du SL25???', 'Machine', 'GD', 'reboot all\r\nGantry a 0', '11', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(841, '1148914800', '17', '00', '29', '05', '2006', 'SL25', 'power off du linac', 'Machine', 'MC', 'reboot all', '17', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(842, '1148916000', '17', '20', '29', '05', '2006', 'SL25', 'power off du SL25', 'Machine', 'MC', 'aucune info dans les log\r\nreboot all', '17', '45', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(843, '1148032800', '12', '00', '19', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(844, '1148289300', '11', '15', '22', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'avant scan\r\nreboot all', '11', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(845, '1148383200', '13', '20', '23', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'avant scan\r\nreboot all', '13', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(846, '1148395200', '16', '40', '23', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres scan\r\nreboot all', '16', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(847, '1148396400', '17', '00', '23', '05', '2006', 'Tomo1', 'incorrect linac ssm machine sate', 'Unrecoverable', 'GD', 'avant scan\r\nreboot all', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(848, '1148456700', '09', '45', '24', '05', '2006', 'Tomo1', 'time out while', 'Recoverable', 'MC', 'generate completion procedure', '09', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(849, '1148646600', '14', '30', '26', '05', '2006', 'Tomo1', 'time out gantry', 'Recoverable', 'MC', 'generation complete procedure', '14', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(850, '1148655000', '16', '50', '26', '05', '2006', 'Tomo1', 'gun et ocb', 'Unrecoverable', 'Technique', 'en plein traitement.\r\nPas moyen de faire un generate complet le champ reste en sche... (comme s il n avait pas ete commancer).\r\nreboot all \r\nensuite ok pour faire une complete et donnee la fin du traitement.', '17', '15', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(851, '1148656800', '17', '20', '26', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'reboot all', '17', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(852, '1148887800', '09', '30', '29', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'apres scan\r\nreboot all', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(853, '1148915700', '17', '15', '29', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Apres scan\r\nreboot all', '17', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(854, '1148924100', '19', '35', '29', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apres scan\r\nReboot all', '19', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(855, '1148982600', '11', '50', '30', '05', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', '', 'avant scan\r\nreboot all', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(856, '1148982900', '11', '55', '30', '05', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'avant scan\r\nreboot all', '15', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(857, '1148994900', '15', '15', '30', '05', '2006', 'Tomo1', 'low dose et ocb', 'Recoverable', 'GD', 'generate complet\r\non continue le traitement', '15', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(858, '1149002700', '17', '25', '30', '05', '2006', 'SL25', 'Lames ne passent pas + Shutdown de la machine + Fine Pot Offset X2', 'Machine', 'MC', 'Reboot All + Jeu sur Colli', '17', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(859, '1149163200', '14', '00', '01', '06', '2006', 'Tomo1', 'OBC', 'Unrecoverable', 'GD', 'Avant scan\r\nreboot All', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(860, '1149168600', '15', '30', '01', '06', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', '', 'avant scan\r\nReboot all', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(861, '1149169500', '15', '45', '01', '06', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'apres scan\r\nReboot all', '15', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(862, '1149170700', '16', '05', '01', '06', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '16', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(863, '1149232800', '09', '20', '02', '06', '2006', 'Tomo1', 'tomo ne reagit plus ', 'Recoverable', 'GD', 'avant scan\r\ncreation d une interupt via bouton stop\r\nReboot all', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(864, '1149243600', '12', '20', '02', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apres scan\r\nreboot all', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(865, '1149250200', '14', '10', '02', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apres scan\r\nreboot all', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(866, '1149777900', '16', '45', '08', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Reboot All', '16', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(867, '1150192200', '11', '50', '13', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', '3 fois sur la matinée\r\nReboot All', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(868, '1150201500', '14', '25', '13', '06', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Couch Elevation out of tolerance', '14', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(869, '1150212600', '17', '30', '13', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Reboot All', '17', '40', '00', '10', 'non');
INSERT INTO `pannes` VALUES(870, '1150376400', '15', '00', '15', '06', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot All', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(871, '1150446000', '10', '20', '16', '06', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'reprise du traitement', '10', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(872, '1150452600', '12', '10', '16', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres le scan\r\nreboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(873, '1149015600', '21', '00', '30', '05', '2006', 'SL25', 'HT Crowbar', 'Machine', 'Technique', 'Check des fibres optiques\r\ncheck des U du magnetron\r\ncheck des fusibles aux differente alim\r\nle probleme reviens apres 20 min??? test avant la dosi du 31 RAS????????????', '08', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(874, '1149058800', '09', '00', '31', '05', '2006', 'SL25', 'HT crowbar', 'Machine', 'GD', 'Pb de fibre optique 1er des 3 a droites de la machine.\r\nremplacement de la fibre par un spare.', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(875, '1149256800', '16', '00', '02', '06', '2006', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'Se delogger de visir et du RTD\r\nplus possible de se logger en SL25\r\nReboot all, OK ', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(876, '1149672000', '11', '20', '07', '06', '2006', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'ajustement de la camera', '11', '45', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(877, '1149682800', '14', '20', '07', '06', '2006', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'ajustement de la camera', '14', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(878, '1149771000', '14', '50', '08', '06', '2006', 'SL25', 'Perte du MLC ecran rouge mlc reset', 'Machine', 'GD', 'sortir du patient visir\r\nlog off du rtd\r\ntournee la clef reset requier pour faire le reset MLC (ca n''as pas fonctionner avec le reset soft)\r\nOn a due remplacer le bica strip ddans le colli a la maintenance suivante.', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(879, '1150117200', '15', '00', '12', '06', '2006', 'SL25', 'water temp', 'Machine', 'GD', 'remplacement des filtres par les plombiers\r\nPendant la maintenance', '15', '10', '00', '10', 'non');
INSERT INTO `pannes` VALUES(880, '1150208700', '16', '25', '13', '06', '2006', 'SL25', 'fine pot X2', 'Machine', 'GD', 'enlever le porte plateau et netoyer le plexi OK', '16', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(881, '1150705800', '10', '30', '19', '06', '2006', 'SL25', 'Pb pour passe le champ', 'Machine', 'GD', 'enlever le porte plateau, recharger le champ (reset motor) remettre le plateau OK', '10', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(882, '1150715100', '13', '05', '19', '06', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Apres scan\r\nOn continu le trait', '13', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(883, '1150723800', '15', '30', '19', '06', '2006', 'Tomo1', 'gantry sent baele error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(884, '1150727400', '16', '30', '19', '06', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '16', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(885, '1150815600', '17', '00', '20', '06', '2006', 'Tomo1', 'low set point violation signal dose ch 1 OBC monitor', 'Recoverable', 'GD', 'pendant scan\r\nOn reprend le trait', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(886, '1150815900', '17', '05', '20', '06', '2006', 'Tomo1', 'Gantry', 'Recoverable', 'GD', 'On reprend le traitement', '17', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(887, '1150885800', '12', '30', '21', '06', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'On continu le trait', '12', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(888, '1151056800', '12', '00', '23', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'reboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(889, '1151070600', '15', '50', '23', '06', '2006', 'Tomo1', 'station time out', 'Unrecoverable', 'GD', 'apres scan', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(890, '1151313300', '11', '15', '26', '06', '2006', 'Tomo1', 'gantry sent block error', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all', '11', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(891, '1151319000', '12', '50', '26', '06', '2006', 'Tomo1', 'Gantry sent block error', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(892, '1151333400', '16', '50', '26', '06', '2006', 'Tomo1', 'erreur logiciel', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all', '17', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(893, '1151398500', '10', '55', '27', '06', '2006', 'Tomo1', 'fusion ne se termine pas', 'Unrecoverable', 'MC', 'apres scan\r\nReboot all pour etre certain de vider la memoire vive', '11', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(894, '1151502900', '15', '55', '28', '06', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'apres scan\r\nReboot all', '16', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(895, '1151683200', '18', '00', '30', '06', '2006', 'Tomo1', 'time out waiting', 'Recoverable', 'MC', 'pendant trait\r\ngenerate complet procedure', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(896, '1151924400', '13', '00', '03', '07', '2006', 'Tomo1', 'couch elevat tolerance', 'Recoverable', 'MC', 'pendant le scan\r\nreboot all', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(897, '1152014400', '14', '00', '04', '07', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'avant scan\r\nreboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(898, '1152016800', '14', '40', '04', '07', '2006', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'MC', 'avant scan \r\nreboot all', '14', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(899, '1152090000', '11', '00', '05', '07', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'Physique', 'Pendant scan\r\nReboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(900, '1152093600', '12', '00', '05', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'Physique', 'Pendant scan\r\nReboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(901, '1152178200', '11', '30', '06', '07', '2006', 'Tomo1', 'table problem couch', 'Unrecoverable', 'MC', 'Apres scan\r\nreboot all', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(902, '1152195600', '16', '20', '06', '07', '2006', 'Tomo1', 'interlock opened', 'Recoverable', 'MC', 'pendant trait\r\ngenerate complet procdure\r\non continue', '16', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(903, '1152514800', '09', '00', '10', '07', '2006', 'Tomo1', 'water flow', 'Unrecoverable', 'GD', 'Pendant trait\r\nreglage du debit d eau de la machine, pas bon.\r\nAvec d autre patient OK ??? sans doute le plan du patient qui pause probleme ??? Patient decede envois du plan chez tomo.', '12', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(904, '1152538500', '15', '35', '10', '07', '2006', 'Tomo1', 'Probleme a la fusion de limage', 'Recoverable', 'GD', 'apres scan\r\nPas possible de faire la fusion en mode automatique.\r\nfusion via mode manuel plus traitement \r\nreboot de la tomo apres le trait', '15', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(905, '1152541800', '16', '30', '10', '07', '2006', 'Tomo1', 'water flow', 'Unrecoverable', 'GD', 'apres trait\r\nreboot all', '16', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(906, '1152543600', '17', '00', '10', '07', '2006', 'Tomo1', 'Gantry drive error', 'Recoverable', 'GD', 'pendant trait\r\non continue apres compl procedure', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(907, '1152545400', '17', '30', '10', '07', '2006', 'Tomo1', 'Couch', 'Recoverable', 'GD', 'pendant trait\r\ngenerate compl proc\r\non continue le trait', '17', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(908, '1152549600', '18', '40', '10', '07', '2006', 'Tomo1', 'Couch', 'Recoverable', 'GD', 'pendant trait\r\nComplet plus on fini le trait', '18', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(909, '1152601200', '09', '00', '11', '07', '2006', 'Tomo1', 'water flow ', 'Unrecoverable', 'GD', 'le trait stop toujours apres 80% pour un water flow\r\nreglage du debit dans le circuit de refroidissement, impossible de regler le debit.\r\nApel tomo et remplacement de deux flowmeter plus maintenance.', '14', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(910, '1152685800', '08', '30', '12', '07', '2006', 'Tomo1', 'ne reconnait pas le scan', 'Unrecoverable', 'Physique', 'apres le scan\r\nreboot all', '08', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(911, '1152699300', '12', '15', '12', '07', '2006', 'Tomo1', 'set value', 'Recoverable', 'GD', 'generate compl proc\r\non continue', '12', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(912, '1152776400', '09', '40', '13', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres le scan\r\nReboot all', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(913, '1152865200', '10', '20', '14', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres scan\r\nReboot all', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(914, '1151939700', '17', '15', '03', '07', '2006', 'SL25', 'Champ ne passe plus a la fin du traitement', 'Informatique', 'MC', 'Visir bloque\r\narret brutal de visir\r\nby pass des timer', '17', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(915, '1152020100', '15', '35', '04', '07', '2006', 'SL25', 'water temp', 'Machine', 'MC', 'Attendre un peu \r\nby pass des timer', '15', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(916, '1152024300', '16', '45', '04', '07', '2006', 'SL25', 'water temp', 'Machine', 'MC', 'By pass des timer\r\nremplacer les filtres par le service technique', '16', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(917, '1152801900', '16', '45', '13', '07', '2006', 'SL25', 'fine pot X2', 'Machine', 'GD', 'Chipoter avec la rotation colli et antry plus charger d autre champ pour debloque la situation.\r\n', '16', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(918, '1152872700', '12', '25', '14', '07', '2006', 'SL25', 'function demand', 'Machine', 'GD', 'jouer avec la molettefonction de la floche', '12', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(919, '1152869400', '11', '30', '14', '07', '2006', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(920, '1152877200', '13', '40', '14', '07', '2006', 'Tomo1', 'time out', 'Recoverable', 'GD', 'Complet procedure', '13', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(921, '1153121400', '09', '30', '17', '07', '2006', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(922, '1153141800', '15', '10', '17', '07', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '15', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(923, '1153219800', '12', '50', '18', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres scan\r\nReboot all', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(924, '1153230600', '15', '50', '18', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres trait\r\nReboot all', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(925, '1153231800', '16', '10', '18', '07', '2006', 'Tomo1', 'Couch', 'Recoverable', 'GD', 'pendant le trait\r\ngenerate compl proc', '16', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(926, '1153294800', '09', '40', '19', '07', '2006', 'Tomo1', 'software et ssm deux arret', 'Recoverable', 'GD', 'generate compl proc', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(927, '1153382400', '10', '00', '20', '07', '2006', 'Tomo1', 'plantage de timming au mvct', 'Unrecoverable', 'GD', 'apres scan\r\nPas le choix,sortir du programme et reboot all', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(928, '1153397100', '14', '05', '20', '07', '2006', 'Tomo1', 'Pb lors du MVCT', 'Unrecoverable', 'GD', 'apres scan\r\nReboot all', '14', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(929, '1153406400', '16', '40', '20', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '16', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(930, '1153742400', '14', '00', '24', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'apres trait\r\nreboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(931, '1153744800', '14', '40', '24', '07', '2006', 'Tomo1', 'Pas vue et inf oubliee de regarder', 'Recoverable', 'GD', 'generate compl proce', '14', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(932, '1153746600', '15', '10', '24', '07', '2006', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'remplacement des filtrespar les plombiers\r\nBy pass des timer', '15', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(933, '1154080200', '11', '50', '28', '07', '2006', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'GD', 'log off du rtd et recharge du patient', '11', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(934, '1154434800', '14', '20', '01', '08', '2006', 'SL25', 'reset motor', 'Machine', 'GD', 'on a beau faire le reset motor, rien a faire, il reste.\r\nReset motor avec la floche de droite.', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(935, '1155186000', '07', '00', '10', '08', '2006', 'SL25', ' a l alumage du sl25 rien ne s allume en salle', 'Machine', 'Technique', 'Niveau d eau beaucoup trop faible.\r\nEn remttre et reenclencher les fusibles.', '07', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(936, '1156752300', '10', '05', '28', '07', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Reboot all', '10', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(937, '1154333700', '10', '15', '31', '07', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(938, '1154416500', '09', '15', '01', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '09', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(939, '1154433600', '14', '00', '01', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(940, '1154439000', '15', '30', '01', '08', '2006', 'Tomo1', 'set violation point error', 'Recoverable', 'MC', 'Pendant scan\r\nRecommencer le scan', '15', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(941, '1154440200', '15', '50', '01', '08', '2006', 'Tomo1', 'MLC time out', 'Recoverable', 'GD', 'Pendant le trait\r\nGenerate compl proc', '15', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(942, '1154502000', '09', '00', '02', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(943, '1154508000', '10', '40', '02', '08', '2006', 'Tomo1', 'flow meter', 'Unrecoverable', 'MC', 'Apres trait\r\nReboot all', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(944, '1154510100', '11', '15', '02', '08', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Pendant trait\r\nGenerate compl proc', '11', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(945, '1154518200', '13', '30', '02', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(946, '1154518800', '13', '40', '02', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'MC', 'Apres scan\r\nResart all', '13', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(947, '1154604600', '13', '30', '03', '08', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Pendant trait\r\nGenerate compl proc', '13', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(948, '1154600100', '12', '15', '03', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '12', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(949, '1154607000', '14', '10', '03', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(950, '1154610000', '15', '00', '03', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(951, '1154956500', '15', '15', '07', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '15', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(952, '1154958600', '15', '50', '07', '08', '2006', 'Tomo1', 'Couch elev error', 'Recoverable', 'MC', 'Pendant scan\r\nGenerate compl proc', '15', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(953, '1154962800', '17', '00', '07', '08', '2006', 'Tomo1', 'Couch elev error', 'Unrecoverable', 'MC', 'Pendant trait\r\nil restait 0.6 sec', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(954, '1155046800', '16', '20', '08', '08', '2006', 'Tomo1', 'timming out shutdown', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '16', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(955, '1155050100', '17', '15', '08', '08', '2006', 'Tomo1', 'Gantry speed over', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '17', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(956, '1155119400', '12', '30', '09', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(957, '1155132600', '16', '10', '09', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '16', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(958, '1155280200', '09', '10', '11', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan \r\nReboot all', '09', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(959, '1155305400', '16', '10', '11', '08', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Passage en mode traitement. Visiblement n a pas tenu compte des corrections. On recommance le scan.', '16', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(960, '1155542400', '10', '00', '14', '08', '2006', 'Tomo1', 'Probleme lors de la fusion, impossible meme en manuel', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(961, '1155548700', '11', '45', '14', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(962, '1155807000', '11', '30', '17', '08', '2006', 'Tomo1', 'Pas d images apres scan', 'Recoverable', 'MC', 'aapres scan\r\nRefaire le scan', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(963, '1155814200', '13', '30', '17', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all', '13', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(964, '1155817200', '14', '20', '17', '08', '2006', 'Tomo1', 'Couch error', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all\r\n', '14', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(965, '1156256100', '16', '15', '22', '08', '2006', 'Tomo1', 'Couch error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all 2x', '16', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(966, '1156410300', '11', '05', '24', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Apre scan\r\nReboot all', '11', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(967, '1156494600', '10', '30', '25', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'avant scan\r\nReboot scan', '10', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(968, '1156504500', '13', '15', '25', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '13', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(969, '1140430800', '11', '20', '20', '02', '2006', 'SL75', 'Plus de mouvement', 'Machine', 'Technique', 'Touchguard trop lourd car à 180°.', '11', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(970, '1141816800', '12', '20', '08', '03', '2006', 'SL75', 'Claquage', 'Machine', 'MC', 'Restart ALL, comme Tomo', '12', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(971, '1145624100', '14', '55', '21', '04', '2006', 'SL75', 'Coup de poing actionner', 'Machine', 'GD', 'Restart du SL75 + 5 min pour le timer reboot PC Visir.', '15', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(972, '1154504700', '09', '45', '02', '08', '2006', 'SL75', 'Plus de mouvement de table', 'Machine', 'GD', 'Les autres mouvements sont OK (gantry, colli, ...)\r\nRestart du SL75 + attendre le Timer.', '10', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(973, '1158134400', '10', '00', '13', '09', '2006', 'SL75', 'Problème de wedge plusieurs sur la journée', 'Machine', 'GD', 'Problème surement du switch ou du pot. On tente de tenir jusqu''à la maintenance.', '11', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(974, '1158141600', '12', '00', '13', '09', '2006', 'SL75', 'Toujours problème de wedge bloqué', 'Machine', 'GD', 'Démontage du wedge, problème avec le switch de fin de course wedge IN. Remise en place de celui-ci+ contrôle dosimétrique cuve + poly + film.', '18', '00', '06', '00', 'oui');
INSERT INTO `pannes` VALUES(975, '1156234800', '10', '20', '22', '08', '2006', 'SL25', 'Touchguard', 'Machine', 'MC', 'Iview a été coupé ...\r\nRemise en route', '10', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(976, '1156852800', '14', '00', '29', '08', '2006', 'SL25', 'Iview bloqué, ne descend pas', 'Machine', 'GD', 'On/Off du disjoncteur "Iview Arm".\r\nOk', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(977, '1156339800', '15', '30', '23', '08', '2006', 'SL25', 'Plus moyen de faire descendre l''iview', 'Machine', 'Technique', 'Même avec switch off/on du disjoncteur.\r\nRemplacement d''une carte par Elekta.', '17', '10', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(978, '1157959800', '09', '30', '11', '09', '2006', 'SL25', 'Fine pot Offset X2. Too many leaves.', 'Machine', 'MC', '- Tourner colli.\r\n- Enlever/remettre porte-pb', '09', '35', '00', '05', 'non');
INSERT INTO `pannes` VALUES(979, '1156752000', '10', '00', '28', '08', '2006', 'Tomo1', 'Pas possible de faire la fusion automatique', 'Recoverable', 'MC', 'Fusion en manuel + trait.\r\nReboot en fin de trait.', '10', '05', '00', '05', 'non');
INSERT INTO `pannes` VALUES(980, '1156776300', '16', '45', '28', '08', '2006', 'Tomo1', 'Problème lors de la fusion auto', 'Recoverable', 'GD', 'Fusion en manuel.\r\nReboot après traitement.', '16', '50', '00', '05', 'non');
INSERT INTO `pannes` VALUES(981, '1156778400', '17', '20', '28', '08', '2006', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Reboot ALL', '17', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(982, '1156845600', '12', '00', '29', '08', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Reboot All', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(983, '1156851900', '13', '45', '29', '08', '2006', 'Tomo1', 'Gantry drive error', 'Recoverable', 'MC', 'Generate completion procedure', '13', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(984, '1157025600', '14', '00', '31', '08', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Relance de la procédure', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(985, '1157029200', '15', '00', '31', '08', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'MC', 'Relance de la procédure', '15', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(986, '1157039400', '17', '50', '31', '08', '2006', 'Tomo1', 'Timing Rotation', 'Recoverable', 'GD', 'Generate completion procedure', '17', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(987, '1157040900', '18', '15', '31', '08', '2006', 'Tomo1', 'timming rot trigger', 'Recoverable', 'GD', 'pendant trait 2 fois\r\nGenerate compl proces\r\nReboot apres le trait\r\n', '18', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(988, '1157101200', '11', '00', '01', '09', '2006', 'Tomo1', 'Couch', 'Recoverable', 'GD', 'apres trait\r\nOn continue.', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(989, '1157119800', '16', '10', '01', '09', '2006', 'Tomo1', 'systeme d elevation trop haut ou trop bas', 'Recoverable', 'GD', 'Apres scan\r\nOn continue la procedure', '16', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(990, '1157124600', '17', '30', '01', '09', '2006', 'Tomo1', 'Couch drive', 'Recoverable', 'GD', 'avant scan\r\nOn continue', '17', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(991, '1157356800', '10', '00', '04', '09', '2006', 'Tomo1', 'Couch', 'Recoverable', 'GD', 'On continue la procedure', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(992, '1157365800', '12', '30', '04', '09', '2006', 'Tomo1', 'Gantry drive', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(993, '1157457600', '14', '00', '05', '09', '2006', 'Tomo1', '2 couch error', 'Recoverable', 'MC', 'Reboot all', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(994, '1154860200', '12', '30', '06', '08', '2006', 'Tomo1', '2 fois couch error', 'Recoverable', 'MC', 'Apres scan\r\nReboot all', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(995, '1157633400', '14', '50', '07', '09', '2006', 'Tomo1', 'Gantry sent error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(996, '1157736300', '19', '25', '08', '09', '2006', 'Tomo1', 'wait too long', 'Recoverable', 'MC', 'Pendant scan\r\nGenerate compl proc', '19', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(997, '1157966400', '11', '20', '11', '09', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'Pendant trait\r\nGenerate compl proc', '11', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(998, '1157980500', '15', '15', '11', '09', '2006', 'Tomo1', '3 fois couch', 'Recoverable', 'Technique', 'Apres scan\r\nreboot 2 fois\r\n', '15', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(999, '1158067800', '15', '30', '12', '09', '2006', 'Tomo1', 'tomo demande un shutdown', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1000, '1158074100', '17', '15', '12', '09', '2006', 'Tomo1', 'timming error, plus moyen de trait faisceau off apres 2 sec', 'Recoverable', 'GD', 'Pendant trait\r\n\r\nRemplacement du magnetron par Tomo\r\ncela a pris 3 jours du mardi soir au jeudi matin.\r\n\r\n', '11', '00', '09', '00', 'oui');
INSERT INTO `pannes` VALUES(1001, '1158231600', '13', '00', '14', '09', '2006', 'Tomo1', 'erreur clef tournee sur image au lieu de trait', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1002, '1158064500', '14', '35', '12', '09', '2006', 'SL25', 'Water temp', 'Machine', 'GD', 'Reset des timer\r\ntel au plombier pour le remplacement des filtres.', '15', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1003, '1158559200', '08', '00', '18', '09', '2006', 'SL25', 'Pb avec UM1 et UM2 Pb de faisceau Pd de chambre de mesure', 'Machine', 'GD', 'Le faisceau stop d abord sur UM2. Terminate fault, dosi mauvaise.\r\nPb de chambre de mesure. Dans un premier temps, reglage du Dos ref 1 et Dos ref 2. Voir procedure dans la file box.\r\nControle avec le poly second test avec victoreen.', '12', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1004, '1158912000', '10', '00', '22', '09', '2006', 'Tomo1', 'The couch missed his position', 'Recoverable', 'GD', 'apres scan\r\n2 fois l erreur donc reboot all', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1005, '1158930000', '15', '00', '22', '09', '2006', 'Tomo1', 'Couch elev', 'Recoverable', 'GD', 'apres scan\r\n2 fois l erreur donc reboot', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1006, '1158937200', '17', '00', '22', '09', '2006', 'Tomo1', 'Couch', 'Recoverable', 'MC', 'Apres scan\r\nPrep trait\r\nsetup\r\nready', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1007, '1158939000', '17', '30', '22', '09', '2006', 'Tomo1', 'couch error', 'Recoverable', 'MC', 'reboot all car les lasers ne sont pas ok et les valeurs de tables ne sont pas connues.', '17', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1008, '1159172400', '10', '20', '25', '09', '2006', 'Tomo1', 'couch error', 'Recoverable', 'MC', 'Avant scan\r\nReboot all car 4 fois le probleme', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1009, '1159256400', '09', '40', '26', '09', '2006', 'Tomo1', 'timing software not ready', 'Unrecoverable', 'MC', 'Pendant scan\r\nreboot all', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1010, '1159254600', '09', '10', '26', '09', '2006', 'Tomo1', 'Gantry', 'Recoverable', 'Technique', 'pendant scan\r\nrelance de la procedure', '09', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1011, '1159287900', '18', '25', '26', '09', '2006', 'Tomo1', 'Couch', 'Recoverable', 'MC', 'avant scan\r\n3fois donc on reboot', '18', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1012, '1159380000', '20', '00', '27', '09', '2006', 'Tomo1', 'gantry', 'Unrecoverable', 'GD', 'avant scan \r\nReboot all', '20', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1013, '1159201800', '18', '30', '25', '09', '2006', 'Tomo1', 'Couch', 'Recoverable', 'MC', 'Apres scan\r\n3 fois donc reboot\r\n', '18', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1014, '1159427700', '09', '15', '28', '09', '2006', 'Tomo1', 'dose to high', 'Recoverable', 'MC', 'Pendant trait\r\nmesure de la dose, plusieurs variation constater, ce n est pas les chambres recherche du probleme??? plus de probleme constater par la suite ???', '22', '30', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1015, '1157186700', '10', '45', '02', '09', '2006', 'Tomo1', 'gantry drive', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all ', '10', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1016, '1157212200', '17', '50', '02', '09', '2006', 'Tomo1', 'Couch to high loow', 'Recoverable', 'MC', 'reboot', '18', '15', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1017, '1159859700', '09', '15', '03', '10', '2006', 'Tomo1', 'grantry drive', 'Unrecoverable', 'GD', 'avant scan\r\nreboot all', '09', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1018, '1158733800', '08', '30', '20', '09', '2006', 'SL25', 'Remplacement de la chambre', 'Machine', 'Technique', 'Par Elekta remplacement de la chambre;', '18', '00', '09', '30', 'non');
INSERT INTO `pannes` VALUES(1019, '1158822600', '09', '10', '21', '09', '2006', 'SL25', 'terminate fault dose rate', 'Machine', 'GD', 'les tops sont envoyer par 100UM au lieu de 200UM', '09', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1020, '1158825600', '10', '00', '21', '09', '2006', 'SL25', 'dose rate error en X25', 'Machine', 'GD', 'A un angle gantry de 90 degres test a 0 degres OK\r\nReglage du 2TIctrl plus dosi\r\nvaleur avant -180 valeur apres +90', '13', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1021, '1158904800', '08', '00', '22', '09', '2006', 'SL25', 'Pbl X25 270 degres a 180 degres avec wedge', 'Machine', 'Technique', 'Par Elekta, reglage du 2T error', '13', '30', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(1022, '1159176000', '11', '20', '25', '09', '2006', 'SL25', 'Toujours pb X25 avec wedge', 'Machine', 'MC', 'faurt revoir les reglages', '11', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1023, '1159250400', '08', '00', '26', '09', '2006', 'SL25', 'Pb X25', 'Machine', 'Technique', 'Par Elekta, changement du thyristor qui a crame. \r\nReglage du 2TIctl et 2 Tbal.', '12', '45', '04', '45', 'oui');
INSERT INTO `pannes` VALUES(1024, '1159277100', '15', '25', '26', '09', '2006', 'SL25', 'Room doors 2 avec portes fermees', 'Machine', 'Technique', 'Apres check des contacts de portes, suivi des cable jusqu au coffret electrique, faux contact dans la masse de cable sur le bornier du haut, derriere les cables de masses.', '17', '30', '02', '05', 'oui');
INSERT INTO `pannes` VALUES(1025, '1159772400', '09', '00', '02', '10', '2006', 'SL25', 'Shutt mon', 'Machine', 'GD', 'Avec les electrons.\r\nC''est le shutter au niveau du wedge qui reste bloque. apres chipotage sans demontage du wedge, mise a 180 du gantry et retest tout rentre dans l ordre.', '10', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1026, '1159855200', '08', '00', '03', '10', '2006', 'SL25', '2T error en X25', 'Machine', 'Technique', 'Par Elekta, reglage des X25 par Yvan. il a refait une look up table.\r\nDosi', '15', '00', '07', '00', 'oui');
INSERT INTO `pannes` VALUES(1027, '1160377200', '09', '00', '09', '10', '2006', 'Simulateur', 'Pas de faisceau avec une erreur E42', 'Machine', 'Technique', 'Remplacement d''une carrte dans le cabinet HT par Odelft.\r\n\r\n\r\n', '12', '00', '20', '00', 'oui');
INSERT INTO `pannes` VALUES(1028, '1160035800', '10', '10', '05', '10', '2006', 'Tomo1', 'gantry drive erroe', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1029, '1160046000', '13', '00', '05', '10', '2006', 'Tomo1', '2 fois timing error', 'Recoverable', 'MC', 'Pendant trait\r\nGenerate compl proc', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1030, '1160049000', '13', '50', '05', '10', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '14', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1031, '1160387100', '11', '45', '09', '10', '2006', 'Tomo1', 'plusieurs interrupt different 4 fois ', 'Recoverable', 'GD', 'Pendant trait placement\r\nReboot apres 4 interrupt recoverable. test de 2 DQA patient dont celui de la patiente en trait.  OK je rend la machine. ', '12', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1032, '1160391000', '12', '50', '09', '10', '2006', 'Tomo1', 'Gantry', 'Unrecoverable', 'GD', 'Reboot all et stop du traitement du patient placement. On verra demain. Ok pour les autres patients', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1033, '1160636400', '09', '00', '12', '10', '2006', 'Tomo1', 'remplacement cible', 'Unrecoverable', 'Technique', 'Remplacement de la cible par Tomo', '20', '00', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1034, '1160564400', '13', '00', '11', '10', '2006', 'Tomo1', 'gantry drive error 3 fois', 'Unrecoverable', 'GD', 'Apres scan\r\nReboot all 3 fois pour l''apres midi\r\n', '13', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1035, '1160752200', '17', '10', '13', '10', '2006', 'Tomo1', 'MLC not ready', 'Recoverable', 'MC', 'Pendant scan\r\nGenerate compl proced', '17', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1036, '1161007200', '16', '00', '16', '10', '2006', 'Tomo1', 'plantage au loggoff', 'Unrecoverable', 'GD', 'apres trait\r\nReboot all', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1037, '1157291700', '15', '55', '03', '09', '2006', 'SL25', 'Pas de communication entre visir et RTD le champ ne passe pas pour ce patient', 'Informatique', 'Technique', 'Le probleme est due  a la valeur de table lat enregistree dans visir. L ecart est trop importent, en cause la frigolite sous le patient. Remettre les valeurs tables a 0 dans visir.', '16', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1038, '1160036700', '10', '25', '05', '10', '2006', 'SL25', 'plus de mouvement, shutt Mon, wedge, mm con c', 'Machine', 'GD', 'Switch de table, arret d urgence, enfonce.', '10', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1039, '1160114400', '08', '00', '06', '10', '2006', 'SL25', 'thy Grid', 'Machine', 'GD', 'Tout d abord impossible de demare le SL25 en cause pb avec la pression d eau du circuit interne. remise de la pression a pouf car toujours pas de nouveau manometre.\r\nPour le thy Grid, check de la fibre optique, Thy G1 Mon, plus de lumiere sur la diode donc pn d alim.\r\nCheck des fusibles au niveau de l alim, derriere la grille en haut a droite. Tous les fusibles sont bons, en general c est l un d eux. Ici c etait un fusible 250V 1/2A a cote des connecteurs de la dite alim. remplacement de celui ci et dosi. OK', '09', '45', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(1040, '1161016200', '18', '30', '16', '10', '2006', 'SL25', 'Leaf Y1 lost', 'Machine', 'MC', 'Ajustement de la camera pour augmenter l intensite.', '18', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1041, '1161018000', '19', '00', '16', '10', '2006', 'SL25', 'MLC linck failure', 'Machine', 'MC', 'Reboot RTD', '19', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1042, '1161019500', '19', '25', '16', '10', '2006', 'SL25', 'lost leaf', 'Machine', 'MC', 'diminution de l intensite de la lumiere camera', '19', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1043, '1161154800', '09', '00', '18', '10', '2006', 'SL25', 'MLC linck', 'Machine', 'GD', 'Reboot RTD', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1044, '1161008400', '16', '20', '16', '10', '2006', 'Tomo1', 'gantry drive sent error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '16', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1045, '1161086400', '14', '00', '17', '10', '2006', 'Tomo1', 'timming error', 'Recoverable', 'MC', 'Pendant trait\r\nprocedure continu', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1046, '1161093600', '16', '00', '17', '10', '2006', 'Tomo1', 'timing error', 'Recoverable', 'MC', 'Pendant scan\r\nprocedur compl', '16', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1047, '1161252000', '12', '00', '19', '10', '2006', 'Tomo1', 'incorrect linac ssm machine state', 'Unrecoverable', 'GD', 'apres scan\r\n2 fois le probleme en suivant sur le meme patient. \r\nReboot all.\r\nTest warmup et DQA patient OK.\r\n', '12', '35', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(1048, '1161589800', '09', '50', '23', '10', '2006', 'Tomo1', 'timing error', 'Recoverable', 'MC', 'Pendant trait\r\nGenerate compl proc', '09', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1049, '1161605400', '14', '10', '23', '10', '2006', 'Tomo1', 'water flow fault', 'Unrecoverable', 'Technique', 'avant scan\r\nReglage des debitmetres\r\nWarmUp OK\r\n', '15', '00', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1050, '1161615000', '16', '50', '23', '10', '2006', 'Tomo1', 'value error', 'Recoverable', 'GD', 'avant scan\r\non continue le trait', '16', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1051, '1161617400', '17', '30', '23', '10', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '17', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1052, '1161943800', '12', '10', '27', '10', '2006', 'Tomo1', 'linac invalid ssm state', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1053, '1161949800', '13', '50', '27', '10', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant trait\r\nReboot all', '14', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1054, '1161954000', '15', '00', '27', '10', '2006', 'Tomo1', 'water flow fault', 'Unrecoverable', 'Technique', 'Avant scan\r\nReglage des debitmatres Circ et LT', '15', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1055, '1162216800', '15', '00', '30', '10', '2006', 'SL25', 'Plus de MVCT automatique', 'Recoverable', 'GD', 'Apres scan\r\nReboot apres trait', '15', '10', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1056, '1162198800', '10', '00', '30', '10', '2006', 'Tomo1', 'plus de MVCT automatique', 'Recoverable', 'GD', 'Apres scan\r\nMVCT en manuel OK\r\nReboot all', '16', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1057, '1162308900', '16', '35', '31', '10', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '16', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1058, '1162477800', '15', '30', '02', '11', '2006', 'Tomo1', 'water fault', 'Unrecoverable', 'MC', 'avant scan\r\nreglage du debitmetre Linac Target', '15', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1059, '1162804200', '10', '10', '06', '11', '2006', 'Tomo1', 'gantry velocity error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1060, '1161586800', '09', '00', '23', '10', '2006', 'SL25', 'Too Many Leaves', 'Machine', 'MC', 'Diminuer l intensite lumineuse a la camera\r\nrechargement du champ', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1061, '1161676500', '09', '55', '24', '10', '2006', 'SL25', 'lost leaf Y2', 'Machine', 'MC', 'Reglage de la camera', '10', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1062, '1161673800', '09', '10', '24', '10', '2006', 'SL25', 'too many leaves', 'Machine', 'MC', 'avec porte plomb\r\ncoller un scotch au milieu pour eviter la reflexion', '09', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1063, '1161867900', '15', '05', '26', '10', '2006', 'SL25', 'MLC Linck', 'Machine', 'GD', 'Reboot RTD plusieurs fois.\r\nIl faut sans doute couper visir avant le 3eme reboot. Reglage de la camera', '15', '25', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1064, '1161961200', '17', '00', '27', '10', '2006', 'SL25', 'Probleme de detection du MLC au demarrage', 'Machine', 'GD', 'Aussi avec probleme de reglage de l ouverture de la camera entre le matin et le soir.\r\nRemplacement de la carte d acquision de la camera dans la tete du SL25.\r\nTest, bon retour de l image a lalumage du RTD, mais la camera doit quand meme etre remplace pour les problemes de reglage d ouverture petit grand champ en fonction du matin ou du soir soir.', '19', '00', '02', '00', 'non');
INSERT INTO `pannes` VALUES(1065, '1162191600', '08', '00', '30', '10', '2006', 'SL25', 'Pb de water temp 36,6 degres', 'Machine', 'GD', 'La temperature de l eau est a 36.6 degres. bien trop haut. Changement de filtres par les plombiers, nettoyage du filtre a l entree de la machine. \r\nElectrovane (grosse boite jaune) bloque sur close. Tel chez Electa (repondeur Liegeois). Mettre l electrovanne manuellement vers open (tirer sur le bouton noir avant de le touner). Reboot all, se mettre en mode preparatorie pour que la vanne soit en fonctionnement.', '11', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1066, '1162450800', '08', '00', '02', '11', '2006', 'SL25', 'remplacement de la Camera', 'Machine', 'Technique', 'remplacement de la camera et d une alim. Par Elekta', '13', '30', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(1067, '1162278000', '08', '00', '31', '10', '2006', 'SL25', 'lost leaves', 'Machine', 'GD', 'reglage de la camera', '', '', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1068, '1158579000', '13', '30', '18', '09', '2006', 'SL75', 'flatness fault', 'Machine', 'Technique', 'reset flatness', '13', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1069, '1158584400', '15', '00', '18', '09', '2006', 'SL75', 'Wedge bloque', 'Machine', 'Technique', 'rotation du gantry et du colli. OK', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1070, '1159257600', '10', '00', '26', '09', '2006', 'SL75', 'wedge bloque', 'Machine', 'MC', 'prise en mode manuel pour jouer avec le wedge.\r\nrelance et OK', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1071, '1162888200', '09', '30', '07', '11', '2006', 'Tomo1', 'Gantry velocity error', 'Unrecoverable', 'Physique', 'Avant scan\r\nReboot all', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1072, '1162893600', '11', '00', '07', '11', '2006', 'Tomo1', 'PC off', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1073, '1163062800', '10', '00', '09', '11', '2006', 'Tomo1', 'Machine not Ready', 'Recoverable', 'MC', 'Pendant trait\r\ngenerate complet proce', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1074, '1163401200', '08', '00', '13', '11', '2006', 'Tomo1', 'Water flow', 'Unrecoverable', 'GD', 'Avant scan\r\nreglage du debit d eau LW', '08', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1075, '1163429700', '15', '55', '13', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '16', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1076, '1163511000', '14', '30', '14', '11', '2006', 'Tomo1', 'tomo veut un shutdown', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1077, '1163516400', '16', '00', '14', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1078, '1163583000', '10', '30', '15', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1079, '1163680500', '13', '35', '16', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '13', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1080, '1163746800', '08', '00', '17', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '08', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1081, '1164020400', '12', '00', '20', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1082, '1164035400', '16', '10', '20', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '16', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1083, '1164096000', '09', '00', '21', '11', '2006', 'Tomo1', '2 fois wait while rotation timing error', 'Recoverable', 'Physique', 'Pendant trait\r\nReboot all\r\n', '09', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1084, '1164092400', '08', '00', '21', '11', '2006', 'Tomo1', 'Wait while waiting for rotating trigger', 'Unrecoverable', 'MC', 'Avant scan\r\nImpossible d envoyer un faisceau autre que le warm up\r\nIntervention de Tomo, en fait le PULSE SHAPER a plante (une capa rouge) remplace.', '13', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1085, '1164193200', '12', '00', '22', '11', '2006', 'Tomo1', '3 fois wait while ratating timing error', 'Recoverable', 'GD', 'Pendant trait\r\nReboot all', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1086, '1164276000', '11', '00', '23', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '11', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1087, '1164278700', '11', '45', '23', '11', '2006', 'Tomo1', 'Pompe d eau eteinte', 'Unrecoverable', 'Technique', 'Apres scan\r\nReglage du debit au LW', '12', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1088, '1164367200', '12', '20', '24', '11', '2006', 'Tomo1', 'water flow', 'Unrecoverable', 'Technique', 'Avant scan\r\nReglage du debit au LW', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1089, '1164295800', '16', '30', '23', '11', '2006', 'Tomo1', 'Corba server error', 'Recoverable', 'MC', 'Avant scan\r\nlog off log on sur tomocc1', '16', '30', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1090, '1164623400', '11', '30', '27', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Avant scan \r\nReboot all', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1091, '1165311000', '10', '30', '05', '12', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1092, '1162980000', '11', '00', '08', '11', '2006', 'SL75', 'Mag Fil fault', 'Machine', 'Technique', 'Bidouller les cables sur les relais RLA et RLB plus le redresseur ( a droite machine dans le gantry en bas).\r\n', '13', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(1093, '1163141100', '07', '45', '10', '11', '2006', 'SL25', 'Bip touchgard', 'Machine', 'MC', 'Probleme de contact sur la fixation du porte plomb.\r\nLa petite piec en demi lune etait mal orientee.', '08', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1094, '1163755800', '10', '30', '17', '11', '2006', 'SL75', 'Mag fil fault', 'Machine', 'GD', 'on eteins le SL75 et on joue sur les cables, connections des relais RLA, RLB.', '11', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1095, '1163768400', '14', '00', '17', '11', '2006', 'SL75', 'Mag fil fault', 'Machine', 'GD', 'On eteins le SL75 et on joue sur les relais RLA et RLB.', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1096, '1164295800', '16', '30', '23', '11', '2006', 'SL75', 'Mag Fil Fault', 'Machine', 'Technique', 'Remplacement des relais RLA et RLB dans le gantry a droite machine en bas.\r\nIl nous reste un relais d occase (semble correct) et un redresseur neuf.', '16', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1097, '1164721500', '14', '45', '28', '11', '2006', 'SL75', 'impossible de lancer le faisceau alors que visir est tout vert', 'Informatique', 'MC', 'Traitement du flash sans visir.\r\nNous n avons rien compris, apparament un probleme de taille du champ?', '15', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1098, '1160928000', '18', '00', '15', '10', '2006', 'SL25', 'Bending Coars', 'Machine', 'MC', 'Ca marche en X6, E4 jusque E12. Mais ca marche pas en X25, E15 jusque E24.\r\nThyristor du milieu qui a crame', '19', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1099, '1163660400', '08', '00', '16', '11', '2006', 'SL25', 'Bending Coarse', 'Machine', 'Technique', 'Remplacement du thyristor par Elekta', '11', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1100, '1164956400', '08', '00', '01', '12', '2006', 'Tomo1', 'Recoverable error Novembre 2006', 'Recoverable', 'Technique', '60 recoverable error en novembre 2006 (5 min par erreur = 5h)', '08', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(1101, '1165478400', '09', '00', '07', '12', '2006', 'Tomo1', 'Remplacement AFC', 'Unrecoverable', 'Physique', 'QC après une nuit de travail suivant la maintenance mensuelle (-> 7h).', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1102, '1163660400', '08', '00', '16', '11', '2006', 'SL25', 'Remplacement du Thyristor', 'Machine', 'GD', 'Remplacement du thyristor par Elekta', '11', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1103, '1164021600', '12', '20', '20', '11', '2006', 'SL25', 'Fine Pot X2', 'Machine', 'GD', 'Chargement d''une autre champ pour faire bouger X2 et recharge du champ à traiter.', '12', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1104, '1164713400', '12', '30', '28', '11', '2006', 'SL25', 'Out of tolerance', 'Machine', 'MC', 'Durant une radio, rechargement 2, 3 fois de la radio.', '12', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1105, '1165248000', '17', '00', '04', '12', '2006', 'SL25', 'Reset required', 'Machine', 'Technique', 'Plusieurs fois dans la journée, qui ne peut se résoudre que par la clé.\r\n=> Water Temp dans les suspend => remplacement des filtres par les plombiers.', '17', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1106, '1165474800', '08', '00', '07', '12', '2006', 'SL25', 'Pas de Visir', 'Machine', 'Physique', 'UPS du serveur complètement mort.\r\nMC arrivé en retard ... ;-)\r\nPassage en direct de l''alim.', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1107, '1166164200', '07', '30', '15', '12', '2006', 'SL25', 'water temp', 'Machine', 'GD', 'Remplacement des filtres par les plombiers.', '07', '35', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1108, '1166511600', '08', '00', '19', '12', '2006', 'SL25', 'PRF H.PWR et X25 ne sortent plus', 'Machine', 'Technique', 'Après la maintenance, réglage du 2 RI Ctrl puis erreur PRF ... seule solution trouvée avec Elekta: Backup restore... Puis aussi check des fibres.\r\nEn les inversant pour tester, nous avons dû oublier de les remettre correctement.\r\nAppel Elekta, check pourquoi les X25 ne sortent plus ...\r\nBref, panne idiote!\r\nDosi + QC + Dosi TBI', '19', '30', '07', '30', 'oui');
INSERT INTO `pannes` VALUES(1109, '1166695200', '11', '00', '21', '12', '2006', 'SL25', 'Problèmes des lames', 'Machine', 'MC', 'Réglage de la caméra', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1110, '1166799600', '16', '00', '22', '12', '2006', 'SL25', 'PRF & CHK (pas de X6 pas de X25)', 'Machine', 'Technique', 'Tests plusieurs fois.\r\nReboot complet puis test, tjrs rien.\r\nD''un coup OK dans toutes les énergies.', '16', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1111, '1167386400', '11', '00', '29', '12', '2006', 'SL25', 'Mfil Vmon', 'Machine', 'Physique', 'ByPass des Timers', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1112, '1167721200', '08', '00', '02', '01', '2007', 'SL25', 'Problème de température', 'Machine', 'GD', 'Remplacement des filtres par les plombiers.', '10', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1113, '1167992100', '11', '15', '05', '01', '2007', 'SL25', 'Thyratron & Magnétron Timer', 'Machine', 'GD', 'By pass des timers, vérif du water temp (33°).\r\nAppel des plombiers pour remplacement des filtres.', '11', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1114, '1165561200', '08', '00', '08', '12', '2006', 'SL75', 'Pas de Visir', 'Informatique', 'MC', 'UPS du serveur complètement mort.\r\nMC arrivé en retard ... ;-)\r\nPassage en direct de l''alim.', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1115, '1167386400', '11', '00', '29', '12', '2006', 'SL75', 'Touchguard', 'Machine', 'MC', 'Problème dans les "clips" en demi lune du porte plombs.', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1116, '1165563300', '08', '35', '08', '12', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Reboot All', '08', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1117, '1165585500', '14', '45', '08', '12', '2006', 'Tomo1', 'Claquage et machine out', 'Unrecoverable', 'Technique', 'Reboot All', '15', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1118, '1163334600', '13', '30', '12', '11', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'GD', 'Reboot All', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1119, '1165929600', '14', '20', '12', '12', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', '', 'Reboot All', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1120, '1166170800', '09', '20', '15', '12', '2006', 'Tomo1', 'Int déjà shutdown', 'Unrecoverable', 'GD', 'Reboot All', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1121, '1167210000', '10', '00', '27', '12', '2006', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Reboot All', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1122, '1168254000', '12', '00', '08', '01', '2007', 'Tomo1', 'Wait while rotating timing error', 'Recoverable', 'GD', 'Reboot All.\r\nTest d''un Warm Up et d''un DQA patient.', '12', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1123, '1168261200', '14', '00', '08', '01', '2007', 'Tomo1', 'Wait while rotating timing error', 'Recoverable', 'Technique', 'Rotation gantry sans air comprimé + Warm up et patient DQA.', '15', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1124, '1168265400', '15', '10', '08', '01', '2007', 'Tomo1', 'Log ...', 'Unrecoverable', 'GD', 'Reboot All', '15', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1125, '1167634800', '08', '00', '01', '01', '2007', 'Tomo1', 'Recoverable error Decembre 2006', 'Recoverable', 'Technique', 'Relance de la procedure', '08', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1126, '1168278600', '18', '50', '08', '01', '2007', 'Tomo1', 'Time out while waiting...', 'Recoverable', 'MC', '3 fois l erreur. fin du traitement OK\r\nWarm up', '19', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1127, '1168354200', '15', '50', '09', '01', '2007', 'Tomo1', 'Gantry sent back error...', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1128, '1168500600', '08', '30', '11', '01', '2007', 'Tomo1', 'Final overtravel error puts the occurences over the tolerence', 'Unrecoverable', 'GD', 'Pendant trait\r\nPendant DQA fin a 39 sec de la fin du trait donc ok pour la mesure.', '08', '35', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1129, '1169570700', '17', '45', '23', '01', '2007', 'Tomo1', 'gantry drive sent back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '17', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1130, '1168630800', '20', '40', '12', '01', '2007', 'Tomo1', 'Deplacement de la table toute seule. ', 'Machine', 'Physique', 'Avant scan\r\nEn longitudinal out. On arrete tout stop et start OK\r\n', '20', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1131, '1169796600', '08', '30', '26', '01', '2007', 'Tomo1', 'wait while ratating timing ', 'Recoverable', 'GD', 'Pendant trait  3 X\r\nReboot all\r\n\r\n\r\n', '08', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1132, '1170061800', '10', '10', '29', '01', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1133, '1170071100', '12', '45', '29', '01', '2007', 'Tomo1', 'Pas d image au scan', 'Unrecoverable', 'MC', 'Pendant scan\r\nReboot all', '12', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1134, '1170066600', '11', '30', '29', '01', '2007', 'Tomo1', 'Gantry send back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1135, '1170166800', '15', '20', '30', '01', '2007', 'Tomo1', 'gantry send back error', 'Unrecoverable', 'GD', 'Avant scan \r\nReboot all', '15', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1136, '1170171300', '16', '35', '30', '01', '2007', 'Tomo1', 'Gantry send back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '16', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1137, '1170236400', '10', '40', '31', '01', '2007', 'Tomo1', 'timming error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all 2 X', '10', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1138, '1170441000', '19', '30', '02', '02', '2007', 'Tomo1', 'gantry drive error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '19', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1139, '1170672900', '11', '55', '05', '02', '2007', 'Tomo1', 'rien ne se passe pas d envoi de donees au data server', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '12', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1140, '1170682800', '14', '40', '05', '02', '2007', 'Tomo1', 'Software shutdown', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '14', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1141, '1170749400', '09', '10', '06', '02', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '09', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1142, '1169559000', '14', '30', '23', '01', '2007', 'SL75', 'terminate 33 Ch 2 ', 'Machine', 'GD', 'Stop apres 5 top sur Ch1 et 3 Top sur Ch2. Dose rate a 307 au lieu des 246.\r\nRemplacement de la chambre par Elekta ainsi que le cable de la chambre dans la tete.\r\n', '17', '00', '10', '30', 'oui');
INSERT INTO `pannes` VALUES(1143, '1168434000', '14', '00', '10', '01', '2007', 'SL25', 'Lames MLC bloquees', 'Machine', 'Technique', '4 lames en vis a vis 2 par 2 sont bloquee.\r\nApres plusieurs essai via soft, demontage des moteurspuis remise en place manuelle.', '15', '15', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1144, '1168602900', '12', '55', '12', '01', '2007', 'Tomo1', 'PRF aand Chck', 'Machine', 'GD', 'Reboot all \r\nControl des 2 fibres optiques PFN, luminosite OK. Apres retest OK ', '12', '10', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1145, '1168868700', '14', '45', '15', '01', '2007', 'Tomo1', 'fine pot offset x2', 'Machine', 'MC', 'Tourner le colli avec le bouton de droite patient.', '15', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1146, '1168938900', '10', '15', '16', '01', '2007', 'SL25', 'lost leaf', 'Machine', 'MC', 'Reglage camera remplacement de l''ampoule', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1147, '1168940700', '10', '45', '16', '01', '2007', 'SL25', 'lost leaf', 'Machine', 'GD', 'Reglage camera', '10', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1148, '1169106600', '08', '50', '18', '01', '2007', 'SL25', 'Lost leaf', 'Machine', 'Technique', 'Reglage camera', '09', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1149, '1169045100', '15', '45', '17', '01', '2007', 'SL25', 'Lost leaf', 'Machine', 'Technique', 'reboot et reglage camera', '15', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1150, '1169112300', '10', '25', '18', '01', '2007', 'SL25', 'To wide or to naro en fonction electron ou photon', 'Machine', 'GD', 'Pour plusieurs fois dans la journee\r\n\r\nReglage camera', '10', '50', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1151, '1169457300', '10', '15', '22', '01', '2007', 'SL25', 'erreur transfert icom FX Link', 'Informatique', 'MC', 'terminate plusieurs fois     reboot visir      recharge du champ.      ', '10', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1152, '1169804700', '10', '45', '26', '01', '2007', 'SL25', 'MLC link plantage RTD', 'Informatique', 'GD', 'Reboot RTD', '11', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1153, '1170140400', '08', '00', '30', '01', '2007', 'SL25', 'remplacement du miroir', 'Machine', 'Technique', 'Par Elekta', '17', '00', '09', '00', 'oui');
INSERT INTO `pannes` VALUES(1154, '1170249300', '14', '15', '31', '01', '2007', 'SL25', 'Probleme de lames', 'Machine', 'MC', 'Reglage camera', '14', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1155, '1170921600', '09', '00', '08', '02', '2007', 'Tomo1', 'erreur recoverable de janvier', 'Recoverable', 'GD', '105 x 5 minutes d''arret', '17', '45', '08', '45', 'oui');
INSERT INTO `pannes` VALUES(1156, '1170950700', '17', '05', '08', '02', '2007', 'Tomo1', 'gantry drive error', 'Unrecoverable', 'MC', 'Pendant Scan\r\nReboot all', '17', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1157, '1171548600', '15', '10', '15', '02', '2007', 'Tomo1', 'timming trigger error', 'Unrecoverable', 'MC', 'Pendant trait\r\nReboot all apres 3 recoverable', '15', '30', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1158, '1171554000', '16', '40', '15', '02', '2007', 'Tomo1', 'Pas de reponce apres scan', 'Recoverable', 'MC', 'Apres scan\r\nReboot all', '16', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1159, '1171645200', '18', '00', '16', '02', '2007', 'Tomo1', 'gantry error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1160, '1171521000', '07', '30', '15', '02', '2007', 'SL75', 'pas assez de pression', 'Machine', 'MC', 'Trouver la pompe puis pomper.', '08', '05', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1161, '1170770400', '15', '00', '06', '02', '2007', 'SL25', 'Pbme avec les E20.... 2T error', 'Machine', 'MC', 'impossible de faire plus de 16 tops', '15', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1162, '1170834300', '08', '45', '07', '02', '2007', 'SL25', 'Focus 2', 'Machine', 'GD', 'Cable au niveau du bornier casse  ( num 19). Ce cable se trouve a l extremite du gantry (apres les bobines jaunes) dans l armature (avant la partie ou les cables s enroules).\r\nUtilisation d un sucre pour refaire la connection.\r\nPlus Dosi OK', '09', '45', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1163, '1170940800', '14', '20', '08', '02', '2007', 'SL25', 'Room doors 1', 'Machine', 'Technique', 'Probleme de faux contact dans le bornier ( a cote des stabilisateurs)', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1164, '1170944400', '15', '20', '08', '02', '2007', 'SL25', 'tentative de reglage E20', 'Machine', 'Technique', 'Par telephone avec Elekta. Ca n''est pas simple E18 OK pour le patient. Elekta viendra plus tard pour regler le probleme (sans doute suite au probleme de Focus 2). Il faut re regler les hautes energies Electrons.\r\n', '15', '50', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1165, '1171977000', '14', '10', '20', '02', '2007', 'Tomo1', 'Gantry drive sent back error', 'Unrecoverable', 'GD', 'Avant scan \r\nReboot All', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1166, '1172041200', '08', '00', '21', '02', '2007', 'Tomo1', 'Impossible de se logger dans le prog de trait', 'Unrecoverable', 'GD', 'Reboot du Cluster. Le data server s etait plante lors du bacup.', '09', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1167, '1172052600', '11', '10', '21', '02', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot All', '11', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1168, '1172138400', '11', '00', '22', '02', '2007', 'Tomo1', 'Wait ou Shutdown', 'Unrecoverable', 'MC', 'Pendant trait\r\nWait ne donnant rien, reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1169, '1172142000', '12', '00', '22', '02', '2007', 'Tomo1', 'SSM', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1170, '1172160000', '17', '00', '22', '02', '2007', 'Tomo1', '4x recoverable', 'Recoverable', 'MC', 'Pendant trait\r\nReboot All apres traitement.', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1171, '1172217600', '09', '00', '23', '02', '2007', 'Tomo1', 'Electrometre overloaded', 'Informatique', 'Physique', 'Remplacement par le Janus et PTW. Car Keytleigh enlever trop de bruit de fond.\r\nBcp de retard.\r\n\r\n', '10', '45', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(1172, '1172507400', '17', '30', '26', '02', '2007', 'Tomo1', 'gantry sent back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot All', '17', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1173, '1172232000', '13', '00', '23', '02', '2007', 'Tomo1', 'Timing trigger error', 'Unrecoverable', 'MC', 'Remplacement du pulse shapper, puis tuning de l AFC durant le week end. (nuit de dimanche).', '20', '00', '07', '00', 'oui');
INSERT INTO `pannes` VALUES(1174, '1172568600', '10', '30', '27', '02', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'GD', 'Avant scan \r\nReboot All', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1175, '1172665500', '13', '25', '28', '02', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '13', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1176, '1172653200', '10', '00', '28', '02', '2007', 'Tomo1', 'erreur recoverable pour le moi de fevrier', 'Recoverable', 'GD', '57 x 5 minute ce qui donne un total de 4h45', '14', '45', '04', '45', 'oui');
INSERT INTO `pannes` VALUES(1177, '1172834400', '12', '20', '02', '03', '2007', 'Tomo1', 'software not ready', 'Unrecoverable', 'MC', 'Pendant trait\r\nReboot all\r\nFin du traitement', '12', '25', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1178, '1173083400', '09', '30', '05', '03', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '09', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1179, '1174403700', '16', '15', '20', '03', '2007', 'SL25', 'le ^plateau n est pas reconnu. Visir ne reconnait pas le bon numero de plateau.', 'Informatique', 'GD', 'Sortir et rerentrer du patient dans visir et du RTD, recharger le champ OK', '16', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1180, '1172577000', '12', '50', '27', '02', '2007', 'SL25', 'Fx Link', 'Informatique', 'GD', 'Visir et RTD ne communique plus. Sortir du patient dans visir et sortir au RTD. Recharge du RTD et du patient dans visir. OK', '12', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1181, '1172758800', '15', '20', '01', '03', '2007', 'SL25', 'Plantage VISIR', 'Informatique', 'Technique', 'Reboot serveur et des PC visir.\r\nTest programme de Max (pas bien)', '15', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1182, '1172758800', '15', '20', '01', '03', '2007', 'SL75', 'Plantage serveur VISIR', 'Informatique', 'Technique', 'Reboot serveur Visir et tous les PC visir.\r\nApres test de prog de Max  ', '15', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1183, '1173091800', '11', '50', '05', '03', '2007', 'Tomo1', 'Water flow', 'Unrecoverable', 'Technique', 'Reglage du linac Flow', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1184, '1173179100', '12', '05', '06', '03', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot All', '12', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1185, '1173117300', '18', '55', '05', '03', '2007', 'Tomo1', 'Gantry Sent back error', 'Unrecoverable', 'MC', 'Reboot All', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1186, '1173170700', '09', '45', '06', '03', '2007', 'Tomo1', 'Water flow ', 'Unrecoverable', 'GD', 'Avant Scan\r\nReboot all', '09', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1187, '1173179100', '12', '05', '06', '03', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot All', '12', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1188, '1173254400', '09', '00', '07', '03', '2007', 'Tomo1', 'dose tres basse a la dosi', 'Machine', 'Physique', 'apres dosi\r\nAppel tomo ... changement de Magnetron par la suite.', '10', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1189, '1173340800', '09', '00', '08', '03', '2007', 'Tomo1', 'Magnetron', 'Unrecoverable', 'Technique', 'Suite à une chute de dose de 10%, remplacement du magnétron dans la nuit.\r\nProblème pour déterminer les erreurs sur les chambres de tomo ou les nôtres.\r\nRecherche de la source du problème de "non-alerte" si sous-dosage...\r\nRemplacement de la cible tant qu''on y est.\r\n', '17', '00', '08', '00', 'oui');
INSERT INTO `pannes` VALUES(1190, '1173706200', '14', '30', '12', '03', '2007', 'Tomo1', 'Gantry sent back error + pompe ne redémarre pas', 'Unrecoverable', 'Technique', 'Graissage plus ajustement du Linac Window', '15', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1191, '1173791400', '14', '10', '13', '03', '2007', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Reboot All', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1192, '1173968700', '15', '25', '15', '03', '2007', 'Tomo1', 'Gantry sent back error plus SSM', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all 2 fois', '15', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1193, '1174053600', '15', '00', '16', '03', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1194, '1173698400', '12', '20', '12', '03', '2007', 'SL25', 'Fine pot X2', 'Machine', 'GD', 'Recharge d un autre champ, pas bon. \r\nEn salle jouer avec l ouverture des machoires, OK, et recharge du champ. OK', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1195, '1173890700', '17', '45', '14', '03', '2007', 'SL25', 'Pb de laison entre visir et RTD', 'Informatique', 'GD', 'Sortir du patient et recharger le champ', '17', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1196, '1174059600', '16', '40', '16', '03', '2007', 'SL25', 'Fine pot offset X2', 'Machine', 'GD', 'Jouer sur pot X2 du colli; de plus en plus difficile a enlever.', '16', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1197, '1174383000', '10', '30', '20', '03', '2007', 'SL25', 'Fine pot offset X2', 'Machine', 'GD', 'Mettre un autre champ pour faire bouge la machoire X2 et remettre le champ. OK', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1198, '1174404600', '16', '30', '20', '03', '2007', 'SL25', 'Room doors 1', 'Machine', 'Technique', 'Apres avoir checke les faux contacts dans les cables. Il s agissait du reflet d un porte K7 dans le couloir sur les detecteurs de preference.', '16', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1199, '1174660500', '15', '35', '23', '03', '2007', 'Tomo1', 'gantry sent back error', 'Unrecoverable', 'GD', 'Reboot all', '15', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1200, '1175177700', '16', '15', '29', '03', '2007', 'Tomo1', 'Machine tres lente', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '16', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1201, '1175538000', '20', '20', '02', '04', '2007', 'Tomo1', '3 scans consecutifs qui plantent', 'Unrecoverable', 'MC', 'pendant scan\r\nReboot all', '20', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1202, '1175670000', '09', '00', '04', '04', '2007', 'Tomo1', 'Gantry sent back error', 'Unrecoverable', 'GD', 'avant scan\r\nReboot all', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1203, '1175756400', '09', '00', '05', '04', '2007', 'Tomo1', 'Corba server error', 'Unrecoverable', 'GD', 'Avant scan \r\nApres reboot du cluster, le Check node montre qu il n y as que le tomoCL1 Good. Pas possible de pingger le tomodata. Le switch est mort remplacement de celui ci par celui de recherche mais ce ne sont pas les meme, pas compatible. remplacement du switch par tomo.', '16', '00', '07', '00', 'oui');
INSERT INTO `pannes` VALUES(1204, '1175857200', '13', '00', '06', '04', '2007', 'Tomo1', '4 x gantry rotation error', 'Recoverable', 'GD', 'Pendant trait \r\nReboot all', '13', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1205, '1175860800', '14', '00', '06', '04', '2007', 'Tomo1', 'Corba error', 'Unrecoverable', 'GD', 'Avant scan\r\nPerte de liaison avec le server.\r\nPing du dataserver impossible avec l operateur station. Changement de position du cable reseau1 sur le switch du cluster', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1206, '1176213900', '16', '05', '10', '04', '2007', 'Tomo1', 'corba error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1207, '1176220800', '18', '00', '10', '04', '2007', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '08', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1208, '1176192000', '10', '00', '10', '04', '2007', 'Tomo1', 'recovaerable error mars 2007', 'Recoverable', 'MC', '32X error recoreverable', '12', '40', '02', '40', 'oui');
INSERT INTO `pannes` VALUES(1209, '1176460200', '12', '30', '13', '04', '2007', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Probleme de redemarrage\r\nPas de pompe, donc reglage du flowmeter.\r\n', '12', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1210, '1176479700', '17', '55', '13', '04', '2007', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'Avant scan \r\nReboot all', '10', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1211, '1176729600', '15', '20', '16', '04', '2007', 'Tomo1', 'Gantry drive error', 'Unrecoverable', 'MC', 'avant scan\r\nReboot all', '15', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1212, '1176986100', '14', '35', '19', '04', '2007', 'Tomo1', 'The couch missed his position', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '14', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1213, '1177006500', '20', '15', '19', '04', '2007', 'Tomo1', 'Communication error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot all', '20', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1214, '1177071600', '14', '20', '20', '04', '2007', 'Tomo1', 'software freezed', 'Unrecoverable', 'MC', 'Apres scan\r\nreboot all', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1215, '1177311600', '09', '00', '23', '04', '2007', 'Tomo1', 'Corba server error', 'Unrecoverable', 'MC', 'Pendant trait\r\nreboot all et check network et dosi matinale', '10', '20', '01', '20', 'oui');
INSERT INTO `pannes` VALUES(1216, '1177319700', '11', '15', '23', '04', '2007', 'Tomo1', 'Corba server error', 'Unrecoverable', 'MC', 'Avant scan\r\nReboot All', '11', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1217, '1177321200', '11', '40', '23', '04', '2007', 'Tomo1', 'Corba server error', 'Unrecoverable', 'MC', 'Reboot all, check server...', '13', '15', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1218, '1177419000', '14', '50', '24', '04', '2007', 'Tomo1', 'Gun board logic problem error', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1219, '1177426800', '17', '00', '24', '04', '2007', 'Tomo1', 'Gun board logic problem error', 'Unrecoverable', 'GD', 'Pendant trait\r\nReboot all\r\nAttendre 15 minutes redemarrer et ok', '17', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1220, '1177488000', '10', '00', '25', '04', '2007', 'Tomo1', 'Pb de connection STC', 'Unrecoverable', 'Physique', 'eteindre la machine ,attendre 15 min er redemarrer.', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1221, '1177570800', '09', '00', '26', '04', '2007', 'Tomo1', 'Pb d interruption faisceau pendant la dosi et Pb STC', 'Unrecoverable', 'Physique', 'Relance plusieur fois , eteindre, attendre 15 min et reboot', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1222, '1177587000', '13', '30', '26', '04', '2007', 'Tomo1', 'Pb de reboot STC', 'Unrecoverable', 'GD', 'eteindre, attendre 15 min puis reboot. Fait plusieurs fois avant que ce ne soit OK.', '15', '00', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1223, '1177657200', '09', '00', '27', '04', '2007', 'Tomo1', 'Pb de connection STC', 'Unrecoverable', 'Technique', 'Remplacement du bloc STC et de son alim par Tomo.', '15', '30', '06', '30', 'oui');
INSERT INTO `pannes` VALUES(1224, '1177916400', '09', '00', '30', '04', '2007', 'Tomo1', 'Final leaf activational error puts the occurences over the tolerance', 'Unrecoverable', 'GD', 'Graissage du gantry, pas ca. Appel tomo remplacement d une valve a un lame. Dosi', '16', '30', '07', '30', 'oui');
INSERT INTO `pannes` VALUES(1225, '1178092800', '10', '00', '02', '05', '2007', 'Tomo1', 'recoverable avril 2007', 'Recoverable', 'GD', '39 x 5 min donnent 195 min', '13', '15', '03', '15', 'oui');
INSERT INTO `pannes` VALUES(1226, '1174640400', '10', '00', '23', '03', '2007', 'SL25', 'Fine pot X2 plus message erreur sur SL25 croix rouge', 'Informatique', 'GD', 'Reboot all', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1227, '1174888800', '08', '00', '26', '03', '2007', 'SL25', 'Pb E20 et E22 remplacement du bending', 'Machine', 'Technique', 'Durant toute la semaine, remplacement du bending, d''une pompe a vide sur le bras, remplacement d une cartepour le MLC readout 10 V ref. Tjrs pb avec les E20 et E22.', '', '', '24', '00', 'oui');
INSERT INTO `pannes` VALUES(1228, '1174888800', '08', '00', '26', '03', '2007', 'SL25', 'Remplacement bending', 'Machine', 'Technique', 'suite des 24 premier heure, il en reste 3H', '', '', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1229, '1176193800', '10', '30', '10', '04', '2007', 'SL25', 'Fine pot offset X2', 'Machine', 'GD', 'Changement d un champ d un autre patient.\r\nLong a enlever.', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1230, '1176445800', '08', '30', '13', '04', '2007', 'SL25', 'Probleme de water temp', 'Machine', 'MC', 'montee de la temperature a 38 degres. et descente a - 30 degres.\r\nreboot de tout apparition plusieurs fois alors que les debits sont corrects.', '09', '45', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1231, '1176457500', '11', '45', '13', '04', '2007', 'SL25', 'Water temp,  m Fil Vmon', 'Machine', 'MC', 'on pense a un probleme sur les capteurs de temperature.', '13', '00', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1232, '1176479700', '17', '55', '13', '04', '2007', 'SL25', 'too many leaves', 'Machine', 'MC', 'enlever le plateau a clou.\r\nle remttre Ok', '18', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1233, '1176480600', '18', '10', '13', '04', '2007', 'SL25', 'Water temp', 'Machine', 'MC', 'By pass des timers', '18', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1234, '1176714000', '11', '00', '16', '04', '2007', 'SL25', 'reset request Water temp', 'Machine', 'GD', 'delogger du rtd aller en service faire le reset sur le rtd, by pass des timers et on repart.', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1235, '1176730200', '15', '30', '16', '04', '2007', 'SL25', 'Fine pot offset X2', 'Machine', 'GD', 'selectionner un autre champ qui fasse bouger la machoire X2', '15', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1236, '1176810900', '13', '55', '17', '04', '2007', 'SL25', 'Water temp ', 'Machine', 'GD', '- 66 degres \r\nBy pass des timers.', '14', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1237, '1176905700', '16', '15', '18', '04', '2007', 'SL25', 'wat"r temp', 'Machine', 'GD', 'by pass des timers', '16', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1238, '1176966000', '09', '00', '19', '04', '2007', 'SL25', 'Water temp', 'Machine', 'GD', 'By pass des timers', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1239, '1177049700', '08', '15', '20', '04', '2007', 'SL25', 'water temp', 'Machine', 'GD', 'By pass des timers, 3 redemarrages.', '08', '40', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1240, '1177484400', '09', '00', '25', '04', '2007', 'SL25', 'Plus de mouvement MLC, signal supply', 'Machine', 'GD', '80laames en collision. Demaontage des morteurs, mettre les lames dans une meilleur position a l aide d un tourne vis. Un moteur HS et une vis tordue. Aide d Elekta pour le remplacement de la vis et la remise en route. \r\nPour le signal supply, un fusible dans l alimentation des lames grille ( a l arriere du gantry cote gauche plaque avec deux transfos, deux fusibles et quatre condos).', '13', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1241, '1177572600', '09', '30', '26', '04', '2007', 'SL25', 'Pb de MLC ', 'Machine', 'GD', 'collision entre les lames.\r\nOn debloque les lames en enlevent les moteurs. Patience, patience et douceur....', '11', '00', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1242, '1177656300', '08', '45', '27', '04', '2007', 'SL25', 'Water temp', 'Machine', 'GD', 'By pass des timers.', '08', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1243, '1177661700', '10', '15', '27', '04', '2007', 'SL25', 'Water temp', 'Machine', 'GD', 'By pass des timers', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1244, '1177666800', '11', '40', '27', '04', '2007', 'SL25', 'Water temp', 'Machine', 'GD', 'By pass des timers', '11', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1245, '1178186400', '12', '00', '03', '05', '2007', 'Tomo1', 'Low dose Pas possible de regle la dose via PFN', 'Unrecoverable', 'Technique', 'Reglage PFN par les Physicien, rienb ne change (passage de 4.08 a 4.11). Check par tomo du gunboard, une resistance est HS (100 ohms de puissance). remplacee par tomo (mais a du venir du Luxembourg.', '20', '00', '08', '00', 'oui');
INSERT INTO `pannes` VALUES(1246, '1178550900', '17', '15', '07', '05', '2007', 'Tomo1', 'DoseRate 0', 'Unrecoverable', 'MC', 'Attente du remplacement du Gun Board.\r\nRésistance explosée.', '20', '00', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1247, '1178532600', '12', '10', '07', '05', '2007', 'Tomo1', 'Reboot après shutdown', 'Unrecoverable', 'MC', 'Reboot', '12', '15', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1248, '1178542200', '14', '50', '07', '05', '2007', 'Tomo1', 'Gun board error', 'Unrecoverable', 'MC', 'Reboot All', '14', '55', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1249, '1178531400', '11', '50', '07', '05', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Reboot All', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1250, '1178719200', '16', '00', '09', '05', '2007', 'Tomo1', 'Plus de communication entre Operator et machine', 'Unrecoverable', 'GD', 'Reboot All', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1251, '1178789400', '11', '30', '10', '05', '2007', 'Tomo1', '2 x error recoverable', 'Unrecoverable', 'GD', 'Reboot All', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1252, '1179837300', '14', '35', '22', '05', '2007', 'Tomo1', 'Couch cant stop', 'Unrecoverable', 'MC', 'Reboot All', '14', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1253, '1180081200', '10', '20', '25', '05', '2007', 'Tomo1', 'Couch cant stop', 'Unrecoverable', 'MC', 'Reboot All', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1254, '1179144300', '14', '05', '14', '05', '2007', 'SL25', 'Fine pot offset X2', 'Machine', 'MC', 'tourner gantry de +180 a -180', '14', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1255, '1179325800', '16', '30', '16', '05', '2007', 'SL25', 'diaphragme X2', 'Machine', 'MC', '\r\nprobleme backup place a 0 cm, mais la relecture est a -0.01 cm...\r\nSolution, mise du X2 a +1cm', '16', '55', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1256, '1179730500', '08', '55', '21', '05', '2007', 'SL25', 'fine pot offset X2', 'Machine', 'MC', 'Jeu sur X2 en mode service', '09', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1257, '1179815400', '08', '30', '22', '05', '2007', 'SL25', 'fine pot offset X2', 'Machine', 'MC', 'Jeu en mode service + tourner colli', '08', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1258, '1181052000', '16', '00', '05', '06', '2007', 'SL25', 'Fine pot X2 offset', 'Machine', 'GD', 'rotation colli', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1259, '1181214900', '13', '15', '07', '06', '2007', 'SL25', 'Pb de collision entre 4 paires de lames', 'Machine', 'GD', 'debloquage des lames en demontent les moteurs', '14', '15', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1260, '1181289600', '10', '00', '08', '06', '2007', 'SL25', 'Fine pot offset X2', 'Machine', 'GD', 'Charger un champ plus grand et revenir au champ du traitement', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1261, '1182156600', '10', '50', '18', '06', '2007', 'SL25', 'fine pot offset X2', 'Machine', 'MC', 'Chargement autre champ.\r\nRemplacement du potentiometre (bleu) de la machoire X2 a la maintenance suivante.', '10', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1262, '1182931200', '10', '00', '27', '06', '2007', 'SL25', 'Probleme de lames', 'Machine', 'MC', 'reglage de l''ouverture de la camera', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1263, '1183129200', '17', '00', '29', '06', '2007', 'SL25', 'Pb de lames, vise de support de banc de lames perdue', 'Machine', 'Technique', 'On a retrouve d ou venait la vise qui etait tombe du SL25. Banc de lames devise, donc on replace la vise et reglage de la camera.\r\nFallait le trouve, sans le probleme de lames impossible de trouver l endroit.', '17', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1264, '1184162400', '16', '00', '11', '07', '2007', 'SL25', 'GTO o/load thyratron en fin de vie', 'Machine', 'GD', 'Claquement dans la HT (magnetron thyratron) arc electrique.\r\nSe mettre en mode service et interlock 8.\r\nLancer du X6 et faire varier le dose rate ( sur la page du gun) 20, 100, 300, 400. et voir si on a du faisceau.\r\ndiminuer la tension de charge du thyratron (directement sur le  transfo T2) passe de 5.6V a 5.1V (attention limite entre 5.2 et 6.5).\r\nOk on a eu du faisceau mais seulement durant 1H30.\r\nStop on attend un nouveau thyratron. \r\nEncore des problemes avec le nouveau thyratron. remplacement de la fibre optique (dans le groupede 3 celle du milieu).\r\nEt rodage du thyratron, 1H le vendredi soir et 1h30 le dimanche marin. OK \r\n\r\nPanne de plus de 2 jours (1 jour d attente pour recevoir le thyratron d holande).', '18', '00', '15', '00', 'oui');
INSERT INTO `pannes` VALUES(1265, '1184742000', '09', '00', '18', '07', '2007', 'SL25', '2T en E18 a un angle de 59 degres', 'Machine', 'GD', 'apres les traitements, reglage du 2T bal de 20.33 a 20.75\r\nplus Dosi OK', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1266, '1149166800', '15', '00', '01', '06', '2006', 'Tomo1', 'couch', 'Unrecoverable', 'GD', 'apres trait\r\n\r\n2x reboot all', '15', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1267, '1180911600', '01', '00', '04', '06', '2007', 'Tomo1', 'total des erreur recoverable mai 2007', 'Recoverable', 'GD', '29 x 5 min donnent 2H25', '03', '25', '02', '25', 'oui');
INSERT INTO `pannes` VALUES(1268, '1181049600', '15', '20', '05', '06', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '16', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1269, '1181652000', '14', '40', '12', '06', '2007', 'Tomo1', 'Blocage PCP en salle  ', 'Unrecoverable', 'Physique', 'Reboot all', '14', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1270, '1184247000', '15', '30', '12', '07', '2007', 'Tomo1', 'Couch driver error', 'Unrecoverable', 'MC', 'Reboot all a la fin du traitement', '15', '35', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1271, '1185024300', '15', '25', '21', '07', '2007', 'Tomo1', 'Windows reboot tout seul', 'Unrecoverable', 'MC', 'en fin de traitement ', '15', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1272, '1182517200', '15', '00', '22', '06', '2007', 'Tomo1', '3 x trigger timer', 'Recoverable', 'GD', 'Apres scan\r\nReboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1273, '1183723200', '14', '00', '06', '07', '2007', 'Tomo1', '3 x interrupt recoverable mlc couch', 'Recoverable', 'GD', 'Pendant trait\r\nReboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1274, '1183731600', '16', '20', '06', '07', '2007', 'Tomo1', '5 x interrupt MLC trigger timing et OBC', 'Recoverable', 'GD', 'Reboot all 1x ensuite 3 x sans reboot', '16', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1275, '1184318700', '11', '25', '13', '07', '2007', 'Tomo1', 'haeter to high, haeter to short', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '11', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1276, '1184576700', '11', '05', '16', '07', '2007', 'Tomo1', 'Haeter to high', 'Unrecoverable', 'Physique', 'Reboot all', '11', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1277, '1184851800', '15', '30', '19', '07', '2007', 'Tomo1', 'Couch unrecoverable', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1278, '1184852700', '15', '45', '19', '07', '2007', 'Tomo1', 'incorrect linac ssm machine state', 'Unrecoverable', 'GD', 'Avant scan\r\nReboot all', '15', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1279, '1185145200', '01', '00', '23', '07', '2007', 'Tomo1', 'erreur recoverable de juin 2007', 'Recoverable', 'Technique', '32 x 5 min donnent 2H40', '03', '40', '02', '40', 'oui');
INSERT INTO `pannes` VALUES(1280, '1185285300', '15', '55', '24', '07', '2007', 'Tomo1', 'Couch driver error', 'Unrecoverable', 'MC', 'Reboot a la fin du trait', '16', '00', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1281, '1185793200', '13', '00', '30', '07', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1282, '1185801300', '15', '15', '30', '07', '2007', 'Tomo1', 'Heater to high, heater to short', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '15', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1283, '1186009200', '01', '00', '02', '08', '2007', 'Tomo1', 'Total des recoverable de juillet 2007', 'Recoverable', 'GD', '57 x 5 donnent 4H45', '05', '45', '04', '45', 'oui');
INSERT INTO `pannes` VALUES(1284, '1185953400', '09', '30', '01', '08', '2007', 'SL25', 'Leaf Y1 too narrow', 'Machine', 'MC', 'reglage diaphragme camera', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1285, '1178533200', '12', '20', '07', '05', '2007', 'SL75', 'message mouvement sur ecran', 'Machine', 'GD', 'Touchgard du colli qui ne suporte pas son poid donc donne un touchgard, le replacer.', '12', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1286, '1182436800', '16', '40', '21', '06', '2007', 'SL75', 'plus de hauteur table', 'Machine', 'GD', 'Deconnection de la table. Gros connecteur sur le sol au niveau de la collone.', '16', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1287, '1186140600', '13', '30', '03', '08', '2007', 'Tomo1', 'Systeme out', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all plusieurs fois, impossible de se logger dans le soft. Impossible de pinger le DRS. Apres plusieurs reboot OK', '15', '00', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1288, '1186389000', '10', '30', '06', '08', '2007', 'Tomo1', 'Couch error', 'Unrecoverable', 'MC', 'Avant scan \r\nReboot all', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1289, '1186402200', '14', '10', '06', '08', '2007', 'Tomo1', 'Couch error', 'Unrecoverable', 'MC', 'Pendant trait\r\nEn fin de traitement \r\nReboot all', '14', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1290, '1186483500', '12', '45', '07', '08', '2007', 'Tomo1', 'Reboo t tomo??? pas vu l''erreur', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '12', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1291, '1186567800', '12', '10', '08', '08', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1292, '1186662600', '14', '30', '09', '08', '2007', 'Tomo1', 'PSU shutdown', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1293, '1186736400', '11', '00', '10', '08', '2007', 'Tomo1', 'interlock is detected 5 fois', 'Recoverable', 'Technique', 'Test des connections des arrets de porte, urgence, tout semble ok?\r\nDQA de patient OK go to treat.', '11', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1294, '1186742700', '12', '45', '10', '08', '2007', 'Tomo1', 'Timing trigger', 'Unrecoverable', 'GD', 'Apres trait\r\nReboot all', '12', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1295, '1186990800', '09', '40', '13', '08', '2007', 'Tomo1', 'Couch drive error', 'Unrecoverable', 'MC', 'Apres scan\r\nReboot all', '09', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1296, '1187021400', '18', '10', '13', '08', '2007', 'Tomo1', 'MLC 3x', 'Recoverable', 'GD', 'Reboot all', '18', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1297, '1187247600', '09', '00', '16', '08', '2007', 'Tomo1', 'MLC Leaf positionning', 'Recoverable', 'MC', 'Augmentation de la pression d\\''air comprimé dans la machine (près RLC) de 58 => 63/64', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1298, '1187593200', '09', '00', '20', '08', '2007', 'Tomo1', 'Problème de lames', 'Unrecoverable', 'Physique', 'Reboot all', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1299, '1187679600', '09', '00', '21', '08', '2007', 'Tomo1', '4x MLC', 'Recoverable', 'GD', 'Réglage de la pression (au niveau du MLC)', '10', '40', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1300, '1187777400', '12', '10', '22', '08', '2007', 'Tomo1', '???', 'Unrecoverable', 'GD', 'Reboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1301, '1187863800', '12', '10', '23', '08', '2007', 'Tomo1', '3x Erreur MLC overtravel', 'Recoverable', 'GD', 'Reboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1302, '1187866200', '12', '50', '23', '08', '2007', 'Tomo1', 'couch', 'Unrecoverable', 'GD', 'Reboot all', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1303, '1188198000', '09', '00', '27', '08', '2007', 'Tomo1', 'Erreur Overtravel sur chaque patient', 'Recoverable', 'MC', '(Avec Tomo)\r\nRemplacement de la carte optocoupleur du MLC\r\n', '18', '00', '09', '00', 'oui');
INSERT INTO `pannes` VALUES(1304, '1188291600', '11', '00', '28', '08', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'Technique', 'Reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1305, '1188561000', '13', '50', '31', '08', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'GD', 'Reboot all', '14', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1306, '1188807600', '10', '20', '03', '09', '2007', 'Tomo1', 'Couch driver error', 'Unrecoverable', 'MC', 'Reboot all', '10', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1307, '1189071000', '11', '30', '06', '09', '2007', 'Tomo1', 'Pas de Led verte sur status console', 'Unrecoverable', 'MC', 'Après bcp de recherches, il s''agirait du cable rouge connecté au contacteur (pour les door interlock) => reconnecté, reboot => OK', '14', '15', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1308, '1188993600', '14', '00', '05', '09', '2007', 'SL75', 'Vis perdue système affichage de l''angle du Gantry', 'Machine', 'MC', 'Remise en place\r\nQC avec Phys (JMD)\r\n=> -90 +90 -180 +270 avec Papier millimétré', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1309, '1187330400', '08', '00', '17', '08', '2007', 'SL25', 'Erreur lames', 'Machine', 'MC', 'Réglage caméra MLC + jeu avec différentes tailles de champ', '08', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1310, '1187607600', '13', '00', '20', '08', '2007', 'SL25', 'Room door 1', 'Machine', 'GD', 'Détecteur de présence en bout de chicane qui réagit sur ???? Après l''avoir bougé, tout est OK', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1311, '1187870400', '14', '00', '23', '08', '2007', 'SL25', 'Gantry à 180° (table assez proche du colli) problème de dose rate (trop faible)', 'Machine', 'GD', 'Après plusieurs test sans la patiente, on a pu traiter la patiente. (Visiblement, le fait qu''on aie du wedge joue un grand role)', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1312, '1188280800', '08', '00', '28', '08', '2007', 'SL25', 'Plus de réseau informatique ', 'Informatique', 'GD', 'Suite à une boucle dans un switch, tous les switchs de la baie de simulation ont planté jusqu''à la passerelle .195\r\n=> plus de réseau\r\nsolution: reboot des switchs', '08', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1313, '1188925200', '19', '00', '04', '09', '2007', 'SL25', 'Gantry bloqué', 'Machine', 'MC', 'Alors que le reste des mouvements (table, colli) fonctionne.\r\nTourner le gantry manuellement', '20', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1314, '1186308000', '12', '00', '05', '08', '2007', 'SL25', 'Machoires et lames bloquées', 'Machine', 'Technique', 'Redémarrage SL25 => aucun résultat\r\nRéglage caméra (ouverture diaphragme) => OK\r\nTest 40x40 => 3x3 => 25x25 => OK ', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1315, '1189427100', '14', '25', '10', '09', '2007', 'SL25', 'Lames bloquées', 'Machine', '', 'Réglage diaphragme', '14', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1316, '1189431000', '15', '30', '10', '09', '2007', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Réglage diaphragme', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1317, '1189497600', '10', '00', '11', '09', '2007', 'SL25', 'Lames bloquées', 'Machine', 'Technique', 'Réglage diaphragme', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1318, '1189428000', '14', '40', '10', '09', '2007', 'Tomo1', 'Couch', 'Unrecoverable', 'MC', 'Reboot all (juste après traitment)', '14', '50', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1319, '1189587600', '11', '00', '12', '09', '2007', 'Tomo1', 'Rotating Timing Trigger Error', 'Recoverable', 'MC', 'Excessive Arching \r\n=> Sweeping du Magnétron\r\n=> Augmentation de la tension de l''AFC', '14', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1320, '1189766100', '12', '35', '14', '09', '2007', 'Tomo1', 'Unrecoverable avant scan', 'Unrecoverable', 'MC', 'Reboot all', '12', '40', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1321, '1189667700', '09', '15', '13', '09', '2007', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Réglage  caméra', '09', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1322, '1190098800', '09', '00', '18', '09', '2007', 'Tomo1', 'Dose trop basse DQA', 'Unrecoverable', 'Physique', 'Check en static => ok', '10', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1323, '1189667700', '09', '15', '13', '09', '2007', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Réglage Caméra', '09', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1324, '1190098800', '09', '00', '18', '09', '2007', 'SL25', 'Problèmes avec les grands champs. Impossible de charger un champ 40*40. Problème de détection  de lames.', 'Machine', 'Technique', 'Pas d''électrons de la journée.\r\nElekta doit remplacer le diaphragme de la caméra.\r\n(remplacement du diaphragme effectué le 21/09/07)', '10', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1325, '1190271600', '09', '00', '20', '09', '2007', 'Tomo1', 'Data Server Hors Service', 'Informatique', 'Technique', 'Remplacement du Data Server par Tomo.', '19', '00', '10', '00', 'oui');
INSERT INTO `pannes` VALUES(1326, '1190286000', '13', '00', '20', '09', '2007', 'SL25', 'Problèmes avec les grands champs. Impossible de charger un champ 40*40. Problème de détection  de lames.', 'Machine', 'Technique', 'Remplacement diaphragme et miroir', '19', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1327, '1190625300', '11', '15', '24', '09', '2007', 'Tomo1', 'Jaw error pendant scan', 'Unrecoverable', '', 'reboot all', '11', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1328, '1190725200', '15', '00', '25', '09', '2007', 'Tomo1', 'Couch drive error', 'Unrecoverable', 'MC', 'Reboot', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1329, '1190879400', '09', '50', '27', '09', '2007', 'Tomo1', 'Couch drive send back error (après traitement)', 'Unrecoverable', 'GD', 'Reboot all', '10', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1330, '1190811600', '15', '00', '26', '09', '2007', 'SL25', 'Clinche de la porte du bunker cassée', 'Machine', 'GD', 'Remise en état de la clinche avec l\\''aide du service technique', '16', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1331, '1190987100', '15', '45', '28', '09', '2007', 'SL25', 'Champ Visir rejeté dans RTD', 'Informatique', 'GD', 'Sortir de Visir et RTD\r\nRecharger tout en commençant par le RTD', '15', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1332, '1191133800', '08', '30', '30', '09', '2007', 'Tomo1', 'Recoverable Septembre 2007', 'Recoverable', 'Technique', '50 * 5'' => 4h10', '12', '40', '04', '10', 'oui');
INSERT INTO `pannes` VALUES(1333, '1191848400', '15', '00', '08', '10', '2007', 'SL25', 'Leaf too narrow', 'Machine', 'GD', 'Réglage diaphragme', '15', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1334, '1191830400', '10', '00', '08', '10', '2007', 'Tomo1', 'Problèmes de MVCT', 'Recoverable', 'GD', 'Test du patient DQA\r\nReboot all', '10', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1335, '1192176600', '10', '10', '12', '10', '2007', 'SL25', 'Plantage Visir, le champ ne passe pas dans le RTD', 'Informatique', 'GD', 'Sortir du patient, Sortir du RTD, Recharger RTD, recharger patient, OK', '10', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1336, '1192456800', '16', '00', '15', '10', '2007', 'SL25', 'Reset motors persistant (resta actif)', 'Machine', 'GD', 'Jouer avec les boutons...???\r\nCause encore inconnue', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1337, '1192181100', '11', '25', '12', '10', '2007', 'Tomo1', 'Shutdown intempestif de la station de traitment ', 'Unrecoverable', 'GD', 'Reboot all', '11', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1338, '1192452600', '14', '50', '15', '10', '2007', 'Tomo1', 'Jaw', 'Unrecoverable', 'GD', 'Reboot all', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1339, '1192622700', '14', '05', '17', '10', '2007', 'SL25', 'Table bloquée', 'Machine', 'GD', 'Table hors limite de fonctionnement.\r\nLa repousser jusqu''à une position telle qu''elle puisse se réaccoupler sur l''engrenage.', '14', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1340, '1193226600', '13', '50', '24', '10', '2007', 'SL25', 'Fx Link', 'Informatique', 'GD', 'Sortir du champ patient.\r\nSortir d''une étape dan le RTD.\r\nTout recharger en commencant par le RTD', '13', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1341, '1193290200', '07', '30', '25', '10', '2007', 'SL25', 'Thy Grid', 'Machine', 'MC', 'Fusible T1 fondu dans l''alim du thyratron.\r\nL''alim se trouve dans le modulateur, boite en haut à droite derrière la grille.\r\ncf. schéma dans FRU Manual', '09', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1342, '1193054400', '14', '00', '22', '10', '2007', 'Tomo1', 'Message au démarage de l''OS :"Press cancel if you want..." ne disparait pas', 'Unrecoverable', 'Technique', 'reboot all', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1343, '1193139900', '13', '45', '23', '10', '2007', 'Tomo1', 'La led verte "ready" ne s''alume pas une fois toute les porte fermée et la clé tournée sur "treat". 1er message interlock', 'Unrecoverable', 'GD', 'Problème avec relais des interlocks, après deconnexion et reconnexion de la bobine du relais, OK\r\nTension à la bobine de 68V !?!?', '14', '45', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1344, '1193400000', '14', '00', '26', '10', '2007', 'Tomo1', 'La tomo reboote toute seule', 'Unrecoverable', 'GD', 'Rédémarage de la tomo', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1345, '1193647800', '09', '50', '29', '10', '2007', 'Tomo1', 'unrecoverable', 'Unrecoverable', 'Technique', 'Reboot all', '09', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1346, '1193992200', '09', '30', '02', '11', '2007', 'Tomo1', 'Water fault', 'Unrecoverable', 'Technique', 'Fuite d''eau dans un des tuyeaux donnant dans le LINAC. Réparation temporaire de la fuite avec Superglu et toile isolante.', '10', '40', '01', '10', 'oui');
INSERT INTO `pannes` VALUES(1347, '1194357600', '15', '00', '06', '11', '2007', 'SL25', 'Gantry Bloqué', 'Machine', 'Technique', 'Remplacement de la carte controlleur par Elekta le 7/11/2007 à 15h30\r\n\r\nPossibilité de tourner le gantry en débloquant le frein.\r\n\r\n', '17', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1348, '1194445800', '15', '30', '07', '11', '2007', 'SL25', 'Gantry Bloqué', 'Machine', 'Technique', 'Changement de la carte controlleur frein par elekta', '15', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1349, '1194507000', '08', '30', '08', '11', '2007', 'SL25', 'UPS pc commande sent le brulé', 'Machine', 'Technique', 'Bypass de l''UPS', '08', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1350, '1194001500', '12', '05', '02', '11', '2007', 'Tomo1', 'Waterfault', 'Unrecoverable', 'MC', 'Réglage des vannes de flow meter', '12', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1351, '1193817600', '09', '00', '31', '10', '2007', 'Tomo1', 'Recoverable octobre 2007', 'Recoverable', 'Technique', 'Recoverable octobre 2007\r\n\r\n29 * 5 minutes = 2h25', '11', '25', '02', '25', 'oui');
INSERT INTO `pannes` VALUES(1352, '1194004800', '13', '00', '02', '11', '2007', 'Tomo1', 'Fuite d''eau + manque de pression', 'Unrecoverable', 'Technique', 'Remplacement tuyeau par tomo + debbubling', '16', '15', '03', '15', 'oui');
INSERT INTO `pannes` VALUES(1353, '1194249600', '09', '00', '05', '11', '2007', 'Tomo1', 'Jaw error', 'Unrecoverable', 'Technique', 'Arret de la machine toute la journée\r\nRemplacement du jaw actuator 2 (jaw back)', '20', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1354, '1194251400', '09', '30', '05', '11', '2007', 'Tomo1', 'Jaw error 4x', 'Unrecoverable', 'MC', 'reboot all 4x\r\n\r\n=> 4*15minutes = 1h', '09', '45', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1355, '1194336000', '09', '00', '06', '11', '2007', 'Tomo1', 'Jaw error', 'Unrecoverable', 'Technique', 'Vendredi soir : erreur\r\nDimanche : ok\r\nlundi matin : erreur => remplacement actuator\r\nmardi matin : mesures', '12', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1356, '1194422400', '09', '00', '07', '11', '2007', 'Tomo1', 'MLC error', 'Unrecoverable', 'Technique', 'Remplacement valve MLC par tomo', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1357, '1194526800', '14', '00', '08', '11', '2007', 'Tomo1', 'Ecran noir', 'Unrecoverable', 'MC', 'Reboot all', '14', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1358, '1194537600', '17', '00', '08', '11', '2007', 'Tomo1', 'La machine demande un shut down', 'Unrecoverable', 'GD', 'Reboot all', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1359, '1194544800', '19', '00', '08', '11', '2007', 'Tomo1', 'Jawback error', 'Unrecoverable', 'Technique', 'Après une solution trouvée en bidouillant les cables, sur les drivers, 1 traitement, de nouveau en panne => celle du detecteur homeposition', '20', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1360, '1195463400', '10', '10', '19', '11', '2007', 'SL25', 'Champ electron ne passe pas', 'Informatique', 'GD', '2 problemes\r\n1 un champ electron est carre, pas rectangulaire, dans visir\r\n2 il y avait un probleme avec les valeurs tables. Les remettre a zero dans visir.', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1361, '1195815600', '12', '00', '23', '11', '2007', 'SL25', 'HGT T/ Tsel et PSSX/Ysel', 'Machine', 'GD', 'Le message apparait quand la porte est fermee et que le champ est charge. Que ce soit en mode clinique, physique,... \r\nApres avoir joue sur les bouton de table Clutch, probleme regle.', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1362, '1195820700', '13', '25', '23', '11', '2007', 'SL25', 'champ electron ne passe pas', 'Informatique', 'GD', 'Pas e numero de block dans visir. Doit toujours etre a 1 pour les electrons.', '13', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1363, '1196164500', '12', '55', '27', '11', '2007', 'SL25', 'Hgt T/Tsel et PSS X/Ysel', 'Machine', 'Technique', 'Jouer avec le table clutch de droite (boitier casse, peut etre faux contact). Inhibit seulement avec la porte fermee.', '13', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1364, '1196425200', '13', '20', '30', '11', '2007', 'SL25', 'iView', 'Machine', 'GD', 'Iview bloque. Off / on du disjoncteur de l iview sur le control cabinet.', '13', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1365, '1196846400', '10', '20', '05', '12', '2007', 'SL25', 'M fil V mon reset requerd', 'Machine', 'Technique', 'Plus gros probleme, on vit vrement varier le water temp anormalement de 23 degres a 35 degres. Meme variation sans tirer du faisceau.\r\nReboot de la machine et control du circuit de refroidissement externe (sonde de temperature).\r\nOK ', '11', '20', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1366, '1197030600', '13', '30', '07', '12', '2007', 'SL25', 'Phase error', 'Machine', 'GD', 'Probleme avec le moteur pour le tuning du magnétron', '', '', '18', '00', 'oui');
INSERT INTO `pannes` VALUES(1367, '1198502400', '14', '20', '24', '12', '2007', 'SL25', 'HT T/Tsel + PSS X/Y sel quand la porte est fermée', 'Machine', 'MC', 'Jouer sur le table clutch de droite (gauche patient) quand la porte est fermée.', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1368, '1198746000', '10', '00', '27', '12', '2007', 'SL25', 'Interruption traitement en X25 et Gantry 180° message :"2T error"', 'Machine', 'MC', 'Test en mode technique  avec faisceau X 25 et Gantry en rotation\r\nImpossible de reproduire l''erreur\r\n...', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1369, '1198771200', '17', '00', '27', '12', '2007', 'SL25', 'Interruption Traitement en X25 gantry 180° 2T error', 'Machine', 'Technique', '/', '17', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1370, '1197270000', '08', '00', '10', '12', '2007', 'SL75', 'Perte de reseau sur le PC visir', 'Informatique', 'Technique', '1) Connexion sur prise reseau fonctionnelle\r\n2) Isolation de la panne : - Boucle dans reseau => reset switch\r\n3) reconnexion du PC visir sur sa prise initiale', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1371, '1194591600', '08', '00', '09', '11', '2007', 'Tomo1', 'Jaw Back error', 'Unrecoverable', 'Technique', 'Remplacement par FSE Tomo du Jawback actuator, puis QC\r\n=> traitement samedi matin', '18', '00', '09', '00', 'oui');
INSERT INTO `pannes` VALUES(1372, '1196335500', '12', '25', '29', '11', '2007', 'Tomo1', '"Serious problem" pendant reconstruction image scanner', 'Unrecoverable', 'GD', 'Reboot all', '12', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1373, '1191862800', '19', '00', '08', '10', '2007', 'Tomo1', 'Jaw back error', 'Unrecoverable', 'GD', 'Après une solution trouvée en bidouillant les cables sur les drivers, 1 traitement, de nouveau en panne\r\n=> colle du detecteur homeposition', '20', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1374, '1196409600', '09', '00', '30', '11', '2007', 'Tomo1', 'recoverable novembre 2007', 'Recoverable', 'Technique', '79*5\\''=6h35min', '09', '00', '06', '35', 'oui');
INSERT INTO `pannes` VALUES(1375, '1196780400', '16', '00', '04', '12', '2007', 'Tomo1', 'Interruption pendant traitement', 'Recoverable', 'GD', 'reboot all', '16', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1376, '1196928000', '09', '00', '06', '12', '2007', 'Tomo1', 'Pas possible de lancer scan pas de communication avec le serveur images', 'Informatique', 'Technique', 'erreur detectée le mercredi soir durant la dosi. Une nuit et une matinée de travail pour tomo pour remettre en ordre la mise à jour.', '14', '30', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(1377, '1197023400', '11', '30', '07', '12', '2007', 'Tomo1', 'Trigger timing error', 'Recoverable', 'GD', 'Problèmes déja rencontrés la veille au soir\r\nRemplacement du pulse shapper', '14', '30', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1378, '1197057600', '21', '00', '07', '12', '2007', 'Tomo1', 'Timming trigger error', 'Recoverable', 'Technique', 'Pour les deux derniers patient : arret de la machine', '21', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1379, '1197378900', '14', '15', '11', '12', '2007', 'Tomo1', 'Sur planning et operator station : "faillure to log on tomodata"', 'Recoverable', 'Technique', 'Arret de la tomo + op. station + plan. sation\r\nreboot tomodata\r\nrestart tomo', '14', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1380, '1197450900', '10', '15', '12', '12', '2007', 'Tomo1', 'Plantage du Tomodata => bloque op. sation', 'Informatique', 'Technique', 'Réaparition du Virus "Brontok" sur le tomodata\r\nNe plus agir sur le msdos de tomodata jusqu''à suppression du virus', '10', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1381, '1197273600', '09', '00', '10', '12', '2007', 'Tomo1', 'Remplacement magnétron et AFC', 'Machine', 'Technique', 'Remplacement magnétron et AFC + QA\r\nLundi = déplacement maintenance du mercredi (monthly)', '11', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1382, '1197874800', '08', '00', '17', '12', '2007', 'Tomo1', 'SF6 lox pressure', 'Unrecoverable', 'MC', 'Rajout de SF6 via la bonbonne', '09', '00', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1383, '1198479600', '08', '00', '24', '12', '2007', 'Tomo1', 'SF6 low pressure', 'Unrecoverable', 'Technique', 'Rajout de SF6', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1384, '1198672200', '13', '30', '26', '12', '2007', 'Tomo1', '"BackJaw did not receive a response from the controller"', 'Unrecoverable', 'Technique', 'Reboot all', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1385, '1198742400', '09', '00', '27', '12', '2007', 'Tomo1', 'Fin maintenance', 'Unrecoverable', 'MC', 'QC après réorg database + remplacement valve SF6', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1386, '1199084400', '08', '00', '31', '12', '2007', 'Tomo1', 'Recoverable errors Décembre 2007', 'Recoverable', 'Technique', 'Recoverable errors Décembre 2007', '08', '00', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(1387, '1199106000', '14', '00', '31', '12', '2007', 'Tomo1', 'Water Flow Error', 'Unrecoverable', 'Technique', 'Un tube est percé. Remplacement par Tomo.', '17', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1388, '1199775600', '08', '00', '08', '01', '2008', 'Tomo1', 'Low pressure SF6', 'Unrecoverable', 'SVD', 'Remise de la pression SF6', '08', '15', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1389, '1199440800', '11', '00', '04', '01', '2008', 'Tomo1', 'Impossible de faire une registration', 'Recoverable', 'SVD', 'Apres scan\r\nReboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1390, '1199451600', '14', '00', '04', '01', '2008', 'Tomo1', 'Dose faible, reglage PFN frequent', 'Machine', 'Technique', 'Apres trait\r\nNous avons remarque une chute de la dose durant la semaine. Apres plusieurs augmentation du PFN la dose a toujourzs tendance a chuter. appel chez tomo et test root var.', '18', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1391, '1199779200', '09', '00', '08', '01', '2008', 'Tomo1', 'Gun board error plus PFN qui chute toute les 4H00', 'Unrecoverable', 'Technique', 'Pendant le trait\r\nArret de la machine 4 jours plus  le samedi, pour le remplacement du linac. Beaucoup de discution chez Tomo. Fin des mesures physique dimanche a 08h00. Traitement dimanche matin.', '08', '00', '22', '00', 'oui');
INSERT INTO `pannes` VALUES(1392, '1199779200', '09', '00', '08', '01', '2008', 'Tomo1', 'Gun board error et PFN qui se deregle', 'Unrecoverable', 'Technique', 'Idem que le message precedent.', '08', '00', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1393, '1199779200', '09', '00', '08', '01', '2008', 'Tomo1', 'gun board erroe et probleme de PFN', 'Unrecoverable', 'Technique', 'Idem que precedent', '08', '00', '06', '00', 'oui');
INSERT INTO `pannes` VALUES(1394, '1200319200', '15', '00', '14', '01', '2008', 'Tomo1', 'Trigger timing error', 'Unrecoverable', 'SVD', 'Reboot All', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1395, '1200328200', '17', '30', '14', '01', '2008', 'Tomo1', 'Gantry velocity', 'Unrecoverable', 'GD', 'Reboot All', '17', '40', '00', '00', 'oui');
INSERT INTO `pannes` VALUES(1396, '1200384000', '09', '00', '15', '01', '2008', 'Tomo1', 'Serious problem', 'Unrecoverable', 'SVD', 'Reboot all', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1397, '1200405600', '15', '00', '15', '01', '2008', 'Tomo1', 'Serious problem', 'Unrecoverable', 'SVD', 'Reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1398, '1200661200', '14', '00', '18', '01', '2008', 'Tomo1', '??', 'Unrecoverable', 'GD', 'Reboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1399, '1200675600', '18', '00', '18', '01', '2008', 'Tomo1', 'Trop de recoverables', 'Recoverable', 'SVD', 'Reboot all => après reboot, amélioration de la situation, quasi plus d''interrupts', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1400, '1201021800', '18', '10', '22', '01', '2008', 'Tomo1', 'Trop de recoverables', 'Recoverable', 'SVD', 'Reboot all => après reboot, quasi plus d''interrupts', '18', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1401, '1201095900', '14', '45', '23', '01', '2008', 'Tomo1', 'Set violation point', 'Recoverable', 'Technique', 'Ajustement du pfn scan de 2.45 à 2.42\r\n=> no result\r\n=> reboot all => idem => investigation par Tomo\r\n', '15', '25', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1402, '1201161600', '09', '00', '24', '01', '2008', 'Tomo1', 'High dose chamber 2', 'Recoverable', 'Technique', 'Après remplacement du ventilos du box magnétron, réglage fin, suite des problèmes du 23 janvier', '20', '00', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1403, '1201248000', '09', '00', '25', '01', '2008', 'Tomo1', 'High dose chamber 2', 'Unrecoverable', 'Technique', 'Remplacement des chambres', '20', '00', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1404, '1201737600', '01', '00', '31', '01', '2008', 'Tomo1', 'Recoverable Janvier 2008', 'Recoverable', 'Technique', '52 x 5'' = 4h20', '01', '00', '04', '20', 'oui');
INSERT INTO `pannes` VALUES(1405, '1201611600', '14', '00', '29', '01', '2008', 'Tomo1', 'Trop de recoverables', 'Machine', 'Technique', 'reboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1406, '1202281200', '08', '00', '06', '02', '2008', 'Tomo1', 'MLC in wrong position', 'Machine', 'SVD', 'Remplacement valve MLC par Tomo', '11', '20', '02', '20', 'oui');
INSERT INTO `pannes` VALUES(1407, '1202466000', '11', '20', '08', '02', '2008', 'Tomo1', 'Dose too low pdt scan', 'Recoverable', 'SVD', 'Reglage pfn 2.35 => 2.4', '11', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1408, '1202472000', '13', '00', '08', '02', '2008', 'Tomo1', 'Dose too high pdt scan', 'Recoverable', 'SVD', 'Reglage pfn à 2.375 + test scan => ok', '13', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1409, '1202902200', '12', '30', '13', '02', '2008', 'Tomo1', 'Bcp de recoverables "interlock open during critical time"', 'Recoverable', '', 'Tentatvie de remplacement de relais', '13', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1410, '1203319200', '08', '20', '18', '02', '2008', 'Tomo1', '"Error while processing recontruction"', 'Unrecoverable', 'SVD', 'Reboot 2x et fonctionne', '09', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1411, '1203332400', '12', '00', '18', '02', '2008', 'Tomo1', 'Apres selection coupe mvct informatique bloquée', 'Informatique', 'Physique', 'Reboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1412, '1203355800', '18', '30', '18', '02', '2008', 'Tomo1', 'Incorrect linac SSD machine state', 'Unrecoverable', 'MC', 'Reboot all 2x l''erreur', '18', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1413, '1203580800', '09', '00', '21', '02', '2008', 'Tomo1', 'Error :"Interlock open during critical time"', 'Recoverable', 'Technique', 'Recherche de la panne => tcheck système interlock... panne intermitente et non reproductible', '11', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1414, '1203598800', '14', '00', '21', '02', '2008', 'Tomo1', 'Error "interlock open during critical time"', 'Recoverable', 'Technique', 'Bypass relais présence car soupçon de defectuosité du détecteur de présence... Remplacement du detecteur le lendemain matin... depuis => ok', '15', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1415, '1204014000', '09', '20', '26', '02', '2008', 'Tomo1', 'Gunboard waterflow', 'Unrecoverable', 'GD', 'Reboot all', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1416, '1204014600', '09', '30', '26', '02', '2008', 'Tomo1', 'Fuite d''eau => eau dans le DAS', 'Machine', 'Technique', 'Remplacement tuyeau et sechage du DAS', '17', '45', '08', '15', 'oui');
INSERT INTO `pannes` VALUES(1417, '1204236000', '23', '00', '28', '02', '2008', 'Tomo1', 'Recoverable fevrier 2008', 'Recoverable', 'Technique', 'Recoverable fevrier 2008\r\n\r\n60*5'' = 5H', '23', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(1418, '1205229600', '11', '00', '11', '03', '2008', 'Tomo1', '??', 'Unrecoverable', 'Technique', 'Reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1419, '1206604800', '09', '00', '27', '03', '2008', 'Tomo1', 'Problèmes de lames', 'Recoverable', 'Technique', 'remplacement moteur valve 37 => NOK\r\nRemplacement du MLC => ok', '20', '00', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1420, '1206918000', '01', '00', '31', '03', '2008', 'Tomo1', 'Recoverables mars 2008', 'Recoverable', 'Technique', 'recoverables mars 2008 41*5'' = 3h25', '04', '25', '03', '25', 'oui');
INSERT INTO `pannes` VALUES(1421, '1199972700', '14', '45', '10', '01', '2008', 'SL25', 'Room door 1', 'Machine', 'GD', 'Attention, les infirmières mettent les cassettes dans la chicane, ce qui donne des reflets dans le detecteur de mouvements et provoque un "Room door 1".\r\nMettre les cassettes ailleurs est une bonne solution.', '14', '45', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1422, '1202894100', '10', '15', '13', '02', '2008', 'SL25', 'Les E6 ne passent pas', 'Informatique', 'GD', 'Erreur dans visir, MLC ne doit pas être coché', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1423, '1204017000', '10', '10', '26', '02', '2008', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Collision entre la table et l''applictaeur electron 10*10\r\n\r\nElimination de l''applicateur qui n''as pas bien vécu le choc...\r\nQC mécanique de la table ', '10', '40', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1424, '1204100100', '09', '15', '27', '02', '2008', 'SL25', 'Water temp', 'Machine', 'GD', 'Plus de pression d''eau qui doit être à 4 bars sur le circuit "plombier"\r\nAppel service technique pour mettre sur circuit secours', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1425, '1204103700', '10', '15', '27', '02', '2008', 'SL25', 'Bug entre Visir et RTD', 'Informatique', 'GD', 'Faire un interrupt puis recharger le patient', '10', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1426, '1205495700', '12', '55', '14', '03', '2008', 'SL25', 'Leaf too narrow', 'Machine', 'GD', 'Réglage ouverture caméra', '13', '00', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1427, '1206082800', '08', '00', '21', '03', '2008', 'SL25', 'Water temp', 'Machine', 'MC', 'Plus de pression d''eau\r\nTel => plombiers\r\nFiltre HS => passage sur second filtre', '08', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1428, '1206113100', '16', '25', '21', '03', '2008', 'SL25', 'MM CON C', 'Machine', 'MC', 'Arrêt D''urgence table enfoncé + pression d''eau à 0', '16', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1429, '1207051500', '14', '05', '01', '04', '2008', 'SL25', 'HT Crowbar', 'Machine', 'SVD', 'Jouer sur connexions optiques', '14', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1430, '1207724400', '09', '00', '09', '04', '2008', 'Tomo1', 'Problème avec la création d''images durant le MVCT "No image..." + problèmes couch', 'Unrecoverable', 'GD', 'reboot all', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1431, '1208510400', '11', '20', '18', '04', '2008', 'Tomo1', 'Problèmes MLC', 'Machine', 'Technique', 'Déblocage des lames par utilisation des procédures de tests MLC (par tomo)', '13', '00', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1432, '1208520000', '14', '00', '18', '04', '2008', 'Tomo1', 'PDt Scan : "low set point violation = 0,1 code = 107 Outside beam is too strong', 'Machine', 'Technique', 'Reglage pfn par tomo', '14', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1433, '1207056600', '15', '30', '01', '04', '2008', 'SL25', 'Perte de connexion entre machine et RTD Affihage inhibits salle et commande différents', 'Informatique', 'SVD', 'Reboot all', '15', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1434, '1207150500', '17', '35', '02', '04', '2008', 'SL25', 'I view bloqué', 'Machine', 'MC', 'reset Iview avec fusible dans control cabinet', '17', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1435, '1207200600', '07', '30', '03', '04', '2008', 'SL25', 'HT Crowbar', 'Machine', 'GD', 'Problèmes avec la fibre optique. (coté HT à droite, les 3 fibres). remplacement de la fibre opt 01 "CRDB DET" OK pendant la dosi', '08', '00', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1436, '1207234500', '16', '55', '03', '04', '2008', 'SL25', 'Function demand', 'Machine', 'GD', 'Faire le reset required et faire disparaitre le function demand (floche de gauche roulette fonction)', '17', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1437, '1207727700', '09', '55', '09', '04', '2008', 'SL25', 'Bending mag V en E18', 'Machine', 'GD', 'Réglage du Bending Mag V on passe de 12.85 à 13.20 Sous entend un autre problème plus grave.', '10', '15', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1438, '1207814700', '10', '05', '10', '04', '2008', 'SL25', 'Thy timer, mag timer Sans raisons particulières', 'Machine', 'GD', 'Bypasss des timers (4 x de suite 10h05 10h45 11h 11h15)', '10', '50', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1439, '1207830600', '14', '30', '10', '04', '2008', 'SL25', 'Problème Bending OT', 'Machine', 'Technique', 'Traitement interrompu, check Elekta Lundi-Mardi\r\nJeudi only X6\r\nVendredi only X6\r\nLUNDI -MARDI => SL75 X6', '17', '00', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(1440, '1208850900', '09', '55', '22', '04', '2008', 'SL25', 'Water temp', 'Machine', '', 'Filtre bouché coté plombier... On passe sur le circuit direct eau de ville', '10', '10', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1441, '1208936400', '09', '40', '23', '04', '2008', 'SL25', 'Problèmes E18 Uniformity avec un angle de 61°C', 'Machine', 'GD', 'Réglage selon procédures Elekta', '09', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1442, '1208152800', '08', '00', '14', '04', '2008', 'SL25', 'Bending Overtemp', 'Machine', 'Technique', 'Lundi Mardi remplacement Bending', '17', '00', '18', '00', 'oui');
INSERT INTO `pannes` VALUES(1443, '1208325600', '08', '00', '16', '04', '2008', 'SL25', 'Bending Overtemp', 'Machine', 'Technique', 'mercredi jeudi remplacement bending', '17', '00', '18', '00', 'oui');
INSERT INTO `pannes` VALUES(1444, '1201082100', '10', '55', '23', '01', '2008', 'SL75', 'Plus de mouvements hauteur table, le reste est Ok', 'Machine', 'GD', 'Déconnection et reconnection du grosswitch sur le sol sous la table', '11', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1445, '1201768500', '09', '35', '31', '01', '2008', 'SL75', 'Les machoires Y ne se placent aps correctement à l''autosetup', 'Machine', 'GD', 'Entrer en salle, jouer avec les machoires X et Y \r\nrefaire l''autosetup (même si aps de mouvement en actionnant les machoires Y', '09', '40', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1446, '1205317200', '11', '20', '12', '03', '2008', 'SL75', 'Plantage durant le traitement. On ne sait plus comment ca marche avec Visir', 'Machine', 'GD', 'Quand on a un plantage, il faut faire la déviation sur visir, et recharger le champ pour que les UM''s s''initialisent', '11', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1447, '1209134700', '16', '45', '25', '04', '2008', 'Tomo1', 'Pdt scan : dose too strong', 'Unrecoverable', 'Technique', 'Diminution pfn image => 2.37', '17', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1448, '1209373800', '11', '10', '28', '04', '2008', 'Tomo1', 'Pdt scan : dose too strong', 'Unrecoverable', 'SVD', 'Diminution Pfn MVCT 2.37 => 2.35', '11', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1449, '1209510000', '01', '00', '30', '04', '2008', 'Tomo1', 'Recoverable Avril 2008', 'Recoverable', 'GD', '40 * 5'' = 200 minutes = 3h20', '04', '20', '03', '20', 'oui');
INSERT INTO `pannes` VALUES(1450, '1209544800', '10', '40', '30', '04', '2008', 'SL25', 'Reglage de l''uniformity à 0°', 'Machine', 'GD', '/', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1451, '1210692000', '17', '20', '13', '05', '2008', 'Tomo1', 'Waterflomw error', 'Unrecoverable', 'SVD', 'REboot all', '17', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1452, '1210694400', '18', '00', '13', '05', '2008', 'Tomo1', 'Water flow error', 'Unrecoverable', 'GD', 'Fuite dans un tuyeau au niveau de l''AFC.\r\nRemplacement par tomo', '20', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1453, '1211182500', '09', '35', '19', '05', '2008', 'Tomo1', 'Plus de scan possible, dose rate mvct à 0 message : "set point low violation"', 'Recoverable', 'Technique', 'Plusieurs airscans, action sur pfn \r\nreboot + warm up + airscan => ok', '10', '35', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1454, '1210935000', '12', '50', '16', '05', '2008', 'SL75', 'Doserate checksum error', 'Machine', 'MC', 'Arret brutal\r\nexctinction => reboot, ok\r\nDosi', '13', '15', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1455, '1210316400', '09', '00', '09', '05', '2008', 'SL25', 'Water temp', 'Machine', 'GD', 'Check de la pression d''eau\r\nMerci les plombiers d''avoir coupé l''eau...\r\nAttente avant bypass des timers', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1456, '1210334400', '14', '00', '09', '05', '2008', 'SL25', 'Thy timer, mag timer', 'Machine', 'GD', 'reboot du sl25 (ou log off, log  on), attente fin des timers car le water temp avait tendance à diminuer.\r\nreboot avec water temp à 21.5 (28.5 normalement)', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1457, '1210341000', '15', '50', '09', '05', '2008', 'SL25', 'Thy timer, mag timer', 'Machine', 'MC', 'reboot du sl25 (ou log off, log  on), attente fin des timers car le water temp avait tendance à diminuer.\r\nreboot avec water temp à 21.5 (28.5 normalement)', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1458, '1210760700', '12', '25', '14', '05', '2008', 'SL25', 'Reset required', 'Machine', 'MC', 'Difficile à expliquer... "Ca s''est arrêté disent les infirmières"\r\nBypass des timers', '12', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1459, '1210771500', '15', '25', '14', '05', '2008', 'SL25', 'Bending magV', 'Machine', 'MC', 'Tel Elekta T° eau (item 223) trop froide : 19-20°C, il faut 25-30°C.\r\nSi V diminue et I est constant : R a changé\r\nSolution : modifier bending mag V de 13.80 à la mesure => attention : modifie l''énergie\r\n=> solution, jouer sur la vanne (boite jaune), Tirer la manette noire et fermer à fond (à 3h). la manette devrait revenir. ouvrir à fond (12h) et attendre qques secondes qu''elle revienne à sa position.\r\n', '15', '45', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1460, '1210917600', '08', '00', '16', '05', '2008', 'SL25', 'Bending magV', 'Machine', 'MC', 'Problème de vanne (jaune)\r\nOuverture, fermeture, rien n''y fait\r\nTest tension sous le capot, pas clair.\r\nAprès moultes essais, la vanne s''enclenche enfin d''elle même', '10', '10', '02', '10', 'oui');
INSERT INTO `pannes` VALUES(1461, '1211176800', '08', '00', '19', '05', '2008', 'SL25', 'surchauffe ou sous-chauffe du sl25, plusieurs fois sur la journée (4x)', 'Machine', 'GD', 'jouer sur la vanne pour régler le refroidissement', '09', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1462, '1211263200', '08', '00', '20', '05', '2008', 'SL25', 'Plantage Visir', 'Machine', 'Technique', 'Remplacement de la vanne (jaune) pour la régulation de T° au sl25', '10', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(1463, '1211968200', '11', '50', '28', '05', '2008', 'SL25', 'Perte de liaison entre Visir et RTD', 'Informatique', 'GD', '- sortir du patient Visir\r\n- faire exit sur rtd, ici impossible reste grisé donc faire un terminate avec le bouton rouge sur le pupitre de lancement de faisceau\r\n- reset motor et recharge du patient dans Visir', '11', '55', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1464, '1213342800', '09', '40', '13', '06', '2008', 'SL25', 'Le sl25 bippe', 'Machine', 'MC', 'Touch guard en inhibits => test sur fusible iview => quand off plus de bips\r\n=> iview mal rentré', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1465, '1211196600', '13', '30', '19', '05', '2008', 'Tomo1', 'Plantage Visir', 'Unrecoverable', 'Technique', 'refaire warmup + airscan', '13', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1466, '1211208000', '16', '40', '19', '05', '2008', 'Tomo1', 'probèmes durant le scan : plus de doserate, message low setpoint violation', 'Unrecoverable', 'SVD', 'warm up et airscan', '17', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1467, '1211817600', '18', '00', '26', '05', '2008', 'Tomo1', 'Problèmes Jaws Lx', 'Unrecoverable', 'GD', 'reboot 2x la tomo avec recharge du warmup, puis retour vers patient => ok', '18', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1468, '1212102000', '01', '00', '30', '05', '2008', 'Tomo1', 'Recoverable mai 2008', 'Recoverable', 'GD', '51*5'' = 4h15', '05', '15', '04', '15', 'oui');
INSERT INTO `pannes` VALUES(1469, '1213002000', '11', '00', '09', '06', '2008', 'Tomo1', 'Hign setpoint violation', 'Unrecoverable', 'SVD', 'reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1470, '1210334100', '13', '55', '09', '06', '2008', 'Tomo1', 'Heater high, heater open', 'Unrecoverable', 'Technique', 'reboot all', '14', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1471, '1213077600', '08', '00', '10', '06', '2008', 'Tomo1', 'Dose MVCT trop faible', 'Unrecoverable', 'Technique', 'augmentation du pfn', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1472, '1213014600', '14', '30', '09', '06', '2008', 'Tomo1', 'MU1 et MU2 montent à 900', 'Unrecoverable', 'MC', 'Tomo est intervenu et a descendu le pfn remplacement cable bnc mag I et mag V', '17', '15', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1473, '1213250400', '08', '00', '12', '06', '2008', 'Tomo1', 'Divers interrupts, dose 2 mvct pas stable, problèmes de démarrage', 'Unrecoverable', 'SVD', 'reboot all \r\n\r\nen traitement, pas de problèmes durant la journée.', '09', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1474, '1213709400', '15', '30', '17', '06', '2008', 'SL75', 'Frein (blocage) de l''extesion de table devissé', 'Machine', 'GD', 'Refixation du système', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1475, '1213941600', '08', '00', '20', '06', '2008', 'SL75', 'Colli ne tourne que dans un sens', 'Machine', 'SVD', 'Revisser vis détachée dans la floche\r\nTourner le colli jusqu''au maximum... (fin de course bloqué??)\r\nOK', '08', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1476, '1214324400', '18', '20', '24', '06', '2008', 'SL75', 'Serveur visir planté', 'Informatique', 'MC', 'Reboot du serveur', '18', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1477, '1213596000', '08', '00', '16', '06', '2008', 'Tomo1', 'Divers interrupts, dose 2 MVCT, Problème de démarrage', 'Machine', 'SVD', 'Reboot All\r\nDosi OK => traitement et plus de problèmes MVCT en journée', '09', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1478, '1213618200', '14', '10', '16', '06', '2008', 'Tomo1', 'Incorrect linac ssm machine state', 'Unrecoverable', 'SVD', 'Reboot All', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1479, '1213635600', '19', '00', '16', '06', '2008', 'Tomo1', 'Problème Low dose Value + plein de problèmes . Pas de traitements', 'Unrecoverable', 'Technique', 'reboot all', '19', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1480, '1214485200', '15', '00', '26', '06', '2008', 'Tomo1', 'Trop de couche errors', 'Unrecoverable', 'MC', 'Reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1481, '1214487600', '15', '40', '26', '06', '2008', 'Tomo1', 'Cannot reconstruct image', 'Unrecoverable', 'MC', 'reboot all', '15', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1482, '1213858800', '09', '00', '19', '06', '2008', 'Tomo1', 'Count MVCT chamber 2 : 0 Low setpoint violation - lox dose', 'Unrecoverable', 'Technique', 'Remplacement magnétron, wave guide, hvps mais la solution était SSD => 2 jours d''arrêt', '20', '00', '11', '00', 'oui');
INSERT INTO `pannes` VALUES(1483, '1214557200', '11', '00', '27', '06', '2008', 'Tomo1', 'Couch errors', 'Recoverable', 'Physique', 'Reboot all\r\n=> faux contacts dans le switch de fin de course de la table + reset zeroing table\r\n', '12', '45', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(1484, '1214568000', '14', '00', '27', '06', '2008', 'Tomo1', 'Couche errors plein de fois', 'Unrecoverable', 'Technique', 'Faux contact sur fin de course vertical table \r\nReinsertion des paramètres de la table', '15', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1485, '1214780400', '01', '00', '30', '06', '2008', 'Tomo1', 'Recoverable juin 2008', 'Recoverable', 'Technique', '93x5min = 7h45', '08', '45', '07', '45', 'oui');
INSERT INTO `pannes` VALUES(1486, '1216191600', '09', '00', '16', '07', '2008', 'Tomo1', '2 x couche error', 'Recoverable', 'Physique', 'reboot all', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1487, '1216203600', '12', '20', '16', '07', '2008', 'Tomo1', 'Plantage du pc workstation', 'Unrecoverable', 'GD', 'Reboot all', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1488, '1217228400', '09', '00', '28', '07', '2008', 'Tomo1', 'Tomo ne démarre pas', 'Unrecoverable', 'SVD', 'Après reboot, difficultés à redémarrer le système', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1489, '1215516300', '13', '25', '08', '07', '2008', 'SL25', 'Check Pot Y2', 'Machine', 'GD', 'Rotation du colli, recharge d''un autre champ', '13', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1490, '1218447000', '11', '30', '11', '08', '2008', 'SL25', 'Iview ne sort plus', 'Machine', 'GD', 'action sur le disjoncteur et sur les switch. Aucun résultats. Appel chez Elekta.\r\nRemplacement de la carte (led coté gauche) par Elekta + calibration des moteurs (remplacement fait en dehors des heures de traitements)', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1491, '1218448800', '12', '00', '11', '08', '2008', 'SL25', 'Probleme en E18 , donne de 16 tops en 16 tops', 'Machine', 'GD', 'réglage du 2T bal de 21.35 => 21.25\r\n2T error passe de 5.2 => 4.8', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1492, '1219667100', '14', '25', '25', '08', '2008', 'SL25', 'plus d''autosetup en salle', 'Informatique', 'GD', 'Perte de communication entre Visir et RTD.\r\nSortir du champ patient dans visir, sortir d''un cran dans RTD, recharger le rtd puis le champ de visir, OK', '14', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1493, '1219151700', '15', '15', '19', '08', '2008', 'SL75', 'plus de mouvement. Message mouvement sur la console', 'Machine', 'GD', 'Switch enfoncé sur la table (touchguard)+celui de la floche. \r\nLes remettre en position + reset motors', '15', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1494, '1217527200', '20', '00', '31', '07', '2008', 'Tomo1', 'recoverable juillet 2008', 'Recoverable', 'SVD', '44*5'' = 3h40', '23', '40', '03', '40', 'oui');
INSERT INTO `pannes` VALUES(1495, '1219054500', '12', '15', '18', '08', '2008', 'Tomo1', 'Dose to high en traitement', 'Recoverable', 'Technique', 'toujours la même chose après avoir descendu le pfn de 4.03 à 3.99\r\nAppel tomo\r\nFaux contact sur un cable au niveau du Mag I et Mag V', '16', '15', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1496, '1220616000', '14', '00', '05', '09', '2008', 'SL25', 'iView', 'Machine', 'Technique', 'Reparation faite par Elekta.\r\nPlus de mouvement de l iview. Remplacement de la carte controleur plus quelques switchs.\r\n3H00 reserve pas de dowtime.', '14', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1497, '1220626800', '17', '00', '05', '09', '2008', 'SL25', 'Champs lumineux', 'Machine', 'Physique', 'Remplacement par Elekta de l ampoule du champ lumineux. Pas de downtime.', '17', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1498, '1220947200', '10', '00', '09', '09', '2008', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'reglage de la camera', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1499, '1220948100', '10', '15', '09', '09', '2008', 'SL25', 'Fx Link', 'Informatique', 'GD', 'Log off de visir, tjrs exit du RTD grise donc faire un terminate pour reprendre la main. Reset clef plus reset motor et recharge du patient.', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1500, '1220961900', '14', '05', '09', '09', '2008', 'SL25', 'HT PSU OT ', 'Machine', 'GD', 'Pb de Temp du magnetron.\r\nverification de la fibre optique HT/OT (parmis les 3 isolees). remplacement par le spare.', '14', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1501, '1221652800', '14', '00', '17', '09', '2008', 'SL25', 'connectique porte plomb cassee', 'Machine', 'GD', 'Remplacement du connecteur', '19', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1502, '1221800400', '07', '00', '19', '09', '2008', 'SL25', 'GTO O/LOAD', 'Machine', 'SVD', 'Probleme de fibre optique.\r\nRemplacement fibre defectueuse par fibre temporaire.', '10', '45', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1503, '1222241400', '09', '30', '24', '09', '2008', 'SL25', 'Lames bloquées', 'Machine', 'MC', 'Reglage de la camera', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1504, '1222848000', '10', '00', '01', '10', '2008', 'SL25', 'Lames bloquées', 'Machine', 'GD', 'Reglage camera', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1505, '1220620500', '15', '15', '05', '09', '2008', 'SL75', 'collision', 'Machine', 'GD', 'Collision entre porte plomb et la table. \r\nPetit QC table, colli, gantry OK', '15', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1506, '1221724800', '10', '00', '18', '09', '2008', 'SL75', 'Badge tombe dans le gantry', 'Machine', 'Technique', 'Ouverture des capots pour recuperer la carte.', '10', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1507, '1222149600', '08', '00', '23', '09', '2008', 'SL75', 'Plus de visir', 'Informatique', 'GD', 'Du a la migration d adresse IP et test du new serveur visir de l aveille au soir.\r\nRemise de l ancienne adresse IP et Map du disque V', '08', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1508, '1222866000', '15', '00', '01', '10', '2008', 'SL75', 'Plus de hauteur table le reste OK', 'Machine', 'GD', 'Reboot all, mais tjrs probleme.\r\nDeconnection complete du connecteur de table (grosse gaine grise sous la table) reconnection et OK.', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1509, '1223462400', '12', '40', '08', '10', '2008', 'SL25', 'GTO O/LOAD', 'Machine', 'SVD', 'Deconnexion et erconnexion fibres optiques => OK', '12', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1510, '1223629200', '11', '00', '10', '10', '2008', 'SL25', 'Probleme MLC', 'Machine', 'SVD', 'Reglage mise au point caméra (2*5min) = 10 min)', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1511, '1220216400', '23', '00', '31', '08', '2008', 'Tomo1', 'Recoverable aout 2008', 'Recoverable', 'SVD', '11*5 minutes = 55 minutes', '23', '55', '00', '55', 'oui');
INSERT INTO `pannes` VALUES(1512, '1220526000', '13', '00', '04', '09', '2008', 'Tomo1', 'SSM error', 'Unrecoverable', 'MC', 'reboot 2x ', '13', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1513, '1220533200', '15', '00', '04', '09', '2008', 'Tomo1', 'MVCT ne fonctionne plus', 'Recoverable', 'Physique', 'reboot + airscan => ok', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1514, '1220869800', '12', '30', '08', '09', '2008', 'Tomo1', 'perte de connexion', 'Unrecoverable', 'Physique', 'reboot', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1515, '1223461800', '12', '30', '08', '10', '2008', 'Tomo1', 'SSM Error', 'Unrecoverable', 'GD', 'reboot all *2 => ok', '12', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1516, '1222804500', '21', '55', '30', '09', '2008', 'Tomo1', 'recoverable septembre 2008', 'Recoverable', 'SVD', '13*5 minutes = 1h 05 minutes', '23', '00', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(1517, '1223888400', '11', '00', '13', '10', '2008', 'Tomo1', 'SSM error', 'Unrecoverable', 'SVD', 'Reboot all, OK.\r\nRot var, static, la dose remonte doucement.', '11', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1518, '1224747900', '09', '45', '23', '10', '2008', 'Tomo1', 'Dose mvct too high', 'Recoverable', 'SVD', 'PFN de 2.36 a 3.34 ', '09', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1519, '1225209600', '17', '00', '28', '10', '2008', 'Tomo1', 'message linac error ssm statut', 'Unrecoverable', 'GD', 'Reboot all', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1520, '1225450200', '11', '50', '31', '10', '2008', 'Tomo1', 'different unrecoverable, ssm, plus de rate', 'Unrecoverable', 'SVD', 'Reboot all 2x.\r\nRot var, no OK, static, OK plus dosi 25mm OK.', '12', '30', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1521, '1225436400', '08', '00', '31', '10', '2008', 'Tomo1', 'recoverable octobre 2008', 'Recoverable', 'SVD', 'recoverable octobre 2008.\r\n17x5 ce qui donne 1h25', '09', '25', '01', '25', 'oui');
INSERT INTO `pannes` VALUES(1522, '1225880700', '11', '25', '05', '11', '2008', 'Tomo1', 'serieous problem offset, restart system', 'Unrecoverable', 'GD', 'Reboot all', '11', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1523, '1226309400', '10', '30', '10', '11', '2008', 'Tomo1', 'logiciel bloque apres le start', 'Unrecoverable', 'SVD', 'Reboot all', '10', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1524, '1226310600', '10', '50', '10', '11', '2008', 'Tomo1', 'Soft bloque apres scan', 'Unrecoverable', 'SVD', 'Reboot all et tomo data', '11', '10', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1525, '1226324100', '14', '35', '10', '11', '2008', 'Tomo1', 'Time out read data, reboot system', 'Machine', 'GD', '\r\nreboot all', '14', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1526, '1225527600', '09', '20', '01', '11', '2008', 'Tomo1', 'Gantry velocity', 'Unrecoverable', 'GD', 'Reboot all', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1527, '1225522800', '08', '00', '01', '11', '2008', 'Tomo1', 'Recoverable de novembre 2008', 'Recoverable', 'GD', 'Recoverable de novembre.\r\n2x5 donne 10 minute', '08', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1528, '1228123200', '10', '20', '01', '12', '2008', 'Tomo1', 'Pas de led verte pour lancer le scan', 'Machine', 'GD', 'Reboot all', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1529, '1224501900', '13', '25', '20', '10', '2008', 'SL25', 'HT PSU/OT', 'Machine', 'MC', 'Remplacement de la fibre optique meme si l actuelle semblait OK, lumiere faible.', '13', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1530, '1224504600', '14', '10', '20', '10', '2008', 'SL25', 'GTO O/L', 'Machine', 'GD', 'Remplacement de la fibre optique num 1', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1531, '1225965600', '11', '00', '06', '11', '2008', 'SL25', 'Fine pot Y2', 'Machine', 'GD', 'Plusieurs fois dans la journee.\r\nOuverture du colli et control sur tous les cables des pot de la machoire Y1 et Y2', '11', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1532, '1227535200', '15', '00', '24', '11', '2008', 'SL25', 'X2 val var app, Y2 val var app', 'Machine', 'GD', 'Jouer avec l applicateur electron (sans doute un faux contact)', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1533, '1225522800', '08', '00', '01', '11', '2008', 'SL25', 'gas pres', 'Machine', 'GD', 'Remplacement de la bombonne de gaz SF6.\r\nreboot machine pour remettre le niveau de gaz entre 0.5 et 0.7.\r\nDosi', '08', '35', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(1534, '1228745700', '15', '15', '08', '12', '2008', 'SL75', 'La machine s''est coupée tte seule', 'Machine', 'SVD', 'reboot + chauffer', '15', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1535, '1228750500', '16', '35', '08', '12', '2008', 'SL75', 'Table bloquée en hauteur', 'Machine', 'SVD', 'enlever et remettre grosse fiche ronde au pied de la table', '16', '40', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1536, '1229679600', '10', '40', '19', '12', '2008', 'SL75', 'console éteinte', 'Informatique', 'GD', 'cable d''alimentation déconnecté\r\nrebioot all et attente du timer', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1537, '1227535200', '15', '00', '24', '11', '2008', 'SL25', '"X2 val var app" "y2 val var app"', 'Machine', 'GD', 'Jouer avec l''applicateur électrons (sans doute faux contact)', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1538, '1228114800', '08', '00', '01', '12', '2008', 'SL25', 'Gas pres.', 'Machine', 'GD', 'remplacement bouteille de sf6 + reboot machine (plus facile pour remettre le gaz à niveau)', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1539, '1229435100', '14', '45', '16', '12', '2008', 'Tomo1', 'Bruit inquiétant', 'Machine', 'SVD', 'Recherche => manette de vanne cassée et tombée...', '15', '15', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1540, '1229929200', '08', '00', '22', '12', '2008', 'Tomo1', '"MLC leaf in wrong position"', 'Unrecoverable', 'SVD', 'Remplacement Verification Board', '13', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1541, '1230552900', '13', '15', '29', '12', '2008', 'Tomo1', 'ODBC Waterfault', 'Unrecoverable', 'MC', 'Reboot', '13', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1542, '1230649200', '16', '00', '30', '12', '2008', 'Tomo1', 'odbc water fault (x5)', 'Unrecoverable', 'SVD', 'reboot (x5)', '16', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1543, '1230715800', '10', '30', '31', '12', '2008', 'Tomo1', 'water flow fault', 'Unrecoverable', 'MC', 'reboot', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1544, '1230721200', '12', '00', '31', '12', '2008', 'Tomo1', 'water flow fault', 'Unrecoverable', 'MC', 'check flow meters => tous vert => reboot', '12', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1545, '1230726600', '13', '30', '31', '12', '2008', 'Tomo1', 'water flow fault', 'Unrecoverable', 'MC', 'reboot x2', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1546, '1230730800', '14', '40', '31', '12', '2008', 'Tomo1', 'Water flow fault', 'Unrecoverable', 'MC', 'reboot', '14', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1547, '1225202400', '15', '00', '28', '10', '2008', 'SP18', 'Impossibl de transferer le patient de visir vers RTD. fenetre d''erreur de communication dans visir', 'Informatique', 'Technique', 'Message d''erreur dans visir, impossible de faire la connection avec l''interface.\r\nReboot interface + PC visir (tjrs problème)\r\nReboot interface + PC Visir + RTD + Hub Visir RTD\r\nOk', '15', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1548, '1226500800', '15', '40', '12', '11', '2008', 'SP18', 'Iview bloqué ', 'Machine', 'MC', 'Appel elekta remplacement carte controleur Iview\r\nremplacement fait le lendemain', '14', '35', '04', '55', 'oui');
INSERT INTO `pannes` VALUES(1549, '1228460400', '08', '00', '05', '12', '2008', 'SP18', 'Pb de démarrage', 'Machine', 'GD', 'Disjoncteurs HT déclenché\r\n=> réenclenchement + reboot all', '08', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1550, '1230681600', '01', '00', '31', '12', '2008', 'Tomo1', 'recoverable décembre 2008', 'Recoverable', 'Technique', '12*5'' = 1h', '02', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1551, '1230572700', '18', '45', '29', '12', '2008', 'Tomo1', 'Divers Bugs', 'Unrecoverable', 'Technique', 'reboot', '19', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1552, '1232466300', '16', '45', '20', '01', '2009', 'SP18', 'SP18 shutdown auto', 'Machine', 'MC', 'restart + bypass timer', '16', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1553, '1232609400', '08', '30', '22', '01', '2009', 'SP18', 'RTD bloqué au logoff après dosi', 'Informatique', 'MC', 'reboot + bypass timer', '08', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1554, '1232711400', '12', '50', '23', '01', '2009', 'SP18', 'shut down sans vouloir RTD', 'Machine', 'MC', 'reboot 3x + bypass timer', '13', '20', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1555, '1232983200', '16', '20', '26', '01', '2009', 'SP18', 'Event viewer VX icom failure', 'Machine', 'MC', 'reboot all RTD + visir', '16', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1556, '1231752900', '10', '35', '12', '01', '2009', 'SL25', 'Iview bloqué', 'Machine', 'GD', 'off/on du disjoncteur + débloquage à la main de l''iview', '10', '40', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1557, '1232357400', '10', '30', '19', '01', '2009', 'SL25', 'Iview bloqué', 'Machine', 'MC', 'Switch disjoncteur iview', '10', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1558, '1233147900', '14', '05', '28', '01', '2009', 'SL25', 'reset motors impossible à faire', 'Machine', 'GD', 'Floche Iview tombé par terre (merci les inf. de la dire tout de suite)\r\nremplacement de la floche => ok', '14', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1559, '1232017200', '12', '00', '15', '01', '2009', 'SL75', 'Milar cassé', 'Machine', '', 'remplacement du milar par nos soins. + QC du réticule et du champ lumineux', '15', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1560, '1233062400', '14', '20', '27', '01', '2009', 'SL75', 'Collision entre la table (bouton AU) et le collimateur', 'Machine', 'GD', 'debloquage situation, reset motors', '14', '25', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1561, '1231177500', '18', '45', '05', '01', '2009', 'Tomo1', 'divers bugs', 'Unrecoverable', 'Technique', 'reboot', '19', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1562, '1231164000', '15', '00', '05', '01', '2009', 'Tomo1', 'MLC error final leaf activational errors puts the occurences over the tolerances', 'Unrecoverable', 'Technique', 'remettre pression dans la machine', '15', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1563, '1231165800', '15', '30', '05', '01', '2009', 'Tomo1', 'cable alim ventilo arraché par le gantry', 'Unrecoverable', 'Technique', 'remplacement du cable par un autre (defectueux...) et replace again... => ok', '06', '00', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(1564, '1231238100', '11', '35', '06', '01', '2009', 'Tomo1', 'bug apres scan (soft shut down) + MLC leaf in wrong position', 'Unrecoverable', 'SVD', 'ajout de pression d''air => 65', '12', '45', '01', '10', 'oui');
INSERT INTO `pannes` VALUES(1565, '1231248600', '14', '30', '06', '01', '2009', 'Tomo1', 'MLC leaf in wrong position', 'Unrecoverable', 'SVD', 'essai en + et - pression => not ok\r\nremplacement second verification board => not ok\r\nRemplacement MLC controller', '20', '00', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(1566, '1231416300', '13', '05', '08', '01', '2009', 'Tomo1', 'ssm error state', 'Unrecoverable', 'GD', 'reboot all', '13', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1567, '1231417200', '13', '20', '08', '01', '2009', 'Tomo1', 'ssm error state', 'Unrecoverable', 'GD', 'reboot all + rotvar', '13', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1568, '1231428600', '16', '30', '08', '01', '2009', 'Tomo1', 'Autoregistration ne fonctionne plus', 'Unrecoverable', 'SVD', 'reboot all', '16', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1569, '1232006400', '09', '00', '15', '01', '2009', 'Tomo1', 'gantry velocity', 'Unrecoverable', 'GD', 'reboot', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1570, '1232092800', '09', '00', '16', '01', '2009', 'Tomo1', 'MVCT does not work', 'Unrecoverable', 'MC', 'RTT + velocity error', '10', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1571, '1232028000', '15', '00', '15', '01', '2009', 'Tomo1', 'ergistration automatique ne fonctionne plus', 'Unrecoverable', 'GD', 'reboot', '15', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1572, '1232458800', '14', '40', '20', '01', '2009', 'Tomo1', 'Gun board', 'Unrecoverable', 'GD', 'reboot all', '14', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1573, '1232637600', '16', '20', '22', '01', '2009', 'Tomo1', 'Gantry out of tolerance', 'Unrecoverable', 'GD', 'reboot all + rotation du gantry 10min à 1400rpm + airscan + static SL25 + airscan', '17', '10', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1574, '1232692200', '07', '30', '23', '01', '2009', 'Tomo1', 'Gantry error', 'Unrecoverable', 'SVD', 'Chauffer union : WarmupS + rotation sans air a 1400rpm', '09', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1575, '1232607600', '08', '00', '22', '01', '2009', 'Tomo1', 'Gantry error', 'Unrecoverable', 'SVD', 'Chauffer union : WarmupS + rotation sans air a 1400rpm', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1576, '1233072300', '17', '05', '27', '01', '2009', 'Tomo1', 'Gunboard logic error', 'Unrecoverable', 'SVD', 'reboot all', '17', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1577, '1233222000', '10', '40', '29', '01', '2009', 'Tomo1', 'Probleme mvct', 'Unrecoverable', 'GD', 'reboot all', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1578, '1233568800', '11', '00', '02', '02', '2009', 'Tomo1', 'Gunboard error + laser error', 'Unrecoverable', 'GD', 'reboot all *2', '11', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1579, '1233438600', '22', '50', '31', '01', '2009', 'Tomo1', 'recoverable janvier 2009', 'Recoverable', 'SVD', '13*5'' = 1h05', '23', '55', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(1580, '1234519200', '11', '00', '13', '02', '2009', 'SP18', 'Charge en', 'Machine', 'Technique', 'Durant le traitement en Electron E18, il y as un inhibit charge en qui apparait mais qui n interrompt pas le faisceau. Selon Elekta, c est un bug. ', '11', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1581, '1234344600', '10', '30', '11', '02', '2009', 'Tomo1', 'Soft planté a cause de scan trop volumineux', 'Unrecoverable', 'SVD', 'reboot all', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1582, '1234506600', '07', '30', '13', '02', '2009', 'Tomo1', 'Machine  timing hardware is not connect', 'Unrecoverable', 'Physique', 'reboot all', '07', '40', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1583, '1234767600', '08', '00', '16', '02', '2009', 'Tomo1', 'Remplacemen du DRS', 'Unrecoverable', 'SVD', 'remplacement drs', '17', '30', '09', '30', 'oui');
INSERT INTO `pannes` VALUES(1584, '1235637900', '09', '45', '26', '02', '2009', 'Tomo1', 'Airscan needed to be done', 'Recoverable', 'MC', 'reboot dataserver + airscan', '10', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1585, '1235858400', '23', '00', '28', '02', '2009', 'Tomo1', 'recoverable fevrier 2009', 'Recoverable', 'SVD', '7 x 5min = 35min', '23', '35', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(1586, '1233574500', '12', '35', '02', '02', '2009', 'SP18', 'Connexion perdue par visir => rtd reboot', 'Machine', 'Physique', 'reboot + probleme bypass timer (décompte)\r\nFusible HT décleché sur le control cabinet\r\n=> reboot all + wait\r\npourquoi ce fusible a-t-til déclenché??', '13', '20', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1587, '1233819900', '08', '45', '05', '02', '2009', 'SP18', 'perte de communication cms/smi', 'Machine', 'MC', 'terminate + reboot visir (pas forcément utile)', '08', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1588, '1233828300', '11', '05', '05', '02', '2009', 'SP18', 'Perte de communication SMI', 'Machine', 'MC', 'rtd 220 top\r\nvisir 220 top\r\nterminate + relance du champ', '11', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1589, '1234432800', '11', '00', '12', '02', '2009', 'SP18', '3 x perte de connexion visir-rtd', 'Informatique', 'SVD', 'fermer visir et revenir d''un cran dans le soft du rtd puis relancer', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1590, '1235637600', '09', '40', '26', '02', '2009', 'SP18', 'LCS link perte de connexion', 'Machine', 'SVD', 'reboot all + bypass timer', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1591, '1235718000', '08', '00', '27', '02', '2009', 'SP18', 'LCS link (machine powerdowned)', 'Machine', 'SVD', 'reboot all', '08', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1592, '1235728800', '11', '00', '27', '02', '2009', 'SP18', 'ampoule dsp-mètre HS', 'Machine', 'SVD', 'remplacement ampoule', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1593, '1233236100', '14', '35', '29', '01', '2009', 'SL25', 'plantage entre visir et rtd', 'Informatique', 'GD', 'après  cliché (Iview ou K7)\r\nlog off/on rtd et visir', '14', '40', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1594, '1233576900', '13', '15', '02', '02', '2009', 'SL25', 'N° de plombs mal reconnu par la machine (ne lit pas le N°92)', 'Machine', 'GD', 'collage du pb sur un autre plateau', '13', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1595, '1237459500', '11', '45', '19', '03', '2009', 'Tomo1', 'corba server', 'Unrecoverable', 'SVD', 'Perte de communication avec tomodata. reboot tomodata + machine\r\n', '12', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1596, '1237483800', '18', '30', '19', '03', '2009', 'Tomo1', 'gun board logic fault detected', 'Unrecoverable', 'GD', 'reboot all', '18', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1597, '1238608800', '20', '00', '01', '04', '2009', 'Tomo1', 'recoverable de mars', 'Recoverable', 'GD', 'erreur recoverable de mars\r\n\r\n12 x 5 = 60 minutes', '21', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1598, '1238692800', '19', '20', '02', '04', '2009', 'Tomo1', 'Wait wait', 'Unrecoverable', 'MC', 'Reboot all', '19', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1599, '1239030000', '17', '00', '06', '04', '2009', 'Tomo1', 'Low dose violation', 'Unrecoverable', 'GD', 'Remplacement pulse shaper + Magnetron.\r\navec probleme SF6.\r\ninversion de la maintenance\r\n', '16', '00', '08', '00', 'oui');
INSERT INTO `pannes` VALUES(1600, '1241456400', '19', '00', '04', '05', '2009', 'Tomo1', 'Dose rate trop haut', 'Recoverable', 'Technique', 'Traitement de 10 Gy => rate monte à 920 MU/min\r\n\r\nRedescend petet à petit lorsqu''on lance des procédures "normales"', '20', '10', '01', '10', 'oui');
INSERT INTO `pannes` VALUES(1601, '1241557200', '23', '00', '05', '05', '2009', 'Tomo1', 'recoverable avril 2009', 'Recoverable', 'GD', '8 * 5min = 40 min', '23', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1602, '1241521200', '13', '00', '05', '05', '2009', 'Tomo1', 'logiciel bloqué au login', 'Unrecoverable', 'SVD', 'reboot all', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1603, '1241698200', '14', '10', '07', '05', '2009', 'Tomo1', 'Probleme d''alimentation éléctrique (microcoupure réseau??)', 'Unrecoverable', 'Technique', 'reboot all', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1604, '1239182400', '11', '20', '08', '04', '2009', 'SL75', 'Wedge bloqué', 'Machine', 'SVD', 'Déblocage en faisant tourner l''axe du wedge', '12', '20', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1605, '1239280200', '14', '30', '09', '04', '2009', 'SL75', 'Wedge bloqué', 'Machine', 'SVD', 'reboot all => ok', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1606, '1239368400', '15', '00', '10', '04', '2009', 'SL75', 'Wedge bloqué', 'Machine', 'SVD', 'Remplacement carte relais', '15', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1607, '1239694200', '09', '30', '14', '04', '2009', 'SL75', 'Wedge Bloqué', 'Machine', 'SVD', 'Remplacement du switch par Elekta', '11', '10', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1608, '1239030000', '17', '00', '06', '04', '2009', 'SL25', 'Chambre down', 'Machine', 'GD', 'Remplacement de la chambre par Elekta (arret lundi soir, start mercredi AM mais peu de patient car après CMS)', '17', '00', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(1609, '1239688800', '08', '00', '14', '04', '2009', 'SL25', 'Dose rate error', 'Machine', 'SVD', 'Chauffer les X18 en control T +- 200 tops', '09', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1610, '1239775200', '08', '00', '15', '04', '2009', 'SL25', 'I view ne starte pas automatiquement', 'Machine', 'Technique', 'Recherche du problème par Elekta => optocoupleur à changer??', '10', '10', '01', '10', 'oui');
INSERT INTO `pannes` VALUES(1611, '1240822800', '11', '00', '27', '04', '2009', 'SL25', 'Iview bloqué', 'Machine', 'SVD', 'déclenchement et réenclechement disjoncteur "Iview arm"', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1612, '1242044400', '14', '20', '11', '05', '2009', 'Tomo1', 'PC a redemarrer tout seul', 'Unrecoverable', 'SVD', 'Reboot All', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1613, '1242111600', '09', '00', '12', '05', '2009', 'Tomo1', 'Dose to low', 'Unrecoverable', 'Technique', '128 puis 35 UM\r\nDifferentes procedures plus TQA plus Rotvar\r\nOK', '10', '20', '01', '20', 'oui');
INSERT INTO `pannes` VALUES(1614, '1242143100', '17', '45', '12', '05', '2009', 'Tomo1', 'Dose too high', 'Unrecoverable', 'Technique', 'Diminution du PFN de 4.26 a 4.20', '19', '00', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1615, '1242151200', '20', '00', '12', '05', '2009', 'Tomo1', 'Leaf wrong position', 'Unrecoverable', 'Physique', 'Reboot reboot reboot...\r\nNo Scan Treat OK', '20', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1616, '1242225900', '16', '45', '13', '05', '2009', 'Tomo1', '2x water flow', 'Unrecoverable', 'Technique', 'Tuyaux percé donc fuite d eau.\r\nRemplacement du tuyaux par Tomo', '19', '00', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(1617, '1242812400', '11', '40', '20', '05', '2009', 'Tomo1', 'Plus de matching automatique', 'Recoverable', 'SVD', 'Reboot tomodata + machine', '11', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1618, '1243246800', '12', '20', '25', '05', '2009', 'Tomo1', 'HV PSU Phase', 'Unrecoverable', 'SVD', 'Reboot all', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1619, '1243258200', '15', '30', '25', '05', '2009', 'Tomo1', 'Dose non stable et trop haute', 'Machine', 'SVD', 'Reglage PFN 4.25 a 4.20', '16', '35', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(1620, '1242033000', '11', '10', '11', '05', '2009', 'SL25', 'Iview bloqué', 'Machine', 'GD', 'Off, on sur le disjoncteur de l iview', '11', '15', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1621, '1241251200', '10', '00', '02', '05', '2009', 'SL25', 'M fil Vmon', 'Machine', 'MC', 'Plus d eau... Pression a 0 bar.\r\nAppel service technique et inversion des filtres.', '10', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1622, '1243947600', '15', '00', '02', '06', '2009', 'SL25', 'Bending Coarse', 'Machine', 'MC', 'Plus d energie superieur au E15;\r\nremplacement du thyratron par Elekta', '10', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1623, '1244021400', '11', '30', '03', '06', '2009', 'SL25', 'indique un num de plateau alors qu il n y as pas de plateau', 'Machine', 'SVD', 'Enlever et remettre le porte plateau sur le colli. Ok', '11', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1624, '1244464200', '14', '30', '08', '06', '2009', 'SL25', 'HT crowbar', 'Machine', 'Technique', 'Remplacement de la fibre optique sur opt1.\r\nCommande d une nouvelle fibre optique chez Elekta.', '14', '40', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1625, '1245052800', '10', '00', '15', '06', '2009', 'SL25', 'GTO O/L', 'Machine', 'GD', 'Test des fibre optique, plus de spare, donc aller chercher chez Elekta une nouvelle et remplacement. Dosi.', '12', '15', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(1626, '1245843000', '13', '30', '24', '06', '2009', 'SL25', 'Iview Bloqué', 'Machine', 'MC', 'Switch Off/On du fusible', '13', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1627, '1246014000', '13', '00', '26', '06', '2009', 'SL25', 'Iview bloque en open', 'Machine', 'GD', 'Off/On du disjoncteur de l iview', '13', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1628, '1248077400', '10', '10', '20', '07', '2009', 'SL25', 'DROT, HTB interlock', 'Machine', 'MC', 'D abort DROT, tout est bloque, meme en service, rien a faire.\r\nReboot et probleme toujours la, nouveau reboot et tout est OK', '10', '50', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1629, '1249991400', '13', '50', '11', '08', '2009', 'SL25', 'Plus de telemetre', 'Machine', 'Technique', 'Remplacement de l ampoule du telemetre ensuite QC.\r\nDSP 100: mesure 47.3\r\nDSP 80: Mesure 27.3\r\nDSP 120: Mesure 67.4', '14', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1630, '1251264600', '07', '30', '26', '08', '2009', 'SL25', 'Thy grid', 'Machine', 'MC', 'Check des fusibles, fibres optiques...\r\nAu final: fusible FS32A sur T2 de l alimentation du thyratron, dans la cage de faraday.', '11', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1631, '1251381600', '16', '00', '27', '08', '2009', 'SL25', '2T err en E20 a 38 degres', 'Machine', 'MC', 'Modification du 2T Bal de 21.30 a 20.90 en E20. dosi victreen.\r\n', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1632, '1243590300', '11', '45', '29', '05', '2009', 'Tomo1', 'dose rate to high', 'Unrecoverable', 'Physique', 'Remplacement des cables MagV et Mag I par tomo.\r\nDiminution du pf de 4.26 a 4.16 et dosi.', '14', '00', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(1633, '1243599600', '14', '20', '29', '05', '2009', 'Tomo1', 'Trip limit exceded hv psu phase loss', 'Unrecoverable', 'GD', 'Reboot all et dosi 25mm', '14', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1634, '1247650800', '11', '40', '15', '07', '2009', 'Tomo1', 'Planning tomo trop lente', 'Informatique', 'SVD', 'Reboot machine, tomodata et les cluster.', '11', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1635, '1245137400', '09', '30', '16', '06', '2009', 'Tomo1', 'Trip limit exceeded hv psu phase loss', 'Unrecoverable', 'GD', 'Arc dans le wave guide. nettoyage et remplacement des joints par tomo.', '20', '00', '09', '30', 'oui');
INSERT INTO `pannes` VALUES(1636, '1246255200', '08', '00', '29', '06', '2009', 'Tomo1', 'MLC error', 'Unrecoverable', 'GD', 'Remplacement d une valve.', '12', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1637, '1246514400', '08', '00', '02', '07', '2009', 'Tomo1', 'MLC error pendant trait 30%', 'Unrecoverable', 'GD', 'Reboot all', '08', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1638, '1246521600', '10', '00', '02', '07', '2009', 'Tomo1', 'total recoverables de juin', 'Recoverable', 'GD', 'Total des recoverable de juin.\r\n20 x 5 donc 1H40', '11', '40', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1639, '1246518000', '09', '00', '02', '07', '2009', 'Tomo1', 'MVCT out of time', 'Unrecoverable', 'Physique', 'reboot 4X', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1640, '1246600800', '08', '00', '03', '07', '2009', 'Tomo1', 'Final leaf positinal error puts the occurences over the tolerance', 'Unrecoverable', 'GD', 'Remplacement du pcb controleur du MLC', '15', '00', '07', '00', 'oui');
INSERT INTO `pannes` VALUES(1641, '1247144400', '15', '00', '09', '07', '2009', 'Tomo1', 'Gun board logic problem detected', 'Unrecoverable', 'GD', 'Pas moyen d avoir le moindre faisceau.\r\nRemplacement du linac par tomo.', '20', '00', '17', '00', 'oui');
INSERT INTO `pannes` VALUES(1642, '1247467500', '08', '45', '13', '07', '2009', 'Tomo1', 'Le transfert des donnees apres MVCT ne passe pas a la machine', 'Informatique', 'GD', 'Reboot all', '08', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1643, '1247664900', '15', '35', '15', '07', '2009', 'Tomo1', 'Gun board logic problem detected', 'Unrecoverable', 'GD', 'Reboot all', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1644, '1248777000', '12', '30', '28', '07', '2009', 'Tomo1', 'Pb de fusion d image, plus possible en automatique', 'Recoverable', 'GD', 'Reboot du data server et de la machine', '12', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1645, '1248944400', '11', '00', '30', '07', '2009', 'Tomo1', 'Matching auto ne marche plus', 'Recoverable', 'MC', 'Reboot all', '01', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1646, '1249113600', '10', '00', '01', '08', '2009', 'Tomo1', 'recoverable juillet', 'Recoverable', 'SVD', '15 x 5 donc 1H15', '11', '15', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1647, '1250241300', '11', '15', '14', '08', '2009', 'Tomo1', 'la machine ne cloture pas le traitement', 'Recoverable', 'GD', 'Log off et reboot all', '11', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1648, '1250064000', '10', '00', '12', '08', '2009', 'Tomo1', 'OBC, phase error', 'Unrecoverable', 'Technique', 'Remplacement du SSM par tomo et du guide d onde.', '12', '00', '10', '00', 'oui');
INSERT INTO `pannes` VALUES(1649, '1250603100', '15', '45', '18', '08', '2009', 'Tomo1', 'linac hardware error', 'Unrecoverable', 'MC', 'Reboot 2x car 2x erreur', '16', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1650, '1251349200', '07', '00', '27', '08', '2009', 'Tomo1', 'MLC wrong position', 'Unrecoverable', 'Physique', 'Tomo a debloque la lame', '10', '10', '02', '10', 'oui');
INSERT INTO `pannes` VALUES(1651, '1251384300', '16', '45', '27', '08', '2009', 'Tomo1', 'wait... Wait...', 'Unrecoverable', 'MC', 'reboot 2x', '17', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1652, '1251349200', '07', '00', '27', '08', '2009', 'Tomo1', 'SSM error', 'Unrecoverable', 'SVD', 'Fuite d eau a cause du collier de serrage. ', '13', '00', '06', '30', 'oui');
INSERT INTO `pannes` VALUES(1653, '1251701400', '08', '50', '31', '08', '2009', 'Tomo1', 'Probleme soft tres lent a reagir', 'Informatique', 'SVD', 'Reboot all et dataserver', '09', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1654, '1251720300', '14', '05', '31', '08', '2009', 'Tomo1', 'plus d autoregistration', 'Machine', 'SVD', 'Reboot all', '14', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1655, '1251781200', '07', '00', '01', '09', '2009', 'Tomo1', 'la pompe se coupe apres demarage', 'Unrecoverable', 'SVD', 'Reboot bcp de fois pour lancer la machine', '09', '55', '01', '55', 'oui');
INSERT INTO `pannes` VALUES(1656, '1251756000 ', '10', '00', '31', '09', '2009', 'Tomo1', 'recoverable aout', 'Recoverable', 'SVD', '6 x5 donc 30 min', '10', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1657, '1252429200', '19', '00', '08', '09', '2009', 'Tomo1', 'dose rate to low', 'Unrecoverable', 'Technique', 'augmentation du pfn de 3.96 a 3.98 par FV', '19', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1658, '1254123600', '09', '40', '28', '09', '2009', 'SL25', 'Gantry bloqué', 'Machine', 'MC', 'Check en debloquant le frein manuellement ca marche.\r\nRemplacement de ma carte de controle du frein dans le control cabinet : HME num: 4513 930 2974', '11', '25', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(1659, '1244547000', '13', '30', '09', '06', '2009', 'SL75', 'decallage de 3 cm en lateral de la table', 'Machine', 'Technique', 'Une collision dans la matinée a du provoquer le probleme.\r\nMecaniquement table OK, iso rot OK. remise a zero du potentiometre de la table dans la partie gauche patient du gantry.', '14', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1660, '1245066000', '13', '40', '15', '06', '2009', 'SL75', 'Collision tete table', 'Machine', 'SVD', 'Check de la table OK', '13', '45', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1661, '1246363200', '14', '00', '30', '06', '2009', 'SL75', 'Terminated 12 + timer a chaque faisceau pour 1 patient', 'Machine', 'GD', 'Sortir de visir lancer des tops avec et sans wedge ok. Test avec visir en prenant le patient poly 75 Ok.\r\nJ ai rendu la machine sans rien trouver ni la possibiliter de reproduire le probleme.\r\nPlus de probleme de la journee.', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1662, '1246600800', '08', '00', '03', '07', '2009', 'SL75', 'HT overload', 'Machine', 'GD', 'Mag Fill V et Mag Fill I a zero.\r\nChangement d une carte brulée par le cable HT.\r\nFin de la panne le 06/07/09 a 12H00', '12', '00', '13', '00', 'oui');
INSERT INTO `pannes` VALUES(1663, '1247468400', '09', '00', '13', '07', '2009', 'SL75', 'Pas d auto setup', 'Machine', 'GD', 'Le SL75 est toujours en stand by et non en preparatorie. Il faut pas oublier de tourner la clef apres la dosi.', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1665, '1252648800', '08', '00', '11', '09', '2009', 'Tomo1', 'HV PSU phase lost', 'Unrecoverable', 'GD', 'Plusieurs reboot, scan ok, warm up ok, mais pas pour les traitements.\r\nDose à 254000 au lieu de 300000.\r\nAvec Tomo, nettoyage via fréquence du magnetron (sweeping) + dosi 2.5', '13', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(1666, '1254427200', '22', '00', '31', '09', '2009', 'Tomo1', 'Recoverable septembre 2009', 'Recoverable', 'SVD', 'recoverable septembre 2009 \r\n23*5\\'' = 1h55', '23', '55', '01', '55', 'oui');
INSERT INTO `pannes` VALUES(1667, '1254487800', '14', '50', '02', '10', '2009', 'Tomo1', 'Corba server error', 'Unrecoverable', 'MC', 'Reboot machine+OS+Tomodata+PS', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1668, '1255972200', '19', '10', '19', '10', '2009', 'Tomo1', 'STC error', 'Unrecoverable', 'SVD', 'reboot all * 2', '19', '30', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1669, '1256217000', '15', '10', '22', '10', '2009', 'Tomo1', 'OBC Error', 'Unrecoverable', 'MC', 'reboot all', '15', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1670, '1256218200', '15', '30', '22', '10', '2009', 'Tomo1', 'trigger error', 'Unrecoverable', 'MC', 'reboot + rotation du gantry sans gaz pendant 4 à 5 minutes', '16', '10', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1671, '1256227200', '18', '00', '22', '10', '2009', 'Tomo1', 'STC + OBC error', 'Unrecoverable', 'MC', 'reboot * 3', '18', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1672, '1256811600', '11', '20', '29', '10', '2009', 'Tomo1', 'machine shutdown', 'Unrecoverable', 'GD', 'reboot all', '11', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1673, '1256923200', '18', '20', '30', '10', '2009', 'Tomo1', 'machine shut down', 'Unrecoverable', 'GD', 'reboot all', '18', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1674, '1258705200', '09', '20', '20', '11', '2009', 'Tomo1', 'did not receive safety packet from OBC DRS safety', 'Unrecoverable', 'GD', 'reboot all', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1675, '1257006600', '17', '30', '31', '10', '2009', 'Tomo1', 'recoverable octobre 2009', 'Recoverable', 'SVD', 'recoverable octobre 2009\r\n76*5\\'' = 6h20', '23', '30', '06', '20', 'oui');
INSERT INTO `pannes` VALUES(1676, '1257260100', '15', '55', '03', '11', '2009', 'Tomo1', 'security packet not received from OBC', 'Unrecoverable', 'SVD', 'reboot all', '16', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1677, '1257269400', '18', '30', '03', '11', '2009', 'Tomo1', 'Unrecoverable', 'Unrecoverable', 'Physique', '2* reboot all', '18', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1678, '1257328800', '11', '00', '04', '11', '2009', 'Tomo1', 'unrecoverable', 'Unrecoverable', 'SVD', 'reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1679, '1257331500', '11', '45', '04', '11', '2009', 'Tomo1', 'Unrecoverable', 'Unrecoverable', 'Physique', 'reboot all', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1680, '1257334800', '12', '40', '04', '11', '2009', 'Tomo1', 'reboot system', 'Unrecoverable', 'GD', 'reboot all', '12', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1681, '1257338400', '13', '40', '04', '11', '2009', 'Tomo1', 'reboot system', 'Unrecoverable', 'GD', 'reboot all', '13', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1682, '1257423600', '13', '20', '05', '11', '2009', 'Tomo1', '"Magnetron ovetremp" ', 'Unrecoverable', 'SVD', 'Procédure de traitements très longue (600 sec.)\r\nreboot all\r\n\r\nNe s\\''est pas reproduit les jours suivants', '13', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1683, '1257753000', '08', '50', '09', '11', '2009', 'Tomo1', 'Get doc failed', 'Unrecoverable', 'MC', 'Reboot', '09', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1684, '1257775500', '15', '05', '09', '11', '2009', 'Tomo1', 'Gun board logic error', 'Unrecoverable', 'GD', 'Patiente avec long traitement (820 sec.)\r\nreboot all', '15', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1685, '1257864000', '15', '40', '10', '11', '2009', 'Tomo1', 'Drap bloqué dans la table', 'Machine', 'MC', 'Avancer la table à fond, dévisser les 4 vis sous le table top, reculer à fond, dévisser les 3 vis au pied de table top, le soulever, drap retiré.\r\nQC stepwedge', '16', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1686, '1257875100', '18', '45', '10', '11', '2009', 'Tomo1', 'MVCT set high violation point', 'Unrecoverable', 'MC', 'diminution du pfn MVCT 2.98 => 2.97', '19', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1687, '1258017900', '10', '25', '12', '11', '2009', 'Tomo1', 'Trip limit exceeded, HV PSU phase lost 2*', 'Unrecoverable', 'GD', 'reboot all', '10', '45', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1688, '1258362600', '10', '10', '16', '11', '2009', 'Tomo1', 'One of the ce-boxes have failed the watchdog', 'Unrecoverable', 'GD', 'reboot all', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1689, '1258376400', '14', '00', '16', '11', '2009', 'Tomo1', 'did not receive safety packet from STC *2', 'Unrecoverable', 'GD', 'reboot all', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1690, '1258379400', '14', '50', '16', '11', '2009', 'Tomo1', 'OBC Error', 'Unrecoverable', 'SVD', 'Reboot All', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1691, '1258380300', '15', '05', '16', '11', '2009', 'Tomo1', 'OBC error', 'Unrecoverable', 'SVD', 'Reboot all', '15', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1692, '1258387200', '17', '00', '16', '11', '2009', 'Tomo1', 'Divers : "errors drs" "error communication PCP" "Error STC", etc', 'Unrecoverable', 'SVD', 'Reboot plusieurs fois, arrêts des traitements, intervention tomo\r\n\r\nNettoyage Slips rings (coulée de graisse sur les slips => problemes de com.)', '23', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1693, '1258445100', '09', '05', '17', '11', '2009', 'Tomo1', 'Stop current task : couch task refused to exit errno: 3997700', 'Unrecoverable', 'GD', 'reboot all', '09', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1694, '1258449600', '10', '20', '17', '11', '2009', 'Tomo1', 'Didi not receive safety pasckets from OBC', 'Unrecoverable', 'GD', 'Reboot all', '10', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1695, '1258450800', '10', '40', '17', '11', '2009', 'Tomo1', 'Didi not receive safety pasckets from OBC', 'Unrecoverable', 'GD', 'reboot all', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1696, '1258455600', '12', '00', '17', '11', '2009', 'Tomo1', 'Didi not receive safety pasckets from OBC', 'Unrecoverable', 'GD', 'Reboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1697, '1258456800', '12', '20', '17', '11', '2009', 'Tomo1', 'Didi not receive safety pasckets from OBC', 'Unrecoverable', 'GD', 'Reboot all', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1698, '1258459200', '13', '00', '17', '11', '2009', 'Tomo1', 'Didi not receive safety pasckets from OBC', 'Unrecoverable', 'GD', 'Reboot all', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1699, '1258460100', '13', '15', '17', '11', '2009', 'Tomo1', 'Didi not receive safety pasckets from OBC * 4', 'Unrecoverable', 'GD', 'Reboot all * 4', '13', '55', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1700, '1258462800', '14', '00', '17', '11', '2009', 'Tomo1', 'Trop de unrecoverables "OBC, STC, DRS, ..."', 'Unrecoverable', 'GD', 'Fin des traitements => machine pour Tomo\r\n=> Nettoyage slip rings + changement balais\r\nLes balais étaient gras et salissaient les slips rings => mauvais contacts', '20', '00', '06', '00', 'oui');
INSERT INTO `pannes` VALUES(1701, '1258030800', '14', '00', '12', '11', '2009', 'Tomo1', 'MVCT + treat : dose too low/ too high', 'Unrecoverable', 'Technique', 'Arcing => remplacement target + Magnetron', '24', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1702, '1259686800', '18', '00', '01', '12', '2009', 'Tomo1', 'Error logic problem', 'Unrecoverable', 'MC', 'reboot', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1703, '1259692200', '19', '30', '31', '11', '2009', 'Tomo1', 'Recoverable novembre 2009', 'Recoverable', 'SVD', '51*5\\'' = 4h15 min', '23', '45', '04', '15', 'oui');
INSERT INTO `pannes` VALUES(1704, '1259921100', '11', '05', '04', '12', '2009', 'Tomo1', 'Tomodata reboot', 'Unrecoverable', 'MC', 'reboot all', '11', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1705, '1259915400', '09', '30', '04', '12', '2009', 'Tomo1', 'logic error', 'Unrecoverable', 'GD', 'reboot all', '08', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1706, '1260186000', '12', '40', '07', '12', '2009', 'Tomo1', '"Oil overtemp" => machine shutdown', 'Unrecoverable', 'SVD', 'reboot all', '12', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1707, '1260253800', '07', '30', '08', '12', '2009', 'Tomo1', 'Laser not ready', 'Unrecoverable', 'SVD', 'reboot plusieurs fois\r\nremplacement filtre sur cablage laser', '10', '45', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1708, '1260266400', '11', '00', '08', '12', '2009', 'Tomo1', 'Oil pressure error', 'Unrecoverable', 'MC', 'reboot *2', '11', '10', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1709, '1260340800', '07', '40', '09', '12', '2009', 'Tomo1', '"Oil overtemp" => machine shutdown', 'Unrecoverable', 'SVD', 'reboot', '07', '50', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1710, '1260806400', '17', '00', '14', '12', '2009', 'Tomo1', 'Console + PCP ne répondent plus Stop sur la console ne fait rien...', 'Unrecoverable', 'SVD', 'Reboot all => ok', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1711, '1260886500', '15', '15', '15', '12', '2009', 'Tomo1', 'Console et PCP ne répondent plus... Si stop : rien non plus...', 'Unrecoverable', 'SVD', 'Reboot all => ok', '15', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1712, '1261124700', '09', '25', '18', '12', '2009', 'Tomo1', 'Machine has shutdown', 'Unrecoverable', 'MC', 'Reboot', '09', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1713, '1261983600', '08', '00', '28', '12', '2009', 'Tomo1', 'OBC error : waterflow fault', 'Unrecoverable', 'SVD', 'Remettre pression sur le vase d\\''expansion avec la pompe à vélo. Vérifie pression sur le manomètre mettre minimum 80...', '09', '40', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1714, '1261993800', '10', '50', '28', '12', '2009', 'Tomo1', 'Machine has shutdown', 'Unrecoverable', 'SVD', 'Reboot all', '11', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1715, '1262000400', '12', '40', '28', '12', '2009', 'Tomo1', 'Error logic problem', 'Unrecoverable', 'MC', 'Reboot all', '12', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1716, '1262179200', '14', '20', '30', '12', '2009', 'Tomo1', 'Waterflow error in gun board', 'Unrecoverable', 'MC', 'Reboot', '14', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1717, '1262298000', '23', '20', '31', '12', '2009', 'Tomo1', 'Recoverable décembre 2009', 'Recoverable', 'SVD', '6*5\\'' = 30\\''', '23', '50', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1718, '1262586600', '07', '30', '04', '01', '2010', 'Tomo1', 'Machine timing or detector hardware is not correct"', 'Unrecoverable', 'SVD', 'Reboot plusieurs fois => rien\r\nFrotter slips rings (attention : couper tensions sur slips rings)et faire tourner gantry\r\n=> ok', '09', '45', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1719, '1262606400', '13', '00', '04', '01', '2010', 'Tomo1', 'Machine timing or detector hardware is not correct', 'Unrecoverable', 'SVD', 'Faire tounrer gantry manuellement + reboot\r\n=> OK', '13', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1720, '1256277600', '08', '00', '23', '10', '2009', 'SL25', 'leaf too narrow', 'Machine', 'SVD', 'reglage focus champs lumineux', '08', '10', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1721, '1256560800', '13', '40', '26', '10', '2009', 'SL25', 'MM Con C', 'Machine', 'SVD', 'Arret d\\''urgence de la table enfoncé', '13', '15', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1722, '1256104800', '08', '00', '21', '10', '2009', 'SL75', 'Le colli ne tourne plus que dans un sens', 'Machine', 'GD', 'Controle rapide sur la carte contro colli rot\r\non peut faire l\\''échange avec le gantry (gantry rot), ce sont les mêms cartes.\r\nIci ce n\\''est pas le problème. Le problème est au niveau du switch de fin de course. => regraissage du chariot \\"sur ressort\\" qui reste bloqué sur un  switch au lie de se remettre sur sa position de repos.', '09', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1723, '1237892400', '12', '00', '24', '03', '2009', 'SP18', 'LCS link', 'Machine', 'SVD', 'Reboot + bypass des timers (set à 10 min)', '12', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1724, '1237911900', '17', '25', '24', '03', '2009', 'SP18', 'HT interlock RHA', 'Machine', 'MC', 'reboot, check des fusibles, suspends, rien n\\''y fait.\r\nOn attend tel Yavn ouis tout OK', '19', '30', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1725, '1238389200', '07', '00', '30', '03', '2009', 'SP18', 'Room doors 1 et 2 + external inhibits ne disparaissent pas avec les portes fermées et la clé tournée', 'Machine', 'SVD', 'Remplacement relais sur la carte interface des interlock (dans tableau électrique)', '13', '15', '05', '15', 'oui');
INSERT INTO `pannes` VALUES(1726, '1241255700', '11', '15', '02', '05', '2009', 'SP18', 'X18 Hors service', 'Machine', 'MC', 'Tel elekta => rdv pour lundi priis avec Jan Car suspicion du magnétron\r\nEn fait c\\''est le HP shifter qui est bloqué\r\n=> traitement X6 Ok', '12', '30', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1727, '1241416800', '08', '00', '04', '05', '2009', 'SP18', 'REmplacement HP shifter', 'Machine', 'Technique', '2 jours d\\''arrêt avec inversion de la maintenance', '18', '00', '07', '00', 'oui');
INSERT INTO `pannes` VALUES(1728, '1243924800', '08', '40', '02', '06', '2009', 'SP18', 'Log off RTD et ensuite problème de logins', 'Machine', 'MC', 'reboot RTD + bypass des timers', '09', '10', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1729, '1244187600', '09', '40', '05', '06', '2009', 'SP18', 'Coupure générale de courant pdt 15 min', 'Machine', 'SVD', 'redémarrage quand le courant est revenu... (laisser timers)', '10', '15', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(1730, '1244787900', '08', '25', '12', '06', '2009', 'SP18', 'RTD bloqué', 'Machine', 'SVD', 'Reboot All', '08', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1731, '1245153600', '14', '00', '16', '06', '2009', 'SP18', 'Ampoule télémètre HS', 'Machine', 'MC', 'remplacement amploule + QC', '14', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1732, '1246514400', '08', '00', '02', '07', '2009', 'SP18', 'LCS link faillure', 'Machine', 'GD', 'Vérification des disjoncteurs, le HTCA avait déclenché. \r\nRéarmement du disjoncteur + reboot all => ok', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1733, '1246518000', '09', '00', '02', '07', '2009', 'SP18', 'Iview ON => visir bloqué', 'Machine', 'GD', 'Problème sur le reseau entre iview et Visir\r\nSoupcon sur version des switchs\r\nPlusieurs dans la journée', '10', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1734, '1247660100', '14', '15', '15', '07', '2009', 'SP18', 'Table clucth bloqué', 'Machine', 'MC', 'Après tout les essais, il a apparement suffit de monter descendre la table et tout est rentré dans l\\''ordre', '14', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1735, '1247731200', '10', '00', '16', '07', '2009', 'SP18', 'Coup de poing enfoncé par erreur (celui en bout de table qui est mal placé)', 'Machine', 'GD', 'reboot mais tjrs probleme => un disjoncteur HT était déclenché\r\nRéarmement du disjoncteur + reboot => ok', '10', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1736, '1248415200', '08', '00', '24', '07', '2009', 'SP18', 'RTD bloqué après Dosi', 'Machine', 'Technique', 'reboot all', '08', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1737, '1253001600', '10', '00', '15', '09', '2009', 'SP18', 'Diode O/L a fréquence trop rapide pour lancer du faisceau', 'Machine', 'GD', 'remplacement thyratron', '13', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1738, '1253016000', '14', '00', '15', '09', '2009', 'SP18', 'Ampoule champ lumineux HS', 'Machine', 'Physique', 'remplacement de l\\''ampoule', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1739, '1253176200', '10', '30', '17', '09', '2009', 'SP18', 'plus de lasers', 'Machine', 'GD', 'Attention, il y a un interrupteur sur le pupitre de commande pour les lasers!!', '10', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1740, '1253182500', '12', '15', '17', '09', '2009', 'SP18', 'Diode O/L', 'Machine', 'GD', 'Remplacement de la carte de gestion des fibres', '13', '15', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1741, '1254205800', '08', '30', '29', '09', '2009', 'SP18', 'Room doors 1', 'Machine', 'MC', 'Check with : - menuiserie\r\n                    - Elec : switch OK\r\n=> demande pour surélever les renforts en bois avec du métal', '09', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1742, '1254294000', '09', '00', '30', '09', '2009', 'SP18', 'Room doors 1', 'Machine', 'MC', 'Problème avec les détecteurs de présence\r\nRemplacement de celui défectueux (entrée du bunker)', '12', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1743, '1255671000', '07', '30', '16', '10', '2009', 'SP18', 'Gas press', 'Machine', 'MC', 'Après avoir vérifié si la bonbonne était vide (en forçant l\\''arrivée du gaz), remplacement de la bouteille de SF6', '08', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1744, '1263888600', '09', '10', '19', '01', '2010', 'SL75', 'Guide Fault', 'Machine', 'SVD', 'Pomper à l\\''arrière du Gantry', '09', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1745, '1259650800', '08', '00', '01', '12', '2009', 'SL75', 'Chambres', 'Machine', 'Technique', 'Remplacement des chambres', '17', '00', '09', '00', 'oui');
INSERT INTO `pannes` VALUES(1746, '1262786400', '15', '00', '06', '01', '2010', 'Tomo1', '"High speed data failure" et "trip limit exceeded"', 'Unrecoverable', 'SVD', '2 problèmes différents :\r\n* trip limit : arcking dans la magnétron => sweeping du magnetron par tomo\r\n*High speed data failure : remplacment d\\''un cable ethernet entre media converter et hub => pas resolu=> tomo continue a chercher', '17', '45', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1747, '1262620800', '17', '00', '04', '01', '2010', 'Tomo1', '"High speed data failure"', 'Unrecoverable', 'Technique', 'Remplacement auxiliary box + fuite h2o dans le rf window', '20', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1748, '1263290400', '11', '00', '12', '01', '2010', 'Tomo1', 'Machine need shut down', 'Unrecoverable', 'MC', 'La planning station a planté aussi...\r\nReboot all même le data server et les tomocl', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1749, '1263547500', '10', '25', '15', '01', '2010', 'Tomo1', 'logic error machine shutdown', 'Unrecoverable', 'Physique', 'reboot all', '10', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1750, '1264424400', '14', '00', '25', '01', '2010', 'Tomo1', 'Machine has shutdown apres scan car clé tournée sur treat a la place de programme', 'Unrecoverable', 'SVD', 'reboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1751, '1264425000', '14', '10', '25', '01', '2010', 'Tomo1', '"High speed data failure"', 'Unrecoverable', 'SVD', 'Reboot all', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1752, '1264534200', '20', '30', '26', '01', '2010', 'Tomo1', '\\', 'Unrecoverable', 'Physique', 'Arret des traitements car trop tard', '21', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1753, '1265128800', '17', '40', '02', '02', '2010', 'Tomo1', '"Communication error restart corba server"', 'Unrecoverable', 'Physique', 'reboot tomo et tomodata', '18', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1754, '1265190000', '10', '40', '03', '02', '2010', 'Tomo1', '"tomodata error"', 'Unrecoverable', 'SVD', 'reboot machine + tomodata', '10', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1755, '1267091700', '10', '55', '25', '02', '2010', 'Tomo1', '"High speed data failure"', 'Unrecoverable', 'SVD', 'reboot tomo', '11', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1756, '1263553800', '12', '10', '15', '01', '2010', 'SL25', 'prescription invalid sur RTD', 'Informatique', 'GD', 'Visir n\\''accepte pas la valeur table latéral (message en bas à gauche dans VISIR)\r\nremise à zero des valeur table latéral pour ce patient dans VISIR', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1757, '1265092200', '07', '30', '02', '02', '2010', 'SL25', '"gas press"', 'Machine', 'SVD', 'remettre du SF6\r\n\r\nOuvrir la bouteille et la vanne bleue sur le détendeur', '07', '50', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1758, '1265178600', '07', '30', '03', '02', '2010', 'SL25', '"gas press"', 'Machine', 'SVD', 'remettre du SF6\r\n\r\nOuvrir la bouteille et la vanne bleue sur le détendeur', '07', '50', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1759, '1264165200', '14', '00', '22', '01', '2010', 'SP18', '"frammer grabber error" "s/w error"', 'Machine', 'SVD', 'Disjoncteur HTCA déclenché\r\n\r\n=> Reenclencher + reboot', '14', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1760, '1265637600', '15', '00', '08', '02', '2010', 'Tomo1', 'Inf a poussé sur l''arret du''rgence sur le gantry', 'Machine', 'GD', 'Reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1761, '1265738400', '19', '00', '09', '02', '2010', 'Tomo1', 'Logic error', 'Unrecoverable', 'SVD', 'reboot', '19', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1762, '1266483900', '10', '05', '18', '02', '2010', 'Tomo1', 'Error failure table', 'Unrecoverable', 'GD', 'Reboot all', '10', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1763, '1266484500', '10', '15', '18', '02', '2010', 'Tomo1', 'High speed data failure', 'Unrecoverable', 'GD', 'Reboot all', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1764, '1266566100', '08', '55', '19', '02', '2010', 'Tomo1', 'Gunboard logic error', 'Unrecoverable', 'SVD', 'Reboot all', '09', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1765, '1266566700', '09', '05', '19', '02', '2010', 'Tomo1', '"High speed data failure" * 4', 'Unrecoverable', 'SVD', 'reboot * 4', '09', '45', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(1766, '1266831000', '10', '30', '22', '02', '2010', 'Tomo1', 'Error couch positionnement hauteur + 2* "high speed data failure"', 'Unrecoverable', 'GD', 'reboot all *3', '10', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1767, '1267509600', '07', '00', '02', '03', '2010', 'Tomo1', 'MLC error, puis high speed data failure : ces deux erreurs a tres nombreuses reprises', 'Unrecoverable', 'SVD', 'Nettoyage du verification board => MLC Ok mais toujours des highh speed data failure de manière intermittente au redemarrage', '11', '45', '03', '45', 'oui');
INSERT INTO `pannes` VALUES(1768, '1267596000', '07', '00', '03', '03', '2010', 'Tomo1', 'MLC leaf in wrong position', 'Unrecoverable', 'SVD', 'remplacement des verification board', '11', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1769, '1267395600', '23', '20', '28', '02', '2010', 'Tomo1', 'recoverable fevrier 2010', 'Recoverable', 'SVD', '6*5\\'' = 30\\''', '23', '50', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1770, '1268664300', '15', '45', '15', '03', '2010', 'Tomo1', 'HV PSU phase lost', 'Unrecoverable', 'SVD', 'remplacement du magnetron, AFC et guide d\\''onde.\r\nPanne du lundi 15/3 apres-midi au mercredi 17/3 midi => 20h45 de downtime', '12', '30', '20', '45', 'oui');
INSERT INTO `pannes` VALUES(1771, '1268899200', '09', '00', '18', '03', '2010', 'Tomo1', 'Ne charge pas le traitement apres  la rep (??)', 'Unrecoverable', 'GD', 'reboot all', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1772, '1269343800', '12', '30', '23', '03', '2010', 'Tomo1', 'Faible image Scan', 'Recoverable', 'MC', 'Airscan + test', '12', '55', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1773, '1269583200', '07', '00', '26', '03', '2010', 'Tomo1', 'High speed data failure + error connect with Tomogateway computer', 'Unrecoverable', 'GD', 'Rebboter une bonne dizaine de fois la tomo + reboot Tomodata + reboot tomodata et tomogateway 2x', '09', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1774, '1269851400', '10', '30', '29', '03', '2010', 'Tomo1', 'Trigger timing error + high speed data failure', 'Recoverable', 'GD', 'reboot 4x dela tomo + test de différentes procédures 2.5', '11', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1775, '1269925200', '07', '00', '30', '03', '2010', 'Tomo1', 'High speed data failure', 'Unrecoverable', 'SVD', 'reboot plusieurs fois + tourner gantry + debrancher et rebrancher cable ethernet', '08', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1776, '1270188000', '08', '00', '02', '04', '2010', 'Tomo1', 'High speed data failure', 'Unrecoverable', 'MC', 'Reboot plein de fois, delete des drs logs... wait...\r\n\r\nProposition de deconnecter le démarrage auto.', '08', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1777, '1270530000', '07', '00', '06', '04', '2010', 'Tomo1', 'High speed data failure', 'Unrecoverable', 'SVD', 'Test OBC => remettre connecteur : OK\r\nFaux contact??\r\n', '12', '30', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(1778, '1270069200', '23', '00', '31', '03', '2010', 'Tomo1', 'recoverable mars 2010', 'Recoverable', 'SVD', '9*5min = 45min', '23', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1779, '1270706400', '08', '00', '08', '04', '2010', 'Tomo1', 'High speed data failure', 'Unrecoverable', 'MC', 'reboot, rotate gantry, wait...', '09', '15', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1780, '1271221200', '07', '00', '14', '04', '2010', 'Tomo1', 'High speed data failure + tomodata connection fail', 'Unrecoverable', 'SVD', 'Reboot moultes fois', '09', '05', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(1781, '1271752500', '10', '35', '20', '04', '2010', 'Tomo1', 'Serious error logic', 'Unrecoverable', 'GD', 'reboot all', '10', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1782, '1271754000', '11', '00', '20', '04', '2010', 'Tomo1', 'Infirmière partie sans laisser son password', 'Unrecoverable', 'GD', 'reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1783, '1272661200', '23', '00', '30', '04', '2010', 'Tomo1', 'recoverable avril 2010', 'Recoverable', 'SVD', '5*5minutes = 25 minutes', '23', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1784, '1273502100', '16', '35', '10', '05', '2010', 'Tomo1', 'Machine shut down', 'Unrecoverable', 'GD', 'Reboot all', '16', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1785, '1273666200', '14', '10', '12', '05', '2010', 'Tomo1', 'PC reboot', 'Unrecoverable', 'GD', 'reboot all', '14', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1786, '1273667100', '14', '25', '12', '05', '2010', 'Tomo1', 'pc reboot', 'Unrecoverable', 'GD', 'reboot all + airscan', '14', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1787, '1273671900', '15', '45', '12', '05', '2010', 'Tomo1', 'PC reboot et ne trouve plus son disque dur...', 'Unrecoverable', 'GD', 'nettoyage du pc à l\\''air comprimé', '16', '15', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1788, '1274791500', '14', '45', '25', '05', '2010', 'Tomo1', 'Corba server error', 'Unrecoverable', 'SVD', 'reboot system + server', '15', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1789, '1273212000', '08', '00', '07', '05', '2010', 'Tomo1', 'Probleme a l''allumage', 'Unrecoverable', 'Physique', 'Suite à la coupure de courant, probleme sur le frequency converter', '08', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1790, '1276264200', '15', '50', '11', '06', '2010', 'Tomo1', 'Machine shut down', 'Unrecoverable', 'GD', 'reboot all', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1791, '1276264800', '16', '00', '11', '06', '2010', 'Tomo1', 'Low dose', 'Unrecoverable', 'Physique', 'Augmentation du pfn de 3.75 => 3.79 + TQA\r\n3.79 => 3.77', '17', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1792, '1276596600', '12', '10', '15', '06', '2010', 'Tomo1', 'Trigger error', 'Recoverable', 'MC', '2* recoverable error => reboot', '12', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1793, '1275253200', '23', '00', '30', '05', '2010', 'Tomo1', 'recoverable mai 2010', 'Recoverable', 'SVD', 'recoverable mai 2010 \r\n9*5min = 45 min', '20', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1794, '1277115300', '12', '15', '21', '06', '2010', 'Tomo1', 'Communication lost with tomodata', 'Unrecoverable', 'MC', 'reboot all', '12', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1795, '1277114700', '12', '05', '21', '06', '2010', 'Tomo1', 'Communication lost with tomodata', 'Unrecoverable', 'MC', 'reboot all', '12', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1796, '1277484000', '18', '40', '25', '06', '2010', 'Tomo1', 'Connecting the box', 'Unrecoverable', 'MC', 'reboot', '18', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1797, '1279618800', '11', '40', '20', '07', '2010', 'Tomo1', 'Soft bloqué au login', 'Unrecoverable', 'SVD', 'reboot all', '11', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1798, '1277928000', '22', '00', '30', '06', '2010', 'Tomo1', 'recoverable juin 2010', 'Recoverable', 'SVD', '16*5min = 1h20', '23', '20', '01', '20', 'oui');
INSERT INTO `pannes` VALUES(1799, '1269005400', '14', '30', '19', '03', '2010', 'SL75', 'plus de mouvement colli', 'Machine', 'Technique', 'Plus de mouvement colli mais le reste fonction toujours. Eteindre le SL75, aller dans le control cabinet (a droite de la machine) intervertir la carte colli rot avec celle du gantry rot. Tester les mouvement. Ici le fait de retirer et de remettre la carte, un resert c est produit et tout rentre dans l ordre.', '14', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1800, '1278651600', '07', '00', '09', '07', '2010', 'Tomo1', 'Communication lost with tomodata', 'Unrecoverable', 'SVD', 'Perte d\\''alimentation de un des UPS du cluster...\r\nDisjoncteur NS362 déclenché.\r\nRéenclencher (service technique) => reboot all', '07', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1801, '1269504000', '09', '00', '25', '03', '2010', 'SL75', '2.5 cm de différence entre les valeurs lat après collision', 'Machine', 'GD', 'remise a zero via la carte de gestion de table lat. 61J pot 6.\r\nSans doute le pot qui a bouger. reglage fait le 25/03 mais collision le 24/03.', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1802, '1266314400', '11', '00', '16', '02', '2010', 'SL25', 'Bending mag V + 2T error en E20', 'Machine', 'SVD', 'Appel Elekta\r\nPatiente reportée au lendemain\r\nreglage des 2t bal et bend mag v', '11', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1803, '1274094000', '13', '00', '17', '05', '2010', 'SL75', 'Plus de commande HT table.', 'Machine', 'GD', 'Pendant les heures de table.\r\nPlus de HT tabl avec la floche, Ok avec les commandes tables.\r\nDémontage de la floche, le connecteur etait deconnecter. reconnection et tout est ok.\r\n', '13', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1804, '1266328800', '15', '00', '16', '02', '2010', 'SL25', 'M. fill V. mon', 'Machine', 'SVD', 'Verification Eau : OK\r\nrebot machine\r\ntest en haute énérgie, mais régulation de la température semble OK\r\n=> ??', '15', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1805, '1271223000', '07', '30', '14', '04', '2010', 'SL25', 'Room doors 2  alors que port tech fermées', 'Machine', 'SVD', 'Dans le control cabinet : \r\nDéclencher et réenclencher le disjoncteur interlock', '07', '40', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1806, '1276685100', '12', '45', '16', '06', '2010', 'SL75', 'HT table bloquée.', 'Machine', 'MC', 'Déconnection de la prise sous la table, plus reset motor.', '13', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1807, '1274778000', '11', '00', '25', '05', '2010', 'SL25', 'I view bloqué', 'Machine', 'MC', 'reset du fusible + reboot pc iview', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1808, '1278662400', '10', '00', '09', '07', '2010', 'SL75', 'Plus de  auto setup', 'Machine', 'SVD', 'Sortir du patient dans visir et rechager le champ; OK', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1809, '1275903000', '11', '30', '07', '06', '2010', 'SL25', 'Plus de liaison entre RTD et Visir', 'Informatique', 'GD', 'reboot RTD et Visir pas Ok\r\nUne seule LEd sur le Hub.\r\nprobleme sur le cable du RTD.\r\nEnlever et remettre la fiche reseau du RTD => OK', '11', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1810, '1275907500', '12', '45', '07', '06', '2010', 'SL25', 'PB entre rtd et Visir', 'Machine', 'MC', 'Suite a un interrupt : log off visir, recharge et Ok', '13', '50', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1811, '1278741600', '08', '00', '10', '07', '2010', 'SL25', 'Bouteille SF6 vide => gas press', 'Machine', 'GD', 'Remplacement de la bouteille de SF6\r\nPour la remise sous pression : reboot RTD', '08', '20', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1812, '1278666000', '11', '00', '09', '07', '2010', 'SL25', 'I view bloqué', 'Machine', 'SVD', 'Débloquer manuellement + reinitialiser disjoncteur Iview Arm\r\n=> OK', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1813, '1279103100', '12', '25', '14', '07', '2010', 'Tomo1', 'Corba Error', 'Unrecoverable', 'SVD', 'Reboot all + tomodata + planning', '12', '40', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1814, '1279200600', '15', '30', '15', '07', '2010', 'Tomo1', 'Dose too low (826 UM/min)', 'Unrecoverable', 'GD', 'Reglage PFn 3.77 => 3.79, 3.79 => 3.78\r\n(après un reboot, la dose à fort changé)', '16', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1815, '1279270800', '11', '00', '16', '07', '2010', 'Tomo1', 'Tom has shutdown', 'Unrecoverable', 'SVD', 'reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1816, '1280235600', '15', '00', '27', '07', '2010', 'Tomo1', 'Matching ne fonctionne plus', 'Unrecoverable', 'SVD', 'reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1817, '1280469600', '08', '00', '30', '07', '2010', 'Tomo1', 'Dose too low', 'Unrecoverable', 'Technique', 'Sweeping + dose', '12', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1818, '1280520000', '22', '00', '30', '07', '2010', 'Tomo1', 'Recoverable juillet 2010', 'Recoverable', 'SVD', '18*5min = 1h30', '23', '20', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1819, '1281007800', '13', '30', '05', '08', '2010', 'Tomo1', 'Dose fort haute : 900 UM/min mais pas d''erreur', 'Unrecoverable', 'SVD', ' PFN : 3.80 => 3.77 ', '14', '15', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1820, '1281011400', '14', '30', '05', '08', '2010', 'Tomo1', '"Communication Lost with tomodata"', 'Unrecoverable', 'SVD', 'Reboot tomo et tomodata', '14', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1821, '1281078000', '09', '00', '06', '08', '2010', 'Tomo1', 'low dose point violation setpoint', 'Unrecoverable', 'Technique', 'remplacement de la chambre', '20', '00', '10', '00', 'oui');
INSERT INTO `pannes` VALUES(1822, '1281628800', '18', '00', '12', '08', '2010', 'Tomo1', '"HV PSU phase lost" Arcing visible sur le onboard scope', 'Unrecoverable', 'SVD', 'remplacement du magnetron par tomo\r\n\r\nfin le 13/8 à 11h', '11', '00', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(1823, '1283288400', '23', '00', '31', '08', '2010', 'Tomo1', 'recoverable aout 2010', 'Recoverable', 'SVD', '9*5min = 45 min', '23', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1824, '1283346000', '15', '00', '01', '09', '2010', 'Tomo1', 'Fuite d''eau au niveau du target', 'Unrecoverable', 'Technique', 'Remplacement du target par tomo (arrivé pdt la maintenance, donc peu de down time. JMD a rendu la machine à 8h30 le lendemain', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1825, '1283523600', '16', '20', '03', '09', '2010', 'Tomo1', 'OBC : Water flow fault', 'Unrecoverable', 'GD', 'reboot all + verif que pas de trace d\\''eau', '16', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1826, '1283779500', '15', '25', '06', '09', '2010', 'Tomo1', 'Water flow fault', 'Unrecoverable', 'SVD', 'reboot all', '15', '35', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1827, '1283780100', '15', '35', '06', '09', '2010', 'Tomo1', 'Water leak au niveau du target', 'Unrecoverable', 'SVD', 'remplacement du tuyau fendu par tomo', '20', '00', '04', '25', 'oui');
INSERT INTO `pannes` VALUES(1828, '1284046200', '17', '30', '09', '09', '2010', 'Tomo1', 'Jaw could not go back to his home position', 'Unrecoverable', 'SVD', 'Reboot all + dqa du patient  pour vérifier que tout est OK', '17', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1829, '1284616800', '08', '00', '16', '09', '2010', 'Tomo1', 'Panne suite au changement de tuyau => connecteur abimé', 'Unrecoverable', 'SVD', 'Recherche et réparation de la panne par tomo', '14', '30', '06', '30', 'oui');
INSERT INTO `pannes` VALUES(1830, '1284724800', '14', '00', '17', '09', '2010', 'Tomo1', 'Water flow fault', 'Unrecoverable', 'SVD', 'reglage des vannes SSM et pump circ: augmentation des débits sur ces deux canaux la sur conseil de tomo', '16', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1831, '1285246800', '15', '00', '23', '09', '2010', 'Tomo1', 'dose tres basse en fin de traitement (814 UM/min nominal : 855 UM/min)', 'Recoverable', 'Physique', '1 reboot + changement du pfn 3.82 => 3.84', '15', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1832, '1285312500', '09', '15', '24', '09', '2010', 'Tomo1', 'NO MVCT', 'Recoverable', 'Technique', 'redemarrage/ warmup / dosi 25\r\ntraitements sans MVCT avec accord des medecins en attendant solution definitive apres intervention tomo', '10', '15', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1833, '1285319700', '11', '15', '24', '09', '2010', 'Tomo1', 'Arret du traitement en cours', 'Recoverable', 'Technique', 'redemarrage et reprise du traitement', '11', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1834, '1285344000', '18', '00', '24', '09', '2010', 'Tomo1', '"Tick fence problem"', 'Unrecoverable', 'SVD', 'fin des traitement\r\nremplacement de la courroie et nettoyage des tick fence pdt le week-end', '20', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1835, '1285880400', '23', '00', '30', '09', '2010', 'Tomo1', 'recoverable septembre 2010', 'Recoverable', 'SVD', '12*5min = 2h', '24', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1836, '1286802000', '15', '00', '11', '10', '2010', 'Tomo1', 'Image du scan nok', 'Recoverable', 'SVD', 'image nok => reboot\r\nil fait chaud dans la salle => changement du filtre de la clim', '15', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1837, '1286867100', '09', '05', '12', '10', '2010', 'Tomo1', 'Error logic table', 'Unrecoverable', 'GD', 'reboot all', '09', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1838, '1286902800', '19', '00', '12', '10', '2010', 'Tomo1', 'divers problèmes', 'Unrecoverable', 'Physique', 'error in selection table => reboot => ok\r\nUPS station coupé par accident => reboot => ok', '19', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1839, '1286946000', '07', '00', '13', '10', '2010', 'Tomo1', 'SF6 too low', 'Unrecoverable', 'GD', 'remise de la pression de de SF6 de 15psi à 22 psi ', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1840, '1287057600', '14', '00', '14', '10', '2010', 'Tomo1', 'Microcoupure de courant', 'Unrecoverable', 'SVD', 'reboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1841, '1287381600', '08', '00', '18', '10', '2010', 'Tomo1', 'Probleme d''arcing', 'Unrecoverable', 'SVD', '1er diagnostic portait sur la chambre mais chambre OK\r\n\r\nSweeping magnetron plus remise à niveau SF6', '14', '00', '06', '00', 'oui');
INSERT INTO `pannes` VALUES(1842, '1287637200', '07', '00', '21', '10', '2010', 'Tomo1', 'MLC leaf in wrong position', 'Unrecoverable', 'SVD', 'rempalcement verification board', '14', '30', '06', '30', 'oui');
INSERT INTO `pannes` VALUES(1843, '1288564200', '23', '30', '31', '10', '2010', 'Tomo1', 'recoverable octobre 2010', 'Recoverable', 'SVD', '5*5min = 25 min', '23', '55', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1844, '1288681200', '08', '00', '02', '11', '2010', 'Tomo1', 'SF too low + arcing', 'Unrecoverable', 'SVD', 'Apres la remise du SF6 a pression suffisante, attendre pour qu\\''il se répartisse (+-15min) et que la pompe ionique refasse bien le vide', '10', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(1845, '1288776600', '10', '30', '03', '11', '2010', 'Tomo1', 'Affichage figé', 'Recoverable', 'Physique', 'Interruption du traitment + relancer le traitement => Ok', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1846, '1289220600', '13', '50', '08', '11', '2010', 'Tomo1', 'corba error', 'Unrecoverable', 'SVD', 'reboot sytem + planning + tomodata', '14', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1847, '1290495600', '08', '00', '23', '11', '2010', 'Tomo1', 'remplacement MLC ''leaf 32 overtravel"', 'Unrecoverable', 'Technique', 'remplacement MLC', '13', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(1848, '1291129200', '16', '00', '30', '11', '2010', 'Tomo1', 'Arcing dans le magnetron', 'Unrecoverable', 'GD', 'Sweeping mag => not OK\r\nremplacement Mag', '20', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1849, '1291143600', '20', '00', '30', '11', '2010', 'Tomo1', 'recoverable novembre 2010', 'Recoverable', 'SVD', 'recoverable 42*5min = 3h30', '23', '30', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(1850, '1291186800', '08', '00', '01', '12', '2010', 'Tomo1', 'remplacement magnetron', 'Unrecoverable', 'Technique', 'remplacement magnetron + QC', '13', '30', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(1851, '1291741200', '18', '00', '07', '12', '2010', 'Tomo1', 'PC s\\''éteint et ne redémarre pas', 'Unrecoverable', 'Physique', 'Attendre et rebooter', '18', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1852, '1293450900', '12', '55', '27', '12', '2010', 'Tomo1', 'SETUP et READY inactif, impossible de lancer le scan', 'Recoverable', 'SVD', 'REBOOT ALL', '13', '05', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1853, '1293548100', '15', '55', '28', '12', '2010', 'Tomo1', 'ERROR TABLE', 'Unrecoverable', 'SVD', 'REBOOT ALL', '16', '10', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1854, '1281605400', '11', '30', '12', '08', '2010', 'SL75', 'défilement erratique de caractères incohérents sur l''écran de la console Philips', 'Machine', 'Technique', 'arrêt du convertisseur Helax VISIR SL 75\r\nreboot du PC VISIR', '11', '40', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1855, '1286870700', '10', '05', '12', '10', '2010', 'SL75', 'Plus de hauteur table possible [reste des mouvements ok]', 'Machine', 'GD', 'Déconnection du gros connecteur au sol sous la table', '10', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1856, '1287057600', '14', '00', '14', '10', '2010', 'SL75', 'Micro coupure de courant', 'Machine', 'SVD', 'Reboot', '14', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1857, '1289813400', '10', '30', '15', '11', '2010', 'SL75', 'Lecture instable des paramètres mécaniques machines', 'Machine', 'SVD', 'remplacements du bicastrip et de la carte PCB 61H\r\n[+ de 2 jours d\\''arrêt]', '', '', '19', '00', 'oui');
INSERT INTO `pannes` VALUES(1858, '1290500100', '09', '15', '23', '11', '2010', 'SL75', 'Machoires', 'Machine', 'Technique', 'center field on/off plusieurs fois jusque déblocage\r\nauto-setup \r\nok', '09', '20', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1859, '1291644000', '15', '00', '06', '12', '2010', 'SL75', 'Laser gauche patient HS', 'Machine', 'GD', 'remplacement et réglage d\\''un nouveau laser', '16', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1860, '1280142000', '13', '00', '26', '07', '2010', 'CTsim', 'Reconstruction se bloque même après un queue init', 'Machine', 'SVD', 'Reboot du système', '14', '30', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1861, '1281450600', '16', '30', '10', '08', '2010', 'CTsim', 'HOLD', 'Machine', 'MC', 'Reboot de tout le scanner', '17', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1862, '1283148000', '08', '00', '30', '08', '2010', 'CTsim', 'windows planté au démarrage sur station acquisition', 'Informatique', 'SVD', 'Shut down station de reconstruction puis reboot ', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1863, '1282809600', '10', '00', '26', '08', '2010', 'CTsim', 'Plus de liaison réseaux du scan avec l''extérieur [PACS, CMS,...]', 'Machine', 'GD', 'Routeur interne du CTsim HS\r\nremplacements du routeur par Toshiba\r\nintervention reportée au lendemain', '', '', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1864, '1283333400', '11', '30', '01', '09', '2010', 'CTsim', 'Reconstruction bloquée', 'Machine', '', 'REBOOT : 2 fois', '12', '30', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1865, '1285655100', '08', '25', '28', '09', '2010', 'CTsim', 'Software de la console opérateur complètement bloqué', 'Machine', 'Technique', 'Reboot complet, puis nouveau warm-up', '08', '55', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1866, '1285740000', '08', '00', '29', '09', '2010', 'CTsim', 'Tout se bloque', 'Machine', 'SVD', '5 fois 20 minutes pour tout rebooter', '09', '40', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1867, '1288774800', '10', '00', '03', '11', '2010', 'CTsim', 'Transfert station acquisition vers station visionnage', 'Machine', 'SVD', 'reboot [mais pas nécessaire] puis on a vu que plus de place => nettoyage ', '10', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1868, '1289811000', '09', '50', '15', '11', '2010', 'CTsim', 'Station acquisition  plantée au redémarrage', 'Informatique', 'SVD', 'Reboot all', '10', '10', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1869, '1268384400', '10', '00', '12', '03', '2010', 'SP18', 'Table clutch ne s''en va pas', 'Machine', 'Technique', 'Reboot', '10', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1870, '1271404800', '10', '00', '16', '04', '2010', 'SP18', 'Table clutch bloqué', 'Machine', 'GD', 'Bouger la table dans tout les sens pour le débloquer', '10', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1871, '1274788800', '14', '00', '25', '05', '2010', 'SP18', 'Plantage Visir-RTD', 'Machine', 'Technique', 'Reboot RTD et Visir', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1872, '1280311200', '12', '00', '28', '07', '2010', 'SP18', 'Ecran à droite de la machine off', 'Machine', 'SVD', 'Scroll Lock appuyé sur le clavier', '12', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1873, '1280487600', '13', '00', '30', '07', '2010', 'SP18', 'T2 sur floche gauche qui bloque [2fois]', 'Machine', 'SVD', 'faire divers mouvements et jouer avec la floche\r\n\r\nNouvelles floches commandée', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1874, '1280829900', '12', '05', '03', '08', '2010', 'SP18', 'Table clutch bloqué', 'Machine', 'MC', 'monter, descendre, bouger la table', '12', '10', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1875, '1281335400', '08', '30', '09', '08', '2010', 'SP18', 'Dose temps 2; read out 10V; Ten Turn Pot Y1. Plus aucun mouvement possible la machine reste en close ', 'Machine', 'GD', 'Vérification des cablages du 10 V dans la tête, mais rien à faire. Après coup de téléphone en Angleterre, c\\''est une carte dans l\\''aréa\r\nFin de la panne le 10/08/2010', '15', '00', '13', '00', 'oui');
INSERT INTO `pannes` VALUES(1876, '1293089400', '08', '30', '23', '12', '2010', 'SP18', 'Thyratron Grid', 'Machine', 'GD', 'remplacement du fusible 10A sur T2\r\n\r\n+Dosi', '09', '45', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1877, '1278678600', '14', '30', '09', '07', '2010', 'SL25', 'Plantage Visir', 'Machine', 'SVD', 'Débloqué manuellement', '14', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1878, '1279604700', '07', '45', '20', '07', '2010', 'SL25', 'Thyratron Grid', 'Machine', 'MC', 'Fusible du thyratron dans cage de Farraday, petite alimentation dans boitier à 3 [couleur cuivre]', '09', '30', '01', '15', 'oui');
INSERT INTO `pannes` VALUES(1879, '1281450600', '16', '30', '10', '08', '2010', 'SL25', 'Connecteur apllicateur', 'Machine', 'GD', 'Remplacement du connecteur de l\\''applicateur du SL 25 [électron] + QC alignement réticule', '18', '30', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(1880, '1281607200', '12', '00', '12', '08', '2010', 'SL25', 'Machine coupée comme si coup de poing off', 'Machine', 'GD', 'Reboot all + timer', '12', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1881, '1282655700', '15', '15', '24', '08', '2010', 'SL25', 'M fil V mon T° à 30 °', 'Machine', 'SVD', 'Vérification du circuit d\\''eau de refroidissement =>OK\r\nLa T° chute également après reset\r\nSans doute une petite coupre d\\''eau ???\r\nattente du timer + test =>Ok', '15', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1882, '1284532200', '08', '30', '15', '09', '2010', 'SL25', 'Inhibit : 10-4 GRPT et 10-4 GRPG => Plus de vide ', 'Machine', 'GD', 'refaire le vide, réglage du 2RLctrl en X6 et X18 + Dosi', '14', '00', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(1883, '1285674000', '13', '40', '28', '09', '2010', 'SL25', 'Check PUT Y2', 'Machine', 'SVD', 'test de bouger machoire et lames => NOT Ok\r\n\r\nReboot => Ok', '14', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1884, '1285677000', '14', '30', '28', '09', '2010', 'SL25', 'Check PoT Y2', 'Machine', 'GD', 'c\\''est le câble des pots de Y2 qui fuit, faux contact\r\nAvec une torsion çà refonctionne.', '14', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1885, '1286443800', '11', '30', '07', '10', '2010', 'SL25', 'Mouvement bloqué', 'Machine', 'SVD', 'Log out : libérer patient en service\r\n\r\nRecharger : OK', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1886, '1287057600', '14', '00', '14', '10', '2010', 'SL25', 'Micro coupure de courant', 'Machine', 'SVD', 'Reboot', '14', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1887, '1287062700', '15', '25', '14', '10', '2010', 'SL25', '1 laser éteint', 'Machine', 'Technique', 'cache démonté, manœuvré interrupteurs =>ok \r\n[faux contact]', '15', '30', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1888, '1287666000', '15', '00', '21', '10', '2010', 'SL25', 'Plantage Visir', 'Informatique', 'SVD', 'relancer Visir', '15', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1889, '1289214000', '12', '00', '08', '11', '2010', 'SL25', 'Diode O/L en E22', 'Machine', 'SVD', 'relancer champ', '12', '00', '00', '00', 'oui');
INSERT INTO `pannes` VALUES(1890, '1289376900', '09', '15', '10', '11', '2010', 'SL25', 'Gantry bloquée', 'Machine', 'Technique', 'Redémarrage de l\\''accélérateur', '09', '35', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1891, '1289385600', '11', '40', '10', '11', '2010', 'SL25', 'iView', 'Machine', 'SVD', 'Reboot all', '11', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1892, '1291388400', '16', '00', '03', '12', '2010', 'SL25', 'Gantry bloqué + Gantry demand', 'Machine', 'SVD', 'Déblocage moteur gantry en le faisant tourner manuellement \r\n[débloquer avec manette grise sur boite de vitesse]\r\nGantry Dem. => Recalibrer POT', '17', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1893, '1291798800', '10', '00', '08', '12', '2010', 'SL25', 'Mirroir champ lumineux HS', 'Machine', 'GD', 'Remplacement par Elekta + calib du MLC, champ lumineux, ...', '13', '30', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(1894, '1291824000', '17', '00', '08', '12', '2010', 'SL25', 'Check PoT Y2', 'Machine', 'GD', 'Problème dans les câbles roses. Il faut les croqués. Plusieurs fois dans la fin de journée', '17', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1895, '1291915800', '18', '30', '09', '12', '2010', 'SL25', '2R ERROR  Faisceau ne suit pplus', 'Machine', 'SVD', 'Câble cassé sur le GUN', '', '', '04', '50', 'oui');
INSERT INTO `pannes` VALUES(1896, '1293445800', '11', '30', '27', '12', '2010', 'SL25', 'Plantage Visir-RTD', 'Informatique', 'EB', 'fermer Visir + RTD\r\n\r\nRelancer => OK', '11', '35', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1897, '1293805200', '15', '20', '31', '12', '2010', 'Tomo1', 'Final leaf in wrong position (bug a l''initialisation)', 'Unrecoverable', 'SVD', 'Remplacement de la mac valve 42 par tomo', '16', '00', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(1898, '1293829200', '22', '00', '31', '12', '2010', 'Tomo1', 'recoverable decembre 2010', 'Recoverable', 'SVD', '13*5minutes = 1h05', '23', '05', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(1899, '1294050000', '11', '20', '03', '01', '2011', 'Tomo1', 'serious logic error, problem with table ', 'Unrecoverable', 'SVD', 'Reboot all', '11', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1900, '1294322400', '15', '00', '06', '01', '2011', 'Tomo1', 'serious logic error, problem with selector table', 'Unrecoverable', 'SVD', 'reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1901, '1294765800', '18', '10', '11', '01', '2011', 'Tomo1', 'dose rate to low', 'Unrecoverable', 'Physique', 'augmentation du pfn => vérification par dosi 25=> ok', '19', '50', '01', '40', 'oui');
INSERT INTO `pannes` VALUES(1902, '1294988400', '08', '00', '14', '01', '2011', 'Tomo1', 'dose rate to low', 'Unrecoverable', 'Physique', 'Augmentation du Pfn', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1903, '1294999200', '11', '00', '14', '01', '2011', 'Tomo1', 'réglage du dose rate', 'Unrecoverable', 'Physique', 'augmentation du Pfn', '11', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1904, '1295537400', '16', '30', '20', '01', '2011', 'Tomo1', 'grosse différence de dose rate entre chambre 1 et 2=> dose rate to low', 'Recoverable', 'SVD', 'remplacement valve', '20', '00', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(1905, '1295595000', '08', '30', '21', '01', '2011', 'Tomo1', '2 fois " jaws are not ready "', 'Recoverable', 'SVD', 'reboot all', '08', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1906, '1296111600', '08', '00', '27', '01', '2011', 'Tomo1', 'dose rate is too low durinf irradiation', 'Unrecoverable', 'GD', 'déjà le problème après la maintenance du 26/01. Tomo a travaillé la nuit pour rien, tjs le problème le matin.\r\n\r\nRemplacement de la chambre n°2 + problème de connecteur', '20', '00', '12', '00', 'oui');
INSERT INTO `pannes` VALUES(1907, '1296457200', '08', '00', '31', '01', '2011', 'Tomo1', 'dose rate', 'Unrecoverable', 'GD', 'Dose rate à 889, pfn changé de 3.805 à 3.800, dose rate à 855', '09', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1908, '1296481200', '14', '40', '31', '01', '2011', 'Tomo1', 'system shutdown', 'Recoverable', 'EB', 'reboot all', '14', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1909, '1296543600', '08', '00', '01', '02', '2011', 'Tomo1', 'dose rate is too low during treatment', 'Unrecoverable', '', 'Remplacement du magnétron par Tomo', '20', '00', '12', '15', 'oui');
INSERT INTO `pannes` VALUES(1910, '1296513000', '23', '30', '31', '01', '2011', 'Tomo1', 'recoverable janvier 2011', 'Recoverable', 'SVD', '6 * 5 min = 30 min', '23', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1911, '1293966900', '12', '15', '02', '01', '2011', 'Tomo1', 'dose rate is too low during treatment [aucune dose de sortie]', 'Unrecoverable', 'EB', 'reboot all + test de vérification => ok', '12', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1912, '1296645300', '12', '15', '02', '02', '2011', 'Tomo1', 'dose rate is too low during treatment [aucune dose de sortie]', 'Unrecoverable', 'EB', 'reboot all + test de vérification => ok', '12', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1913, '1296475200', '13', '00', '31', '01', '2011', 'SL25', 'Iview bippp... Pb d''un switch de fin de course + plus de mouvement Iview comme frein bloqué', 'Machine', 'Technique', 'Le câble des commandes freins des moteurs est déconnecté.\r\n(le câble est bien caché et difficile à reconnecter)', '16', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1914, '1296836100', '17', '15', '04', '02', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', '2 flow meters orange => ouverture des vannes correspondantes => vert', '19', '00', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(1915, '1297666800', '08', '00', '14', '02', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'GD', 'action prise par tomo, petite fuite à l\\''arrière de la machine et 2 valves fermées', '11', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1916, '1298269800', '07', '30', '21', '02', '2011', 'SL25', 'Gas Press', 'Unrecoverable', 'EB', 'bouteille de SF6 vide=> remplacement de la bouteille de SF6. \r\nPour la remise sous pression, reboot all', '07', '55', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1917, '1297940400', '12', '00', '17', '02', '2011', 'SL75', 'Mag fil fault', 'Unrecoverable', 'Technique', 'ouvrir capot gantry\r\nchipoter sur les câbles du redresseur + RLA et RLB ', '13', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(1918, '1297778400', '15', '00', '15', '02', '2011', 'Tomo1', '"gantry velocity" (2 fois)', 'Unrecoverable', 'SVD', 'reboot all', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1919, '1298930400', '23', '00', '28', '02', '2011', 'Tomo1', 'recoverable février 2011', 'Recoverable', 'EB', '12 x 5 min =60 min', '24', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(1920, '1298911500', '17', '45', '28', '02', '2011', 'Tomo1', '2 fois "jaws error"', 'Recoverable', 'SVD', 'reboot all', '17', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1921, '1298962800', '08', '00', '01', '03', '2011', 'Tomo1', '"Corba error"', 'Informatique', 'EB', 'Tomo a arrêté et relancé la data base\r\nUn simple reboot du Tomo Data n\\''a pas suffi', '12', '25', '04', '25', 'oui');
INSERT INTO `pannes` VALUES(1922, '1298874600', '07', '30', '28', '02', '2011', 'SL25', 'Gantry bloqué + Gantry demand', 'Unrecoverable', 'EB', 'remplacement de la télécommande de gauche et reboot all', '07', '45', '00', '00', 'non');
INSERT INTO `pannes` VALUES(1923, '1299603600', '18', '00', '08', '03', '2011', 'SL25', 'Plantage Visir-RTD', 'Unrecoverable', 'EB', 'éteindre Visir, ensuite relancer Visir => ok', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1924, '1300958100', '10', '15', '24', '03', '2011', 'Tomo1', 'dose too low during the scan', 'Recoverable', 'SVD', 'test en mode physique: ok\r\nairscan + scan dosi 25 : ok\r\n', '10', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1925, '1301052000', '12', '20', '25', '03', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'reboot all', '12', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1926, '1301052600', '12', '30', '25', '03', '2011', 'Tomo1', 'the jaws are not ready', 'Unrecoverable', 'EB', 'reboot all', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1927, '1301060700', '14', '45', '25', '03', '2011', 'Tomo1', 'water flow fault + jaws are not ready', 'Unrecoverable', 'SVD', 'reglage valve car water flow orange', '15', '10', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1928, '1300793400', '12', '30', '22', '03', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'reboot all', '12', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1929, '1300782600', '09', '30', '22', '03', '2011', 'SP18', 'table ne monte et ne descend plus mais autre mvt ok', 'Machine', 'SVD', 'remplacement de la carte ZMD', '', '', '10', '30', 'oui');
INSERT INTO `pannes` VALUES(1930, '1300955400', '09', '30', '24', '03', '2011', 'SL25', 'machine bloquée : "Main Con A"', 'Unrecoverable', 'SVD', 'reboot all', '09', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1931, '1301396400', '13', '00', '29', '03', '2011', 'Tomo1', 'the jaws are not ready', 'Unrecoverable', 'SVD', 'Reboot all', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1932, '1301605200', '23', '00', '31', '03', '2011', 'Tomo1', 'recoverable mars 2011', 'Recoverable', 'EB', '11 * 5min = 55 min', '23', '55', '00', '55', 'oui');
INSERT INTO `pannes` VALUES(1933, '1301918400', '14', '00', '04', '04', '2011', 'Tomo1', 'the jaws are not ready [2 fois]', 'Unrecoverable', 'EB', 'Reboot all [2 fois]', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1934, '1302079200', '10', '40', '06', '04', '2011', 'Tomo1', 'connection server interrupt', 'Unrecoverable', 'EB', 'Reboot all', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1935, '1302082800', '11', '40', '06', '04', '2011', 'SL25', 'machine bloquée, plus aucun mouvement', 'Unrecoverable', 'Technique', 'Reboot Visir-RTD : pas de changement\r\n\r\nRentrer en salle, arrêt d\\''urgence enfoncé: problème réglé\r\n\r\nRetest: ok', '11', '55', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1936, '1303140600', '17', '30', '18', '04', '2011', 'SL25', 'iview bloqué', 'Unrecoverable', 'Physique', 'débloquer l\\''iview manuellement et réenclencher le disjoncteur', '17', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1937, '1303287000', '10', '10', '20', '04', '2011', 'Tomo1', 'interrupt : connection with the tomo data server is interrupt"', 'Unrecoverable', 'Technique', 'Reboot all + redémarrer le tomo data server', '10', '30', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1938, '1304197200', '23', '00', '30', '04', '2011', 'Tomo1', 'recoverable avril 2011', 'Recoverable', 'EB', '10 * 5 = 50 min', '23', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1940, '1304197200', '23', '00', '30', '04', '2011', 'SL25', 'Plantage Visir-RTD', 'Unrecoverable', 'EB', '10 * 5min= 50 min', '23', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1941, '1304416800', '12', '00', '03', '05', '2011', 'Tomo1', 'the jaws are not ready', 'Unrecoverable', 'SVD', 'Reboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1942, '1304417400', '12', '10', '03', '05', '2011', 'Tomo1', 'hardware linac error', 'Unrecoverable', 'SVD', 'Reboot all', '12', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1943, '1304697600', '18', '00', '06', '05', '2011', 'Tomo1', 'the jaws are not ready [2 fois]', 'Unrecoverable', 'EB', 'Reboot all [2 fois]', '18', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1944, '1304957400', '18', '10', '09', '05', '2011', 'Tomo1', 'PCP BLOQUE', 'Unrecoverable', 'SVD', 'reboot all ', '18', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1945, '1304960400', '19', '00', '09', '05', '2011', 'Tomo1', 'hvu psu phase lost', 'Unrecoverable', 'Technique', 'CONTROLE SUR OSCILLOSCOPE ( ARCING) \r\nMAIL TOMO >> INTERVENTION LE SOIR , PROBLEME SUR 3 VOIES REFROIDISSEMENT MAGNETRON ,  SWEEPING MAGNETRON VERIFICATIONS OK ', '10', '30', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(1946, '1302771600', '11', '00', '14', '04', '2011', 'SL75', 'ISO ROT TABLE INSTABLE', 'Unrecoverable', 'Technique', 'TEST DE PLUSIEURS CARTES MAIS PAS DE SOLUTIONS TROUVEES \r\nSUPRESSION DES PATIENTS AVEC ISO ROT TABLE POUR CETTE MACHINE EN  ATTENDANT PLUS D\\''INFOS.   PROBLEME  RESOLU  DU JOUR AU LENDEMAIN  SANS EXPLICATIONS ', '', '', '16', '00', 'oui');
INSERT INTO `pannes` VALUES(1947, '1305183300', '08', '55', '12', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'Reboot all', '09', '10', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1948, '1305192900', '11', '35', '12', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'Reboot all', '11', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1949, '1305197400', '12', '50', '12', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'Technique', 'Reboot all', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1950, '1305201600', '14', '00', '12', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', 'check fuite + water flowmeter => tout ok\r\n\r\n=> Reboot all\r\n', '14', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1951, '1305218400', '18', '40', '12', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'Physique', 'Reboot [Tomo est venu après traitement]', '18', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1952, '1305302400', '18', '00', '13', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'Reboot', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1953, '1305307200', '19', '20', '13', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'Reboot', '19', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1954, '1305282900', '12', '35', '13', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', 'Reboot', '12', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1955, '1305273600', '10', '00', '13', '05', '2011', 'Tomo1', 'water flow fault + table descendue trop bas', 'Unrecoverable', 'SVD', 'Contact Tomo => intervention de Tomo => Ok', '11', '45', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(1956, '1305553500', '15', '45', '16', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'Technique', 'reboot', '15', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1957, '1305617700', '09', '35', '17', '05', '2011', 'Tomo1', 'connection lost with data server', 'Unrecoverable', 'SVD', 'Reboot all + tomodata planning', '09', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1958, '1305716700', '13', '05', '18', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'reboot all', '13', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1959, '1305867600', '07', '00', '20', '05', '2011', 'Tomo1', 'gantry ne tourne pas correctement', 'Unrecoverable', 'SVD', 'Contact Tomo => sweeping magnetron car arcing mais pas de lien compréhensible avec le gantry ...\r\n\r\nmais ca refonctionne', '12', '30', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(1960, '1305907200', '18', '00', '20', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'reboot all', '18', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1961, '1305910800', '19', '00', '20', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'reboot', '19', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1962, '1306158000', '15', '40', '23', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', 'Reboot', '15', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1963, '1306231200', '12', '00', '24', '05', '2011', 'Tomo1', 'HV PSU PHASE lost [arcing]', 'Unrecoverable', 'SVD', 'Test => arcing => contact TOMO => Sweeping magnetron => ok', '17', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(1964, '1306249200', '17', '00', '24', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', 'Reboot all', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1965, '1306324800', '14', '00', '25', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', 'Reboot', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1966, '1306408800', '13', '20', '26', '05', '2011', 'Tomo1', 'water flow fault', 'Unrecoverable', 'EB', 'reboot all', '13', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1967, '1306871100', '21', '45', '31', '05', '2011', 'Tomo1', 'recoverable mai 2011', 'Recoverable', 'EB', '27 x 5 min = 2 h 15', '24', '00', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(1968, '1308230400', '15', '20', '16', '06', '2011', 'Tomo1', 'water flow fault [3 fois]', 'Unrecoverable', 'EB', 'Reboot all [3 fois]', '15', '50', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1969, '1308744000', '14', '00', '22', '06', '2011', 'Tomo1', 'impossible de reconstruire image CT', 'Unrecoverable', 'SVD', 'supprimer patient dans DB \r\n[reboot tomo data non suffisant]', '14', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1970, '1308808800', '08', '00', '23', '06', '2011', 'Tomo1', 'fuite dans la water pomp', 'Unrecoverable', '', 'Intervention Tomo : remplacement pompe H2O', '13', '15', '05', '15', 'oui');
INSERT INTO `pannes` VALUES(1971, '1309470000', '23', '40', '30', '06', '2011', 'Tomo1', 'recoverable juin 2011', 'Recoverable', 'EB', '4 * 5 min = 20 min', '24', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1972, '1309755600', '07', '00', '04', '07', '2011', 'Tomo1', 'MLC leaf in wrong position', 'Unrecoverable', 'SVD', 'run procedure \\"one MLC auto \\" [30min] pour \\"décoincer\\" la lecture de position de machoire \r\n+ remplacement le soir', '10', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(1973, '1309413600', '08', '00', '30', '06', '2011', 'SP18', 'problème PC Visir', 'Informatique', 'Technique', 'problème avec maj windows qui a planté le pc\r\n\r\nse logguer en admin => se reloguer en visiruse', '11', '15', '02', '45', 'oui');
INSERT INTO `pannes` VALUES(1974, '1305709500', '11', '05', '18', '05', '2011', 'SL75', 'Plantage Visir', 'Informatique', 'EB', 'éteindre et relancer VISIR', '11', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1975, '1308736800', '12', '00', '22', '06', '2011', 'SL75', 'Mag fil V. mon + fuse fs1 peté', 'Unrecoverable', 'SVD', 'remplacement pica strip', '14', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(1976, '1309335300', '10', '15', '29', '06', '2011', 'SL75', 'pot rotation colli', 'Unrecoverable', 'Technique', 'remplacement pot par Elekta', '12', '00', '08', '30', 'oui');
INSERT INTO `pannes` VALUES(1977, '1311003900', '17', '45', '18', '07', '2011', 'Tomo1', 'error SQL', 'Unrecoverable', 'MC', 'reboot', '17', '50', '00', '05', 'non');
INSERT INTO `pannes` VALUES(1978, '1313647200', '08', '00', '18', '08', '2011', 'Tomo1', 'mauvais démarrage avec reboot', 'Unrecoverable', 'MC', 'reboot', '08', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(1979, '1311668100', '10', '15', '26', '07', '2011', 'Tomo1', 'arcing+linac ssm error', 'Unrecoverable', 'Technique', 'sweeping magnetron par tomo', '14', '15', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(1980, '1311699600', '19', '00', '26', '07', '2011', 'Tomo1', 'arcing', 'Unrecoverable', 'SVD', 'remplacement magnetron', '08', '45', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(1981, '1314087300', '10', '15', '23', '08', '2011', 'Tomo1', 'panne de courant', 'Unrecoverable', 'Technique', 'reboot', '10', '25', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1982, '1314106200', '15', '30', '23', '08', '2011', 'Tomo1', 'pc figé', 'Unrecoverable', 'Technique', 'reboot all', '15', '40', '00', '10', 'non');
INSERT INTO `pannes` VALUES(1983, '1314511200', '08', '00', '28', '08', '2011', 'Tomo1', 'recoverable juillet', 'Recoverable', '', 'recoverable IDE', '08', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(1984, '1314685500', '08', '25', '30', '08', '2011', 'Tomo1', 'ssm error', 'Unrecoverable', 'Physique', 'reboot', '08', '55', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1985, '1314856800', '08', '00', '01', '09', '2011', 'Tomo1', 'recoverable Août', 'Recoverable', 'Technique', 'recoverable Août', '08', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(1986, '1314882000', '15', '00', '01', '09', '2011', 'Tomo1', 'linac hardware error', 'Unrecoverable', 'MC', 'reboot', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1987, '1315243200', '19', '20', '05', '09', '2011', 'Tomo1', 'mlc leaf in wrong position x2', 'Unrecoverable', 'SVD', 'reboot all', '19', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1988, '1314880200', '14', '30', '01', '09', '2011', 'Tomo1', 'ssm controleur error ', 'Unrecoverable', 'Technique', 'hvps changer mais problème sur  cable sky hs', '20', '00', '17', '30', 'oui');
INSERT INTO `pannes` VALUES(1989, '1315301400', '11', '30', '06', '09', '2011', 'Tomo1', 'mlc leaf in wrong position x3', 'Unrecoverable', 'SVD', 'reboot all ', '11', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1990, '1297238400', '09', '00', '09', '02', '2011', 'CTsim', 'pas de communication avec l''extérieur', 'Informatique', 'SVD', 'reboot all + reboot routeur', '09', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(1991, '1314087300', '10', '15', '23', '08', '2011', 'CTsim', 'panne de courant', 'Unrecoverable', 'Technique', 'reboot all', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1992, '1315216800', '12', '00', '05', '09', '2011', 'CTsim', 'laser gauche patient qui ne bouge plus', 'Unrecoverable', 'Technique', 'off module laser, déplacement manuel moteur laser , nouvelle init ', '11', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1993, '1310131800', '15', '30', '08', '07', '2011', 'SP18', 'coupure de courant', 'Unrecoverable', 'Technique', 'reboot linac', '15', '50', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(1994, '1310538600', '08', '30', '13', '07', '2011', 'SP18', 'interruption légère réseau SPO-STLUC', 'Informatique', 'SVD', 'sih', '09', '00', '00', '30', 'non');
INSERT INTO `pannes` VALUES(1995, '1310736600', '15', '30', '15', '07', '2011', 'SP18', 'arrêt léger KPN', 'Informatique', 'MC', 'Sih ', '20', '00', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(1996, '1312187400', '10', '30', '01', '08', '2011', 'SP18', 'D1 RL+ off', 'Machine', 'MC', 'suspicion chambre mais reboot  ok', '11', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(1997, '1310471400', '13', '50', '12', '07', '2011', 'SL25', 'table patine en cranio caudal', 'Machine', 'MC', 'repousser fortement la table pour  \\" ré-amorcer \\" l\\''engrenage', '14', '05', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(1998, '1314087300', '10', '15', '23', '08', '2011', 'SL25', 'panne de courant', 'Unrecoverable', 'MC', 'logoff log on', '10', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(1999, '1314616500', '13', '15', '29', '08', '2011', 'SL25', 'Mfil-Vmon', 'Unrecoverable', 'MC', 'by pass timer', '13', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2000, '1312450500', '11', '35', '04', '08', '2011', 'SP18', 'mlc bloqué', 'Machine', 'Technique', 'remise en place des paramètres originaux après modif par VR', '11', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2001, '1313042400', '08', '00', '11', '08', '2011', 'SP18', 'Thyratron Grid', 'Machine', 'MC', 'fusible T2 HS remplacement du fusible  10A032V par un 12A  250V \r\n(petite boite  boite  au dessus  des petits tiroirs special T2)\r\nle fusible est dans  la cage de faraday  dans le boitier en haut à droite  ( 3vis)\r\n+dosi\r\n', '10', '00', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(2002, '1315461600', '08', '00', '08', '09', '2011', 'SL25', 'Micro-coupure de courant', 'Unrecoverable', 'Technique', 'reboot all', '08', '15', '00', '15', 'non');
INSERT INTO `pannes` VALUES(2003, '1315560000', '11', '20', '09', '09', '2011', 'SL25', 'iView', 'Unrecoverable', 'SVD', 'Desactiver, pousser manuellement (pas top)\r\nReactiver (disjoncteur dans zone arriere bunker)', '11', '35', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2004, '1315836000', '16', '00', '12', '09', '2011', 'SL25', 'Iview bloque', 'Unrecoverable', 'MC', 'ON/OFF disjoncteur\r\nDebloquer Iview a la main \r\ntest ok ', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2005, '1315933200', '19', '00', '13', '09', '2011', 'SL25', 'Icom Fx Failure', 'Unrecoverable', 'Technique', 'Debloquage via Interrupt', '19', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2006, '1316080500', '11', '55', '15', '09', '2011', 'SL25', 'Probleme Visir', 'Unrecoverable', 'MC', 'Reboot Visir server', '12', '05', '00', '10', 'non');
INSERT INTO `pannes` VALUES(2007, '1316194200', '19', '30', '16', '09', '2011', 'SL25', 'Patient deja ouvert sur un autre poste (dans Visir)', 'Unrecoverable', 'Technique', 'deloguer patient sur PC SL25 avec password technique (BG)', '19', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2008, '1316694600', '14', '30', '22', '09', '2011', 'SL25', 'HP Phase problem, dose rate error', 'Unrecoverable', 'Technique', 'Axe du moteur devisse\r\n\r\nINTERVENTION ELEKTA', '18', '30', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(2009, '1317315600', '19', '00', '29', '09', '2011', 'SL25', 'Icom Fx Failure', 'Unrecoverable', 'Technique', 'Reboot total de la machine', '19', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(2010, '1317298200', '14', '10', '29', '09', '2011', 'SL25', 'Plantage Visir-RTD', 'Unrecoverable', 'Physique', 'Reboot Hard', '14', '30', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2011, '1317625200', '09', '00', '03', '10', '2011', 'SL25', 'Plantage Visir-RTD', 'Unrecoverable', 'MC', 'Reboot de Visir par les inf...', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2012, '1317635400', '11', '50', '03', '10', '2011', 'SL25', 'Iview bloque', 'Unrecoverable', 'MC', 'Fusible ON/OFF \r\nRemplacement de la floche', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2013, '1317636000', '12', '00', '03', '10', '2011', 'SL25', 'RTD bloque', 'Unrecoverable', 'Physique', 'Hard reboot', '12', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2014, '1315463400', '08', '30', '08', '09', '2011', 'Tomo1', 'HV PSU Fase Lost', 'Unrecoverable', 'SVD', 'Sweep magnetron par TOMO', '14', '00', '05', '30', 'oui');
INSERT INTO `pannes` VALUES(2015, '1315899000', '09', '30', '13', '09', '2011', 'Tomo1', 'Communication failure (2x)', 'Unrecoverable', 'Technique', 'Reboot (2x)', '10', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2016, '1316535000', '18', '10', '20', '09', '2011', 'Tomo1', 'Press E-Stop button', 'Unrecoverable', 'MC', 'Arret du traitement mais impossible de creer une \\"completion\\" -> send to TOMO', '18', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2017, '1316796300', '18', '45', '23', '09', '2011', 'Tomo1', 'Dose rate error', 'Unrecoverable', 'Physique', 'Reglage du pfn 3.73->3.74', '19', '15', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2018, '1317033000', '12', '30', '26', '09', '2011', 'Tomo1', 'lenteur chargement procedure', 'Unrecoverable', 'MC', 'Reboot all', '13', '00', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2019, '1317225600', '18', '00', '28', '09', '2011', 'Tomo1', 'Press E-Stop button', 'Unrecoverable', 'SVD', 'Reboot treatment unit + tomo data + envoi logs chez TOMO', '18', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(2020, '1317622800', '08', '20', '03', '10', '2011', 'Tomo1', 'Probleme de fusion auto', 'Unrecoverable', 'MC', 'Ajout du mot de passe dans MPiPro + reboot => No result', '08', '15', '00', '15', 'non');
INSERT INTO `pannes` VALUES(2021, '1317630000', '10', '20', '03', '10', '2011', 'Tomo1', 'Pas de lien avec DRS', 'Unrecoverable', 'MC', 'Prise alim DRS mal branchee ....', '10', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2022, '1317415800', '22', '50', '30', '09', '2011', 'Tomo1', 'Recoverable septembre 2011', 'Recoverable', 'EB', '14 x 5 min = 1 h 10', '24', '00', '01', '10', 'oui');
INSERT INTO `pannes` VALUES(2023, '1317902400', '14', '00', '06', '10', '2011', 'Tomo1', 'perte de connexion with the server', 'Unrecoverable', 'EB', 'Reboot all', '14', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2024, '1318240800', '12', '00', '10', '10', '2011', 'Tomo1', 'linac error', 'Unrecoverable', 'MC', 'Reboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2025, '1311668100', '10', '15', '26', '07', '2011', 'Tomo1', 'arcing+ linac ssm error', 'Unrecoverable', 'Technique', 'sweeping magnetron par TOMO', '14', '15', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(2026, '1311699600', '19', '00', '26', '07', '2011', 'Tomo1', 'arcing', 'Unrecoverable', 'SVD', 'remplacement magnetron', '08', '45', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(2027, '1318575000', '08', '50', '14', '10', '2011', 'Tomo1', 'machine has shutdown', 'Unrecoverable', 'MC', 'Reboot', '09', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2028, '1317722400', '12', '00', '04', '10', '2011', 'Tomo1', 'arcing', 'Unrecoverable', 'Technique', 'Sweeping magnetron par TOMO -> encore arcing\r\n\r\nRemplacement magnetron par TOMO', '20', '00', '03', '00', 'oui');
INSERT INTO `pannes` VALUES(2029, '1317136500', '17', '15', '27', '09', '2011', 'CTsim', 'raw data', 'Machine', 'Technique', 'impossible d\\''effacer les rawdata\r\n\r\nelles ne s\\''effacent pas !!!! c\\''est une pile FIFO ( first in first out), elles sont écrasées \r\naction : Déprotéger un max les raw data', '17', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2030, '1317978000', '11', '00', '07', '10', '2011', 'CTsim', 'laser lat droit bloqué', 'Informatique', 'Technique', 'reboot x fois des lasers + refroidissement + wait et contact a2j', '11', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2031, '1318328100', '12', '15', '11', '10', '2011', 'CTsim', 'laser lat droit bloqué', 'Informatique', 'Technique', 'reboot plusieurs fois éteindre et laisser refroidir 15\\'' rallumer ok', '12', '45', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2032, '1318426800', '15', '40', '12', '10', '2011', 'CTsim', 'laser  bloqué', 'Informatique', 'Technique', 'reboot plusieur fois mais rien\r\nouverture du capot et mouvement manuel du laser   retest ok', '16', '00', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2033, '1318921200', '09', '00', '18', '10', '2011', 'Tomo1', 'bouton e stop ', 'Unrecoverable', 'BG', 'bouton  e stop appuyée aprés pb patient\r\nimpossible de reprendre le traitement \r\n\r\nREBOOT ALL ', '09', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2034, '1319781600', '08', '00', '28', '10', '2011', 'Tomo1', 'plafond tombé', 'Unrecoverable', 'MC', 'plafond tombé + pb éclairage \r\ncf service tech', '08', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(2035, '1320217200', '08', '00', '02', '11', '2011', 'Tomo1', 'connection tomogateway impossible ', 'Unrecoverable', 'BG', 'cable alimentation non connecté sur firewall après instal cluster tomo 2\r\nvu avec nordine', '10', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(2036, '1320130800', '08', '00', '01', '11', '2011', 'Tomo1', 'recoverable octobre', 'Recoverable', 'Technique', 'recoverable octobre', '09', '10', '01', '10', 'non');
INSERT INTO `pannes` VALUES(2037, '1320756300', '13', '45', '08', '11', '2011', 'Tomo1', 'linac hardware error', 'Unrecoverable', 'SVD', 'reboot all', '13', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2038, '1321435800', '10', '30', '16', '11', '2011', 'Tomo1', 'mlc leaf in wrong position', 'Unrecoverable', 'SVD', 'test mlc inter tech tomo  chgt verification board', '12', '30', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(2039, '1321513200', '08', '00', '17', '11', '2011', 'Tomo1', 'dose rate variation dose too low', 'Unrecoverable', 'Technique', 'remplacement  target et réglage RF\r\n\r\n+ 1h downtime le 18/11/2011', '20', '00', '12', '00', 'oui');
INSERT INTO `pannes` VALUES(2040, '1320735600', '08', '00', '08', '11', '2011', 'Tomo1', 'électromètre HS', 'Unrecoverable', 'MC', 'utilisation électromètre  tomo 2', '08', '50', '00', '50', 'oui');
INSERT INTO `pannes` VALUES(2041, '1322128800', '11', '00', '24', '11', '2011', 'Tomo1', 'tomo shutdown', 'Unrecoverable', 'MC', 'reboot all', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2042, '1322136600', '13', '10', '24', '11', '2011', 'Tomo1', 'tomo shutdown', 'Unrecoverable', 'MC', 'reboot', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2043, '1322493300', '16', '15', '28', '11', '2011', 'Tomo1', 'trip limit exceed', 'Unrecoverable', 'BG', 'reboot all', '16', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2044, '1322582400', '17', '00', '29', '11', '2011', 'Tomo1', 'trip limit exceed', 'Unrecoverable', 'MC', 'reboot arcing fse for sweeping', '08', '40', '03', '40', 'oui');
INSERT INTO `pannes` VALUES(2045, '1322644200', '10', '10', '30', '11', '2011', 'Tomo1', 'inconnu message erreur fermé', 'Unrecoverable', 'SVD', 'reboot all', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2046, '1323100800', '17', '00', '05', '12', '2011', 'Tomo1', 'gantry ne tourne plus', 'Unrecoverable', 'Technique', 'changement control board moteur par fse tomo', '15', '00', '07', '00', 'oui');
INSERT INTO `pannes` VALUES(2047, '1323158400', '09', '00', '06', '12', '2011', 'Tomo1', 'coupure courant', 'Unrecoverable', 'SVD', 'coupure courant 30min\r\nreboot all', '09', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(2048, '1323414000', '08', '00', '09', '12', '2011', 'Tomo2', 'dose too hight', 'Unrecoverable', 'SVD', 'obs signal pas clean\r\nremplacement ssm par fse tomo  aprés bcp de mail pour inter rapide ', '09', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(2049, '1323327600', '08', '00', '08', '12', '2011', 'Tomo1', 'recoverable novembre', 'Recoverable', '', 'recoverable novembre', '10', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(2050, '1318933800', '12', '30', '18', '10', '2011', 'SL25', 'func2dem', 'Machine', 'BG', 'recherche panne sur intranet changement floche de droite ok ', '12', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2051, '1319101200', '11', '00', '20', '10', '2011', 'SL25', 'pb laser ', 'Machine', 'Technique', 'laser sagital, vertical g et tibiale g  qui on bougé\r\nréglages lasers ok', '11', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(2052, '1320670800', '14', '00', '07', '11', '2011', 'SL25', 'Plantage Visir', 'Informatique', 'SVD', 'reboot visir', '14', '15', '00', '15', '');
INSERT INTO `pannes` VALUES(2053, '1320678900', '16', '15', '07', '11', '2011', 'SL25', 'Wedge', 'Machine', 'MC', 'déplacement manuel du wedge en mode service gantry à 0°', '16', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2054, '1320919200', '11', '00', '10', '11', '2011', 'SL25', 'Plantage Visir-RTD', 'Machine', 'MC', 'reboot ', '11', '05', '00', '05', 'oui');
INSERT INTO `pannes` VALUES(2055, '1321272300', '13', '05', '14', '11', '2011', 'SL25', 'Plantage Visir', 'Informatique', 'BG', 'reboot serveur visir', '13', '20', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2056, '1313129700', '08', '15', '12', '08', '2011', 'SP18', 'filtre bloqué', 'Machine', 'MC', 'filtre énergie électrons coincé  \r\nchangement énergie en mode service ok', '08', '50', '00', '35', 'oui');
INSERT INTO `pannes` VALUES(2057, '1313475300', '08', '15', '16', '08', '2011', 'SP18', 'lcs link', 'Machine', 'MC', 'wait , reboot and on/off disjoncteur HTCA', '09', '00', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(2058, '1314183600', '13', '00', '24', '08', '2011', 'SP18', 'interup infirmière', 'Machine', '', 'room doors 1 et external inhibits ne partent pas \r\nreboot machine\r\nok', '13', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2059, '1314597600', '08', '00', '29', '08', '2011', 'SP18', 'facility one state', 'Machine', 'Technique', 'reboot 3X', '08', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2060, '1314949200', '09', '40', '02', '09', '2011', 'SP18', 'ampoule dsp hs', 'Machine', 'MC', 'changement ampoule', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2061, '1315307700', '13', '15', '06', '09', '2011', 'SP18', 'Lames bloquées', 'Machine', 'MC', 'ajustement du focus de la caméra + optics optimisation', '13', '45', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(2062, '1315546200', '07', '30', '09', '09', '2011', 'SP18', 'problème au démarrage', 'Machine', 'Physique', 'reboot 4X', '08', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(2063, '1324283400', '09', '30', '19', '12', '2011', 'Tomo2', 'undefined error après scan', 'Unrecoverable', 'BG', 'Reboot', '09', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2064, '1324543800', '09', '50', '22', '12', '2011', 'Tomo2', 'Laser error', 'Unrecoverable', 'SVD', 'reboot all', '10', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2065, '1325087100', '16', '45', '28', '12', '2011', 'Tomo2', 'Soft figéjuste avant de lancer le traitement (la fenetre ready ne disparait pas)', 'Unrecoverable', 'SVD', 'reboot all (ctrl alt delete pour fermer le soft)', '16', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2066, '1325145600', '09', '00', '29', '12', '2011', 'Tomo2', 'plus de communication avec la machine', 'Unrecoverable', 'Physique', 'reboot', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2067, '1327046400', '09', '00', '20', '01', '2012', 'Tomo2', 'maintenance retardee', 'Unrecoverable', 'Physique', 'QC le matin', '09', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2068, '1327330200', '15', '50', '23', '01', '2012', 'Tomo2', 'DRS error', 'Unrecoverable', 'MC', 'reboot', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2069, '1327673700', '15', '15', '27', '01', '2012', 'Tomo2', 'unknokn message (efface par inf)', 'Unrecoverable', 'Physique', 'reboot', '15', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2070, '1328040000', '21', '00', '31', '01', '2012', 'Tomo2', 'recoverable janvier 2012', 'Recoverable', 'SVD', '35*5min = 175min = 2h55', '23', '55', '02', '55', 'oui');
INSERT INTO `pannes` VALUES(2071, '1328600700', '08', '45', '07', '02', '2012', 'Tomo2', 'system startup mode => reboot', 'Unrecoverable', 'SVD', 'reboot', '08', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2072, '1329135600', '13', '20', '13', '02', '2012', 'Tomo2', 'error', 'Unrecoverable', 'SVD', 'reboot', '13', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2073, '1329815700', '10', '15', '21', '02', '2012', 'Tomo2', 'linac error x2', 'Unrecoverable', 'SVD', 'reboot x 2', '10', '35', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2074, '1329930900', '18', '15', '22', '02', '2012', 'Tomo2', 'recoverable mais inf pas delogguee avant de partir', 'Recoverable', 'SVD', 'reboot', '18', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2075, '1330365600', '19', '00', '27', '02', '2012', 'Tomo2', 'laser bad reference', 'Unrecoverable', 'SVD', 'reboot', '19', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2076, '1330367400', '19', '30', '27', '02', '2012', 'Tomo2', 'internal com error', 'Unrecoverable', 'SVD', 'reboot', '19', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2077, '1330680900', '10', '35', '02', '03', '2012', 'Tomo2', 'obc error', 'Unrecoverable', 'MC', 'reboot', '10', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2078, '1330681800', '10', '50', '02', '03', '2012', 'Tomo2', 'Trip limit exceeded', 'Unrecoverable', 'MC', 'Arcing => sweeping', '15', '15', '04', '40', 'oui');
INSERT INTO `pannes` VALUES(2079, '1332147600', '10', '00', '19', '03', '2012', 'Tomo2', 'Interrupt en traitement', 'Recoverable', '', 'interrupt pdt trait. => competion\r\nmais apres fenetre avec setup laser différent de 0 car patient n\\''a pas bougé. OK', '10', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2080, '1332919200', '09', '20', '28', '03', '2012', 'Tomo2', '(pas vu message)', 'Unrecoverable', 'SVD', 'reboot', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2081, '1332936000', '14', '00', '28', '03', '2012', 'Tomo2', 'have to reboot', 'Unrecoverable', 'MC', 'reboot', '14', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2082, '1333011600', '11', '00', '29', '03', '2012', 'Tomo2', 'Internal Com. error', 'Unrecoverable', 'SVD', 'reboot', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2083, '1333012200', '11', '10', '29', '03', '2012', 'Tomo2', 'Bug au redemarrage', 'Unrecoverable', 'SVD', 'reboot', '11', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2084, '1322766000', '20', '00', '31', '11', '2011', 'Tomo1', 'recoverable novembre 2011', 'Recoverable', 'BG', '2h30', '22', '30', '02', '30', 'oui');
INSERT INTO `pannes` VALUES(2085, '1323941400', '10', '30', '15', '12', '2011', 'Tomo1', 'Plus de lasers rouges', 'Unrecoverable', 'SVD', 'reboot all', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2086, '1327062600', '13', '30', '20', '01', '2012', 'Tomo1', 'Arcing', 'Unrecoverable', 'MC', 'reboot', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2087, '1326195900', '12', '45', '10', '01', '2012', 'Tomo1', 'Reconstructing scan', 'Unrecoverable', 'BG', 'reboot machine et tomodata', '13', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(2088, '1326290400', '15', '00', '11', '01', '2012', 'Tomo1', 'DB full', 'Unrecoverable', 'MC', '100 % de la DB used => archivage puis reorg', '20', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(2089, '1326466800', '16', '00', '13', '01', '2012', 'Tomo1', 'Linac error', 'Unrecoverable', 'Technique', 'reboot', '16', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2090, '1326722400', '15', '00', '16', '01', '2012', 'Tomo1', 'plus de comm avec tomodata', 'Unrecoverable', 'SVD', '1 er reboot juste machine => nok\r\n2 eme reboot avec tomodata en plus => OK', '15', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(2091, '1327412700', '14', '45', '24', '01', '2012', 'Tomo1', 'linac hardware error', 'Unrecoverable', 'SVD', 'reboot', '14', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2092, '1327471200', '07', '00', '25', '01', '2012', 'Tomo1', 'la table ne bouge pas', 'Unrecoverable', 'SVD', 'reboot apres avoir bougé la table en x et en Y...\r\nNB : juste rmener la table a sa butée arrière en Y devrait résoudre le problème sans rebooter la machine.', '07', '25', '00', '00', 'non');
INSERT INTO `pannes` VALUES(2093, '1327302000', '08', '00', '23', '01', '2012', 'Tomo1', 'dose too high', 'Unrecoverable', 'SVD', 'reglage pfn 3.82 à 3.78', '08', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(2094, '1327571400', '10', '50', '26', '01', '2012', 'Tomo1', 'linaf error', 'Unrecoverable', 'BG', 'reboot all', '11', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2095, '1327995000', '08', '30', '31', '01', '2012', 'Tomo1', 'linac ssm error', 'Unrecoverable', 'MC', 'reboot', '08', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2096, '1328204700', '18', '45', '02', '02', '2012', 'Tomo1', 'MLC errors a plusieurs reprises', 'Recoverable', 'SVD', 'fin traitements + check par FSE mais rien trouvé : lendemain matin : OK', '19', '30', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(2097, '1328043600', '22', '00', '31', '01', '2012', 'Tomo1', 'recoverable janvier 2012', 'Recoverable', 'SVD', '12*5 min = 1h', '23', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(2098, '1325358000', '20', '00', '31', '12', '2011', 'Tomo2', 'recoverable decembre 2011', 'Recoverable', 'Technique', '24*5min = 2h', '22', '00', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(2099, '1330455600', '20', '00', '28', '02', '2012', 'Tomo2', 'recoverable fevrier 2012', 'Recoverable', 'Technique', '45*5min = 3h45', '23', '45', '03', '45', 'oui');
INSERT INTO `pannes` VALUES(2100, '1333216800', '20', '00', '31', '03', '2012', 'Tomo2', 'Recoverable mars 2012', 'Recoverable', 'Technique', '27*5min = 2h15', '22', '15', '02', '15', 'oui');
INSERT INTO `pannes` VALUES(2101, '1328598000', '08', '00', '07', '02', '2012', 'Tomo1', 'Arcing', 'Unrecoverable', 'SVD', 'sweeping +- 2h => nok\r\nRemplacement du magnetron', '20', '00', '12', '00', 'oui');
INSERT INTO `pannes` VALUES(2102, '1328700600', '12', '30', '08', '02', '2012', 'Tomo1', 'Inf a fait shut down a la place de log off', 'Unrecoverable', 'SVD', 'reboot', '12', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2103, '1328726400', '19', '40', '08', '02', '2012', 'Tomo1', 'obc did not received safety packet', 'Unrecoverable', 'SVD', 'reboot', '19', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2104, '1329141000', '14', '50', '13', '02', '2012', 'Tomo1', 'Inf pas delogguee => interrupt => reboot', 'Unrecoverable', 'SVD', 'reboot', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2105, '1329199200', '07', '00', '14', '02', '2012', 'Tomo1', 'Shutdown direct apres lancement procédure', 'Unrecoverable', 'Physique', 'reboot *3', '07', '30', '00', '00', 'non');
INSERT INTO `pannes` VALUES(2106, '1329298200', '10', '30', '15', '02', '2012', 'Tomo1', 'machine demande shutdown', 'Unrecoverable', 'BG', 'reboot', '10', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2107, '1329302700', '11', '45', '15', '02', '2012', 'Tomo1', 'wait to shutdown', 'Unrecoverable', 'MC', 'reboot', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2108, '1329476400', '12', '00', '17', '02', '2012', 'Tomo1', 'Plus d''image sur ecran OS', 'Unrecoverable', 'SVD', 'reboot', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2109, '1329481800', '13', '30', '17', '02', '2012', 'Tomo1', 'Linac error', 'Unrecoverable', 'MC', 'reboot', '13', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2110, '1329719400', '07', '30', '20', '02', '2012', 'Tomo1', 'OS se coupe plusieurs fois', 'Unrecoverable', 'SVD', 'remplacement OS', '11', '10', '03', '10', 'oui');
INSERT INTO `pannes` VALUES(2111, '1329760800', '19', '00', '20', '02', '2012', 'Tomo1', 'No magnetron current', 'Unrecoverable', 'Physique', 'reboot + warmup + test dose', '19', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2112, '1329828300', '13', '45', '21', '02', '2012', 'Tomo1', 'Arcing', 'Unrecoverable', 'SVD', 'sweeping + changement de target (car planifié pour la même semaine)', '11', '00', '06', '00', 'oui');
INSERT INTO `pannes` VALUES(2113, '1330339500', '11', '45', '27', '02', '2012', 'Tomo1', 'wait cancellation', 'Unrecoverable', 'MC', 'reboot', '12', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2114, '1330508400', '10', '40', '29', '02', '2012', 'Tomo1', 'erreur de manip', 'Unrecoverable', 'MC', 'reboot', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2115, '1330585200', '08', '00', '01', '03', '2012', 'Tomo1', 'SSM out + changement magnetron', 'Unrecoverable', 'MC', 'SSM out + changement magnetron \r\na laché pdt qc post maintenance', '20', '00', '12', '00', 'oui');
INSERT INTO `pannes` VALUES(2116, '1330932600', '08', '30', '05', '03', '2012', 'Tomo1', 'wait or shutdown', 'Unrecoverable', 'Technique', 'shutdown => reboot', '08', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2117, '1330954200', '14', '30', '05', '03', '2012', 'Tomo1', 'water flow fault', 'Unrecoverable', 'SVD', 'reboot', '14', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2118, '1330972200', '19', '30', '05', '03', '2012', 'Tomo1', 'linac error', 'Unrecoverable', 'Technique', 'reboot all', '10', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2119, '1331543700', '10', '15', '12', '03', '2012', 'Tomo1', 'wait or shutdown', 'Unrecoverable', 'MC', 'reboot', '10', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2120, '1331897100', '12', '25', '16', '03', '2012', 'Tomo1', 'table top forcé', 'Unrecoverable', 'MC', 'check via stepwedge helicoidal', '12', '55', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2121, '1332428400', '16', '00', '22', '03', '2012', 'Tomo1', 'wait or shutdown', 'Unrecoverable', 'Physique', 'reboot all', '16', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2122, '1332751200', '10', '40', '26', '03', '2012', 'Tomo1', 'trip limit exceeded', 'Unrecoverable', 'SVD', 'reboot = >ok', '10', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2123, '1332768900', '15', '35', '26', '03', '2012', 'Tomo1', 'trip limit exceeded', 'Unrecoverable', 'BG', 'reboot all', '15', '45', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2124, '1330848900', '09', '15', '04', '03', '2012', 'Tomo1', 'obc error', 'Unrecoverable', 'MC', 'reboot all', '09', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2125, '1334553900', '07', '25', '16', '04', '2012', 'Tomo1', 'pcp wait', 'Unrecoverable', 'Technique', 'log in via laptop', '07', '45', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2126, '1325368800', '23', '00', '31', '12', '2011', 'Tomo1', 'recoverable decembre 2011', 'Recoverable', 'Technique', '4*5min', '23', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2127, '1330462800', '22', '00', '28', '02', '2012', 'Tomo1', 'recoverable fevrier 2012', 'Recoverable', 'SVD', '12*5min = 1h', '23', '00', '01', '00', 'oui');
INSERT INTO `pannes` VALUES(2128, '1333216800', '20', '00', '31', '03', '2012', 'Tomo1', 'Recoverable mars 2012', 'Recoverable', 'Technique', '28*5 min = 2h20', '22', '20', '02', '20', 'oui');
INSERT INTO `pannes` VALUES(2129, '1321203600', '18', '00', '13', '11', '2011', 'SL25', 'Gantry ne tourne plus', 'Machine', 'SVD', 'Remplacement carte HME dans le control cabinet', '12', '30', '04', '30', 'oui');
INSERT INTO `pannes` VALUES(2130, '1323158400', '09', '00', '06', '12', '2011', 'SL25', 'coupure de courant de 30 min + visir ne redémarra pas bien (1h)', 'Informatique', 'SVD', 'reboot du serveur visir à plusieurs reprises', '10', '30', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(2131, '1324969200', '08', '00', '27', '12', '2011', 'SL25', 'au démarrage : a froid : "10V ref." persiste dans les inhibits', 'Machine', 'SVD', 'remplacement carte vérif tension\r\n=> QC\r\n=>OK mais réglage champ lumineux', '10', '30', '02', '00', 'oui');
INSERT INTO `pannes` VALUES(2132, '1325862000', '16', '00', '06', '01', '2012', 'SL25', 'Wedge bloqué 3*5''', 'Machine', 'SVD', 'passer en mode service, bouger le wedge, repasser en mode clinique', '16', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2133, '1326216600', '18', '30', '10', '01', '2012', 'SL25', 'wedge bloqué', 'Machine', 'MC', 'FV => SVD : changer de mode (clinique => service) pour bouger le wedge', '18', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2134, '1326291300', '15', '15', '11', '01', '2012', 'SL25', 'Wedge bloqué + visir bloqué', 'Machine', 'BG', 'interrupt => reboot visir=> changer de champ => ok', '15', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2135, '1326457800', '13', '30', '13', '01', '2012', 'SL25', 'shutmon wedge code', 'Machine', 'MC', 'deblocage du wedge en mode service', '13', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2136, '1326640800', '16', '20', '15', '01', '2012', 'SL25', 'wedge bloqué', 'Machine', 'BG', 'deblocage du wedge en mode service', '16', '40', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2137, '1326708000', '11', '00', '16', '01', '2012', 'SL25', 'wedge bloqué', 'Machine', 'BG', 'debloquer en mode service', '11', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2138, '1327069200', '15', '20', '20', '01', '2012', 'SL25', 'wedge bloqué', 'Machine', 'MC', 'debloquer wedge en mode service', '15', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2139, '1327489200', '12', '00', '25', '01', '2012', 'SL25', 'gas press', 'Machine', 'SVD', 'remettre nouvelle bouteille de SF6 + reboot (car remise à niveau SF6 se fait au boot de la machine) voir manomètre pression SF6 dans partie technique gauche (face à la machine quand gatry à 0°)', '12', '25', '00', '25', 'oui');
INSERT INTO `pannes` VALUES(2140, '1327570200', '10', '30', '26', '01', '2012', 'SL25', 'demande mise à jour PC visir par le SIH', 'Informatique', 'BG', 'laisser faire la maj', '10', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2141, '1328208300', '19', '45', '02', '02', '2012', 'SL25', 'wedge bloqué', 'Machine', 'Physique', 'debloquer wedge en mode technique', '19', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2142, '1328623200', '15', '00', '07', '02', '2012', 'SL25', 'wedge bloqué', 'Machine', 'BG', 'debloquer wedge en mode service\r\njust log out not enough => charger autre champ', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2143, '1329138900', '14', '15', '13', '02', '2012', 'SL25', 'visir planté', 'Informatique', 'SVD', 'reboot visir', '14', '30', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2144, '1331033400', '12', '30', '06', '03', '2012', 'SL25', 'retard installation nouvelle table', 'Machine', 'Technique', 'calibration, réglage et check nouvelle table', '15', '55', '03', '25', 'oui');
INSERT INTO `pannes` VALUES(2145, '1331123400', '13', '30', '07', '03', '2012', 'SL25', 'table clutch reste', 'Machine', 'BG', 'aller appuyer sur bouton qui reste allumé (carré avec croix dedans) sur la manette de la table', '13', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2146, '1332231000', '09', '10', '20', '03', '2012', 'SL25', 'table clutch', 'Machine', 'MC', 'jouer en x et z après avoir examiné les leds sur le table control cvabinet', '09', '30', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2147, '1332488700', '08', '45', '23', '03', '2012', 'SL25', 'reset motors', 'Machine', 'MC', 'arrêt d\\''urgence de la table enclenché', '09', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2148, '1334037600', '08', '00', '10', '04', '2012', 'SL25', 'Température H2O trop haute sur le départ du circuit de refroidissement (20°C)', 'Machine', 'Physique', 'appeller HVAC (service technique) et rebasculer sur l\\''eau de ville', '08', '15', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2149, '1334050200', '11', '30', '10', '04', '2012', 'SL25', 'Fill v mon, T° !!?', 'Machine', 'BG', 'check pression h2o\r\nreboot rtd\r\nT° OK\r\npress OK', '11', '45', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2150, '1320915600', '10', '00', '10', '11', '2011', 'CTsim', 'laser horizontal gauche patient bloqué', 'Recoverable', 'MC', 'reboot on\\\\off 3 à 4fois', '10', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2151, '1321972200', '15', '30', '22', '11', '2011', 'CTsim', 'laser horizontal droit bloqué', 'Recoverable', 'SVD', 'Déblocage manuel du laser puis reboot\r\nX2', '15', '40', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2152, '1322131800', '11', '50', '24', '11', '2011', 'CTsim', 'laser verticaux décallé', 'Recoverable', 'MC', 'lasers pas à zéro  \r\nreboot ok ', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2153, '1324550700', '11', '45', '22', '12', '2011', 'CTsim', 'laser sagital bloqué', 'Recoverable', 'MC', 'on off 3X', '11', '55', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2154, '1327482000', '10', '00', '25', '01', '2012', 'CTsim', 'laser horizontal droit bloqué', 'Recoverable', 'SVD', 'reboot+ multi inti  \r\nok', '10', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2155, '1327999500', '09', '45', '31', '01', '2012', 'CTsim', 'laser horizontal droit bloqué', 'Recoverable', 'MC', 'remplacement alim no ok\r\ndéblocage manuel du laser ok ', '10', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2156, '1328085900', '09', '45', '01', '02', '2012', 'CTsim', 'table bloqué', 'Recoverable', 'BG', 'reboot machine  et déblocage table avec manette rouge en power off machine', '10', '00', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2157, '1328179500', '11', '45', '02', '02', '2012', 'CTsim', 'laser bloqué', 'Recoverable', 'SVD', 'reboot + relancer plusieurs fois', '12', '05', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2158, '1329129900', '11', '45', '13', '02', '2012', 'CTsim', 'cms server check hdd', 'Recoverable', 'SVD', 'départ de rtp99 , re scan du hdd', '17', '00', '05', '00', 'oui');
INSERT INTO `pannes` VALUES(2159, '1333710000', '13', '00', '06', '04', '2012', 'CTsim', 'laser vertical droit bloqué', 'Recoverable', 'BG', 'nettoyage rail + chgt diode ', '13', '40', '00', '40', 'oui');
INSERT INTO `pannes` VALUES(2160, '1334747700', '13', '15', '18', '04', '2012', 'Tomo1', 'mag current', 'Unrecoverable', 'SVD', 'reboot', '13', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2161, '1335351600', '13', '00', '25', '04', '2012', 'Tomo1', ' sytheme  requires Maintenance', 'Unrecoverable', 'SVD', 'reboot', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2162, '1335771600', '09', '40', '30', '04', '2012', 'Tomo1', 'soft planté', 'Unrecoverable', 'SVD', 'reboot', '09', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2163, '1336122000', '11', '00', '04', '05', '2012', 'Tomo1', 'bug tomo', 'Unrecoverable', 'SVD', 'reboot', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2164, '1335808800', '20', '00', '30', '04', '2012', 'Tomo1', 'recoverable avril', 'Recoverable', 'BG', '4X5min', '20', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2165, '1337059800', '07', '30', '15', '05', '2012', 'Tomo1', 'water flow+obc', 'Unrecoverable', 'MC', 'fse a ajouter le débit d\\''H2O + remplacement média converter', '10', '20', '02', '10', '');
INSERT INTO `pannes` VALUES(2166, '1337144400', '07', '00', '16', '05', '2012', 'Tomo1', 'water flow+obc', 'Unrecoverable', 'Physique', 'ajustement  débit par fse et bypass capteur \r\nre inter le 17 pour changement pièces ( férié)', '07', '30', '00', '30', 'oui');
INSERT INTO `pannes` VALUES(2167, '1335736800', '22', '00', '30', '04', '2012', 'Tomo2', 'RECOVERABLE AVRIL', 'recoverable', 'SVD', '', '22', '55', '1', '55', 'oui');
INSERT INTO `pannes` VALUES(2168, '1337032800', '19', '45', '15', '05', '2012', 'Tomo2', 'PLUS DE REPONSE DU SOFT', 'unrecoverable', 'SVD', 'reboot all', '20', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2169, '1337292000', '20', '00', '18', '05', '2012', 'Tomo2', 'bug tomo', 'unrecoverable', 'Physique', 'reboot all', '20', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2170, '1338242400', '15', '30', '29', '05', '2012', 'Tomo2', 'bouton rouge appuyé', 'unrecoverable', 'SVD', 'reboot all', '15', '40', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2171, '1338328800', '11', '00', '30', '05', '2012', 'Tomo2', 'table com error', 'unrecoverable', 'SVD', 'reboot', '11', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2172, '1338328800', '17', '50', '30', '05', '2012', 'Tomo2', 'plus de réponse de l OS après MVCT', 'unrecoverable', 'SVD', 'reboot', '18', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2173, '1338328800', '19', '30', '30', '05', '2012', 'Tomo2', 'error', 'unrecoverable', 'Physique', 'reboot', '19', '45', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2174, '1338760800', '15', '10', '04', '06', '2012', 'Tomo2', 'wait....', 'unrecoverable', 'MX', 'reboot', '15', '20', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2175, '1335996000', '19', '30', '03', '05', '2012', 'Tomo2', 'arcing', 'unrecoverable', 'MX', 'changement magnetron\r\nfin le 04/05/2012 11h30', '11', '30', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(2176, '1338847200', '14', '30', '05', '06', '2012', 'Tomo2', 'water pompe error', 'unrecoverable', 'MX', 'nordine a fait debublling', '15', '30', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2177, '1338847200', '16', '15', '05', '06', '2012', 'Tomo2', 'low SF6', 'unrecoverable', 'MX', 'reboot ', '16', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2178, '1338847200', '16', '30', '05', '06', '2012', 'Tomo2', 'low SF6 pressure +H2O prob', 'unrecoverable', 'MX', 'changement sonde T° sur mag qui causait prob sur chaine de securité SF6', '20', '00', '03', '30', 'oui');
INSERT INTO `pannes` VALUES(2179, '1339452000', '15', '00', '12', '06', '2012', 'Tomo2', 'plus de com OS machine', 'unrecoverable', 'SVD', 'reboot', '15', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2180, '1339711200', '11', '00', '15', '06', '2012', 'Tomo2', 'PLUS DE COM', 'unrecoverable', 'SVD', 'Reboot X2', '11', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2181, '1339970400', '12', '00', '18', '06', '2012', 'Tomo2', 'plus de com', 'unrecoverable', 'SVD', 'reboot', '12', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2182, '1338415200', '20', '00', '31', '05', '2012', 'Tomo2', 'RECOVERABLE juin', 'recoverable', 'BG', '', '22', '10', '02', '10', 'oui');
INSERT INTO `pannes` VALUES(2183, '1337292000', '19', '00', '18', '05', '2012', 'Tomo1', 'BUG TOMO', 'unrecoverable', 'Physique', 'REBOOT', '19', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2184, '1338242400', '11', '00', '29', '05', '2012', 'Tomo1', 'OBC DID NOT receive safty packet', 'unrecoverable', 'SVD', 'reboot', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2185, '1338760800', '15', '30', '04', '06', '2012', 'Tomo1', 'water flow falt', 'unrecoverable', 'MX', 'reboot ok', '15', '40', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2186, '1338760800', '20', '30', '04', '06', '2012', 'Tomo1', 'water flow falt', 'unrecoverable', 'Physique', 'tel tomo ajustement ', '22', '30', '2', '00', 'oui');
INSERT INTO `pannes` VALUES(2187, '1338847200', '16', '00', '05', '06', '2012', 'Tomo1', 'wait....', 'unrecoverable', 'MX', 'remplacement par tomo du media converter', '17', '15', '1', '15', 'oui');
INSERT INTO `pannes` VALUES(2188, '1338847200', '17', '30', '05', '06', '2012', 'Tomo1', 'dose too hight', 'unrecoverable', 'Accuray', '...???', '19', '30', '2', '00', 'oui');
INSERT INTO `pannes` VALUES(2189, '1339020000', '14', '00', '07', '06', '2012', 'Tomo1', 'pompe ne démarre pas', 'unrecoverable', 'MX', 'nordine remplacement  débimétre et eau durant le we', '17', '00', '3', '00', 'oui');
INSERT INTO `pannes` VALUES(2190, '1339106400', '8', '00', '08', '06', '2012', 'Tomo1', 'low dose', 'unrecoverable', 'Physique', 'fse tomo : ajustement des débits au niveau de la RF', '14', '00', '4', '00', 'oui');
INSERT INTO `pannes` VALUES(2191, '1339365600', '8', '00', '11', '06', '2012', 'Tomo1', 'hight set power ', 'unrecoverable', 'MX', 'descente Pfn 2,645 à 2,61', '9', '30', '1', '30', 'oui');
INSERT INTO `pannes` VALUES(2192, '1339711200', '10', '15', '15', '06', '2012', 'Tomo1', 'plus de com après interrupte ( clé tourné et pas stop)', 'unrecoverable', 'SVD', 'reboot', '10', '25', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2193, '1339970400', '17', '10', '18', '06', '2012', 'Tomo1', 'linac error', 'unrecoverable', 'MX', 'reboot', '17', '20', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2194, '1340056800', '11', '00', '19', '06', '2012', 'Tomo1', 'linac error', 'unrecoverable', 'SVD', 'reboot', '11', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2195, '1338415200', '20', '00', '31', '05', '2012', 'Tomo1', 'RECOVERABLE mai', 'recoverable', 'SVD', '', '20', '35', '0', '35', 'oui');
INSERT INTO `pannes` VALUES(2196, '1339452000', '13', '10', '12', '06', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'MX', 'ajustement lwindow', '13', '40', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2197, '1340575200', '7', '00', '25', '06', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'BG', 'ajustement l window', '9', '0', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2198, '1340575200', '14', '10', '25', '06', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'BG', 'ajustement L window', '14', '35', '0', '25', 'oui');
INSERT INTO `pannes` VALUES(2199, '1334095200', '15', '00', '11', '04', '2012', 'SL25', 'water temp', 'machine', 'BG', 'sur h2o de ville plus de filtre \r\nreboot ok ', '15', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2200, '1335132000', '16', '40', '23', '04', '2012', 'SL25', 'isorot table bloqué', 'machine', 'SVD', 'enlever plaque du sol et bien les remettre', '16', '55', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2201, '1335996000', '14', '00', '03', '05', '2012', 'SL25', '2t error en E20', 'machine', 'SVD', 'chauffer e20 en service', '14', '00', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2202, '1336428000', '11', '00', '08', '05', '2012', 'SL25', 'dose rate bas en X6 et plus de dose en E20 E22', 'machine', 'BG', 'remplacement phase shifter ', '16', '30', '16', '30', 'oui');
INSERT INTO `pannes` VALUES(2203, '1336514400', '11', '20', '09', '05', '2012', 'SL25', 'bouton rouge appuyé + hight water t°', 'machine', 'BG', 'reboot et ajustement pression h2o machine 12,5b', '11', '35', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2204, '1336946400', '14', '15', '14', '05', '2012', 'SL25', 'connectique applicateur HS', 'machine', 'Elekta', 'remplacement connecteur', '15', '45', '1', '30', 'oui');
INSERT INTO `pannes` VALUES(2205, '1337292000', '8', '00', '18', '05', '2012', 'SL25', 'amploule télémétre hs', 'machine', 'Physique', 'remplacement jmd', '8', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2206, '1337810400', '16', '00', '24', '05', '2012', 'SL25', 'water temp', 'machine', 'BG', 'tel service tech pression basse nettoyage électrovanne arrive h2o', '17', '20', '1', '20', 'oui');
INSERT INTO `pannes` VALUES(2207, '1339365600', '10', '30', '11', '06', '2012', 'SL25', 'reset motor bloqué + wedge', 'machine', 'BG', 'voir si bouton rouge de table et les actionner  ', '11', '15', '0', '45', 'oui');
INSERT INTO `pannes` VALUES(2208, '1339365600', '12', '45', '11', '06', '2012', 'SL25', 'mfil vmon', 'machine', 'BG', 'passage sur h2o  ville', '13', '30', '0', '45', 'oui');
INSERT INTO `pannes` VALUES(2209, '1317160800', '8', '30', '28', '09', '2011', 'SP18', 'chambre ionisation cassée par tech lors de la maintenance', 'machine', 'SVD', 'changement chambre', '17', '00', '8', '30', 'oui');
INSERT INTO `pannes` VALUES(2210, '1317333600', '10', '30', '30', '09', '2011', 'SP18', 'rtd freeze', 'informatique', 'BG', 'reboot hard+ disjoncteur HTCA', '11', '30', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2211, '1349992800', '17', '00', '12', '10', '2012', 'SP18', 'freeze visir ', 'informatique', 'MX', 'reboot rtd', '17', '20', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2212, '1321225200', '13', '00', '14', '11', '2011', 'SP18', 'visir lonk rtd', 'informatique', 'MX', 'wait et reboot du patient', '13', '05', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(2213, '1321830000', '8', '30', '21', '11', '2011', 'SP18', 'rtd freeze', 'informatique', 'Physique', 'hard reboot', '9', '00', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2214, '1322607600', '8', '00', '30', '11', '2011', 'SP18', 'machine bloquée', 'informatique', 'Physique', 'car iview off reboot et timer', '8', '40', '0', '40', 'oui');
INSERT INTO `pannes` VALUES(2215, '1322607600', '14', '00', '30', '11', '2011', 'SP18', 'machine shutdown', 'machine', 'Physique', 'reboot', '14', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2216, '1354662000', '8', '00', '05', '12', '2012', 'SP18', 'timer +++ et reboot', 'informatique', 'SVD', 'reboot', '8', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2217, '1323212400', '14', '30', '07', '12', '2011', 'SP18', 'amploule télémétre hs', 'machine', 'SVD', 'changement ampoule', '14', '35', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(2218, '1323990000', '15', '45', '16', '12', '2011', 'SP18', 'écran visir off en salle', 'machine', 'SVD', ' appuyer sur scroll lock sur le clavier du pc visir ', '15', '50', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(2219, '1327618800', '14', '15', '27', '01', '2012', 'SP18', 'water temp', 'machine', 'SVD', 'chiller en off \r\ntel Mr cofely 8686 ou  7400', '16', '00', '1', '45', 'oui');
INSERT INTO `pannes` VALUES(2220, '1327964400', '8', '30', '31', '01', '2012', 'SP18', 'visir mémoir rien sur RDT', 'informatique', 'MX', 'bizzarre mode service ok jeu sur lames ok retour clinique ok', '9', '00', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2221, '1327964400', '9', '50', '31', '01', '2012', 'SP18', 'perte connection visir', 'informatique', 'SVD', 'reboot all par FV', '10', '10', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2222, '1328050800', '9', '00', '01', '02', '2012', 'SP18', 'communcation failure avec visir', 'informatique', 'MX', 'terminate puis rechargement du faisceau', '9', '30', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2223, '1326150000', '8', '00', '10', '01', '2012', 'SP18', 'MAGNETRON HS', 'unrecoverable', 'BG', 'changement magnetron par elekta', '17', '00', '8', '30', 'oui');
INSERT INTO `pannes` VALUES(2224, '1333836000', '16', '45', '08', '04', '2012', 'SP18', 'perte connection visir', 'informatique', 'SVD', 'reboot rtd visir +switch reseau', '17', '15', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2225, '1336428000', '15', '00', '08', '05', '2012', 'SP18', 'ecran rtd clignote + message sticky keys', 'informatique', 'Physique', 'problème de faux contact dans les connections sous le poste de commande', '15', '45', '0', '45', 'oui');
INSERT INTO `pannes` VALUES(2226, '1339538400', '8', '00', '13', '06', '2012', 'SP18', 'problème de dosi avec le poly', 'machine', 'MX', 'quickcheck par rtt', '10', '30', '2', '00', 'oui');
INSERT INTO `pannes` VALUES(2227, '1340143200', '14', '00', '20', '06', '2012', 'SP18', 'perte de com réseau entre st luc et spo', 'informatique', 'SVD', 'résolution du problème par service informatique', '14', '15', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2228, '1340229600', '12', '30', '21', '06', '2012', 'SP18', 'iview bloqué , touchgard , table clutch', 'machine', 'MX', 'ajustement des switchs avec marcel switch droit boitier droite patient de i view', '14', '00', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2229, '1325804400', '9', '45', '06', '01', '2012', 'SP18', 'gantry damand', 'machine', 'Physique', 'jeu sur la floche', '10', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2230, '1326063600', '10', '30', '09', '01', '2012', 'SP18', 'dose rate error', 'machine', 'Physique', 'magneton... diminution du dose rate ( item 44 part 134) à 370', '11', '30', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2231, '1326063600', '12', '00', '09', '01', '2012', 'SP18', 'dose rate error', 'machine', 'Physique', 'idem de 10h30 9/01/2012', '12', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2232, '1326322800', '8', '00', '12', '01', '2012', 'SP18', 'backup error', 'informatique', 'Physique', 'hard reboot', '8', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2233, '1326409200', '8', '30', '13', '01', '2012', 'SP18', 'dose mauvaise avec quickcheck', 'machine', 'Physique', 'check avec poly ok', '8', '45', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2234, '1326927600', '15', '30', '19', '01', '2012', 'SP18', 'iview bloqué ', 'machine', 'Physique', 'fusible, pousser ivew touchgard reboot  ras\r\nouvir caport droite de iview , switch iview côté machine en haut >>> re adapter la position du switch >>> plus de bip >>> reboot iview ok ', '17', '05', '1', '35', 'oui');
INSERT INTO `pannes` VALUES(2235, '1336687200', '9', '20', '11', '05', '2012', 'SP18', 'table clutch', 'machine', 'MX', 'monter la table assez haut', '9', '30', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2236, '1337292000', '8', '00', '18', '05', '2012', 'SP18', 'dosi poly + clavier visir', 'machine', 'Physique', 'remplacement du clavier    AD', '9', '30', '1', '30', 'oui');
INSERT INTO `pannes` VALUES(2237, '1339106400', '8', '00', '08', '06', '2012', 'SP18', 'problème backup', 'informatique', 'Physique', 'reboot 3x', '8', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2238, '1340834400', '10', '30', '28', '06', '2012', 'Tomo1', 'PAS VU DE MESSAGE', 'unrecoverable', 'SVD', 'REBOOT', '10', '30', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2239, '1340920800', '13', '50', '29', '06', '2012', 'Tomo1', 'linac error', 'unrecoverable', 'MX', 'reboot', '14', '00', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2240, '1341266400', '8', '00', '03', '07', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'MX', 'ajustement des flows meter linac W en orange + BYPASS POMPE après validation du support tomo', '10', '35', '2', '35', 'oui');
INSERT INTO `pannes` VALUES(2241, '1341266400', '10', '50', '03', '07', '2012', 'Tomo1', 'dose too hight', 'unrecoverable', 'MX', 'ajustement Pfn', '11', '15', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2242, '1341266400', '12', '30', '03', '07', '2012', 'Tomo1', 'dose too hight', 'unrecoverable', 'BG', 'ajustement pfn déja bas appel fse tomo ajustement injector curent', '15', '45', '3', '15', 'oui');
INSERT INTO `pannes` VALUES(2243, '1341352800', '8', '20', '04', '07', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'BG', 'ajustement des débits sur target W ok', '9', '20', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2244, '1341439200', '10', '40', '05', '07', '2012', 'Tomo1', 'linac hardar error', 'unrecoverable', 'MX', 'reboot', '10', '50', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2245, '1341439200', '12', '00', '05', '07', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'MX', 'bypass pump avant remplacement + water flow HS', '13', '00', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2246, '1341784800', '12', '00', '09', '07', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'MX', 'apres WE inter de tomo pour changement pompe\r\nréduction de la pression h2o', '14', '30', '2', '30', 'oui');
INSERT INTO `pannes` VALUES(2247, '1341784800', '18', '10', '09', '07', '2012', 'Tomo1', 'water flow error', 'unrecoverable', 'Physique', 'bypass pompe ', '18', '50', '0', '40', 'oui');
INSERT INTO `pannes` VALUES(2248, '1341871200', '12', '30', '10', '07', '2012', 'Tomo1', 'dose too hight', 'unrecoverable', 'Physique', 'impossible de bouger encore le pfn appel tomo pour changement cible travail la nuit pour fse', '20', '00', '7', '30', 'oui');
INSERT INTO `pannes` VALUES(2249, '1341871200', '11', '40', '10', '07', '2012', 'Tomo1', 'switch error', 'unrecoverable', 'Physique', 'reboot', '11', '50', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2250, '1342476000', '11', '00', '17', '07', '2012', 'Tomo2', 'Pas de reponse de la machine', 'unrecoverable', 'SVD', 'Reboot', '11', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2251, '1344636000', '20', '00', '11', '08', '2012', 'Tomo2', 'recoverable juin 2012', 'recoverable', 'SVD', 'Actions effectuées', '00', '25', '4', '25', 'oui');
INSERT INTO `pannes` VALUES(2252, '1342562400', '14', '50', '18', '07', '2012', 'Tomo2', 'plus de reponse de la machine', 'unrecoverable', 'SVD', 'Reboot', '15', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2253, '1343080800', '13', '40', '24', '07', '2012', 'Tomo2', 'Plus de Comm', 'unrecoverable', 'SVD', 'Reboot', '13', '50', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2254, '1343685600', '11', '55', '31', '07', '2012', 'Tomo2', 'Lasers error', 'unrecoverable', 'SVD', 'Lasers errors', '12', '05', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2255, '1343685600', '20', '00', '31', '07', '2012', 'Tomo2', 'recoverable juillet 2012', 'unrecoverable', 'SVD', '39*5min = 3h15', '23', '15', '03', '15', 'oui');
INSERT INTO `pannes` VALUES(2256, '1346364000', '20', '00', '31', '08', '2012', 'Tomo2', 'Recoverable aout 2012', 'recoverable', 'SVD', '13*5minutes = 1h05', '21', '05', '1', '05', 'oui');
INSERT INTO `pannes` VALUES(2257, '1341871200', '12', '30', '10', '07', '2012', 'Tomo1', 'Dose too high + probleme water flow fault', 'unrecoverable', 'BG', 'Remplacement target', '20', '00', '07', '30', 'oui');
INSERT INTO `pannes` VALUES(2258, '1341957600', '08', '00', '11', '07', '2012', 'Tomo1', 'waterflow fault', 'recoverable', 'SVD', 'réparation waterflow fault', '12', '00', '04', '00', 'oui');
INSERT INTO `pannes` VALUES(2259, '1342389600', '12', '00', '16', '07', '2012', 'Tomo1', 'machine shutdown', 'unrecoverable', 'SVD', 'Reboot all', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2260, '1341957600', '20', '00', '11', '07', '2012', 'Tomo1', 'recoverable juin 2012', 'recoverable', 'BG', '9*5min = 45 min', '20', '45', '00', '45', 'oui');
INSERT INTO `pannes` VALUES(2261, '1342476000', '11', '35', '17', '07', '2012', 'Tomo1', 'linac hardware error', 'unrecoverable', 'SVD', 'reboot', '11', '45', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2262, '1342562400', '12', '0', '18', '07', '2012', 'Tomo1', 'trip limit exceeded', 'unrecoverable', 'SVD', 'reboot => OK', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2263, '1343253600', '08', '00', '26', '07', '2012', 'Tomo1', 'MLC bad position', 'unrecoverable', 'BG', '??', '11', '30', '3', '30', 'oui');
INSERT INTO `pannes` VALUES(2264, '1343253600', '12', '00', '26', '07', '2012', 'Tomo1', 'Machine bloquée après interrupt', 'unrecoverable', 'BG', 'Reboot', '12', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2265, '1343685600', '20', '00', '31', '07', '2012', 'Tomo1', 'recoverable Juillet 2012', 'recoverable', 'SVD', '21*5min = 1h45', '21', '45', '01', '45', 'oui');
INSERT INTO `pannes` VALUES(2266, '1345500000', '08', '00', '21', '08', '2012', 'Tomo1', 'Wait a la mise en rout du sfot... rien ne se passe', 'unrecoverable', 'MX', 'DRS HS (power supply) tel tomo ', '14', '30', '06', '30', 'oui');
INSERT INTO `pannes` VALUES(2267, '1346104800', '15', '00', '28', '08', '2012', 'Tomo1', 'Plus de comm "wait or shutdown"', 'unrecoverable', 'SVD', 'reboot', '15', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2268, '1346364000', '20', '00', '31', '08', '2012', 'Tomo1', 'Recoverable aout 2012', 'recoverable', 'SVD', '16*5min = 1h20', '21', '20', '1', '20', 'oui');
INSERT INTO `pannes` VALUES(2269, '1346364000', '20', '00', '31', '08', '2012', 'Tomo2', 'Recoverable aout 2012', 'recoverable', 'SVD', '13*5min = 1h05', '21', '05', '01', '05', 'oui');
INSERT INTO `pannes` VALUES(2270, '1348956000', '20', '00', '30', '09', '2012', 'Tomo2', 'recoverable septembre 2012', 'recoverable', 'SVD', '32*5min = 2h40', '22', '40', '2', '40', 'oui');
INSERT INTO `pannes` VALUES(2271, '1349042400', '10', '45', '01', '10', '2012', 'Tomo2', 'DRS com error', 'recoverable', 'SVD', 'reboot', '10', '55', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2272, '1351116000', '12', '40', '25', '10', '2012', 'Tomo2', 'Plus de com. Machine ne répond plus', 'unrecoverable', 'SVD', 'reboot ok', '12', '50', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2273, '1351638000', '20', '00', '31', '10', '2012', 'Tomo2', 'recoverable octobre 2012', 'recoverable', 'SVD', '40*5min = 3h40', '23', '40', '3', '40', 'oui');
INSERT INTO `pannes` VALUES(2274, '1352415600', '13', '00', '09', '11', '2012', 'Tomo2', '"Did not receive packet from OBC"', 'unrecoverable', 'SVD', 'reboot', '13', '10', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2275, '1352761200', '13', '00', '13', '11', '2012', 'Tomo2', '??', 'unrecoverable', 'SVD', 'reboot', '13', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2276, '1353279600', '10', '05', '19', '11', '2012', 'Tomo2', 'Laser errors', 'unrecoverable', 'SVD', 'reboot', '10', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2277, '1348437600', '11', '50', '24', '09', '2012', 'Tomo1', 'linac hardware error', 'unrecoverable', 'SVD', 'reboot', '12', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2278, '1346882400', '11', '05', '06', '09', '2012', 'Tomo1', 'Plus de comm avec serveur', 'unrecoverable', 'SVD', 'reboot', '11', '15', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2279, '1348783200', '09', '20', '28', '09', '2012', 'Tomo1', 'Lasers rouges off', 'unrecoverable', 'MX', 'On off du fusibles', '09', '25', '00', '5', 'oui');
INSERT INTO `pannes` VALUES(2280, '1348956000', '20', '00', '30', '09', '2012', 'Tomo1', 'recoverable septembre 2012', 'recoverable', 'SVD', '5*5=25min', '20', '25', '0', '25', 'oui');
INSERT INTO `pannes` VALUES(2281, '1349128800', '10', '00', '02', '10', '2012', 'Tomo1', 'Microcoupure de courant', 'unrecoverable', 'BG', 'reboot', '10', '00', '0', '05', 'oui');
INSERT INTO `pannes` VALUES(2282, '1349388000', '07', '00', '05', '10', '2012', 'Tomo1', 'Tomo data coupé + autostart pas démarré', 'unrecoverable', 'Physique', 'Reboot all\r\nCause : Coupure de courant\r\n=> plus de H2O glacée\r\nPlus alim sur autostart', '09', '00', '00', '00', 'non');
INSERT INTO `pannes` VALUES(2283, '1350252000', '09', '20', '15', '10', '2012', 'Tomo1', 'linac hardware error', 'recoverable', 'SVD', 'reboot', '09', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2284, '1351116000', '12', '40', '25', '10', '2012', 'Tomo1', 'Mauvaise manip??', 'unrecoverable', 'SVD', 'Reboot', '12', '50', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2285, '1351116000', '12', '50', '25', '10', '2012', 'Tomo1', 'Au reboot : bad rds soft version', 'unrecoverable', 'SVD', 'reboot', '13', '00', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2286, '1351810800', '13', '05', '02', '11', '2012', 'Tomo1', 'Cancellation', 'unrecoverable', 'MX', 'reboot', '13', '15', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2287, '1351638000', '20', '00', '31', '10', '2012', 'Tomo1', 'recoverable octobre 2012', 'recoverable', 'SVD', '4*5min = 20min', '20', '20', '00', '20', 'oui');
INSERT INTO `pannes` VALUES(2288, '1352415600', '10', '30', '09', '11', '2012', 'Tomo1', 'Au reboot : bad rds soft version', 'unrecoverable', 'SVD', 'Reboot * 5 => NOK\r\n2.a) Bouger gantry\r\n2.b) reboot\r\n=>OK', '12', '00', '01', '30', 'oui');
INSERT INTO `pannes` VALUES(2289, '1352761200', '17', '00', '13', '11', '2012', 'Tomo1', 'Table error', 'unrecoverable', 'SVD', 'reboot', '17', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2290, '1353279600', '09', '00', '19', '11', '2012', 'Tomo1', 'linac hardware error', 'unrecoverable', 'SVD', 'reboot', '09', '10', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2291, '1353452400', '11', '20', '21', '11', '2012', 'Tomo1', 'MACHINE NE TOURNE PAS', 'unrecoverable', 'SVD', 'REboot', '11', '30', '0', '10', 'oui');
INSERT INTO `pannes` VALUES(2292, '1353625200', '8', '00', '23', '11', '2012', 'Tomo1', 'tomo dure a démarrer après coupure courant de soir veille', 'unrecoverable', 'BG', 'reboot', '8', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2293, '1353625200', '8', '30', '23', '11', '2012', 'Tomo1', 'arrêt urgence enfoncé', 'unrecoverable', 'MX', 'reboot', '8', '45', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2294, '1353884400', '8', '00', '26', '11', '2012', 'Tomo1', 'câble dosi +DSQ²', 'unrecoverable', 'MX', 'défectueux+trop de DQA', '8', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2295, '1341871200', '11', '30', '10', '07', '2012', 'SL25', 'water t° en E15', 'machine', 'BG', 'log off puis log on', '11', '50', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2296, '1341957600', '13', '00', '11', '07', '2012', 'SL25', 'isorot bloqué', 'machine', 'MX', 'par la planche au sol \r\nroulement support dévisé \r\nrevisé et ok', '13', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2297, '1342994400', '8', '30', '23', '07', '2012', 'SL25', ' touchgard ne part plus', 'machine', 'BG', 'inter elekta\r\nchgt alim Iview le 24/07/2012 18h00 by pass ivew pour traiter', '8', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2298, '1343599200', '10', '00', '30', '07', '2012', 'SL25', 'water t°', 'machine', 'BG', 'mode service plus log on en clinique ok', '10', '20', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2299, '1343858400', '14', '50', '02', '08', '2012', 'SL25', 'water t°', 'machine', 'BG', 'mode service puis log on en clinique ok', '15', '10', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2300, '1345413600', '8', '30', '20', '08', '2012', 'SL25', 'dose diff', 'machine', 'SVD', 'changement monitor chamber par tech elekta heure de fin le 21/08 14h15', '14', '15', '13', '15', 'oui');
INSERT INTO `pannes` VALUES(2301, '1346364000', '16', '45', '31', '08', '2012', 'SL25', 'table bloquée', 'machine', 'SVD', 'reboot table ', '16', '50', '0', '5', 'oui');
INSERT INTO `pannes` VALUES(2302, '1346968800', '8', '00', '07', '09', '2012', 'SL25', 'plus de champ lumineux', 'machine', 'MX', 'remplacement cable alim champ lumineux', '12', '45', '4', '45', 'oui');
INSERT INTO `pannes` VALUES(2303, '1347919200', '12', '05', '18', '09', '2012', 'SL25', 'wait external prescription', 'informatique', 'MX', 'hard reboot', '11', '45', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2304, '1348178400', '11', '45', '21', '09', '2012', 'SL25', 'table clutch ne part pas', 'machine', 'BG', 'on off power unit table ', '12', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2305, '1351202400', '9', '45', '26', '10', '2012', 'SL25', 'mosaiq com error', 'informatique', 'MX', 'restart mosaiq', '10', '00', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2306, '1351638000', '13', '15', '31', '10', '2012', 'SL25', 'Y1 leaf too narrow', 'machine', 'BG', 'réglage diaphragme caméra', '13', '30', '0', '15', 'oui');
INSERT INTO `pannes` VALUES(2307, '1351810800', '13', '30', '02', '11', '2012', 'SL25', 'signal supplies', 'machine', 'MX', 'Mlc bloqué remplacement des 2  fusibles FS2 ET FS3 sir area 5(T7A)\r\nreboot et warmup', '15', '20', '1', '40', 'oui');
INSERT INTO `pannes` VALUES(2308, '1351810800', '15', '50', '02', '11', '2012', 'SL25', 'signal supplies', 'machine', 'MX', 'remplacement fusible  comme inter de avant même jour\r\nsauf T6.3 vers T10A', '16', '40', '0', '50', 'oui');
INSERT INTO `pannes` VALUES(2309, '1351810800', '17', '00', '02', '11', '2012', 'SL25', 'mlc bloqué', 'machine', 'MX', 'fusible de la panne précédente HS\r\nle Pikastrip a fait un CC dans la Tête >>> alim Mlc HS\r\n\r\nchangement alim + pikastrip  2 jours arrêt dont 1,5 de maintenance', '20', '00', '7', '30', 'oui');
INSERT INTO `pannes` VALUES(2310, '1352415600', '17', '15', '09', '11', '2012', 'SL25', 'iview bloqué', 'machine', 'SVD', 'reparation switch  fermeture iview', '10', '00', '1', '45', 'oui');
INSERT INTO `pannes` VALUES(2311, '1353625200', '8', '00', '23', '11', '2012', 'SL25', 'mosaiq hors réseau', 'informatique', 'MX', 'marc a augmenté le nombre de mac adresse sur le port44 du switch A ', '8', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2312, '1354230000', '20', '00', '30', '11', '2012', 'Tomo2', 'recoverable novembre 2012', 'recoverable', 'SVD', '16*5 min = 1h20', '21', '20', '1', '20', 'oui');
INSERT INTO `pannes` VALUES(2313, '1355180400', '12', '00', '11', '12', '2012', 'Tomo2', 'linac hardware error', 'unrecoverable', 'SVD', 'Apres le reboot, on voit une dose fort elevée (dose rate +-890). On procede donc à un réglage du pfn (de 3.79 à 3.75) avec la physique', '13', '15', '1', '15', 'oui');
INSERT INTO `pannes` VALUES(2314, '1355180400', '17', '20', '11', '12', '2012', 'Tomo2', 'Laser errors', 'unrecoverable', 'SVD', 'Reboot', '17', '30', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2315, '1355180400', '17', '40', '11', '12', '2012', 'Tomo2', '"Did not receive packet from OBC"', 'unrecoverable', 'SVD', 'reboot => nok (erreur au boot)\r\nReboot => OK (test sur dosi 25mm et OK)', '18', '00', '0', '20', 'oui');
INSERT INTO `pannes` VALUES(2316, '1354057200', '16', '10', '28', '11', '2012', 'Tomo1', 'Au reboot : bad rds soft version', 'unrecoverable', 'SVD', '1) Move gantry\r\n2) reboot\r\n3) OK', '16', '20', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2317, '1354143600', '09', '45', '29', '11', '2012', 'Tomo1', 'Au reboot : bad rds soft version', 'unrecoverable', 'MX', '1) tourner gantry\r\n2) reboot\r\n3) OK', '10', '45', '1', '00', 'oui');
INSERT INTO `pannes` VALUES(2318, '1354230000', '20', '00', '30', '11', '2012', 'Tomo1', 'recoverable novembre 2012', 'recoverable', 'SVD', '8*5 = 40 min', '20', '40', '0', '40', 'oui');
INSERT INTO `pannes` VALUES(2319, '1355094000', '08', '00', '10', '12', '2012', 'Tomo1', 'Problems durant upgrade', 'unrecoverable', 'SVD', 'rempla ement moteur gantry, target, ...', '20', '00', '12', '00', 'oui');
INSERT INTO `pannes` VALUES(2320, '1356044400', '08', '30', '21', '12', '2012', 'SL25', 'Colli se bloque tout le temps', 'recoverable', 'SVD', 'Remplacement roulement colli, moteur colli et alim MLC car petée au redémarrage', '17', '00', '08', '30', 'oui');
INSERT INTO `pannes` VALUES(2321, '1356044400', '09', '30', '21', '12', '2012', 'SL25', 'Colli bloqué', 'machine', 'SVD', 'Deblocage à la main', '09', '40', '00', '5', 'oui');
INSERT INTO `pannes` VALUES(2322, '1353970800', '09', '35', '27', '11', '2012', 'SL25', 'Souris et clavier en salle HS', 'informatique', 'MX', 'Reboot PC Mosaiq car port usb arrière HS (trop de courant)\r\nDepuis un hub usb alimenté a été installé', '09', '50', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2330, '1357599600', '15', '00', '08', '01', '2013', 'SL25', 'GANTRY NE TOURNE PLUS', 'unrecoverable', 'SVD', 'CHANGEMENT DE LA CARTE HME', '15', '30', '0', '30', 'oui');
INSERT INTO `pannes` VALUES(2329, '1358204400', '15', '10', '15', '01', '2013', 'Tomo2', 'Machine Bloquée apres lancement de completion', 'unrecoverable', 'SVD', 'Reboot', '15', '25', '00', '15', 'oui');
INSERT INTO `pannes` VALUES(2326, '1355785200', '18', '15', '18', '12', '2012', 'Tomo2', 'PC bloqué', 'unrecoverable', 'Physique', 'Reboot', '18', '25', '00', '10', 'oui');
INSERT INTO `pannes` VALUES(2327, '1356908400', '20', '00', '31', '12', '2012', 'Tomo2', 'recoverable decembre 2012', 'recoverable', 'BG', 'Actions effectuées', '21', '55', '01', '55', 'oui');
INSERT INTO `pannes` VALUES(2328, '1356908400', '20', '00', '31', '12', '2012', 'Tomo1', 'recoverable decembre 2012', 'recoverable', 'SVD', '5*5 = 25 min', '20', '25', '00', '25', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `patient_admin`
--

CREATE TABLE `patient_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `civilite` varchar(5) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `divers` text NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`),
  KEY `idStluc` (`idStluc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `patient_admin`
--

INSERT INTO `patient_admin` VALUES(1, 'IDtest', '', 'LastnameTest', 'FirstnameTest', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `patient_treat`
--

CREATE TABLE `patient_treat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `volcibleName` varchar(10) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `ptvName` varchar(10) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `planName` varchar(10) NOT NULL,
  `introDate` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `togo` text NOT NULL,
  `superviseur` varchar(5) NOT NULL,
  `assistant` varchar(5) NOT NULL,
  `physicien` varchar(5) NOT NULL,
  `hospi` varchar(5) NOT NULL,
  `unit` varchar(5) NOT NULL,
  `spo` varchar(5) NOT NULL,
  `comment` text NOT NULL,
  `prescription` text NOT NULL,
  `historical` text NOT NULL,
  `dateSim` varchar(20) NOT NULL,
  `startDate` varchar(20) NOT NULL,
  `endDate` varchar(20) NOT NULL,
  `datePTV2` varchar(20) NOT NULL,
  `actual_process` tinyint(4) NOT NULL,
  `actual_step` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`,`status`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `patient_treat`
--

INSERT INTO `patient_treat` VALUES(1, 'IDtest', 1, 1, '', 1, '', 1, '', 1362667959, 'Treatment', 'a:264:{i:0;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"1";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:1;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"2";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:2;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"3";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:3;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"5";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:4;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"6";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:5;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"7";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:6;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"10";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:7;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"12";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:8;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"16";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:9;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"17";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:10;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"18";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:11;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"23";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:12;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"24";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:13;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"25";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:14;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"26";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.00";}i:15;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:3:"250";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:16;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:3:"256";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:17;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"14";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:18;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"8";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"0.00";}i:19;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:1:"9";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"textarea";s:10:"stepNumber";s:4:"0.00";}i:20;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"11";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:21;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"13";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.00";}i:22;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"20";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"0.00";}i:23;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"22";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:24;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:3:"259";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"textarea";s:10:"stepNumber";s:4:"0.00";}i:25;a:6:{s:6:"idStep";s:1:"1";s:8:"idAction";s:2:"42";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.00";}i:26;a:6:{s:6:"idStep";s:1:"2";s:8:"idAction";s:2:"27";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.10";}i:27;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"48";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"0.20";}i:28;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"49";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.20";}i:29;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"50";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.20";}i:30;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:3:"257";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:31;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:3:"264";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:32;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"29";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:33;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"36";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:34;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"38";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:35;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"28";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:36;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"44";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:37;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"43";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:38;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"45";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.20";}i:39;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"40";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:40;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"41";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:41;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"33";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:42;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"30";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:43;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"31";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"0.20";}i:44;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"32";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:45;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"34";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:46;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"35";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:47;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"37";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:48;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"39";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.20";}i:49;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"46";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.20";}i:50;a:6:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"47";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.20";}i:51;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"51";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.30";}i:52;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"52";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.30";}i:53;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"53";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.30";}i:54;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"54";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"0.30";}i:55;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"55";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.30";}i:56;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"56";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.30";}i:57;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"57";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"0.30";}i:58;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"58";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.30";}i:59;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"59";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.30";}i:60;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"60";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"textarea";s:10:"stepNumber";s:4:"0.30";}i:61;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"61";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.30";}i:62;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"62";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"0.30";}i:63;a:6:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"63";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"0.30";}i:64;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"64";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:65;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"65";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:66;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"66";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:67;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"67";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:68;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"68";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:69;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"69";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:70;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:3:"260";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"0.40";}i:71;a:6:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"70";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"0.40";}i:72;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"71";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"1.00";}i:73;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"72";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"1.00";}i:74;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"73";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.00";}i:75;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"74";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.00";}i:76;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"75";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.00";}i:77;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"76";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.00";}i:78;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"77";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.00";}i:79;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"78";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"1.00";}i:80;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"79";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"1.00";}i:81;a:6:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"80";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.00";}i:82;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"81";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.10";}i:83;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"82";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.10";}i:84;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"83";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.10";}i:85;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"84";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.10";}i:86;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"85";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"1.10";}i:87;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"86";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.10";}i:88;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"88";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.10";}i:89;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"89";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.10";}i:90;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:3:"274";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.10";}i:91;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:3:"287";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"1.10";}i:92;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:3:"273";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"1.10";}i:93;a:6:{s:6:"idStep";s:1:"7";s:8:"idAction";s:2:"87";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.10";}i:94;a:6:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"90";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"1.20";}i:95;a:6:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"91";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.20";}i:96;a:6:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"92";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"1.30";}i:97;a:6:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"93";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.30";}i:98;a:6:{s:6:"idStep";s:2:"10";s:8:"idAction";s:2:"94";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.40";}i:99;a:6:{s:6:"idStep";s:2:"11";s:8:"idAction";s:2:"95";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"1.50";}i:100;a:6:{s:6:"idStep";s:2:"12";s:8:"idAction";s:2:"96";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"2.00";}i:101;a:6:{s:6:"idStep";s:2:"12";s:8:"idAction";s:2:"97";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"2.00";}i:102;a:6:{s:6:"idStep";s:2:"12";s:8:"idAction";s:2:"98";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"2.00";}i:103;a:6:{s:6:"idStep";s:2:"12";s:8:"idAction";s:2:"99";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"2.00";}i:104;a:6:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"100";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"3.00";}i:105;a:6:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"101";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"3.00";}i:106;a:6:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"102";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.00";}i:107;a:6:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"103";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"3.00";}i:108;a:6:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"105";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.10";}i:109;a:6:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"106";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"3.10";}i:110;a:6:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"107";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.10";}i:111;a:6:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"275";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.10";}i:112;a:6:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"276";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"textarea";s:10:"stepNumber";s:4:"3.10";}i:113;a:6:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"108";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.10";}i:114;a:6:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"109";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"3.20";}i:115;a:6:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"110";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.20";}i:116;a:6:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"270";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"3.20";}i:117;a:6:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"111";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"3.20";}i:118;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"112";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.00";}i:119;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"113";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.00";}i:120;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"114";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.00";}i:121;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"115";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.00";}i:122;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"116";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.00";}i:123;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"117";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.00";}i:124;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"118";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.00";}i:125;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"119";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.00";}i:126;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"120";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.00";}i:127;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"121";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.00";}i:128;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"122";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.00";}i:129;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"123";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.00";}i:130;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"124";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.00";}i:131;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.00";}i:132;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"126";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"4.00";}i:133;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"127";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"4.00";}i:134;a:6:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"128";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"4.00";}i:135;a:6:{s:6:"idStep";s:2:"17";s:8:"idAction";s:3:"129";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.01";}i:136;a:6:{s:6:"idStep";s:2:"17";s:8:"idAction";s:3:"130";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.01";}i:137;a:6:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"131";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.10";}i:138;a:6:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"132";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.10";}i:139;a:6:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"133";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.10";}i:140;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"134";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.20";}i:141;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"135";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.20";}i:142;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"136";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.20";}i:143;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"137";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.20";}i:144;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"139";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.20";}i:145;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"141";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"4.20";}i:146;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"142";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.20";}i:147;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"143";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.20";}i:148;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"144";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.20";}i:149;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"145";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.20";}i:150;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"146";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.20";}i:151;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"138";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.20";}i:152;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"255";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.20";}i:153;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"140";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.20";}i:154;a:6:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"153";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.20";}i:155;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"147";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:156;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"148";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:157;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"149";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:158;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"150";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:159;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"151";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:160;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"152";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"4.30";}i:161;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"154";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.30";}i:162;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"155";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.30";}i:163;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"156";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:164;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"157";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:165;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"258";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.30";}i:166;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"282";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:167;a:6:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"158";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.30";}i:168;a:6:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"160";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"4.40";}i:169;a:6:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"161";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"4.40";}i:170;a:6:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"162";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.50";}i:171;a:6:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"279";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.50";}i:172;a:6:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"283";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.50";}i:173;a:6:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"163";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.50";}i:174;a:6:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"164";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.50";}i:175;a:6:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"165";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.50";}i:176;a:6:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"265";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.60";}i:177;a:6:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"166";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.60";}i:178;a:6:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"167";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.60";}i:179;a:6:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"168";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.60";}i:180;a:6:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"169";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.60";}i:181;a:6:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"261";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.60";}i:182;a:6:{s:6:"idStep";s:2:"24";s:8:"idAction";s:3:"266";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.70";}i:183;a:6:{s:6:"idStep";s:2:"24";s:8:"idAction";s:3:"170";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.70";}i:184;a:6:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"267";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"4.80";}i:185;a:6:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"171";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"4.80";}i:186;a:6:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"172";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"4.80";}i:187;a:6:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"173";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"5.00";}i:188;a:6:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"174";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"5.00";}i:189;a:6:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"175";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"5.00";}i:190;a:6:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"refus";s:10:"stepNumber";s:4:"5.20";}i:191;a:6:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"textarea";s:10:"stepNumber";s:4:"5.20";}i:192;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"177";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"6.00";}i:193;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"178";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.00";}i:194;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"179";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"6.00";}i:195;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"180";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:4:"6.00";}i:196;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"181";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"6.00";}i:197;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"182";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:6:"select";s:10:"stepNumber";s:4:"6.00";}i:198;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.00";}i:199;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"263";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.00";}i:200;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"278";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.00";}i:201;a:6:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"284";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.00";}i:202;a:6:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.10";}i:203;a:6:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"185";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:4:"6.10";}i:204;a:6:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.20";}i:205;a:6:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"6.20";}i:206;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"188";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:207;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"189";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:208;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"190";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:209;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"191";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:210;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"192";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:211;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"193";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:212;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"194";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:213;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"195";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:214;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"196";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:215;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"197";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:216;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"198";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:217;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"199";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:218;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"200";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:219;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"201";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:220;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"202";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:221;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"203";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:222;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"204";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:223;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"205";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:224;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"206";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:225;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"207";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:226;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"208";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:227;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"209";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:228;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"210";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:229;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"211";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:230;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"212";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:231;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"213";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:232;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"214";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:233;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"215";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:234;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"216";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:235;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"217";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:236;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"219";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:237;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"220";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:238;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"277";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:4:"7.00";}i:239;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"285";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:240;a:6:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"286";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:4:"7.00";}i:241;a:6:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"221";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:5:"10.00";}i:242;a:6:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"222";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:5:"10.00";}i:243;a:6:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"223";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:5:"10.00";}i:244;a:6:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"224";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:9:"textchain";s:10:"stepNumber";s:5:"10.00";}i:245;a:6:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"280";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:5:"10.00";}i:246;a:6:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"225";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:5:"11.00";}i:247;a:6:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"268";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:5:"radio";s:10:"stepNumber";s:5:"11.00";}i:248;a:6:{s:6:"idStep";s:2:"38";s:8:"idAction";s:3:"281";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:11:"information";s:10:"stepNumber";s:5:"11.50";}i:249;a:6:{s:6:"idStep";s:2:"38";s:8:"idAction";s:3:"269";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"11.50";}i:250;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"226";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:251;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"227";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:252;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"228";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:253;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"229";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:254;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"230";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:255;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"231";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:256;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"232";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:257;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"233";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:258;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"234";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Non";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:259;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"235";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:260;a:6:{s:6:"idStep";s:2:"34";s:8:"idAction";s:3:"236";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"12.00";}i:261;a:6:{s:6:"idStep";s:2:"35";s:8:"idAction";s:3:"242";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"13.00";}i:262;a:6:{s:6:"idStep";s:2:"35";s:8:"idAction";s:3:"243";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:8:"checkbox";s:10:"stepNumber";s:5:"13.00";}i:263;a:6:{s:6:"idStep";s:2:"35";s:8:"idAction";s:4:"none";s:6:"status";s:6:"Enable";s:10:"obligation";s:3:"Oui";s:4:"type";s:9:"Archivage";s:10:"stepNumber";s:3:"END";}}', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `process`
--

CREATE TABLE `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `process`
--

INSERT INTO `process` VALUES(1, 'Radiotherapie Externe');
INSERT INTO `process` VALUES(2, 'Curietherapie');
INSERT INTO `process` VALUES(3, 'TBI');

-- --------------------------------------------------------

--
-- Structure de la table `processSub`
--

CREATE TABLE `processSub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameSubProcess` varchar(30) NOT NULL,
  `linkToProcess` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `processSub`
--

INSERT INTO `processSub` VALUES(1, 'Avant preparation', 1);
INSERT INTO `processSub` VALUES(2, 'Preparation du traitement', 1);
INSERT INTO `processSub` VALUES(3, 'Durant traitement', 1);
INSERT INTO `processSub` VALUES(4, 'Prepa des fils', 2);
INSERT INTO `processSub` VALUES(5, 'Prepa du lit', 3);

-- --------------------------------------------------------

--
-- Structure de la table `reqOnItem`
--

CREATE TABLE `reqOnItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lookFor` text NOT NULL,
  `tableFrom` varchar(25) NOT NULL,
  `fieldFrom` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `reqOnItem`
--

INSERT INTO `reqOnItem` VALUES(1, 'Machine', 'step_3', 'actionId_45');
INSERT INTO `reqOnItem` VALUES(2, 'nb_fract', 'step_1', 'actionId_248');
INSERT INTO `reqOnItem` VALUES(3, 'iv_ok', 'step_20', 'actionId_156');
INSERT INTO `reqOnItem` VALUES(4, 'Pathologie', 'step_1', 'actionId_1');
INSERT INTO `reqOnItem` VALUES(5, 'Urgence', 'step_1', 'actionId_3');
INSERT INTO `reqOnItem` VALUES(6, 'Xio', 'step_1', 'actionId_17');
INSERT INTO `reqOnItem` VALUES(7, 'Dose par fraction', 'step_1', 'actionId_249');
INSERT INTO `reqOnItem` VALUES(8, 'Palliatif ou curatif', 'step_3', 'actionId_29');

-- --------------------------------------------------------

--
-- Structure de la table `step_1`
--

CREATE TABLE `step_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_1` varchar(15) DEFAULT NULL,
  `timeId_1` int(11) DEFAULT NULL,
  `userId_1` varchar(5) DEFAULT NULL,
  `actionId_2` varchar(15) DEFAULT NULL,
  `timeId_2` int(11) DEFAULT NULL,
  `userId_2` varchar(5) DEFAULT NULL,
  `actionId_0` varchar(15) DEFAULT NULL,
  `timeId_0` int(11) DEFAULT NULL,
  `userId_0` varchar(5) DEFAULT NULL,
  `actionId_3` varchar(15) DEFAULT NULL,
  `timeId_3` int(11) DEFAULT NULL,
  `userId_3` varchar(5) DEFAULT NULL,
  `actionId_4` varchar(15) DEFAULT NULL,
  `timeId_4` int(11) DEFAULT NULL,
  `userId_4` varchar(5) DEFAULT NULL,
  `actionId_5` varchar(15) DEFAULT NULL,
  `timeId_5` int(11) DEFAULT NULL,
  `userId_5` varchar(5) DEFAULT NULL,
  `actionId_6` varchar(15) DEFAULT NULL,
  `timeId_6` int(11) DEFAULT NULL,
  `userId_6` varchar(5) DEFAULT NULL,
  `actionId_7` varchar(15) DEFAULT NULL,
  `timeId_7` int(11) DEFAULT NULL,
  `userId_7` varchar(5) DEFAULT NULL,
  `actionId_8` varchar(50) DEFAULT NULL,
  `timeId_8` int(11) DEFAULT NULL,
  `userId_8` varchar(5) DEFAULT NULL,
  `actionId_9` text,
  `timeId_9` int(11) DEFAULT NULL,
  `userId_9` varchar(5) DEFAULT NULL,
  `actionId_10` varchar(15) DEFAULT NULL,
  `timeId_10` int(11) DEFAULT NULL,
  `userId_10` varchar(5) DEFAULT NULL,
  `actionId_11` varchar(15) DEFAULT NULL,
  `timeId_11` int(11) DEFAULT NULL,
  `userId_11` varchar(5) DEFAULT NULL,
  `actionId_12` varchar(15) DEFAULT NULL,
  `timeId_12` int(11) DEFAULT NULL,
  `userId_12` varchar(5) DEFAULT NULL,
  `actionId_13` varchar(15) DEFAULT NULL,
  `timeId_13` int(11) DEFAULT NULL,
  `userId_13` varchar(5) DEFAULT NULL,
  `actionId_14` varchar(15) DEFAULT NULL,
  `timeId_14` int(11) DEFAULT NULL,
  `userId_14` varchar(5) DEFAULT NULL,
  `actionId_15` varchar(15) DEFAULT NULL,
  `timeId_15` int(11) DEFAULT NULL,
  `userId_15` varchar(5) DEFAULT NULL,
  `actionId_16` varchar(15) DEFAULT NULL,
  `timeId_16` int(11) DEFAULT NULL,
  `userId_16` varchar(5) DEFAULT NULL,
  `actionId_17` varchar(15) DEFAULT NULL,
  `timeId_17` int(11) DEFAULT NULL,
  `userId_17` varchar(5) DEFAULT NULL,
  `actionId_18` varchar(15) DEFAULT NULL,
  `timeId_18` int(11) DEFAULT NULL,
  `userId_18` varchar(5) DEFAULT NULL,
  `actionId_19` varchar(15) DEFAULT NULL,
  `timeId_19` int(11) DEFAULT NULL,
  `userId_19` varchar(5) DEFAULT NULL,
  `actionId_20` varchar(50) DEFAULT NULL,
  `timeId_20` int(11) DEFAULT NULL,
  `userId_20` varchar(5) DEFAULT NULL,
  `actionId_21` varchar(15) DEFAULT NULL,
  `timeId_21` int(11) DEFAULT NULL,
  `userId_21` varchar(5) DEFAULT NULL,
  `actionId_22` varchar(15) DEFAULT NULL,
  `timeId_22` int(11) DEFAULT NULL,
  `userId_22` varchar(5) DEFAULT NULL,
  `actionId_23` varchar(15) DEFAULT NULL,
  `timeId_23` int(11) DEFAULT NULL,
  `userId_23` varchar(5) DEFAULT NULL,
  `actionId_24` varchar(15) DEFAULT NULL,
  `timeId_24` int(11) DEFAULT NULL,
  `userId_24` varchar(5) DEFAULT NULL,
  `actionId_25` varchar(15) DEFAULT NULL,
  `timeId_25` int(11) DEFAULT NULL,
  `userId_25` varchar(5) DEFAULT NULL,
  `actionId_26` varchar(15) DEFAULT NULL,
  `timeId_26` int(11) DEFAULT NULL,
  `userId_26` varchar(5) DEFAULT NULL,
  `actionId_42` varchar(15) DEFAULT NULL,
  `timeId_42` int(11) DEFAULT NULL,
  `userId_42` varchar(5) DEFAULT NULL,
  `actionId_247` varchar(50) DEFAULT NULL,
  `timeId_247` int(11) DEFAULT NULL,
  `userId_247` varchar(5) DEFAULT NULL,
  `actionId_248` varchar(50) DEFAULT NULL,
  `timeId_248` int(11) DEFAULT NULL,
  `userId_248` varchar(5) DEFAULT NULL,
  `actionId_249` varchar(50) DEFAULT NULL,
  `timeId_249` int(11) DEFAULT NULL,
  `userId_249` varchar(5) DEFAULT NULL,
  `actionId_250` varchar(15) DEFAULT NULL,
  `timeId_250` int(11) DEFAULT NULL,
  `userId_250` varchar(5) DEFAULT NULL,
  `actionId_256` varchar(100) DEFAULT NULL,
  `timeId_256` int(11) DEFAULT NULL,
  `userId_256` varchar(5) DEFAULT NULL,
  `actionId_259` text,
  `timeId_259` int(11) DEFAULT NULL,
  `userId_259` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`),
  KEY `volcible` (`volcible`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_1`
--

INSERT INTO `step_1` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_2`
--

CREATE TABLE `step_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_27` varchar(15) DEFAULT NULL,
  `timeId_27` int(11) DEFAULT NULL,
  `userId_27` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_2`
--

INSERT INTO `step_2` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_3`
--

CREATE TABLE `step_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_28` varchar(15) DEFAULT NULL,
  `timeId_28` int(11) DEFAULT NULL,
  `userId_28` varchar(5) DEFAULT NULL,
  `actionId_29` varchar(15) DEFAULT NULL,
  `timeId_29` int(11) DEFAULT NULL,
  `userId_29` varchar(5) DEFAULT NULL,
  `actionId_30` varchar(15) DEFAULT NULL,
  `timeId_30` int(11) DEFAULT NULL,
  `userId_30` varchar(5) DEFAULT NULL,
  `actionId_31` varchar(15) DEFAULT NULL,
  `timeId_31` int(11) DEFAULT NULL,
  `userId_31` varchar(5) DEFAULT NULL,
  `actionId_32` varchar(15) DEFAULT NULL,
  `timeId_32` int(11) DEFAULT NULL,
  `userId_32` varchar(5) DEFAULT NULL,
  `actionId_33` varchar(15) DEFAULT NULL,
  `timeId_33` int(11) DEFAULT NULL,
  `userId_33` varchar(5) DEFAULT NULL,
  `actionId_34` varchar(15) DEFAULT NULL,
  `timeId_34` int(11) DEFAULT NULL,
  `userId_34` varchar(5) DEFAULT NULL,
  `actionId_35` varchar(15) DEFAULT NULL,
  `timeId_35` int(11) DEFAULT NULL,
  `userId_35` varchar(5) DEFAULT NULL,
  `actionId_36` varchar(15) DEFAULT NULL,
  `timeId_36` int(11) DEFAULT NULL,
  `userId_36` varchar(5) DEFAULT NULL,
  `actionId_37` varchar(15) DEFAULT NULL,
  `timeId_37` int(11) DEFAULT NULL,
  `userId_37` varchar(5) DEFAULT NULL,
  `actionId_38` varchar(15) DEFAULT NULL,
  `timeId_38` int(11) DEFAULT NULL,
  `userId_38` varchar(5) DEFAULT NULL,
  `actionId_39` varchar(15) DEFAULT NULL,
  `timeId_39` int(11) DEFAULT NULL,
  `userId_39` varchar(5) DEFAULT NULL,
  `actionId_40` varchar(15) DEFAULT NULL,
  `timeId_40` int(11) DEFAULT NULL,
  `userId_40` varchar(5) DEFAULT NULL,
  `actionId_41` varchar(15) DEFAULT NULL,
  `timeId_41` int(11) DEFAULT NULL,
  `userId_41` varchar(5) DEFAULT NULL,
  `actionId_43` varchar(15) DEFAULT NULL,
  `timeId_43` int(11) DEFAULT NULL,
  `userId_43` varchar(5) DEFAULT NULL,
  `actionId_44` varchar(15) DEFAULT NULL,
  `timeId_44` int(11) DEFAULT NULL,
  `userId_44` varchar(5) DEFAULT NULL,
  `actionId_45` varchar(15) DEFAULT NULL,
  `timeId_45` int(11) DEFAULT NULL,
  `userId_45` varchar(5) DEFAULT NULL,
  `actionId_46` varchar(15) DEFAULT NULL,
  `timeId_46` int(11) DEFAULT NULL,
  `userId_46` varchar(5) DEFAULT NULL,
  `actionId_47` varchar(15) DEFAULT NULL,
  `timeId_47` int(11) DEFAULT NULL,
  `userId_47` varchar(5) DEFAULT NULL,
  `actionId_48` varchar(50) DEFAULT NULL,
  `timeId_48` int(11) DEFAULT NULL,
  `userId_48` varchar(5) DEFAULT NULL,
  `actionId_49` varchar(15) DEFAULT NULL,
  `timeId_49` int(11) DEFAULT NULL,
  `userId_49` varchar(5) DEFAULT NULL,
  `actionId_50` varchar(15) DEFAULT NULL,
  `timeId_50` int(11) DEFAULT NULL,
  `userId_50` varchar(5) DEFAULT NULL,
  `actionId_251` varchar(15) DEFAULT NULL,
  `timeId_251` int(11) DEFAULT NULL,
  `userId_251` varchar(5) DEFAULT NULL,
  `actionId_252` varchar(15) DEFAULT NULL,
  `timeId_252` int(11) DEFAULT NULL,
  `userId_252` varchar(5) DEFAULT NULL,
  `actionId_253` varchar(15) DEFAULT NULL,
  `timeId_253` int(11) DEFAULT NULL,
  `userId_253` varchar(5) DEFAULT NULL,
  `actionId_254` varchar(15) DEFAULT NULL,
  `timeId_254` int(11) DEFAULT NULL,
  `userId_254` varchar(5) DEFAULT NULL,
  `actionId_257` varchar(15) DEFAULT NULL,
  `timeId_257` int(11) DEFAULT NULL,
  `userId_257` varchar(5) DEFAULT NULL,
  `actionId_264` varchar(15) DEFAULT NULL,
  `timeId_264` int(11) DEFAULT NULL,
  `userId_264` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_3`
--

INSERT INTO `step_3` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_4`
--

CREATE TABLE `step_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_51` varchar(15) DEFAULT NULL,
  `timeId_51` int(11) DEFAULT NULL,
  `userId_51` varchar(5) DEFAULT NULL,
  `actionId_52` varchar(15) DEFAULT NULL,
  `timeId_52` int(11) DEFAULT NULL,
  `userId_52` varchar(5) DEFAULT NULL,
  `actionId_53` varchar(15) DEFAULT NULL,
  `timeId_53` int(11) DEFAULT NULL,
  `userId_53` varchar(5) DEFAULT NULL,
  `actionId_54` varchar(50) DEFAULT NULL,
  `timeId_54` int(11) DEFAULT NULL,
  `userId_54` varchar(5) DEFAULT NULL,
  `actionId_55` varchar(15) DEFAULT NULL,
  `timeId_55` int(11) DEFAULT NULL,
  `userId_55` varchar(5) DEFAULT NULL,
  `actionId_56` varchar(15) DEFAULT NULL,
  `timeId_56` int(11) DEFAULT NULL,
  `userId_56` varchar(5) DEFAULT NULL,
  `actionId_57` varchar(50) DEFAULT NULL,
  `timeId_57` int(11) DEFAULT NULL,
  `userId_57` varchar(5) DEFAULT NULL,
  `actionId_58` varchar(15) DEFAULT NULL,
  `timeId_58` int(11) DEFAULT NULL,
  `userId_58` varchar(5) DEFAULT NULL,
  `actionId_59` varchar(15) DEFAULT NULL,
  `timeId_59` int(11) DEFAULT NULL,
  `userId_59` varchar(5) DEFAULT NULL,
  `actionId_60` text,
  `timeId_60` int(11) DEFAULT NULL,
  `userId_60` varchar(5) DEFAULT NULL,
  `actionId_61` varchar(15) DEFAULT NULL,
  `timeId_61` int(11) DEFAULT NULL,
  `userId_61` varchar(5) DEFAULT NULL,
  `actionId_62` varchar(50) DEFAULT NULL,
  `timeId_62` int(11) DEFAULT NULL,
  `userId_62` varchar(5) DEFAULT NULL,
  `actionId_63` varchar(15) DEFAULT NULL,
  `timeId_63` int(11) DEFAULT NULL,
  `userId_63` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_4`
--

INSERT INTO `step_4` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_5`
--

CREATE TABLE `step_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_64` varchar(15) DEFAULT NULL,
  `timeId_64` int(11) DEFAULT NULL,
  `userId_64` varchar(5) DEFAULT NULL,
  `actionId_65` varchar(15) DEFAULT NULL,
  `timeId_65` int(11) DEFAULT NULL,
  `userId_65` varchar(5) DEFAULT NULL,
  `actionId_66` varchar(15) DEFAULT NULL,
  `timeId_66` int(11) DEFAULT NULL,
  `userId_66` varchar(5) DEFAULT NULL,
  `actionId_67` varchar(15) DEFAULT NULL,
  `timeId_67` int(11) DEFAULT NULL,
  `userId_67` varchar(5) DEFAULT NULL,
  `actionId_68` varchar(15) DEFAULT NULL,
  `timeId_68` int(11) DEFAULT NULL,
  `userId_68` varchar(5) DEFAULT NULL,
  `actionId_69` varchar(15) DEFAULT NULL,
  `timeId_69` int(11) DEFAULT NULL,
  `userId_69` varchar(5) DEFAULT NULL,
  `actionId_70` varchar(15) DEFAULT NULL,
  `timeId_70` int(11) DEFAULT NULL,
  `userId_70` varchar(5) DEFAULT NULL,
  `actionId_260` varchar(15) DEFAULT NULL,
  `timeId_260` int(11) DEFAULT NULL,
  `userId_260` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_5`
--

INSERT INTO `step_5` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_6`
--

CREATE TABLE `step_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_71` varchar(15) DEFAULT NULL,
  `timeId_71` int(11) DEFAULT NULL,
  `userId_71` varchar(5) DEFAULT NULL,
  `actionId_72` varchar(15) DEFAULT NULL,
  `timeId_72` int(11) DEFAULT NULL,
  `userId_72` varchar(5) DEFAULT NULL,
  `actionId_73` varchar(15) DEFAULT NULL,
  `timeId_73` int(11) DEFAULT NULL,
  `userId_73` varchar(5) DEFAULT NULL,
  `actionId_74` varchar(15) DEFAULT NULL,
  `timeId_74` int(11) DEFAULT NULL,
  `userId_74` varchar(5) DEFAULT NULL,
  `actionId_75` varchar(15) DEFAULT NULL,
  `timeId_75` int(11) DEFAULT NULL,
  `userId_75` varchar(5) DEFAULT NULL,
  `actionId_76` varchar(15) DEFAULT NULL,
  `timeId_76` int(11) DEFAULT NULL,
  `userId_76` varchar(5) DEFAULT NULL,
  `actionId_77` varchar(15) DEFAULT NULL,
  `timeId_77` int(11) DEFAULT NULL,
  `userId_77` varchar(5) DEFAULT NULL,
  `actionId_78` varchar(50) DEFAULT NULL,
  `timeId_78` int(11) DEFAULT NULL,
  `userId_78` varchar(5) DEFAULT NULL,
  `actionId_79` varchar(50) DEFAULT NULL,
  `timeId_79` int(11) DEFAULT NULL,
  `userId_79` varchar(5) DEFAULT NULL,
  `actionId_80` varchar(15) DEFAULT NULL,
  `timeId_80` int(11) DEFAULT NULL,
  `userId_80` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_6`
--

INSERT INTO `step_6` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_7`
--

CREATE TABLE `step_7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_81` varchar(15) DEFAULT NULL,
  `timeId_81` int(11) DEFAULT NULL,
  `userId_81` varchar(5) DEFAULT NULL,
  `actionId_82` varchar(15) DEFAULT NULL,
  `timeId_82` int(11) DEFAULT NULL,
  `userId_82` varchar(5) DEFAULT NULL,
  `actionId_83` varchar(15) DEFAULT NULL,
  `timeId_83` int(11) DEFAULT NULL,
  `userId_83` varchar(5) DEFAULT NULL,
  `actionId_84` varchar(15) DEFAULT NULL,
  `timeId_84` int(11) DEFAULT NULL,
  `userId_84` varchar(5) DEFAULT NULL,
  `actionId_85` varchar(15) DEFAULT NULL,
  `timeId_85` int(11) DEFAULT NULL,
  `userId_85` varchar(5) DEFAULT NULL,
  `actionId_86` varchar(15) DEFAULT NULL,
  `timeId_86` int(11) DEFAULT NULL,
  `userId_86` varchar(5) DEFAULT NULL,
  `actionId_87` varchar(15) DEFAULT NULL,
  `timeId_87` int(11) DEFAULT NULL,
  `userId_87` varchar(5) DEFAULT NULL,
  `actionId_88` varchar(15) DEFAULT NULL,
  `timeId_88` int(11) DEFAULT NULL,
  `userId_88` varchar(5) DEFAULT NULL,
  `actionId_89` varchar(15) DEFAULT NULL,
  `timeId_89` int(11) DEFAULT NULL,
  `userId_89` varchar(5) DEFAULT NULL,
  `actionId_273` varchar(15) DEFAULT NULL,
  `timeId_273` int(11) DEFAULT NULL,
  `userId_273` varchar(5) DEFAULT NULL,
  `actionId_274` varchar(15) DEFAULT NULL,
  `timeId_274` int(11) DEFAULT NULL,
  `userId_274` varchar(5) DEFAULT NULL,
  `actionId_287` varchar(15) DEFAULT NULL,
  `timeId_287` int(11) DEFAULT NULL,
  `userId_287` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_7`
--

INSERT INTO `step_7` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_8`
--

CREATE TABLE `step_8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_90` varchar(15) DEFAULT NULL,
  `timeId_90` int(11) DEFAULT NULL,
  `userId_90` varchar(5) DEFAULT NULL,
  `actionId_91` varchar(15) DEFAULT NULL,
  `timeId_91` int(11) DEFAULT NULL,
  `userId_91` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_8`
--

INSERT INTO `step_8` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_9`
--

CREATE TABLE `step_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_92` varchar(15) DEFAULT NULL,
  `timeId_92` int(11) DEFAULT NULL,
  `userId_92` varchar(5) DEFAULT NULL,
  `actionId_93` varchar(15) DEFAULT NULL,
  `timeId_93` int(11) DEFAULT NULL,
  `userId_93` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_9`
--

INSERT INTO `step_9` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_10`
--

CREATE TABLE `step_10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_94` varchar(15) DEFAULT NULL,
  `timeId_94` int(11) DEFAULT NULL,
  `userId_94` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_10`
--

INSERT INTO `step_10` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_11`
--

CREATE TABLE `step_11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_95` varchar(15) DEFAULT NULL,
  `timeId_95` int(11) DEFAULT NULL,
  `userId_95` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_11`
--

INSERT INTO `step_11` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_12`
--

CREATE TABLE `step_12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_96` varchar(15) DEFAULT NULL,
  `timeId_96` int(11) DEFAULT NULL,
  `userId_96` varchar(5) DEFAULT NULL,
  `actionId_97` varchar(15) DEFAULT NULL,
  `timeId_97` int(11) DEFAULT NULL,
  `userId_97` varchar(5) DEFAULT NULL,
  `actionId_98` varchar(15) DEFAULT NULL,
  `timeId_98` int(11) DEFAULT NULL,
  `userId_98` varchar(5) DEFAULT NULL,
  `actionId_99` varchar(15) DEFAULT NULL,
  `timeId_99` int(11) DEFAULT NULL,
  `userId_99` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_12`
--

INSERT INTO `step_12` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_13`
--

CREATE TABLE `step_13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_100` varchar(50) DEFAULT NULL,
  `timeId_100` int(11) DEFAULT NULL,
  `userId_100` varchar(5) DEFAULT NULL,
  `actionId_101` varchar(15) DEFAULT NULL,
  `timeId_101` int(11) DEFAULT NULL,
  `userId_101` varchar(5) DEFAULT NULL,
  `actionId_102` varchar(15) DEFAULT NULL,
  `timeId_102` int(11) DEFAULT NULL,
  `userId_102` varchar(5) DEFAULT NULL,
  `actionId_103` varchar(15) DEFAULT NULL,
  `timeId_103` int(11) DEFAULT NULL,
  `userId_103` varchar(5) DEFAULT NULL,
  `actionId_104` text,
  `timeId_104` int(11) DEFAULT NULL,
  `userId_104` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_13`
--

INSERT INTO `step_13` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_14`
--

CREATE TABLE `step_14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_105` varchar(15) DEFAULT NULL,
  `timeId_105` int(11) DEFAULT NULL,
  `userId_105` varchar(5) DEFAULT NULL,
  `actionId_106` varchar(15) DEFAULT NULL,
  `timeId_106` int(11) DEFAULT NULL,
  `userId_106` varchar(5) DEFAULT NULL,
  `actionId_107` varchar(15) DEFAULT NULL,
  `timeId_107` int(11) DEFAULT NULL,
  `userId_107` varchar(5) DEFAULT NULL,
  `actionId_108` varchar(15) DEFAULT NULL,
  `timeId_108` int(11) DEFAULT NULL,
  `userId_108` varchar(5) DEFAULT NULL,
  `actionId_275` varchar(15) DEFAULT NULL,
  `timeId_275` int(11) DEFAULT NULL,
  `userId_275` varchar(5) DEFAULT NULL,
  `actionId_276` text,
  `timeId_276` int(11) DEFAULT NULL,
  `userId_276` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_14`
--

INSERT INTO `step_14` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_15`
--

CREATE TABLE `step_15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_109` varchar(15) DEFAULT NULL,
  `timeId_109` int(11) DEFAULT NULL,
  `userId_109` varchar(5) DEFAULT NULL,
  `actionId_110` varchar(15) DEFAULT NULL,
  `timeId_110` int(11) DEFAULT NULL,
  `userId_110` varchar(5) DEFAULT NULL,
  `actionId_111` varchar(15) DEFAULT NULL,
  `timeId_111` int(11) DEFAULT NULL,
  `userId_111` varchar(5) DEFAULT NULL,
  `actionId_270` varchar(15) DEFAULT NULL,
  `timeId_270` int(11) DEFAULT NULL,
  `userId_270` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_15`
--

INSERT INTO `step_15` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_16`
--

CREATE TABLE `step_16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_112` varchar(15) DEFAULT NULL,
  `timeId_112` int(11) DEFAULT NULL,
  `userId_112` varchar(5) DEFAULT NULL,
  `actionId_113` varchar(15) DEFAULT NULL,
  `timeId_113` int(11) DEFAULT NULL,
  `userId_113` varchar(5) DEFAULT NULL,
  `actionId_114` varchar(15) DEFAULT NULL,
  `timeId_114` int(11) DEFAULT NULL,
  `userId_114` varchar(5) DEFAULT NULL,
  `actionId_115` varchar(15) DEFAULT NULL,
  `timeId_115` int(11) DEFAULT NULL,
  `userId_115` varchar(5) DEFAULT NULL,
  `actionId_116` varchar(15) DEFAULT NULL,
  `timeId_116` int(11) DEFAULT NULL,
  `userId_116` varchar(5) DEFAULT NULL,
  `actionId_117` varchar(15) DEFAULT NULL,
  `timeId_117` int(11) DEFAULT NULL,
  `userId_117` varchar(5) DEFAULT NULL,
  `actionId_118` varchar(15) DEFAULT NULL,
  `timeId_118` int(11) DEFAULT NULL,
  `userId_118` varchar(5) DEFAULT NULL,
  `actionId_119` varchar(15) DEFAULT NULL,
  `timeId_119` int(11) DEFAULT NULL,
  `userId_119` varchar(5) DEFAULT NULL,
  `actionId_120` varchar(15) DEFAULT NULL,
  `timeId_120` int(11) DEFAULT NULL,
  `userId_120` varchar(5) DEFAULT NULL,
  `actionId_121` varchar(15) DEFAULT NULL,
  `timeId_121` int(11) DEFAULT NULL,
  `userId_121` varchar(5) DEFAULT NULL,
  `actionId_122` varchar(15) DEFAULT NULL,
  `timeId_122` int(11) DEFAULT NULL,
  `userId_122` varchar(5) DEFAULT NULL,
  `actionId_123` varchar(15) DEFAULT NULL,
  `timeId_123` int(11) DEFAULT NULL,
  `userId_123` varchar(5) DEFAULT NULL,
  `actionId_124` varchar(15) DEFAULT NULL,
  `timeId_124` int(11) DEFAULT NULL,
  `userId_124` varchar(5) DEFAULT NULL,
  `actionId_125` varchar(15) DEFAULT NULL,
  `timeId_125` int(11) DEFAULT NULL,
  `userId_125` varchar(5) DEFAULT NULL,
  `actionId_126` varchar(15) DEFAULT NULL,
  `timeId_126` int(11) DEFAULT NULL,
  `userId_126` varchar(5) DEFAULT NULL,
  `actionId_127` varchar(15) DEFAULT NULL,
  `timeId_127` int(11) DEFAULT NULL,
  `userId_127` varchar(5) DEFAULT NULL,
  `actionId_128` varchar(15) DEFAULT NULL,
  `timeId_128` int(11) DEFAULT NULL,
  `userId_128` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_16`
--

INSERT INTO `step_16` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_17`
--

CREATE TABLE `step_17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_129` varchar(15) DEFAULT NULL,
  `timeId_129` int(11) DEFAULT NULL,
  `userId_129` varchar(5) DEFAULT NULL,
  `actionId_130` varchar(15) DEFAULT NULL,
  `timeId_130` int(11) DEFAULT NULL,
  `userId_130` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_17`
--

INSERT INTO `step_17` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_18`
--

CREATE TABLE `step_18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_131` varchar(15) DEFAULT NULL,
  `timeId_131` int(11) DEFAULT NULL,
  `userId_131` varchar(5) DEFAULT NULL,
  `actionId_132` varchar(15) DEFAULT NULL,
  `timeId_132` int(11) DEFAULT NULL,
  `userId_132` varchar(5) DEFAULT NULL,
  `actionId_133` varchar(15) DEFAULT NULL,
  `timeId_133` int(11) DEFAULT NULL,
  `userId_133` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `plan` (`plan`),
  KEY `ptv` (`ptv`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_18`
--

INSERT INTO `step_18` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_19`
--

CREATE TABLE `step_19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_134` varchar(15) DEFAULT NULL,
  `timeId_134` int(11) DEFAULT NULL,
  `userId_134` varchar(5) DEFAULT NULL,
  `actionId_135` varchar(15) DEFAULT NULL,
  `timeId_135` int(11) DEFAULT NULL,
  `userId_135` varchar(5) DEFAULT NULL,
  `actionId_136` varchar(15) DEFAULT NULL,
  `timeId_136` int(11) DEFAULT NULL,
  `userId_136` varchar(5) DEFAULT NULL,
  `actionId_137` varchar(15) DEFAULT NULL,
  `timeId_137` int(11) DEFAULT NULL,
  `userId_137` varchar(5) DEFAULT NULL,
  `actionId_138` varchar(15) DEFAULT NULL,
  `timeId_138` int(11) DEFAULT NULL,
  `userId_138` varchar(5) DEFAULT NULL,
  `actionId_0` varchar(15) DEFAULT NULL,
  `timeId_0` int(11) DEFAULT NULL,
  `userId_0` varchar(5) DEFAULT NULL,
  `actionId_139` varchar(15) DEFAULT NULL,
  `timeId_139` int(11) DEFAULT NULL,
  `userId_139` varchar(5) DEFAULT NULL,
  `actionId_140` varchar(15) DEFAULT NULL,
  `timeId_140` int(11) DEFAULT NULL,
  `userId_140` varchar(5) DEFAULT NULL,
  `actionId_141` varchar(50) DEFAULT NULL,
  `timeId_141` int(11) DEFAULT NULL,
  `userId_141` varchar(5) DEFAULT NULL,
  `actionId_142` varchar(15) DEFAULT NULL,
  `timeId_142` int(11) DEFAULT NULL,
  `userId_142` varchar(5) DEFAULT NULL,
  `actionId_143` varchar(15) DEFAULT NULL,
  `timeId_143` int(11) DEFAULT NULL,
  `userId_143` varchar(5) DEFAULT NULL,
  `actionId_144` varchar(15) DEFAULT NULL,
  `timeId_144` int(11) DEFAULT NULL,
  `userId_144` varchar(5) DEFAULT NULL,
  `actionId_145` varchar(15) DEFAULT NULL,
  `timeId_145` int(11) DEFAULT NULL,
  `userId_145` varchar(5) DEFAULT NULL,
  `actionId_146` varchar(15) DEFAULT NULL,
  `timeId_146` int(11) DEFAULT NULL,
  `userId_146` varchar(5) DEFAULT NULL,
  `actionId_153` varchar(15) DEFAULT NULL,
  `timeId_153` int(11) DEFAULT NULL,
  `userId_153` varchar(5) DEFAULT NULL,
  `actionId_255` varchar(15) DEFAULT NULL,
  `timeId_255` int(11) DEFAULT NULL,
  `userId_255` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_19`
--

INSERT INTO `step_19` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_20`
--

CREATE TABLE `step_20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_147` varchar(15) DEFAULT NULL,
  `timeId_147` int(11) DEFAULT NULL,
  `userId_147` varchar(5) DEFAULT NULL,
  `actionId_148` varchar(15) DEFAULT NULL,
  `timeId_148` int(11) DEFAULT NULL,
  `userId_148` varchar(5) DEFAULT NULL,
  `actionId_149` varchar(15) DEFAULT NULL,
  `timeId_149` int(11) DEFAULT NULL,
  `userId_149` varchar(5) DEFAULT NULL,
  `actionId_150` varchar(15) DEFAULT NULL,
  `timeId_150` int(11) DEFAULT NULL,
  `userId_150` varchar(5) DEFAULT NULL,
  `actionId_151` varchar(15) DEFAULT NULL,
  `timeId_151` int(11) DEFAULT NULL,
  `userId_151` varchar(5) DEFAULT NULL,
  `actionId_152` varchar(15) DEFAULT NULL,
  `timeId_152` int(11) DEFAULT NULL,
  `userId_152` varchar(5) DEFAULT NULL,
  `actionId_154` varchar(15) DEFAULT NULL,
  `timeId_154` int(11) DEFAULT NULL,
  `userId_154` varchar(5) DEFAULT NULL,
  `actionId_155` varchar(15) DEFAULT NULL,
  `timeId_155` int(11) DEFAULT NULL,
  `userId_155` varchar(5) DEFAULT NULL,
  `actionId_156` varchar(15) DEFAULT NULL,
  `timeId_156` int(11) DEFAULT NULL,
  `userId_156` varchar(5) DEFAULT NULL,
  `actionId_157` varchar(15) DEFAULT NULL,
  `timeId_157` int(11) DEFAULT NULL,
  `userId_157` varchar(5) DEFAULT NULL,
  `actionId_158` varchar(15) DEFAULT NULL,
  `timeId_158` int(11) DEFAULT NULL,
  `userId_158` varchar(5) DEFAULT NULL,
  `actionId_159` varchar(15) DEFAULT NULL,
  `timeId_159` int(11) DEFAULT NULL,
  `userId_159` varchar(5) DEFAULT NULL,
  `actionId_258` varchar(15) DEFAULT NULL,
  `timeId_258` int(11) DEFAULT NULL,
  `userId_258` varchar(5) DEFAULT NULL,
  `actionId_282` varchar(15) DEFAULT NULL,
  `timeId_282` int(11) DEFAULT NULL,
  `userId_282` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_20`
--

INSERT INTO `step_20` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_21`
--

CREATE TABLE `step_21` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_160` varchar(15) DEFAULT NULL,
  `timeId_160` int(11) DEFAULT NULL,
  `userId_160` varchar(5) DEFAULT NULL,
  `actionId_161` varchar(50) DEFAULT NULL,
  `timeId_161` int(11) DEFAULT NULL,
  `userId_161` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_21`
--

INSERT INTO `step_21` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_22`
--

CREATE TABLE `step_22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_162` varchar(15) DEFAULT NULL,
  `timeId_162` int(11) DEFAULT NULL,
  `userId_162` varchar(5) DEFAULT NULL,
  `actionId_163` varchar(15) DEFAULT NULL,
  `timeId_163` int(11) DEFAULT NULL,
  `userId_163` varchar(5) DEFAULT NULL,
  `actionId_164` varchar(15) DEFAULT NULL,
  `timeId_164` int(11) DEFAULT NULL,
  `userId_164` varchar(5) DEFAULT NULL,
  `actionId_165` varchar(15) DEFAULT NULL,
  `timeId_165` int(11) DEFAULT NULL,
  `userId_165` varchar(5) DEFAULT NULL,
  `actionId_279` varchar(15) DEFAULT NULL,
  `timeId_279` int(11) DEFAULT NULL,
  `userId_279` varchar(5) DEFAULT NULL,
  `actionId_283` varchar(15) DEFAULT NULL,
  `timeId_283` int(11) DEFAULT NULL,
  `userId_283` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_22`
--

INSERT INTO `step_22` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_23`
--

CREATE TABLE `step_23` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_166` varchar(15) DEFAULT NULL,
  `timeId_166` int(11) DEFAULT NULL,
  `userId_166` varchar(5) DEFAULT NULL,
  `actionId_167` varchar(15) DEFAULT NULL,
  `timeId_167` int(11) DEFAULT NULL,
  `userId_167` varchar(5) DEFAULT NULL,
  `actionId_168` varchar(15) DEFAULT NULL,
  `timeId_168` int(11) DEFAULT NULL,
  `userId_168` varchar(5) DEFAULT NULL,
  `actionId_169` varchar(15) DEFAULT NULL,
  `timeId_169` int(11) DEFAULT NULL,
  `userId_169` varchar(5) DEFAULT NULL,
  `actionId_261` varchar(15) DEFAULT NULL,
  `timeId_261` int(11) DEFAULT NULL,
  `userId_261` varchar(5) DEFAULT NULL,
  `actionId_265` varchar(15) DEFAULT NULL,
  `timeId_265` int(11) DEFAULT NULL,
  `userId_265` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_23`
--

INSERT INTO `step_23` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_24`
--

CREATE TABLE `step_24` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_170` varchar(15) DEFAULT NULL,
  `timeId_170` int(11) DEFAULT NULL,
  `userId_170` varchar(5) DEFAULT NULL,
  `actionId_266` varchar(15) DEFAULT NULL,
  `timeId_266` int(11) DEFAULT NULL,
  `userId_266` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_24`
--

INSERT INTO `step_24` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_25`
--

CREATE TABLE `step_25` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_171` varchar(15) DEFAULT NULL,
  `timeId_171` int(11) DEFAULT NULL,
  `userId_171` varchar(5) DEFAULT NULL,
  `actionId_172` varchar(15) DEFAULT NULL,
  `timeId_172` int(11) DEFAULT NULL,
  `userId_172` varchar(5) DEFAULT NULL,
  `actionId_267` varchar(15) DEFAULT NULL,
  `timeId_267` int(11) DEFAULT NULL,
  `userId_267` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_25`
--

INSERT INTO `step_25` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_26`
--

CREATE TABLE `step_26` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_173` varchar(15) DEFAULT NULL,
  `timeId_173` int(11) DEFAULT NULL,
  `userId_173` varchar(5) DEFAULT NULL,
  `actionId_174` varchar(15) DEFAULT NULL,
  `timeId_174` int(11) DEFAULT NULL,
  `userId_174` varchar(5) DEFAULT NULL,
  `actionId_175` varchar(15) DEFAULT NULL,
  `timeId_175` int(11) DEFAULT NULL,
  `userId_175` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_26`
--

INSERT INTO `step_26` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_27`
--

CREATE TABLE `step_27` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_176` varchar(15) DEFAULT NULL,
  `timeId_176` int(11) DEFAULT NULL,
  `userId_176` varchar(5) DEFAULT NULL,
  `actionId_271` varchar(15) DEFAULT NULL,
  `timeId_271` int(11) DEFAULT NULL,
  `userId_271` varchar(5) DEFAULT NULL,
  `actionId_272` text,
  `timeId_272` int(11) DEFAULT NULL,
  `userId_272` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_27`
--

INSERT INTO `step_27` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_28`
--

CREATE TABLE `step_28` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_177` varchar(15) DEFAULT NULL,
  `timeId_177` int(11) DEFAULT NULL,
  `userId_177` varchar(5) DEFAULT NULL,
  `actionId_178` varchar(15) DEFAULT NULL,
  `timeId_178` int(11) DEFAULT NULL,
  `userId_178` varchar(5) DEFAULT NULL,
  `actionId_179` varchar(15) DEFAULT NULL,
  `timeId_179` int(11) DEFAULT NULL,
  `userId_179` varchar(5) DEFAULT NULL,
  `actionId_180` varchar(15) DEFAULT NULL,
  `timeId_180` int(11) DEFAULT NULL,
  `userId_180` varchar(5) DEFAULT NULL,
  `actionId_181` varchar(15) DEFAULT NULL,
  `timeId_181` int(11) DEFAULT NULL,
  `userId_181` varchar(5) DEFAULT NULL,
  `actionId_182` varchar(15) DEFAULT NULL,
  `timeId_182` int(11) DEFAULT NULL,
  `userId_182` varchar(5) DEFAULT NULL,
  `actionId_183` varchar(15) DEFAULT NULL,
  `timeId_183` int(11) DEFAULT NULL,
  `userId_183` varchar(5) DEFAULT NULL,
  `actionId_263` varchar(15) DEFAULT NULL,
  `timeId_263` int(11) DEFAULT NULL,
  `userId_263` varchar(5) DEFAULT NULL,
  `actionId_278` varchar(15) DEFAULT NULL,
  `timeId_278` int(11) DEFAULT NULL,
  `userId_278` varchar(5) DEFAULT NULL,
  `actionId_284` varchar(15) DEFAULT NULL,
  `timeId_284` int(11) DEFAULT NULL,
  `userId_284` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_28`
--

INSERT INTO `step_28` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_29`
--

CREATE TABLE `step_29` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_184` varchar(15) DEFAULT NULL,
  `timeId_184` int(11) DEFAULT NULL,
  `userId_184` varchar(5) DEFAULT NULL,
  `actionId_185` varchar(50) DEFAULT NULL,
  `timeId_185` int(11) DEFAULT NULL,
  `userId_185` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_29`
--

INSERT INTO `step_29` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_30`
--

CREATE TABLE `step_30` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_186` varchar(15) DEFAULT NULL,
  `timeId_186` int(11) DEFAULT NULL,
  `userId_186` varchar(5) DEFAULT NULL,
  `actionId_187` varchar(15) DEFAULT NULL,
  `timeId_187` int(11) DEFAULT NULL,
  `userId_187` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_30`
--

INSERT INTO `step_30` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_31`
--

CREATE TABLE `step_31` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_188` varchar(15) DEFAULT NULL,
  `timeId_188` int(11) DEFAULT NULL,
  `userId_188` varchar(5) DEFAULT NULL,
  `actionId_189` varchar(15) DEFAULT NULL,
  `timeId_189` int(11) DEFAULT NULL,
  `userId_189` varchar(5) DEFAULT NULL,
  `actionId_190` varchar(15) DEFAULT NULL,
  `timeId_190` int(11) DEFAULT NULL,
  `userId_190` varchar(5) DEFAULT NULL,
  `actionId_191` varchar(15) DEFAULT NULL,
  `timeId_191` int(11) DEFAULT NULL,
  `userId_191` varchar(5) DEFAULT NULL,
  `actionId_192` varchar(15) DEFAULT NULL,
  `timeId_192` int(11) DEFAULT NULL,
  `userId_192` varchar(5) DEFAULT NULL,
  `actionId_193` varchar(15) DEFAULT NULL,
  `timeId_193` int(11) DEFAULT NULL,
  `userId_193` varchar(5) DEFAULT NULL,
  `actionId_194` varchar(15) DEFAULT NULL,
  `timeId_194` int(11) DEFAULT NULL,
  `userId_194` varchar(5) DEFAULT NULL,
  `actionId_195` varchar(15) DEFAULT NULL,
  `timeId_195` int(11) DEFAULT NULL,
  `userId_195` varchar(5) DEFAULT NULL,
  `actionId_196` varchar(15) DEFAULT NULL,
  `timeId_196` int(11) DEFAULT NULL,
  `userId_196` varchar(5) DEFAULT NULL,
  `actionId_197` varchar(15) DEFAULT NULL,
  `timeId_197` int(11) DEFAULT NULL,
  `userId_197` varchar(5) DEFAULT NULL,
  `actionId_198` varchar(15) DEFAULT NULL,
  `timeId_198` int(11) DEFAULT NULL,
  `userId_198` varchar(5) DEFAULT NULL,
  `actionId_199` varchar(15) DEFAULT NULL,
  `timeId_199` int(11) DEFAULT NULL,
  `userId_199` varchar(5) DEFAULT NULL,
  `actionId_200` varchar(15) DEFAULT NULL,
  `timeId_200` int(11) DEFAULT NULL,
  `userId_200` varchar(5) DEFAULT NULL,
  `actionId_201` varchar(15) DEFAULT NULL,
  `timeId_201` int(11) DEFAULT NULL,
  `userId_201` varchar(5) DEFAULT NULL,
  `actionId_202` varchar(15) DEFAULT NULL,
  `timeId_202` int(11) DEFAULT NULL,
  `userId_202` varchar(5) DEFAULT NULL,
  `actionId_203` varchar(15) DEFAULT NULL,
  `timeId_203` int(11) DEFAULT NULL,
  `userId_203` varchar(5) DEFAULT NULL,
  `actionId_204` varchar(15) DEFAULT NULL,
  `timeId_204` int(11) DEFAULT NULL,
  `userId_204` varchar(5) DEFAULT NULL,
  `actionId_205` varchar(15) DEFAULT NULL,
  `timeId_205` int(11) DEFAULT NULL,
  `userId_205` varchar(5) DEFAULT NULL,
  `actionId_206` varchar(15) DEFAULT NULL,
  `timeId_206` int(11) DEFAULT NULL,
  `userId_206` varchar(5) DEFAULT NULL,
  `actionId_207` varchar(15) DEFAULT NULL,
  `timeId_207` int(11) DEFAULT NULL,
  `userId_207` varchar(5) DEFAULT NULL,
  `actionId_208` varchar(15) DEFAULT NULL,
  `timeId_208` int(11) DEFAULT NULL,
  `userId_208` varchar(5) DEFAULT NULL,
  `actionId_209` varchar(15) DEFAULT NULL,
  `timeId_209` int(11) DEFAULT NULL,
  `userId_209` varchar(5) DEFAULT NULL,
  `actionId_210` varchar(15) DEFAULT NULL,
  `timeId_210` int(11) DEFAULT NULL,
  `userId_210` varchar(5) DEFAULT NULL,
  `actionId_211` varchar(15) DEFAULT NULL,
  `timeId_211` int(11) DEFAULT NULL,
  `userId_211` varchar(5) DEFAULT NULL,
  `actionId_212` varchar(15) DEFAULT NULL,
  `timeId_212` int(11) DEFAULT NULL,
  `userId_212` varchar(5) DEFAULT NULL,
  `actionId_213` varchar(15) DEFAULT NULL,
  `timeId_213` int(11) DEFAULT NULL,
  `userId_213` varchar(5) DEFAULT NULL,
  `actionId_214` varchar(15) DEFAULT NULL,
  `timeId_214` int(11) DEFAULT NULL,
  `userId_214` varchar(5) DEFAULT NULL,
  `actionId_215` varchar(15) DEFAULT NULL,
  `timeId_215` int(11) DEFAULT NULL,
  `userId_215` varchar(5) DEFAULT NULL,
  `actionId_216` varchar(15) DEFAULT NULL,
  `timeId_216` int(11) DEFAULT NULL,
  `userId_216` varchar(5) DEFAULT NULL,
  `actionId_217` varchar(15) DEFAULT NULL,
  `timeId_217` int(11) DEFAULT NULL,
  `userId_217` varchar(5) DEFAULT NULL,
  `actionId_218` varchar(15) DEFAULT NULL,
  `timeId_218` int(11) DEFAULT NULL,
  `userId_218` varchar(5) DEFAULT NULL,
  `actionId_219` varchar(15) DEFAULT NULL,
  `timeId_219` int(11) DEFAULT NULL,
  `userId_219` varchar(5) DEFAULT NULL,
  `actionId_220` varchar(15) DEFAULT NULL,
  `timeId_220` int(11) DEFAULT NULL,
  `userId_220` varchar(5) DEFAULT NULL,
  `actionId_277` varchar(15) DEFAULT NULL,
  `timeId_277` int(11) DEFAULT NULL,
  `userId_277` varchar(5) DEFAULT NULL,
  `actionId_285` varchar(15) DEFAULT NULL,
  `timeId_285` int(11) DEFAULT NULL,
  `userId_285` varchar(5) DEFAULT NULL,
  `actionId_286` varchar(15) DEFAULT NULL,
  `timeId_286` int(11) DEFAULT NULL,
  `userId_286` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_31`
--

INSERT INTO `step_31` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_32`
--

CREATE TABLE `step_32` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_221` varchar(15) DEFAULT NULL,
  `timeId_221` int(11) DEFAULT NULL,
  `userId_221` varchar(5) DEFAULT NULL,
  `actionId_222` varchar(50) DEFAULT NULL,
  `timeId_222` int(11) DEFAULT NULL,
  `userId_222` varchar(5) DEFAULT NULL,
  `actionId_223` varchar(15) DEFAULT NULL,
  `timeId_223` int(11) DEFAULT NULL,
  `userId_223` varchar(5) DEFAULT NULL,
  `actionId_224` varchar(50) DEFAULT NULL,
  `timeId_224` int(11) DEFAULT NULL,
  `userId_224` varchar(5) DEFAULT NULL,
  `actionId_280` varchar(15) DEFAULT NULL,
  `timeId_280` int(11) DEFAULT NULL,
  `userId_280` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_32`
--

INSERT INTO `step_32` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_33`
--

CREATE TABLE `step_33` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_225` varchar(15) DEFAULT NULL,
  `timeId_225` int(11) DEFAULT NULL,
  `userId_225` varchar(5) DEFAULT NULL,
  `actionId_268` varchar(15) DEFAULT NULL,
  `timeId_268` int(11) DEFAULT NULL,
  `userId_268` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_33`
--

INSERT INTO `step_33` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_34`
--

CREATE TABLE `step_34` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_226` varchar(15) DEFAULT NULL,
  `timeId_226` int(11) DEFAULT NULL,
  `userId_226` varchar(5) DEFAULT NULL,
  `actionId_227` varchar(15) DEFAULT NULL,
  `timeId_227` int(11) DEFAULT NULL,
  `userId_227` varchar(5) DEFAULT NULL,
  `actionId_228` varchar(15) DEFAULT NULL,
  `timeId_228` int(11) DEFAULT NULL,
  `userId_228` varchar(5) DEFAULT NULL,
  `actionId_229` varchar(15) DEFAULT NULL,
  `timeId_229` int(11) DEFAULT NULL,
  `userId_229` varchar(5) DEFAULT NULL,
  `actionId_230` varchar(15) DEFAULT NULL,
  `timeId_230` int(11) DEFAULT NULL,
  `userId_230` varchar(5) DEFAULT NULL,
  `actionId_231` varchar(15) DEFAULT NULL,
  `timeId_231` int(11) DEFAULT NULL,
  `userId_231` varchar(5) DEFAULT NULL,
  `actionId_232` varchar(15) DEFAULT NULL,
  `timeId_232` int(11) DEFAULT NULL,
  `userId_232` varchar(5) DEFAULT NULL,
  `actionId_233` varchar(15) DEFAULT NULL,
  `timeId_233` int(11) DEFAULT NULL,
  `userId_233` varchar(5) DEFAULT NULL,
  `actionId_234` varchar(15) DEFAULT NULL,
  `timeId_234` int(11) DEFAULT NULL,
  `userId_234` varchar(5) DEFAULT NULL,
  `actionId_235` varchar(15) DEFAULT NULL,
  `timeId_235` int(11) DEFAULT NULL,
  `userId_235` varchar(5) DEFAULT NULL,
  `actionId_236` varchar(15) DEFAULT NULL,
  `timeId_236` int(11) DEFAULT NULL,
  `userId_236` varchar(5) DEFAULT NULL,
  `actionId_237` varchar(15) DEFAULT NULL,
  `timeId_237` int(11) DEFAULT NULL,
  `userId_237` varchar(5) DEFAULT NULL,
  `actionId_238` varchar(15) DEFAULT NULL,
  `timeId_238` int(11) DEFAULT NULL,
  `userId_238` varchar(5) DEFAULT NULL,
  `actionId_239` varchar(15) DEFAULT NULL,
  `timeId_239` int(11) DEFAULT NULL,
  `userId_239` varchar(5) DEFAULT NULL,
  `actionId_240` varchar(15) DEFAULT NULL,
  `timeId_240` int(11) DEFAULT NULL,
  `userId_240` varchar(5) DEFAULT NULL,
  `actionId_241` varchar(15) DEFAULT NULL,
  `timeId_241` int(11) DEFAULT NULL,
  `userId_241` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_34`
--

INSERT INTO `step_34` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_35`
--

CREATE TABLE `step_35` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_242` varchar(15) DEFAULT NULL,
  `timeId_242` int(11) DEFAULT NULL,
  `userId_242` varchar(5) DEFAULT NULL,
  `actionId_243` varchar(15) DEFAULT NULL,
  `timeId_243` int(11) DEFAULT NULL,
  `userId_243` varchar(5) DEFAULT NULL,
  `actionId_244` varchar(15) DEFAULT NULL,
  `timeId_244` int(11) DEFAULT NULL,
  `userId_244` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_35`
--

INSERT INTO `step_35` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_37`
--

CREATE TABLE `step_37` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_262` varchar(15) DEFAULT NULL,
  `timeId_262` int(11) DEFAULT NULL,
  `userId_262` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `step_37`
--


-- --------------------------------------------------------

--
-- Structure de la table `step_38`
--

CREATE TABLE `step_38` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStluc` varchar(10) NOT NULL,
  `req` tinyint(4) NOT NULL,
  `volcible` tinyint(4) NOT NULL,
  `ptv` tinyint(4) NOT NULL,
  `plan` tinyint(4) NOT NULL,
  `actionId_269` varchar(15) DEFAULT NULL,
  `timeId_269` int(11) DEFAULT NULL,
  `userId_269` varchar(5) DEFAULT NULL,
  `actionId_281` varchar(15) DEFAULT NULL,
  `timeId_281` int(11) DEFAULT NULL,
  `userId_281` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idStluc` (`idStluc`),
  KEY `req` (`req`),
  KEY `volcible` (`volcible`),
  KEY `ptv` (`ptv`),
  KEY `plan` (`plan`),
  KEY `id` (`id`,`idStluc`,`req`,`volcible`,`ptv`,`plan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `step_38`
--

INSERT INTO `step_38` VALUES(1, 'IDtest', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `step_action`
--

CREATE TABLE `step_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classement` tinyint(4) NOT NULL,
  `name` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `refusGoTo` varchar(5) NOT NULL,
  `valid_level` varchar(5) NOT NULL,
  `verifType` varchar(7) NOT NULL,
  `obligation` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `step_link` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=288 ;

--
-- Contenu de la table `step_action`
--

INSERT INTO `step_action` VALUES(1, 0, 'Pathologie', 'select', 'Abdomen, Bassin, Canal Anal, Col utérus, Compression médulaire, Encéphale, Estomac, Glioblastome, Lymphome, Membre, Œsophage, ORL, Orbite,  Pancréas, Poumon, Prostate, Rectum, Sein, Thorax, Autres', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(2, 0, 'Palliatif ou Curatif', 'select', 'Curatif, Paliatif', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(3, 0, 'Degré d''urgence', 'select', 'Urgent, ASAP, Pas d urgence', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(4, 0, 'Vient-il de SPO?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 1);
INSERT INTO `step_action` VALUES(5, 0, 'Chimiothérapie concomitante', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(6, 0, 'Débuter un lundi?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(7, 0, 'Mobilité du patient', 'select', 'Ambulant, Chaise, Lit', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(8, 3, 'Simulation 1 (proposition une date)', 'textchain', '', '', '0.0.0', 'Date', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(9, 3, 'Commentaires', 'textarea', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(10, 0, 'Injection', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(11, 3, 'Glucophage', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(12, 0, 'Préparation intestinale', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(13, 3, 'Allergies', 'select', 'Oui, Non, Inconnu', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(14, 1, 'Machine souhaitée', 'select', 'SL25, SP18, Tomo1, Tomo2, Tomo1 ou Tomo2, Linac ou Tomo', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(15, 0, 'Timing estimé', 'select', '15, 30, 45, 60', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 1);
INSERT INTO `step_action` VALUES(16, 0, 'Le patient a-t-il déjà été irradié?', 'select', 'Non, Oui à St-Luc ou SPO, Oui ailleurs', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(17, 0, 'Existe-t-il déjà dans XiO', 'select', 'Oui, Non, Inconnu', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(18, 0, 'Catégorie du traitement', 'select', 'I (A), II (B), III (C), IV (D), V (E)', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(19, 0, 'Y a-t-il un PTV supplémentaire?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 1);
INSERT INTO `step_action` VALUES(20, 3, 'Etude/Protocole', 'textchain', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(21, 3, 'Fréquence MVCT', 'select', 'Tous les jours, Au placement, Avec médecin', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 1);
INSERT INTO `step_action` VALUES(22, 5, 'Prévenir quelqu un (CSO, hôpital de jour, ...)', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(23, 0, 'Transport Fédération', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(24, 0, 'Traitement sous AG', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(25, 0, 'Simple / Double prothèse de hanche?', 'select', 'Aucune, Simple, Double', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(26, 0, 'Prescription médicale remplie?', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(27, 0, 'Demande prise en charge', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 2);
INSERT INTO `step_action` VALUES(28, 5, 'Mobilité du patient', 'information', '7', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(29, 2, 'Palliatif ou Curatif', 'information', '2', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(30, 30, 'Transport Fédération', 'information', '23', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(31, 30, 'Bénévole', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 3);
INSERT INTO `step_action` VALUES(32, 30, 'Chimiothérapie concomitante', 'information', '5', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(33, 11, 'Débuter un lundi?', 'information', '6', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(34, 30, 'Traitement sous AG', 'information', '24', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(35, 30, 'Proposition de date de simulation', 'information', '8', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(36, 3, 'Pathologie', 'information', '1', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(37, 30, 'Degré d''urgence', 'information', '3', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(38, 4, 'Date d''un événement médical', 'information', '9', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(39, 30, 'Timing estimé', 'information', '15', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(40, 9, 'Injection', 'information', '10', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(41, 10, 'Préparation intestinale', 'information', '12', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(42, 6, 'Le patient peut-il changer de machine?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(43, 7, 'Le patient peut-il changer de machine?', 'information', '42', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(44, 6, 'Machine souhaitée', 'information', '14', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(45, 8, 'Machine choisie', 'select', 'SL25, SP18, Tomo1, Tomo2', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 3);
INSERT INTO `step_action` VALUES(46, 30, 'Traitement à St-Luc, ou St-Luc & SPO?', 'select', 'St-Luc, SPO, St-Luc & SPO', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 3);
INSERT INTO `step_action` VALUES(47, 30, 'Encodage des dates de début & fin de traitement et PTV2', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 3);
INSERT INTO `step_action` VALUES(48, 0, 'Simulation à la Tomo planifiée (après CT-Sim)?', 'textchain', '', '', '0.0.0', 'Date', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(49, 0, 'Demander farde cobalt', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 3);
INSERT INTO `step_action` VALUES(50, 0, 'Fax envoyé et documentation sur serveur CSO', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(51, 0, 'Le patient existe déjà dans XiO', 'information', '17', '', '0.0.0', '', 'Non', 'Enabled', 4);
INSERT INTO `step_action` VALUES(52, 0, 'Patient déjà traité à ...', 'information', '16', '', '0.0.0', '', 'Non', 'Enabled', 4);
INSERT INTO `step_action` VALUES(53, 0, 'Bénévole', 'information', '31', '', '0.0.0', '', 'Non', 'Enabled', 4);
INSERT INTO `step_action` VALUES(54, 0, 'Taux de créatinine', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(55, 0, 'Hépatite', 'select', 'Oui, Non, Inconnu', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(56, 0, 'HIV', 'select', 'Oui, Non, Inconnu', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(57, 0, 'Allergies', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(58, 0, 'Allergies', 'select', 'Oui, Non, Inconnu', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 4);
INSERT INTO `step_action` VALUES(59, 0, 'Confirmation de la prescription', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(60, 0, 'Notes techniques de simulation', 'textarea', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 4);
INSERT INTO `step_action` VALUES(61, 0, 'Recommandation de l''orientation du patient sur la table', 'select', 'Head First Dorsal, Head First Ventral, Feet First Dorsal, Feet First Ventral', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(62, 0, 'Demande importation images à fusionner', 'textchain', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 4);
INSERT INTO `step_action` VALUES(63, 0, 'Vessie', 'select', 'Pleine, Vide, Peu importe', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 4);
INSERT INTO `step_action` VALUES(64, 0, 'Vessie', 'information', '63', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(65, 0, 'Patient déjà traité à ...', 'information', '16', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(66, 0, 'Recommandation de l''orientation du patient sur la table', 'information', '61', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(67, 0, 'Injection', 'information', '10', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(68, 0, 'Notes techniques de simulation', 'information', '60', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(69, 0, 'Etude/Protocole', 'information', '20', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(70, 1, 'Simulation préparée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 5);
INSERT INTO `step_action` VALUES(71, 0, 'Le patient existe déjà dans XiO', 'information', '17', '', '0.0.0', '', 'Non', 'Enabled', 6);
INSERT INTO `step_action` VALUES(72, 0, 'Machine choisie', 'information', '45', '', '0.0.0', '', 'Non', 'Enabled', 6);
INSERT INTO `step_action` VALUES(73, 0, 'Distance suffisante pour table (sur image: au moins 3 cm)', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(74, 0, 'Vérification du FOV', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(75, 0, 'Déplacement des lasers', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(76, 0, 'Grains or placés', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(77, 0, 'Audio coaching', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(78, 0, 'Sur quel CT planifier', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(79, 0, 'Isocentre', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(80, 0, 'Patient fermé dans Focal', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 6);
INSERT INTO `step_action` VALUES(81, 0, 'Photos utiles au positionnement', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(82, 0, 'Photo du patient', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(83, 0, 'Tatouage', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(84, 0, 'Prémédication pour le traitement', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(85, 0, 'Y a-t-il un masque?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(86, 0, 'Feuille de simul complétée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(87, 2, 'Vérifier la facture RDTH', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(88, 0, 'Encodage dans Sirilog', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(89, 0, 'Facturation pour la pharmacie (médoc, injection, ...)', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(90, 0, 'Date de la simulation sur Tomo', 'information', '48', '', '0.0.0', '', 'Non', 'Enabled', 8);
INSERT INTO `step_action` VALUES(91, 0, 'Délinéation des volumes à couvrir/scanner', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 8);
INSERT INTO `step_action` VALUES(92, 0, 'Date de la simulation sur Tomo', 'information', '48', '', '0.0.0', '', 'Non', 'Enabled', 9);
INSERT INTO `step_action` VALUES(93, 0, 'Positionner les lasers', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 9);
INSERT INTO `step_action` VALUES(94, 0, 'Simulation sur Tomo effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 10);
INSERT INTO `step_action` VALUES(95, 0, 'Exportation sur Focal effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 11);
INSERT INTO `step_action` VALUES(96, 0, 'Planifier sur CT', 'information', '78', '', '0.0.0', '', 'Non', 'Enabled', 12);
INSERT INTO `step_action` VALUES(97, 0, 'RMN, Pet ou autres images à importer', 'information', '62', '', '0.0.0', '', 'Non', 'Enabled', 12);
INSERT INTO `step_action` VALUES(98, 0, 'DPB faite', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 12);
INSERT INTO `step_action` VALUES(99, 0, 'RMN, PET ou autres images importées', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 12);
INSERT INTO `step_action` VALUES(100, 0, 'Isocentre', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 13);
INSERT INTO `step_action` VALUES(101, 0, 'Lasers rouges à aligner sur ...', 'select', 'Billes, ISO Focal', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 13);
INSERT INTO `step_action` VALUES(102, 0, 'Check list des volumes à dessiner: OAR, CTV, PTV', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 13);
INSERT INTO `step_action` VALUES(103, 1, 'Faisceau de Repérage', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 13);
INSERT INTO `step_action` VALUES(104, 0, 'Contraintes', 'textarea', '', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 13);
INSERT INTO `step_action` VALUES(105, 0, 'Validation du PTV', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 14);
INSERT INTO `step_action` VALUES(106, 0, 'Correction des densités', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 14);
INSERT INTO `step_action` VALUES(107, 0, 'Check ISO dans Focal', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 14);
INSERT INTO `step_action` VALUES(108, 1, 'Renvoyer vers XiO', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 14);
INSERT INTO `step_action` VALUES(109, 0, 'Machine choisie', 'information', '45', '', '0.0.0', '', 'Non', 'Enabled', 15);
INSERT INTO `step_action` VALUES(110, 0, 'Dessin des Tomostruct, Peau', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 15);
INSERT INTO `step_action` VALUES(111, 1, 'Exportation patient sur Tomo', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 15);
INSERT INTO `step_action` VALUES(112, 0, 'Machine choisie', 'information', '45', '', '0.0.0', '', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(113, 0, 'Lasers rouges à aligner sur ...', 'information', '101', '', '0.0.0', '', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(114, 0, 'Sur quel CT planifier', 'information', '78', '', '0.0.0', '', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(115, 0, 'Contraintes', 'information', '276', '', '0.0.0', '', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(116, 0, 'Orientation du patient sur la table', 'information', '287', '', '0.0.0', '', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(117, 0, 'Isocentre', 'information', '79', '', '0.0.0', '', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(118, 0, 'TP pris en charge par un dosimétriste', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 16);
INSERT INTO `step_action` VALUES(119, 0, 'Densité, ROI', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(120, 0, 'Y a-t-il une proposition avec changement ISO?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(121, 0, 'Y a-t-il une proposition avec plomb?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(122, 0, 'Y a-t-il une proposition avec un bolus?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(123, 0, 'Positionner les lasers (rouges sur verts sens cranio-caudal pour Pelvis)', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(124, 0, 'Lancer les Beamlets', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(125, 0, 'Y a-t-il un plomb électron pour le boost dans ce PTV?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(126, 0, 'Confirmation de la machine de traitement', 'select', 'SL25, SP18, Tomo1, Tomo2', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(127, 0, 'Taille des mâchoires', 'select', '1 cm, 2.5 cm, 5 cm, plusieurs', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(128, 0, 'Direct ou Helical', 'select', 'Direct, Helical, Les 2', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 16);
INSERT INTO `step_action` VALUES(129, 0, 'Norm = Iso', 'radio', 'Oui, Non', '', '1.2.2', 'Aucune', 'Oui', 'Enabled', 17);
INSERT INTO `step_action` VALUES(130, 0, 'Validation du TP', 'checkbox', '', '', '1.2.2', 'Aucune', 'Oui', 'Enabled', 17);
INSERT INTO `step_action` VALUES(131, 0, 'Get Full Dose', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 18);
INSERT INTO `step_action` VALUES(132, 0, 'Fractionnement', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 18);
INSERT INTO `step_action` VALUES(133, 0, 'Final Dose', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 18);
INSERT INTO `step_action` VALUES(134, 1, 'Taille des mâchoires', 'information', '127', '', '0.0.0', '', 'Non', 'Enabled', 19);
INSERT INTO `step_action` VALUES(135, 1, 'Direct ou Helical', 'information', '128', '', '0.0.0', '', 'Non', 'Enabled', 19);
INSERT INTO `step_action` VALUES(136, 1, 'Il y a une proposition avec un plomb', 'information', '121', '', '0.0.0', '', 'Non', 'Enabled', 19);
INSERT INTO `step_action` VALUES(137, 1, 'Y a-t-il un plomb dans le plan choisi?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(138, 2, 'Il y a une proposition avec un changement d''iso', 'information', '120', '', '0.0.0', '', 'Non', 'Enabled', 19);
INSERT INTO `step_action` VALUES(139, 1, 'Il y a une proposition avec un bolus', 'information', '122', '', '0.0.0', '', 'Non', 'Enabled', 19);
INSERT INTO `step_action` VALUES(140, 3, 'Approbation du TP (Tomo)', 'radio', 'Oui, Refus', '18', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(141, 1, 'Nom du plan approuvé', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(142, 1, 'Faisceau de repérage réalisé sur Iso de traitement', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(143, 1, 'Renvoi dans XiO', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(144, 1, 'Vérification des lasers', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(145, 1, 'Vérification du fractionnement', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(146, 1, 'Final Accept', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(147, 0, 'Exportation vers Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(148, 0, 'Exportation des DRR vers l iView', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(149, 0, 'Impression des faisceaux de repérages', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(150, 0, 'Impression et docs par dosimétriste', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(151, 0, 'Vérifier les UMs', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(152, 0, 'Impression à SPO ou à St-Luc', 'select', 'St-Luc, SPO', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(153, 3, 'Approbation du TP (Linac)', 'radio', 'Oui, Refus', '16', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(154, 0, 'Y a-t-il un changement d iso?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(155, 0, 'Y a-t-il un bolus?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(156, 0, 'Préparation In-Vivo', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(157, 0, 'Exportation des grains d''or sur iView', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(158, 1, 'Demande de plomb effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(159, 0, 'UM = 1 dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 20);
INSERT INTO `step_action` VALUES(160, 0, 'Facteur plomb', 'select', 'Photons, Mesurer, Estimer', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 21);
INSERT INTO `step_action` VALUES(161, 0, 'Energie du faisceau utilisant le plomb', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 21);
INSERT INTO `step_action` VALUES(162, 0, 'Facteur plomb', 'information', '160', '', '0.0.0', '', 'Non', 'Enabled', 22);
INSERT INTO `step_action` VALUES(163, 1, 'Importation dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 22);
INSERT INTO `step_action` VALUES(164, 1, 'Changement d''iso pris en compte', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 22);
INSERT INTO `step_action` VALUES(165, 1, 'Repérages introduits dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 22);
INSERT INTO `step_action` VALUES(166, 1, 'Taille des mâchoires', 'information', '127', '', '0.0.0', '', 'Non', 'Enabled', 23);
INSERT INTO `step_action` VALUES(167, 2, 'Direct ou Helical', 'information', '128', '', '0.0.0', '', 'Non', 'Enabled', 23);
INSERT INTO `step_action` VALUES(168, 3, 'Préparation DQA', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 23);
INSERT INTO `step_action` VALUES(169, 4, 'Impression DQA', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 23);
INSERT INTO `step_action` VALUES(170, 1, 'Mesure DQA', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 24);
INSERT INTO `step_action` VALUES(171, 1, 'Analyse DQA', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 25);
INSERT INTO `step_action` VALUES(172, 2, 'DQA bon?', 'radio', 'Oui, Refus', '24', '0.0.0', 'Aucune', 'Oui', 'Enabled', 25);
INSERT INTO `step_action` VALUES(173, 0, 'Machine choisie', 'information', '126', '', '0.0.0', '', 'Non', 'Enabled', 26);
INSERT INTO `step_action` VALUES(174, 0, 'Energie du faisceau', 'information', '161', '', '0.0.0', '', 'Non', 'Enabled', 26);
INSERT INTO `step_action` VALUES(175, 0, 'Plomb réalisé', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 26);
INSERT INTO `step_action` VALUES(176, 0, 'Simulation cicatrice faite (déplacement et photo OK)', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 27);
INSERT INTO `step_action` VALUES(177, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 28);
INSERT INTO `step_action` VALUES(178, 0, 'Validation du TP', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(179, 0, 'Utilisation de grains or en salle?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(180, 0, 'Médecin nécessaire en salle?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(181, 0, 'Protocole MVCT demandé', 'information', '21', '', '0.0.0', '', 'Non', 'Enabled', 28);
INSERT INTO `step_action` VALUES(182, 0, 'Protocole MVCT à confirmer', 'select', 'Tous les jours, Au placement, Avec médecin, MVCT  une semaine sur deux, Autre, Cf commentaires', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(183, 0, 'Photo et déplacement à valider', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(184, 0, 'Plomb à mesurer', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 29);
INSERT INTO `step_action` VALUES(185, 0, 'Facteur plomb', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 29);
INSERT INTO `step_action` VALUES(186, 0, 'Introduction des UM dus au facteur plombs dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 30);
INSERT INTO `step_action` VALUES(187, 0, 'Introduction des UM pour les cic électrons', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 30);
INSERT INTO `step_action` VALUES(188, 0, 'Changement d''iso', 'information', '120', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(189, 0, 'Grains d''or', 'information', '76', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(190, 0, 'Protocole/étude', 'information', '20', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(191, 0, 'Fréquence MVCT', 'information', '182', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(192, 0, 'Transport Fédération', 'information', '23', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(193, 0, 'Bénévole', 'information', '31', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(194, 0, 'Chimiothérapie concomitante', 'information', '5', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(195, 0, 'Mobilité du patient', 'information', '7', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(196, 0, 'Traitement à St-Luc et SPO', 'information', '46', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(197, 0, 'HIV', 'information', '56', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(198, 0, 'Hépatite', 'information', '55', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(199, 0, 'Orientation du patient sur la table', 'information', '287', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(200, 0, 'Masque', 'information', '85', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(201, 0, 'Facteur plomb pris en compte dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(202, 0, 'Plomb en salle?', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(203, 0, 'Photo du patient', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(204, 0, 'MP3 chargé', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(205, 0, 'DQA en ordre', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(206, 0, 'Signature du physicien', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(207, 0, 'Messages encodés dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(208, 0, 'Confirm messages', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(209, 0, 'Faisceaux dans l''ordre', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(210, 0, 'Contre-signature', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(211, 0, 'Séries préparées', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(212, 0, 'iView préparé', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(213, 0, 'Vérification si besoin de faisceaux de repérages', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(214, 0, 'Vérification de la cohérence entre la prescription et le TP', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(215, 0, 'Préparation des étiquettes', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(216, 0, 'Matériel en salle', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(217, 0, 'Vérification adresse, téléphone et photo', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(218, 0, 'Médecin nécessaire en salle?', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 31);
INSERT INTO `step_action` VALUES(219, 0, 'Vérification du calcul d''UM faite', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(220, 0, 'In-Vivo préparée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(221, 0, 'Récupération des UM du repAnt?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 32);
INSERT INTO `step_action` VALUES(222, 0, 'Si oui => nom du faisceau et nombre d''UM', 'textchain', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 32);
INSERT INTO `step_action` VALUES(223, 0, 'Récupération des UM du repLat?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 32);
INSERT INTO `step_action` VALUES(224, 0, 'Si oui => nom du faisceau et nombre d''UM', 'textchain', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 32);
INSERT INTO `step_action` VALUES(225, 0, 'Correction apportée sur le RepLat', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 33);
INSERT INTO `step_action` VALUES(226, 0, 'Consultation hebdomadaire 1', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(227, 0, 'Consultation hebdomadaire 2', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(228, 0, 'Consultation hebdomadaire 3', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(229, 0, 'Consultation hebdomadaire 4', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(230, 0, 'Consultation hebdomadaire 5', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(231, 0, 'Consultation hebdomadaire 6', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(232, 0, 'Consultation hebdomadaire 7', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(233, 0, 'Consultation hebdomadaire 8', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(234, 0, 'Consultation hebdomadaire 9', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 34);
INSERT INTO `step_action` VALUES(235, 0, 'Consultation de fin de traitement', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 34);
INSERT INTO `step_action` VALUES(236, 0, 'Date RDV follow up fixée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 34);
INSERT INTO `step_action` VALUES(237, 0, 'Vérification carte 1', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 34);
INSERT INTO `step_action` VALUES(238, 0, 'Vérification carte 2', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 34);
INSERT INTO `step_action` VALUES(239, 0, 'Vérification carte 3', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 34);
INSERT INTO `step_action` VALUES(240, 0, 'Vérification carte 4', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 34);
INSERT INTO `step_action` VALUES(241, 0, 'Vérification carte 5', 'checkbox', '', '', '0.0.0', 'Aucune', 'Non', 'Disabled', 34);
INSERT INTO `step_action` VALUES(242, 0, 'Bon de transport', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 35);
INSERT INTO `step_action` VALUES(243, 0, 'Impression de Plan Report (3 jours avant la fin)', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 35);
INSERT INTO `step_action` VALUES(248, 0, 'Nombre de fractions', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 1);
INSERT INTO `step_action` VALUES(247, 0, 'Dose totale', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 1);
INSERT INTO `step_action` VALUES(249, 0, 'Dose par fraction', 'textchain', '', '', '0.0.0', 'Aucune', 'Oui', 'Disabled', 1);
INSERT INTO `step_action` VALUES(250, 0, 'Nombre de fractions par semaine', 'select', '1, 2, 3, 4, 5', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 1);
INSERT INTO `step_action` VALUES(251, 0, 'Dose totale', 'information', '247', '', '0.0.0', '', 'Non', 'Disabled', 3);
INSERT INTO `step_action` VALUES(252, 0, 'Nombre de fractions', 'information', '248', '', '0.0.0', '', 'Non', 'Disabled', 3);
INSERT INTO `step_action` VALUES(253, 0, 'Dose par fraction', 'information', '249', '', '0.0.0', '', 'Non', 'Disabled', 3);
INSERT INTO `step_action` VALUES(254, 0, 'Nombre de fractions par semaine', 'information', '250', '', '0.0.0', '', 'Non', 'Disabled', 3);
INSERT INTO `step_action` VALUES(255, 2, 'Y a-t-il un changement d''iso dans le plan choisi?', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 19);
INSERT INTO `step_action` VALUES(256, 0, 'Series Mosaiq', 'select', 'Brachy prostate SPO,Brachy prostate St-Luc,Linac - 10fct - Gamma J1,Linac - 10fct - GammaJ1+1G/sem,Linac - 15fct – GammaJ1+1G/sem,Linac - 16+6fct - Gamma J-1 + 1Gfct8 + SimCic,Linac - 16+6fct2Iso - Gamma J-1 + 1Gfct8 + SimCic,Linac - 16fct - Gamma J-1 + 1Gfct8,Linac - 16fct2Iso - Gamma J-1 + 1Gfct8,Linac - 25+8fct - Gamma J-1 + 1Gfct10 + SimCic,Linac - 25+8fct2Iso - Gamma J-1 + 1Gfct10 + SimCic,Linac - 25fct - Gamma J-1 + 1Gfct10,Linac – 25fct – Gamma J-1 + 1G/sem,Linac - 25fct2Iso - Gamma J-1 + 1Gfct10,Linac - 28fct - GammaS1+1G/sem,Linac - 30fct - GammaJ1+1G/sem,Linac - 30fct - GammaS1+1G/sem,Linac - 33fct - GammaS1+1G/sem,Linac - 33fct - GammaS1+3G/sem,Linac - 37fct - GammaS1+1G/sem,Linac - 37fct - GammaS1+3G/sem,Linac - 39fct - 1Gamma/jour,Linac - AG - 10fct - Gamma J1,Linac - CH/sem - 28+8fct - Gamma J-1 + 1G/sem,Linac - CH/sem - 28fct - Gamma J-1 + 1G/sem,Linac - CHsem1&5 - 28fct - Gamma J-1 + 1G/sem,Linac - El - 18fct,Linac - El - 30fct,Linac - El - 5fct,Linac - El - 6fct,Linac - 10fct - Gamma J1,Linac - 1 fct - Gamma,Linac - 2fct - Gamma J1,Linac - 5fct - Gamma J1,Plaque Ophtalmique,TBI,TBI fractionné,Tomo - 10fct - MVCTj,Tomo - 10fct - MVCTs,Tomo - 12fct - MVCTj,Tomo - 13fct - MVCTj,Tomo - 14fct - MVCTj,Tomo - 15fct - MVCTj 1sem/2,Tomo - 15fct - MVCTs,Tomo - 18fct - MVCTj 1sem/2,Tomo - 20fct - MVCTj,Tomo - 25fct - MVCTj,Tomo - 25fct - MVCTj 1sem/2,Tomo - 28fct - MVCTj,Tomo - 30fct - MCVTj,Tomo - 30fct - MVCTj 1sem/2,Tomo - 30fct - MVCTs,Tomo - 30fct 2fct/J /3sem - MVCTj,Tomo - 31fct - MVCTj 1sem/2,Tomo - 32fct - MVCTj 1sem/2,Tomo - 33fct - MCVTj,Tomo - 35fct - MVCTj,Tomo - 37fct - MVCTj,Tomo - 39fct - MVCTj,Tomo - 3fct/10-12j - MVCTj,Tomo - 4fct 1J/2 - MVCTj,Tomo - 4fct/2sem - MVCTj,Tomo - 8fct - MVCTj,Tomo - AG - 10fct - MVCTs,Tomo - AG - 14fct - MVCTj,Tomo - AG - 25fct - MVCTj,Tomo - AG - 28fct - MVCTj,Tomo - AG - 30fct - MVCTj,Tomo - AG - 30fct - MVCTs,Tomo - CH/sem - 28+8fct - MVCTj,Tomo - CH/sem - 28fct - MVCTj,Tomo - CHsem1&4&7 - 32fct - MVCTj 1sem/2,Tomo - CHsem1&4&7 - 35fct - MVCTj 1sem/2,Tomo - CHsem1&5 - 28fct - MVCTj,Tomo - PET - 30fct - MCVTj,Tomo - PET - 8fct 1J/2 - MVCTj,Tomo - 10fct - MVCTj1,Tomo - 1fct - MVCTj1,Tomo - 5fct - MVCTj1,Tomo 25fct - Linac 8fct - MVCTj – SimCic, Autre ', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(257, 0, 'Series Mosaiq', 'information', '256', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(258, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 20);
INSERT INTO `step_action` VALUES(259, 5, 'Commentaires pour cette personne', 'textarea', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 1);
INSERT INTO `step_action` VALUES(260, 0, 'Demander farde cobalt', 'information', '49', '', '0.0.0', '', 'Non', 'Enabled', 5);
INSERT INTO `step_action` VALUES(261, 5, 'Impression du plan', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 23);
INSERT INTO `step_action` VALUES(262, 0, 'Treatment Calendar créé dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 37);
INSERT INTO `step_action` VALUES(263, 0, 'Validation du Treatment Calendar dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(264, 0, 'Commentaires', 'information', '9', '', '0.0.0', '', 'Non', 'Enabled', 3);
INSERT INTO `step_action` VALUES(265, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 23);
INSERT INTO `step_action` VALUES(266, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 24);
INSERT INTO `step_action` VALUES(267, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 25);
INSERT INTO `step_action` VALUES(268, 0, 'Correction apportée sur le RepAnt', 'radio', 'Oui, Non', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 33);
INSERT INTO `step_action` VALUES(269, 1, 'Vérification de la carte effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 38);
INSERT INTO `step_action` VALUES(270, 0, 'Planifier sur CT', 'information', '78', '', '0.0.0', '', 'Non', 'Enabled', 15);
INSERT INTO `step_action` VALUES(271, 0, 'Simulation cicatrice en ordre (déplacement et photo OK)', 'refus', 'Oui, Refus', '16', '0.0.0', 'Aucune', 'Oui', 'Enabled', 27);
INSERT INTO `step_action` VALUES(272, 0, 'Commentaire concernant un déplacement', 'textarea', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 27);
INSERT INTO `step_action` VALUES(273, 1, 'Type de facture RDTH', 'information', '18', '', '0.0.0', '', 'Non', 'Enabled', 7);
INSERT INTO `step_action` VALUES(274, 0, 'Matériel pour Ottignies placé dans la caisse SPO', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);
INSERT INTO `step_action` VALUES(275, 0, 'Farde envoyée à SPO', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 14);
INSERT INTO `step_action` VALUES(276, 0, 'Contraintes', 'textarea', '', '', '0.0.0', 'Aucune', 'Non', 'Enabled', 14);
INSERT INTO `step_action` VALUES(277, 0, 'Médecin nécessaire en salle', 'information', '180', '', '0.0.0', '', 'Non', 'Enabled', 31);
INSERT INTO `step_action` VALUES(278, 0, 'Impression de la prescription approuvée par le médecin', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(279, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 22);
INSERT INTO `step_action` VALUES(280, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 32);
INSERT INTO `step_action` VALUES(281, 0, 'Nom du plan approuvé', 'information', '141', '', '0.0.0', '', 'Non', 'Enabled', 38);
INSERT INTO `step_action` VALUES(282, 0, 'Treatment Calendar créé dans Mosaiq', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 20);
INSERT INTO `step_action` VALUES(283, 0, 'Vérification du treatment calendar effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 22);
INSERT INTO `step_action` VALUES(284, 0, 'Vérification du treatment calendar effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 28);
INSERT INTO `step_action` VALUES(285, 0, 'Vérification du treatment calendar effectuée', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(286, 0, 'Approbation du treatment calendar', 'checkbox', '', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 31);
INSERT INTO `step_action` VALUES(287, 0, 'Orientation du patient sur la table', 'select', 'Head First Dorsal, Head First Ventral, Feet First Dorsal, Feet First Ventral', '', '0.0.0', 'Aucune', 'Oui', 'Enabled', 7);

-- --------------------------------------------------------

--
-- Structure de la table `step_action_avoid`
--

CREATE TABLE `step_action_avoid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stepId` int(11) NOT NULL,
  `actionId` int(11) NOT NULL,
  `selectedAnswer` varchar(20) NOT NULL,
  `togoAvoid` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stepId` (`stepId`,`actionId`,`selectedAnswer`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Contenu de la table `step_action_avoid`
--

INSERT INTO `step_action_avoid` VALUES(1, 1, 5, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(2, 1, 5, 'Non', 'a:2:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"32";}i:1;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"194";}}');
INSERT INTO `step_action_avoid` VALUES(3, 1, 6, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(4, 1, 6, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"33";}}');
INSERT INTO `step_action_avoid` VALUES(5, 1, 10, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(6, 1, 10, 'Non', 'a:3:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"40";}i:1;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"54";}i:2;a:2:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"106";}}');
INSERT INTO `step_action_avoid` VALUES(7, 1, 12, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(8, 1, 12, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"41";}}');
INSERT INTO `step_action_avoid` VALUES(9, 1, 14, 'SL25', 'a:1:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"48";}}');
INSERT INTO `step_action_avoid` VALUES(10, 1, 14, 'SP18', 'a:1:{i:1;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"48";}}');
INSERT INTO `step_action_avoid` VALUES(11, 1, 14, 'Tomo1', 'a:1:{i:2;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"46";}}');
INSERT INTO `step_action_avoid` VALUES(12, 1, 14, 'Tomo2', 'a:1:{i:3;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"46";}}');
INSERT INTO `step_action_avoid` VALUES(13, 1, 14, 'Tomo1 ou Tomo2', 'a:1:{i:4;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"46";}}');
INSERT INTO `step_action_avoid` VALUES(14, 1, 25, 'Aucune', 'a:7:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"48";}i:1;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"90";}i:2;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"91";}i:3;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"92";}i:4;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"93";}i:5;a:2:{s:6:"idStep";s:2:"10";s:8:"idAction";s:2:"94";}i:6;a:2:{s:6:"idStep";s:2:"11";s:8:"idAction";s:2:"95";}}');
INSERT INTO `step_action_avoid` VALUES(15, 1, 25, 'Simple', 'a:7:{i:7;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"48";}i:8;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"90";}i:9;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"91";}i:10;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"92";}i:11;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"93";}i:12;a:2:{s:6:"idStep";s:2:"10";s:8:"idAction";s:2:"94";}i:13;a:2:{s:6:"idStep";s:2:"11";s:8:"idAction";s:2:"95";}}');
INSERT INTO `step_action_avoid` VALUES(16, 1, 25, 'Double', 's:0:"";');
INSERT INTO `step_action_avoid` VALUES(17, 1, 16, 'Non', 'a:3:{i:0;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"49";}i:1;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"52";}i:2;a:2:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"65";}}');
INSERT INTO `step_action_avoid` VALUES(18, 1, 16, 'Oui à St-Luc ou SPO', 's:0:"";');
INSERT INTO `step_action_avoid` VALUES(19, 1, 16, 'Oui ailleurs', 'a:1:{i:3;a:2:{s:6:"idStep";s:1:"3";s:8:"idAction";s:2:"49";}}');
INSERT INTO `step_action_avoid` VALUES(20, 1, 17, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(21, 1, 17, 'Non', 'a:2:{i:0;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"51";}i:1;a:2:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"71";}}');
INSERT INTO `step_action_avoid` VALUES(22, 1, 17, 'Inconnu', 'a:1:{i:2;a:2:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"71";}}');
INSERT INTO `step_action_avoid` VALUES(23, 3, 31, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(24, 3, 31, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"53";}}');
INSERT INTO `step_action_avoid` VALUES(25, 1, 13, 'Oui', 'a:1:{i:0;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"58";}}');
INSERT INTO `step_action_avoid` VALUES(26, 1, 13, 'Non', 'a:1:{i:1;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"57";}}');
INSERT INTO `step_action_avoid` VALUES(27, 1, 13, 'Inconnu', 'a:1:{i:2;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"57";}}');
INSERT INTO `step_action_avoid` VALUES(28, 1, 1, 'Abdomen', 'a:7:{i:0;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:1;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:2;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:3;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:4;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:5;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:6;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(29, 1, 1, 'Canal Anal', 'a:9:{i:7;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"63";}i:8;a:2:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"64";}i:9;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:10;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:11;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:12;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:13;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:14;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:15;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(30, 1, 1, 'Col utérus', 'a:9:{i:16;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"63";}i:17;a:2:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"64";}i:18;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:19;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:20;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:21;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:22;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:23;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:24;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(31, 1, 1, 'Compression médulair', 's:0:"";');
INSERT INTO `step_action_avoid` VALUES(32, 1, 1, 'Encéphale', 'a:7:{i:25;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:26;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:27;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:28;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:29;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:30;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:31;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(33, 1, 1, 'Estomac', 'a:7:{i:32;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:33;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:34;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:35;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:36;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:37;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:38;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(34, 1, 1, 'Glioblastome', 'a:7:{i:39;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:40;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:41;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:42;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:43;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:44;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:45;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(35, 1, 1, 'Lymphome', 'a:7:{i:46;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:47;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:48;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:49;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:50;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:51;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:52;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(36, 1, 1, 'Membre', 'a:7:{i:53;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:54;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:55;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:56;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:57;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:58;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:59;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(37, 1, 1, 'Œsophage', 'a:7:{i:60;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:61;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:62;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:63;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:64;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:65;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:66;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(38, 1, 1, 'ORL', 'a:7:{i:67;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:68;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:69;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:70;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:71;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:72;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:73;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(39, 1, 1, 'Orbite', 'a:7:{i:74;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:75;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:76;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:77;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:78;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:79;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:80;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(40, 1, 1, 'Pancréas', 'a:7:{i:81;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:82;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:83;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:84;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:85;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:86;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:87;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(41, 1, 1, 'Poumon', 'a:7:{i:88;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:89;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:90;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:91;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:92;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:93;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:94;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(42, 1, 1, 'Prostate', 'a:9:{i:95;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"63";}i:96;a:2:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"64";}i:97;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:98;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:99;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:100;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:101;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:102;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:103;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(43, 1, 1, 'Rectum', 'a:9:{i:104;a:2:{s:6:"idStep";s:1:"4";s:8:"idAction";s:2:"63";}i:105;a:2:{s:6:"idStep";s:1:"5";s:8:"idAction";s:2:"64";}i:106;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:107;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:108;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:109;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:110;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:111;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:112;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(44, 1, 1, 'Sein', 's:0:"";');
INSERT INTO `step_action_avoid` VALUES(45, 1, 1, 'Thorax', 'a:7:{i:113;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:114;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:115;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:116;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:117;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:118;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:119;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(46, 1, 1, 'Autres', 'a:7:{i:120;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}i:121;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:122;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"176";}i:123;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:124;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:125;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:126;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(47, 3, 45, 'SL25', 'a:19:{i:0;a:2:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"73";}i:1;a:2:{s:6:"idStep";s:1:"7";s:8:"idAction";s:3:"274";}i:2;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"90";}i:3;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"91";}i:4;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"92";}i:5;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"93";}i:6;a:2:{s:6:"idStep";s:2:"10";s:8:"idAction";s:2:"94";}i:7;a:2:{s:6:"idStep";s:2:"11";s:8:"idAction";s:2:"95";}i:8;a:2:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"101";}i:9;a:2:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"275";}i:10;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"109";}i:11;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"110";}i:12;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"111";}i:13;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"270";}i:14;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"113";}i:15;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"123";}i:16;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"124";}i:17;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"127";}i:18;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"128";}}');
INSERT INTO `step_action_avoid` VALUES(51, 16, 126, 'SL25', 'a:27:{i:0;a:2:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"131";}i:1;a:2:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"132";}i:2;a:2:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"133";}i:3;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"134";}i:4;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"135";}i:5;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"140";}i:6;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"144";}i:7;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"145";}i:8;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"146";}i:9;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"152";}i:10;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"166";}i:11;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"167";}i:12;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"168";}i:13;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"169";}i:14;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"261";}i:15;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"265";}i:16;a:2:{s:6:"idStep";s:2:"24";s:8:"idAction";s:3:"170";}i:17;a:2:{s:6:"idStep";s:2:"24";s:8:"idAction";s:3:"266";}i:18;a:2:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"171";}i:19;a:2:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"172";}i:20;a:2:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"267";}i:21;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"181";}i:22;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"182";}i:23;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"191";}i:24;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"205";}i:25;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"206";}i:26;a:2:{s:6:"idStep";s:2:"35";s:8:"idAction";s:3:"243";}}');
INSERT INTO `step_action_avoid` VALUES(48, 3, 45, 'SP18', 'a:17:{i:19;a:2:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"73";}i:20;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"90";}i:21;a:2:{s:6:"idStep";s:1:"8";s:8:"idAction";s:2:"91";}i:22;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"92";}i:23;a:2:{s:6:"idStep";s:1:"9";s:8:"idAction";s:2:"93";}i:24;a:2:{s:6:"idStep";s:2:"10";s:8:"idAction";s:2:"94";}i:25;a:2:{s:6:"idStep";s:2:"11";s:8:"idAction";s:2:"95";}i:26;a:2:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"101";}i:27;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"109";}i:28;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"110";}i:29;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"111";}i:30;a:2:{s:6:"idStep";s:2:"15";s:8:"idAction";s:3:"270";}i:31;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"113";}i:32;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"123";}i:33;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"124";}i:34;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"127";}i:35;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"128";}}');
INSERT INTO `step_action_avoid` VALUES(49, 3, 45, 'Tomo1', 'a:10:{i:36;a:2:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"76";}i:37;a:2:{s:6:"idStep";s:1:"7";s:8:"idAction";s:3:"274";}i:38;a:2:{s:6:"idStep";s:2:"37";s:8:"idAction";s:3:"262";}i:39;a:2:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"103";}i:40;a:2:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"108";}i:41;a:2:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"275";}i:42;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"120";}i:43;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"121";}i:44;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"122";}i:45;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}}');
INSERT INTO `step_action_avoid` VALUES(50, 3, 45, 'Tomo2', 'a:10:{i:46;a:2:{s:6:"idStep";s:1:"6";s:8:"idAction";s:2:"76";}i:47;a:2:{s:6:"idStep";s:1:"7";s:8:"idAction";s:3:"274";}i:48;a:2:{s:6:"idStep";s:2:"37";s:8:"idAction";s:3:"262";}i:49;a:2:{s:6:"idStep";s:2:"13";s:8:"idAction";s:3:"103";}i:50;a:2:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"108";}i:51;a:2:{s:6:"idStep";s:2:"14";s:8:"idAction";s:3:"275";}i:52;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"120";}i:53;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"121";}i:54;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"122";}i:55;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"125";}}');
INSERT INTO `step_action_avoid` VALUES(52, 16, 126, 'SP18', 'a:26:{i:27;a:2:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"131";}i:28;a:2:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"132";}i:29;a:2:{s:6:"idStep";s:2:"18";s:8:"idAction";s:3:"133";}i:30;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"134";}i:31;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"135";}i:32;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"140";}i:33;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"144";}i:34;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"145";}i:35;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"146";}i:36;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"166";}i:37;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"167";}i:38;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"168";}i:39;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"169";}i:40;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"261";}i:41;a:2:{s:6:"idStep";s:2:"23";s:8:"idAction";s:3:"265";}i:42;a:2:{s:6:"idStep";s:2:"24";s:8:"idAction";s:3:"170";}i:43;a:2:{s:6:"idStep";s:2:"24";s:8:"idAction";s:3:"266";}i:44;a:2:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"171";}i:45;a:2:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"172";}i:46;a:2:{s:6:"idStep";s:2:"25";s:8:"idAction";s:3:"267";}i:47;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"181";}i:48;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"182";}i:49;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"191";}i:50;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"205";}i:51;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"206";}i:52;a:2:{s:6:"idStep";s:2:"35";s:8:"idAction";s:3:"243";}}');
INSERT INTO `step_action_avoid` VALUES(53, 16, 126, 'Tomo1', 'a:56:{i:53;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"136";}i:54;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"137";}i:55;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"138";}i:56;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"139";}i:57;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"142";}i:58;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"143";}i:59;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"153";}i:60;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"255";}i:61;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"147";}i:62;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"148";}i:63;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"149";}i:64;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"151";}i:65;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"152";}i:66;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"155";}i:67;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"156";}i:68;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"157";}i:69;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"158";}i:70;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"282";}i:71;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"160";}i:72;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"161";}i:73;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"162";}i:74;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"163";}i:75;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"164";}i:76;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"165";}i:77;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"283";}i:78;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"173";}i:79;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"174";}i:80;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"175";}i:81;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:82;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:83;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"179";}i:84;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"284";}i:85;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";}i:86;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"185";}i:87;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";}i:88;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}i:89;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"189";}i:90;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"196";}i:91;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"201";}i:92;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"202";}i:93;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"207";}i:94;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"208";}i:95;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"209";}i:96;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"211";}i:97;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"212";}i:98;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"213";}i:99;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"219";}i:100;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"220";}i:101;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"285";}i:102;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"286";}i:103;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"221";}i:104;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"222";}i:105;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"223";}i:106;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"224";}i:107;a:2:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"225";}i:108;a:2:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"268";}}');
INSERT INTO `step_action_avoid` VALUES(54, 16, 126, 'Tomo2', 'a:55:{i:109;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"136";}i:110;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"137";}i:111;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"139";}i:112;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"142";}i:113;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"143";}i:114;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"153";}i:115;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"255";}i:116;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"147";}i:117;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"148";}i:118;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"149";}i:119;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"151";}i:120;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"152";}i:121;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"155";}i:122;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"156";}i:123;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"157";}i:124;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"158";}i:125;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"282";}i:126;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"160";}i:127;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"161";}i:128;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"162";}i:129;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"163";}i:130;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"164";}i:131;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"165";}i:132;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"283";}i:133;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"173";}i:134;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"174";}i:135;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"175";}i:136;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:137;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:138;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"179";}i:139;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"284";}i:140;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";}i:141;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"185";}i:142;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";}i:143;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}i:144;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"189";}i:145;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"196";}i:146;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"201";}i:147;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"202";}i:148;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"207";}i:149;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"208";}i:150;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"209";}i:151;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"211";}i:152;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"212";}i:153;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"213";}i:154;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"219";}i:155;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"220";}i:156;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"285";}i:157;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"286";}i:158;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"221";}i:159;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"222";}i:160;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"223";}i:161;a:2:{s:6:"idStep";s:2:"32";s:8:"idAction";s:3:"224";}i:162;a:2:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"225";}i:163;a:2:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"268";}}');
INSERT INTO `step_action_avoid` VALUES(55, 14, 106, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(56, 14, 106, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"16";s:8:"idAction";s:3:"123";}}');
INSERT INTO `step_action_avoid` VALUES(57, 16, 121, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(58, 16, 121, 'Non', 'a:14:{i:0;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"136";}i:1;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"137";}i:2;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"158";}i:3;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"160";}i:4;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"161";}i:5;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"162";}i:6;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"173";}i:7;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"174";}i:8;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"175";}i:9;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";}i:10;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"185";}i:11;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";}i:12;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"201";}i:13;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"202";}}');
INSERT INTO `step_action_avoid` VALUES(59, 16, 120, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(60, 16, 120, 'Non', 'a:4:{i:0;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"138";}i:1;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"255";}i:2;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"154";}i:3;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"164";}}');
INSERT INTO `step_action_avoid` VALUES(61, 16, 122, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(62, 16, 122, 'Non', 'a:2:{i:0;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"139";}i:1;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"155";}}');
INSERT INTO `step_action_avoid` VALUES(63, 13, 103, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(64, 13, 103, 'Non', 'a:3:{i:0;a:2:{s:6:"idStep";s:2:"19";s:8:"idAction";s:3:"142";}i:1;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"149";}i:2;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"165";}}');
INSERT INTO `step_action_avoid` VALUES(65, 6, 76, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(66, 6, 76, 'Non', 'a:3:{i:0;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"157";}i:1;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"179";}i:2;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"189";}}');
INSERT INTO `step_action_avoid` VALUES(67, 19, 137, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(68, 19, 137, 'Non', 'a:12:{i:0;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"158";}i:1;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"160";}i:2;a:2:{s:6:"idStep";s:2:"21";s:8:"idAction";s:3:"161";}i:3;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"162";}i:4;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"173";}i:5;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"174";}i:6;a:2:{s:6:"idStep";s:2:"26";s:8:"idAction";s:3:"175";}i:7;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";}i:8;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"185";}i:9;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";}i:10;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}i:11;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"202";}}');
INSERT INTO `step_action_avoid` VALUES(69, 16, 125, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(70, 16, 125, 'Non', 'a:5:{i:0;a:2:{s:6:"idStep";s:2:"20";s:8:"idAction";s:3:"159";}i:1;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"271";}i:2;a:2:{s:6:"idStep";s:2:"27";s:8:"idAction";s:3:"272";}i:3;a:2:{s:6:"idStep";s:2:"28";s:8:"idAction";s:3:"183";}i:4;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"187";}}');
INSERT INTO `step_action_avoid` VALUES(71, 19, 255, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(72, 19, 255, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"22";s:8:"idAction";s:3:"164";}}');
INSERT INTO `step_action_avoid` VALUES(73, 21, 160, 'Photons', 'a:2:{i:0;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";}i:1;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";}}');
INSERT INTO `step_action_avoid` VALUES(74, 21, 160, 'Mesurer', 's:0:"";');
INSERT INTO `step_action_avoid` VALUES(75, 21, 160, 'Estimer', 'a:2:{i:2;a:2:{s:6:"idStep";s:2:"29";s:8:"idAction";s:3:"184";}i:3;a:2:{s:6:"idStep";s:2:"30";s:8:"idAction";s:3:"186";}}');
INSERT INTO `step_action_avoid` VALUES(76, 3, 46, 'St-Luc', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"196";}}');
INSERT INTO `step_action_avoid` VALUES(77, 3, 46, 'St-Luc & SPO', 's:0:"";');
INSERT INTO `step_action_avoid` VALUES(78, 7, 85, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(79, 7, 85, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"200";}}');
INSERT INTO `step_action_avoid` VALUES(80, 7, 82, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(81, 7, 82, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"203";}}');
INSERT INTO `step_action_avoid` VALUES(82, 6, 77, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(83, 6, 77, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"31";s:8:"idAction";s:3:"204";}}');
INSERT INTO `step_action_avoid` VALUES(84, 32, 221, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(85, 32, 221, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"268";}}');
INSERT INTO `step_action_avoid` VALUES(86, 32, 223, 'Oui', 'N;');
INSERT INTO `step_action_avoid` VALUES(87, 32, 223, 'Non', 'a:1:{i:0;a:2:{s:6:"idStep";s:2:"33";s:8:"idAction";s:3:"225";}}');
INSERT INTO `step_action_avoid` VALUES(88, 1, 1, 'Bassin', 's:0:"";');

-- --------------------------------------------------------

--
-- Structure de la table `step_list`
--

CREATE TABLE `step_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `process` tinyint(4) NOT NULL,
  `subProcess` tinyint(4) NOT NULL,
  `number` decimal(4,2) NOT NULL,
  `profession` varchar(15) NOT NULL,
  `color` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `step_list`
--

INSERT INTO `step_list` VALUES(1, 'Demande de mise en traitement', 1, 1, 0.00, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(2, 'Nouvelles demandes de mises en traitement', 1, 1, 0.10, 'secr', '#40E0D0', 'Enabled');
INSERT INTO `step_list` VALUES(3, 'Clôture administrative', 1, 1, 0.20, 'secr', '#20B2AA', 'Enabled');
INSERT INTO `step_list` VALUES(4, 'Préparation Simulation par les médecins', 1, 1, 0.30, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(5, 'Préparation Simulation par les infirmiers', 1, 2, 0.40, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(6, 'Simulation', 1, 2, 1.00, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(7, 'Simulation', 1, 2, 1.10, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(8, 'Préparation Simulation sur Tomo', 1, 2, 1.20, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(9, 'Préparation Simulation sur Tomo', 1, 2, 1.30, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(10, 'Simulation MVCT', 1, 2, 1.40, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(11, 'Exportation sur Focal (Simul MVCT)', 1, 2, 1.50, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(12, 'Dose Plan Basis', 1, 2, 2.00, 'phys', '#FFCC33', 'Enabled');
INSERT INTO `step_list` VALUES(13, 'Contourage de volumes', 1, 2, 3.00, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(14, 'Validation des volumes', 1, 2, 3.10, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(15, 'Tomostruct', 1, 2, 3.20, 'phys', '#FFCC33', 'Enabled');
INSERT INTO `step_list` VALUES(16, 'TP', 1, 2, 4.00, 'phys', '#FFA07A', 'Enabled');
INSERT INTO `step_list` VALUES(17, 'Validation physique', 1, 2, 4.01, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(18, 'Optimisation (Tomo)', 1, 2, 4.10, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(19, 'Approbation du TP', 1, 2, 4.20, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(20, 'Documentation dosimétriste', 1, 2, 4.30, 'phys', '#FFCC33', 'Enabled');
INSERT INTO `step_list` VALUES(21, 'Plombs, plomb électron cic, ...', 1, 2, 4.40, 'phys', '#FFCC33', 'Enabled');
INSERT INTO `step_list` VALUES(22, 'Importation dans Mosaiq', 1, 2, 4.50, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(23, 'Préparation DQA', 1, 2, 4.60, 'phys', '#FFCC33', 'Enabled');
INSERT INTO `step_list` VALUES(24, 'Mesures DQA', 1, 2, 4.70, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(25, 'Analyse DQA', 1, 2, 4.80, 'phys', '#FFCC33', 'Enabled');
INSERT INTO `step_list` VALUES(26, 'Fabrication des plombs', 1, 2, 5.00, 'tech', '#FFFF00', 'Enabled');
INSERT INTO `step_list` VALUES(27, 'Simulation cicatrice', 1, 2, 5.20, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(28, 'Contre-signature', 1, 2, 6.00, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(29, 'Mesure du facteur plomb', 1, 2, 6.10, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(30, 'Introduction des UM dans Mosaiq', 1, 2, 6.20, 'phys', '#FF6600', 'Enabled');
INSERT INTO `step_list` VALUES(31, 'Carte de traitement', 1, 2, 7.00, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(32, 'Vérification physique de la carte', 1, 3, 10.00, 'phys', '#DB7093', 'Enabled');
INSERT INTO `step_list` VALUES(33, 'Correction suite à la vérification faite en 10', 1, 3, 11.00, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(34, 'Consultations hebdomadaires', 1, 3, 12.00, 'med', '#7CFC00', 'Enabled');
INSERT INTO `step_list` VALUES(35, 'Fin de traitement', 1, 3, 13.00, 'inf', '#1E90FF', 'Enabled');
INSERT INTO `step_list` VALUES(37, 'Treatment Calendar', 1, 2, 1.90, 'phys', '#FF8C00', 'Disabled');
INSERT INTO `step_list` VALUES(38, 'Vérification hebdomadaire de la carte', 1, 3, 11.50, 'inf', '#1E90FF', 'Enabled');

-- --------------------------------------------------------

--
-- Structure de la table `treat_time`
--

CREATE TABLE `treat_time` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `machine` varchar(50) NOT NULL,
  `y2011` text,
  `y2012` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `treat_time`
--

INSERT INTO `treat_time` VALUES(1, 'SL25', NULL, 'a:1:{s:4:"SL25";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"186";i:11;s:3:"169";i:12;s:5:"160.5";}}');
INSERT INTO `treat_time` VALUES(2, 'SP18', NULL, 'a:2:{s:4:"SL25";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"186";i:11;s:3:"169";i:12;s:5:"160.5";}s:4:"SP18";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"189";i:11;s:3:"169";i:12;s:5:"160.5";}}');
INSERT INTO `treat_time` VALUES(6, 'Tomo2', NULL, 'a:3:{s:4:"SL25";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"186";i:11;s:3:"169";i:12;s:5:"160.5";}s:4:"SP18";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"189";i:11;s:3:"169";i:12;s:5:"160.5";}s:5:"Tomo2";a:12:{i:1;s:3:"207";i:2;s:3:"185";i:3;s:3:"207";i:4;s:3:"197";i:5;s:3:"225";i:6;s:3:"191";i:7;s:3:"207";i:8;s:3:"219";i:9;s:3:"180";i:10;s:3:"218";i:11;s:3:"202";i:12;s:3:"202";}}');
INSERT INTO `treat_time` VALUES(5, 'Tomo1', 'a:4:{s:4:"SL25";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"186";i:11;s:3:"169";i:12;s:5:"160.5";}s:4:"SP18";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"189";i:11;s:3:"169";i:12;s:5:"160.5";}s:5:"Tomo2";a:12:{i:1;s:3:"207";i:2;s:3:"185";i:3;s:3:"207";i:4;s:3:"197";i:5;s:3:"225";i:6;s:3:"191";i:7;s:3:"207";i:8;s:3:"219";i:9;s:3:"180";i:10;s:3:"218";i:11;s:3:"202";i:12;s:3:"202";}s:5:"Tomo1";a:12:{i:1;s:3:"240";i:2;s:3:"222";i:3;s:3:"234";i:4;s:3:"216";i:5;s:3:"228";i:6;s:3:"222";i:7;s:3:"234";i:8;s:3:"240";i:9;s:3:"210";i:10;s:3:"246";i:11;s:3:"228";i:12;s:3:"216";}}', 'a:4:{s:4:"SL25";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"186";i:11;s:3:"169";i:12;s:5:"160.5";}s:4:"SP18";a:12:{i:1;s:5:"177.5";i:2;s:3:"169";i:3;s:5:"177.5";i:4;s:5:"160.5";i:5;s:5:"160.5";i:6;s:3:"169";i:7;s:5:"177.5";i:8;s:5:"177.5";i:9;s:5:"160.5";i:10;s:3:"189";i:11;s:3:"169";i:12;s:5:"160.5";}s:5:"Tomo2";a:12:{i:1;s:3:"207";i:2;s:3:"185";i:3;s:3:"207";i:4;s:3:"197";i:5;s:3:"225";i:6;s:3:"191";i:7;s:3:"207";i:8;s:3:"219";i:9;s:3:"180";i:10;s:3:"218";i:11;s:3:"202";i:12;s:3:"202";}s:5:"Tomo1";a:12:{i:1;s:3:"240";i:2;s:3:"222";i:3;s:3:"234";i:4;s:3:"216";i:5;s:3:"228";i:6;s:3:"222";i:7;s:3:"234";i:8;s:3:"240";i:9;s:3:"210";i:10;s:3:"246";i:11;s:3:"228";i:12;s:3:"216";}}');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `INITIALES` varchar(100) NOT NULL DEFAULT '',
  `NOM` varchar(100) NOT NULL DEFAULT '',
  `PRENOM` varchar(100) NOT NULL,
  `FONCTION` varchar(100) NOT NULL DEFAULT '',
  `access_chain` varchar(10) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL DEFAULT '',
  `PHONE` varchar(100) NOT NULL,
  `MAIL` varchar(100) NOT NULL,
  `mail_act` varchar(5) NOT NULL,
  `GSM` varchar(100) NOT NULL,
  `BIP` varchar(20) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `PRIV_PHONE` varchar(100) NOT NULL,
  `H` int(10) NOT NULL,
  `ddn` varchar(15) NOT NULL,
  `aff_list` varchar(10) NOT NULL,
  `actif` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` VALUES(1, 'ADM', 'Admin', 'Admin', '', '2.4.1', '21232f297a57a5a743894a0e4a801fc3', '', '', 'oui', '', '', '', '', 0, '', 'oui', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `users_admin`
--

CREATE TABLE `users_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `users_admin`
--

INSERT INTO `users_admin` VALUES(1, 'no');
INSERT INTO `users_admin` VALUES(2, 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `users_fonction`
--

CREATE TABLE `users_fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fonction` varchar(5) NOT NULL,
  `descFct` varchar(20) NOT NULL,
  `colorGroup` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `users_fonction`
--

INSERT INTO `users_fonction` VALUES(1, 'med', 'Corps médical', '#00FF00');
INSERT INTO `users_fonction` VALUES(2, 'phys', 'Physique', '#FF0000');
INSERT INTO `users_fonction` VALUES(3, 'inf', 'Infirmier', '#0000FF');
INSERT INTO `users_fonction` VALUES(4, 'tech', 'Technique', '#FFFF00');
INSERT INTO `users_fonction` VALUES(5, 'secr', 'Secrétariat', '#40E0D0');

-- --------------------------------------------------------

--
-- Structure de la table `users_level`
--

CREATE TABLE `users_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(10) NOT NULL,
  `intitule` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `users_level`
--

INSERT INTO `users_level` VALUES(1, 1, 'Super');
INSERT INTO `users_level` VALUES(2, 2, 'Normal');
INSERT INTO `users_level` VALUES(3, 3, 'Restricted');
INSERT INTO `users_level` VALUES(13, 4, 'Stagiaire');
