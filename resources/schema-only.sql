-- MySQL dump 10.15  Distrib 10.0.19-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: selenous
-- ------------------------------------------------------
-- Server version	5.5.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `a_account`
--

DROP TABLE IF EXISTS `a_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `note_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_action_trigger`
--

DROP TABLE IF EXISTS `a_action_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_action_trigger` (
  `action_trigger_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `function_name` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trigger_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`action_trigger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_address`
--

DROP TABLE IF EXISTS `a_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `demo` int(11) unsigned NOT NULL DEFAULT '0',
  `active` int(11) unsigned NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_company`
--

DROP TABLE IF EXISTS `a_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address_id` varchar(255) NOT NULL DEFAULT '',
  `round_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `formation` varchar(255) NOT NULL DEFAULT 'Undecided',
  `round` varchar(255) NOT NULL DEFAULT 'Concept/Idea',
  `ein` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pre_money_value` int(11) NOT NULL DEFAULT '0',
  `post_money_value` int(11) NOT NULL DEFAULT '0',
  `common_issued` int(11) NOT NULL DEFAULT '0',
  `common_outstanding` int(11) NOT NULL DEFAULT '0',
  `common_authorized` int(11) NOT NULL DEFAULT '0',
  `preferred_authorized` int(11) NOT NULL DEFAULT '0',
  `preferred_issued` int(11) NOT NULL DEFAULT '0',
  `options_on_common` int(11) NOT NULL DEFAULT '0',
  `warrants_on_common` int(11) NOT NULL DEFAULT '0',
  `common_treasury` int(11) NOT NULL DEFAULT '0',
  `common_par` float(11,5) NOT NULL DEFAULT '0.00000',
  `preferred_par` float(11,5) NOT NULL DEFAULT '0.00000',
  `company_value` double(10,2) NOT NULL DEFAULT '0.00',
  `option_pool` int(11) NOT NULL DEFAULT '0',
  `common_strike` double(10,2) NOT NULL DEFAULT '0.00',
  `hybrid_preferred` int(11) NOT NULL DEFAULT '0',
  `participating_outstanding` int(11) NOT NULL DEFAULT '0',
  `nonparticipating_outstanding` int(11) NOT NULL DEFAULT '0',
  `hybrid_outstanding` int(11) NOT NULL DEFAULT '0',
  `convertable_note_outstanding` int(11) NOT NULL DEFAULT '0',
  `bond_outstanding` int(11) NOT NULL DEFAULT '0',
  `demo` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `reg_a_status` int(11) NOT NULL DEFAULT '0',
  `live` int(11) NOT NULL DEFAULT '1',
  `employees_sought_amt` int(11) NOT NULL DEFAULT '0',
  `employee_amt` int(11) NOT NULL DEFAULT '0',
  `year_incorporated` int(11) NOT NULL DEFAULT '0',
  `industry` varchar(255) NOT NULL DEFAULT '',
  `sec_contact` varchar(255) NOT NULL DEFAULT '',
  `sec_contact_address_id` int(11) DEFAULT NULL,
  `tier` int(11) NOT NULL DEFAULT '1',
  `securities_offered` text NOT NULL,
  `total_offered` int(11) NOT NULL DEFAULT '0',
  `total_sold` int(11) NOT NULL DEFAULT '0',
  `total_remaining` int(11) NOT NULL DEFAULT '0',
  `form_d` text NOT NULL,
  `minimum_investment` int(11) NOT NULL DEFAULT '0',
  `cik` varchar(255) NOT NULL DEFAULT '',
  `revenue_range` varchar(255) NOT NULL DEFAULT '',
  `first_sale` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `investor_count` int(11) NOT NULL DEFAULT '0',
  `proceeds_used` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_contact`
--

DROP TABLE IF EXISTS `a_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_equity_round`
--

DROP TABLE IF EXISTS `a_equity_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_equity_round` (
  `equity_round_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `close_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `amt` double DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `action_trigger_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `trigger_const` int(11) NOT NULL DEFAULT '0',
  `round_const` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`equity_round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_job`
--

DROP TABLE IF EXISTS `a_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `open` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `skills` text NOT NULL,
  `contact` varchar(255) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '1',
  `cities_select_id` int(11) NOT NULL DEFAULT '0',
  `requirement_select_id` int(11) NOT NULL DEFAULT '0',
  `compensation_select_id` int(11) NOT NULL DEFAULT '0',
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_url` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `nonaccount_listing` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_journal`
--

DROP TABLE IF EXISTS `a_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_journal` (
  `journal_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  PRIMARY KEY (`journal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_lookup`
--

DROP TABLE IF EXISTS `a_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_lookup` (
  `lookup_id` int(11) NOT NULL AUTO_INCREMENT,
  `const_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`lookup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_message`
--

DROP TABLE IF EXISTS `a_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_note`
--

DROP TABLE IF EXISTS `a_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `bond_price` double NOT NULL DEFAULT '0',
  `bond_duration` double NOT NULL DEFAULT '0',
  `bond_rate` double NOT NULL DEFAULT '0',
  `bond_zero` int(11) NOT NULL DEFAULT '0',
  `converts_to_debt` int(11) NOT NULL DEFAULT '0',
  `converts_to_preferred` int(11) NOT NULL DEFAULT '0',
  `converts_to_common` int(11) NOT NULL DEFAULT '0',
  `conversion_ratio` int(11) NOT NULL DEFAULT '0',
  `is_preferred` int(11) NOT NULL DEFAULT '0',
  `is_note` int(11) NOT NULL DEFAULT '0',
  `is_hybrid` int(11) NOT NULL DEFAULT '0',
  `is_convertable` int(11) NOT NULL DEFAULT '0',
  `converts_to_options` int(11) NOT NULL DEFAULT '0',
  `converts_to_warrents` int(11) NOT NULL DEFAULT '0',
  `conversion_round_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `conversion_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vests` int(11) NOT NULL DEFAULT '0',
  `is_vested` int(11) NOT NULL DEFAULT '0',
  `vesting_schedule_id` int(11) NOT NULL DEFAULT '0',
  `is_junior` int(11) NOT NULL DEFAULT '0',
  `is_senior` int(11) NOT NULL DEFAULT '0',
  `is_terminated` int(11) NOT NULL DEFAULT '0',
  `preferred_shares_cnt` int(11) NOT NULL DEFAULT '0',
  `cost` double NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_dividend_note` int(11) NOT NULL DEFAULT '0',
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `conversion_trigger_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_onsale`
--

DROP TABLE IF EXISTS `a_onsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_onsale` (
  `onsale_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `equity_type` int(11) NOT NULL DEFAULT '0',
  `pps` double DEFAULT NULL,
  `onsale` int(11) NOT NULL DEFAULT '1',
  `qnt` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `pre_miniipo_ad` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mini_ipo` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text,
  `available_for_sale` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nonaccount_listing` int(11) NOT NULL DEFAULT '0',
  `pre_money_value` double NOT NULL DEFAULT '0',
  `colleagues_only` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`onsale_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_order_book`
--

DROP TABLE IF EXISTS `a_order_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_order_book` (
  `order_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '-1',
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `company_name` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `onsale_id` int(11) NOT NULL DEFAULT '0',
  `order_type` int(11) NOT NULL DEFAULT '0',
  `no_account` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `job_id` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`order_book_id`),
  UNIQUE KEY `company_sale_user_id` (`company_id`,`user_id`,`onsale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_round`
--

DROP TABLE IF EXISTS `a_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_round` (
  `round_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`round_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_sale`
--

DROP TABLE IF EXISTS `a_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `quantity_available` int(11) DEFAULT NULL,
  `pps` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_transaction`
--

DROP TABLE IF EXISTS `a_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `journal_note` varchar(255) NOT NULL DEFAULT '',
  `close_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_transaction_entry`
--

DROP TABLE IF EXISTS `a_transaction_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_transaction_entry` (
  `transaction_entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `debit` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL DEFAULT '0',
  `amt` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_ucat_rel`
--

DROP TABLE IF EXISTS `a_ucat_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_ucat_rel` (
  `ucat_rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `summary` text NOT NULL,
  `usertype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ucat_rel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_user`
--

DROP TABLE IF EXISTS `a_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `middlename` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `work_phone` varchar(255) NOT NULL DEFAULT '',
  `cell_phone` varchar(255) NOT NULL DEFAULT '',
  `home_phone` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `demo` int(11) unsigned NOT NULL DEFAULT '1',
  `active` int(11) unsigned NOT NULL DEFAULT '1',
  `default_company_id` int(11) NOT NULL DEFAULT '-1',
  `default_investor_type` varchar(255) NOT NULL DEFAULT '',
  `default_usertype_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_user_equity`
--

DROP TABLE IF EXISTS `a_user_equity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_user_equity` (
  `user_equity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `equity_type` varchar(255) NOT NULL DEFAULT '',
  `note_id` int(11) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `transaction_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `grant_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contribution` varchar(255) NOT NULL DEFAULT '',
  `summary` text NOT NULL,
  `qnt` int(11) NOT NULL DEFAULT '0',
  `fair_value_at_grant` double NOT NULL DEFAULT '0',
  `vesting_period` int(11) NOT NULL DEFAULT '0',
  `vest_per_year` int(11) NOT NULL DEFAULT '0',
  `exchange_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_equity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-27 23:12:25
