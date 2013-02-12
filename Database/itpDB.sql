-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 31 Janvier 2013 à 17:22
-- Version du serveur: 5.1.44
-- Version de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `itpDB`
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

-- --------------------------------------------------------

--
-- Structure de la table `docs_cat`
--

CREATE TABLE `docs_cat` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `I125`
--

CREATE TABLE `I125` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `archive` varchar(10) NOT NULL,
  `ref` text NOT NULL,
  `debnom` text NOT NULL,
  `nombre` text NOT NULL,
  `datecal` text NOT NULL,
  `type` text NOT NULL,
  `DATA1` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

-- --------------------------------------------------------

--
-- Structure de la table `I125_facteur_calibration`
--

CREATE TABLE `I125_facteur_calibration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `facteur_calibration` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `I125_facteur_homog`
--

CREATE TABLE `I125_facteur_homog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `homog` varchar(10) NOT NULL,
  `facteur_homog` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `I125_facteur_resine`
--

CREATE TABLE `I125_facteur_resine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `facteur_resine` varchar(50) NOT NULL,
  `resine` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `I125_forme`
--

CREATE TABLE `I125_forme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `forme` varchar(10) NOT NULL,
  `facteur_forme` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `I125_liste_plaques`
--

CREATE TABLE `I125_liste_plaques` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `facteur_mesure` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Structure de la table `I125_plaques`
--

CREATE TABLE `I125_plaques` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `pat_id` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `archive` varchar(5) NOT NULL,
  `data_check` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=213 ;

-- --------------------------------------------------------

--
-- Structure de la table `invivo_archive`
--

CREATE TABLE `invivo_archive` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` varchar(10) NOT NULL,
  `patient_nom` varchar(100) NOT NULL,
  `patient_prenom` varchar(100) NOT NULL,
  `machine` varchar(10) NOT NULL,
  `date_stamp` int(100) NOT NULL,
  `DATA1` text NOT NULL,
  `DATA2` text NOT NULL,
  `DATA3` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3154 ;

-- --------------------------------------------------------

--
-- Structure de la table `invivo_fchamp`
--

CREATE TABLE `invivo_fchamp` (
  `machine` varchar(1000) NOT NULL,
  `fchampax5` varchar(1000) NOT NULL,
  `fchampax4` varchar(1000) NOT NULL,
  `fchampax3` varchar(1000) NOT NULL,
  `fchampax2` varchar(1000) NOT NULL,
  `fchampax1` varchar(1000) NOT NULL,
  `fchampa` varchar(1000) NOT NULL,
  `limite` varchar(100) NOT NULL,
  `limite_facteur` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `invivo_fdiode`
--

CREATE TABLE `invivo_fdiode` (
  `machine` varchar(10) NOT NULL,
  `fdiodeopenX06` varchar(1000) NOT NULL,
  `fdiodewedgeX06` varchar(1000) NOT NULL,
  `fdiodeopenX18` varchar(1000) NOT NULL,
  `fdiodewedgeX18` varchar(1000) NOT NULL,
  `fdiodeX06anglepetit` varchar(1000) NOT NULL,
  `fdiodeX06anglegrand` varchar(1000) NOT NULL,
  `fdiodeX18anglepetit` varchar(1000) NOT NULL,
  `fdiodeX18anglegrand` varchar(1000) NOT NULL,
  `diode_ID_X06` varchar(100) NOT NULL,
  `diode_ID_X18` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `invivo_fdsp`
--

CREATE TABLE `invivo_fdsp` (
  `machine` varchar(10) NOT NULL,
  `fdspX06ax5` varchar(1000) NOT NULL,
  `fdspX06ax4` varchar(1000) NOT NULL,
  `fdspX06ax3` varchar(1000) NOT NULL,
  `fdspX06ax2` varchar(1000) NOT NULL,
  `fdspX06ax1` varchar(1000) NOT NULL,
  `fdspX06a` varchar(1000) NOT NULL,
  `fdspX18ax5` varchar(1000) NOT NULL,
  `fdspX18ax4` varchar(1000) NOT NULL,
  `fdspX18ax3` varchar(1000) NOT NULL,
  `fdspX18ax2` varchar(1000) NOT NULL,
  `fdspX18ax1` varchar(1000) NOT NULL,
  `fdspX18a` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `invivo_main`
--

CREATE TABLE `invivo_main` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` varchar(10) NOT NULL,
  `patient_nom` varchar(100) NOT NULL,
  `req` int(10) NOT NULL,
  `ptv` int(10) NOT NULL,
  `patient_prenom` varchar(100) NOT NULL,
  `machine` varchar(10) NOT NULL,
  `date_stamp` int(100) NOT NULL,
  `DATA1` text NOT NULL,
  `DATA2` text NOT NULL,
  `DATA3` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3157 ;

-- --------------------------------------------------------

--
-- Structure de la table `Ir192`
--

CREATE TABLE `Ir192` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `archive` varchar(10) NOT NULL,
  `ref` text NOT NULL,
  `debnom` text NOT NULL,
  `longf1` text NOT NULL,
  `longf2` text NOT NULL,
  `longf3` text NOT NULL,
  `longf4` text NOT NULL,
  `longf5` text NOT NULL,
  `nb_fil` varchar(10) NOT NULL,
  `data_f1` text NOT NULL,
  `data_f2` text NOT NULL,
  `data_f3` text NOT NULL,
  `data_f4` text NOT NULL,
  `data_f5` text NOT NULL,
  `datecal` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=179 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1672 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=745 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2174 ;

-- --------------------------------------------------------

--
-- Structure de la table `process`
--

CREATE TABLE `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `rosis`
--

CREATE TABLE `rosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_report` int(11) NOT NULL,
  `Nom_Rapporteur` text NOT NULL,
  `Nom_pers_concernee` text NOT NULL,
  `Nom_patient_concerne` text NOT NULL,
  `Modality` text NOT NULL,
  `Date_discovery` text NOT NULL,
  `Time_discovery` text NOT NULL,
  `staff_disc_onc` text NOT NULL,
  `staff_disc_phys` text NOT NULL,
  `staff_disc_rad_ther_treat` text NOT NULL,
  `staff_disc_rad_ther_sim` text NOT NULL,
  `staff_disc_dos` text NOT NULL,
  `qa_disc_chart_check` text NOT NULL,
  `weekly_chart_check` text NOT NULL,
  `qa_disc_in_vivo` text NOT NULL,
  `qa_disc_port_film` text NOT NULL,
  `qa_disc_clin_rev` text NOT NULL,
  `qa_disc_QA_eq` text NOT NULL,
  `qa_disc_at_1st_tx` text NOT NULL,
  `qa_disc_later_tx` text NOT NULL,
  `qa_disc_ext_audit` text NOT NULL,
  `dqa_tomo` text NOT NULL,
  `qa_disc_other` text NOT NULL,
  `qa_disc_other_descr` text NOT NULL,
  `Process` text NOT NULL,
  `aff_several` text NOT NULL,
  `aff_number` text NOT NULL,
  `aff_one` text NOT NULL,
  `aff_nonpatient` text NOT NULL,
  `aff_none` text NOT NULL,
  `Treatment_given` text NOT NULL,
  `Erreneous_fractions` text NOT NULL,
  `Number_fractions` text NOT NULL,
  `Number_fractions_tobedone` text NOT NULL,
  `severity` text NOT NULL,
  `severity_comment` text NOT NULL,
  `Potential` text NOT NULL,
  `Potential_comment` text NOT NULL,
  `short_descr` text NOT NULL,
  `hardware` text NOT NULL,
  `description` text NOT NULL,
  `cause` text NOT NULL,
  `suggestion` text NOT NULL,
  `Envoyer` text NOT NULL,
  `traiter` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 PACK_KEYS=0 AUTO_INCREMENT=555 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1157 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1154 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1154 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1154 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1152 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=930 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=865 ;

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

-- --------------------------------------------------------

--
-- Structure de la table `tomo`
--

CREATE TABLE `tomo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `included` text NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `idStluc` text NOT NULL,
  `req` int(5) NOT NULL,
  `volcible` int(11) NOT NULL,
  `ptv` int(11) NOT NULL,
  `plan` int(11) NOT NULL,
  `pidno` text NOT NULL,
  `date_intro` text NOT NULL,
  `dateFract` text NOT NULL,
  `h_start` text NOT NULL,
  `h_stop` text NOT NULL,
  `fraction` text NOT NULL,
  `pitch` text NOT NULL,
  `yaw` text NOT NULL,
  `x_dev` text NOT NULL,
  `y_dev` text NOT NULL,
  `z_dev` text NOT NULL,
  `roll_dev` text NOT NULL,
  `x_auto` text NOT NULL,
  `y_auto` text NOT NULL,
  `z_auto` text NOT NULL,
  `roll_auto` text NOT NULL,
  `x_table` text NOT NULL,
  `y_table` text NOT NULL,
  `z_table` text NOT NULL,
  `roll_table` text NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=391 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Structure de la table `users_admin`
--

CREATE TABLE `users_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Structure de la table `users_level`
--

CREATE TABLE `users_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(10) NOT NULL,
  `intitule` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;
