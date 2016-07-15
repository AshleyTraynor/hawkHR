-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 162.216.113.44:3306
-- Generation Time: Jul 14, 2016 at 07:43 PM
-- Server version: 5.5.50-cll-lve
-- PHP Version: 5.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hawkHR`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE IF NOT EXISTS `Account` (
  `AccountID` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Account ID ',
  `Username` varchar(30) NOT NULL COMMENT 'Username should be main character''s name',
  `Password` varchar(128) NOT NULL COMMENT 'Hash',
  `isActive` bit(1) NOT NULL COMMENT 'Determines if this account is still usable ',
  PRIMARY KEY (`AccountID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Account_Permissions`
--

CREATE TABLE IF NOT EXISTS `Account_Permissions` (
  `AccountID` int(5) NOT NULL,
  `isAdmin` bit(1) NOT NULL COMMENT 'Tick if user is an administrator',
  `isHC` bit(1) NOT NULL COMMENT 'Tick if user is high command',
  `isGC` bit(1) NOT NULL COMMENT 'Tick if user is general command',
  `isMember` bit(1) NOT NULL COMMENT 'Tick if user is user is a member',
  `isApplicant` bit(1) NOT NULL COMMENT 'Tick if user is an applicant',
  `isOther` bit(1) NOT NULL COMMENT 'Tick if user is non-corp or otherwise',
  `AccountTypeID` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Defines user type specifically',
  PRIMARY KEY (`AccountID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Permissions for user accounts';

-- --------------------------------------------------------

--
-- Table structure for table `Account_Type`
--

CREATE TABLE IF NOT EXISTS `Account_Type` (
  `AccountTypeID` tinyint(4) NOT NULL COMMENT 'ID field for type of account',
  `AccountTypeName` varchar(30) NOT NULL COMMENT 'Name of this account type',
  PRIMARY KEY (`AccountTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manages available role names';

--
-- Dumping data for table `Account_Type`
--

INSERT INTO `Account_Type` (`AccountTypeID`, `AccountTypeName`) VALUES
(1, 'Applicant'),
(2, 'Member'),
(3, 'Other'),
(4, 'General Command'),
(5, 'High Command'),
(6, 'Admin'),
(0, 'Unallocated');

-- --------------------------------------------------------

--
-- Table structure for table `API`
--

CREATE TABLE IF NOT EXISTS `API` (
  `APIID` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID for each entry',
  `KeyID` varchar(7) NOT NULL COMMENT 'EVE API Key ID',
  `vCode` varchar(64) NOT NULL COMMENT 'EVE API verification code',
  `isHC` bit(1) NOT NULL COMMENT 'Checks if the user is high command',
  `isGC` bit(1) NOT NULL COMMENT 'Checks if the user is general command',
  `isMember` bit(1) NOT NULL COMMENT 'Checks if the user is a line member',
  `isApplicant` bit(1) NOT NULL COMMENT 'Checks if the member is not yet a member',
  `isOther` bit(1) NOT NULL COMMENT 'Checks if the user is an "other" non-corp user',
  `EnteredAt` datetime NOT NULL COMMENT 'Timestamp for API entry',
  PRIMARY KEY (`APIID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Main table to hold API keys' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Character`
--

CREATE TABLE IF NOT EXISTS `Character` (
  `UniqueCharID` int(6) NOT NULL AUTO_INCREMENT COMMENT 'A unique ID to save headaches with generating rows',
  `CharacterID` varchar(20) NOT NULL COMMENT 'EVE API CharacterID',
  `APIID` int(5) NOT NULL COMMENT 'Foreign key of API table',
  `AccountID` int(5) NOT NULL COMMENT 'Foreign key of Account table',
  `CharName` varchar(30) NOT NULL COMMENT 'Character name',
  `CorpName` varchar(30) NOT NULL COMMENT 'Corp that character is in',
  `AllianceName` varchar(30) NOT NULL COMMENT 'Alliance that character is in',
  `isMain` bit(1) NOT NULL COMMENT 'Is this character the main for that player',
  `Visible` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`UniqueCharID`),
  KEY `CharacterID` (`CharacterID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='A table to store all CharacterID''s' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
