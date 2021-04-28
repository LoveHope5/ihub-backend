-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 28, 2021 at 11:11 AM
-- Server version: 5.7.26
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mudiame_octorber`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_store_item`
--

CREATE TABLE `admin_store_item` (
  `id` int(11) NOT NULL,
  `ItemCode` varchar(30) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `UPrice` decimal(14,2) DEFAULT NULL,
  `InitialQuantity` decimal(11,2) DEFAULT NULL,
  `Quantity` decimal(11,2) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Alert` varchar(5) DEFAULT NULL,
  `CriticalLevel` int(11) DEFAULT NULL,
  `SMS` varchar(5) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `StoreLocation` varchar(50) DEFAULT NULL,
  `SourceofPurchase` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_store_movement`
--

CREATE TABLE `admin_store_movement` (
  `id` int(11) NOT NULL,
  `ItemId` varchar(30) DEFAULT NULL,
  `ItemDescription` varchar(200) DEFAULT NULL,
  `Action` varchar(20) DEFAULT NULL,
  `Quantity` decimal(11,2) DEFAULT NULL,
  `IssuedBy` varchar(50) DEFAULT NULL,
  `ReceivedBy` varchar(50) DEFAULT NULL,
  `Purpose` varchar(100) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `ApprovedBy` varchar(30) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `SourceofPurchase` varchar(50) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Serial` int(11) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_items`
--

CREATE TABLE `asset_items` (
  `id` int(11) NOT NULL,
  `ItemID` varchar(30) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Make` varchar(30) DEFAULT NULL,
  `Accessories` varchar(50) DEFAULT NULL,
  `SerialNumber` varchar(50) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Classification` varchar(30) DEFAULT NULL,
  `NextMaintenance` date DEFAULT NULL,
  `LastMaintained` date DEFAULT NULL,
  `CurrentLocation` varchar(30) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `User` varchar(30) DEFAULT NULL,
  `DatePurchased` date DEFAULT NULL,
  `Supplier` varchar(30) DEFAULT NULL,
  `WarrantyExpiration` date DEFAULT NULL,
  `UnitPrice` decimal(9,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `PurchaseCost` decimal(9,2) DEFAULT NULL,
  `QuantityLeft` int(11) DEFAULT NULL,
  `TotalDepreciation` decimal(9,2) DEFAULT NULL,
  `CurrentDprValue` decimal(9,2) DEFAULT NULL,
  `SalvageValue` decimal(9,2) DEFAULT NULL,
  `Picture` varchar(50) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `LastModified` date DEFAULT NULL,
  `ModifiedBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `UserName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `RoleName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `att_log`
--

CREATE TABLE `att_log` (
  `sno` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `DayTime` datetime DEFAULT NULL,
  `Staff` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bdd_jobfiles`
--

CREATE TABLE `bdd_jobfiles` (
  `id` int(11) NOT NULL,
  `JobNo` varchar(50) DEFAULT NULL,
  `JobType` varchar(30) DEFAULT NULL,
  `QuotationNo` varchar(50) DEFAULT NULL,
  `WaybillNo` varchar(30) DEFAULT NULL,
  `PONo` varchar(30) DEFAULT NULL,
  `Client` varchar(30) DEFAULT NULL,
  `Contractor` varchar(30) DEFAULT NULL,
  `SubContractor` varchar(50) DEFAULT NULL,
  `Project` varchar(50) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `Qty` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Transmital` varchar(30) NOT NULL,
  `DateSent` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `LastModified` date DEFAULT NULL,
  `ModifiedBy` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bdd_quotationsdtl`
--

CREATE TABLE `bdd_quotationsdtl` (
  `id` int(11) NOT NULL,
  `QuotationNo` varchar(50) DEFAULT NULL,
  `ItemCode` varchar(30) DEFAULT NULL,
  `Description` text,
  `Standard` varchar(50) DEFAULT NULL,
  `Uprice` decimal(9,2) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bdd_quotationshdr`
--

CREATE TABLE `bdd_quotationshdr` (
  `id` int(11) NOT NULL,
  `QuotationNo` varchar(50) DEFAULT NULL,
  `CustomerId` varchar(50) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `RequestNo` varchar(10) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `Currency` varchar(30) DEFAULT NULL,
  `SubTotal` decimal(14,2) DEFAULT NULL,
  `Total` decimal(14,2) DEFAULT NULL,
  `Discount` decimal(14,2) DEFAULT NULL,
  `PaymentTerms` text,
  `PreparedBy` varchar(30) DEFAULT NULL,
  `ApprovedBy` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateLastModified` date DEFAULT NULL,
  `ModifiedBy` varchar(30) DEFAULT NULL,
  `YourRef` varchar(50) DEFAULT NULL,
  `Attention` varchar(50) DEFAULT NULL,
  `Rev` varchar(10) DEFAULT NULL,
  `VAT` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bdd_requests`
--

CREATE TABLE `bdd_requests` (
  `id` int(11) NOT NULL,
  `DateReceived` date DEFAULT NULL,
  `CompanyName` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Mail` text,
  `ContactPerson` varchar(30) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `LastModified` date DEFAULT NULL,
  `ModifiedBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cal_equipments`
--

CREATE TABLE `cal_equipments` (
  `id` int(11) NOT NULL,
  `EquipmentCode` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `SerialNo` varchar(50) DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `EquipmentRange` varchar(100) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `DateLastCalibrated` date DEFAULT NULL,
  `Validity` varchar(20) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Remark` varchar(30) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `CreatedBy` date DEFAULT NULL,
  `DateLastModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `channel` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `message` text,
  `datesent` datetime DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `api_token` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactcategories`
--

CREATE TABLE `contactcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `State` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TypeOfContact` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MobilePhone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NextofSkin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextOfSkinPhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BankAcct` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Note` text COLLATE utf8_unicode_ci NOT NULL,
  `Facebook` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `Birthday` date NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_category`
--

CREATE TABLE `contact_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Category_id` int(10) UNSIGNED NOT NULL,
  `Contact_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_customers`
--

CREATE TABLE `crm_customers` (
  `id` int(11) NOT NULL,
  `CustomerCode` varchar(30) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactPhone` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `DateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_projects`
--

CREATE TABLE `crm_projects` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Start` date DEFAULT NULL,
  `End` date DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_services`
--

CREATE TABLE `crm_services` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `UPrice` decimal(14,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ModifiedBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Code` varchar(30) DEFAULT NULL,
  `Logo` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Level` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docs_units`
--

CREATE TABLE `docs_units` (
  `id` int(11) DEFAULT NULL,
  `hr_units_id` int(11) NOT NULL,
  `doc_documents_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_categories`
--

CREATE TABLE `doc_categories` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_documents`
--

CREATE TABLE `doc_documents` (
  `id` int(11) NOT NULL,
  `DocNo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ISO-Ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateRevised` date DEFAULT NULL,
  `departments_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tag` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `isActive` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastUpdatedBy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_files`
--

CREATE TABLE `doc_files` (
  `id` int(11) NOT NULL,
  `DocNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Revision` int(11) DEFAULT NULL,
  `Path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comments` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddedDate` date DEFAULT NULL,
  `AddedBy` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_subcategories`
--

CREATE TABLE `doc_subcategories` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_types`
--

CREATE TABLE `doc_types` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fin_invoices`
--

CREATE TABLE `fin_invoices` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `InvoiceNo` varchar(20) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `QuotationNo` varchar(30) NOT NULL,
  `JobNo` varchar(30) NOT NULL,
  `LPOref` varchar(30) NOT NULL,
  `Tax` varchar(20) NOT NULL,
  `SubTotal` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `CreatedBy` varchar(30) NOT NULL,
  `DocType` varchar(30) DEFAULT NULL,
  `Doc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight_tickets`
--

CREATE TABLE `flight_tickets` (
  `id` int(11) NOT NULL,
  `ticketNo` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_contract`
--

CREATE TABLE `hr_contract` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `JoinedDate` date DEFAULT NULL,
  `ProbationEnd` date DEFAULT NULL,
  `ConfirmDate` date DEFAULT NULL,
  `File` varchar(250) DEFAULT NULL,
  `Note` varchar(250) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `EmploymentStatus` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_credentials`
--

CREATE TABLE `hr_credentials` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Highlight` varchar(100) DEFAULT NULL,
  `File` varchar(250) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `LastUpdated` date DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `Comments` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Hide` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_cv_highlight`
--

CREATE TABLE `hr_cv_highlight` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `ProfessionalTitle` varchar(100) DEFAULT NULL,
  `CareerObjective` text,
  `HighLight` text,
  `Referees` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_department`
--

CREATE TABLE `hr_department` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_departments`
--

CREATE TABLE `hr_departments` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee`
--

CREATE TABLE `hr_employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EmployeeId` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `Title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `OtherNames` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriversLicenseNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` date NOT NULL,
  `MaritalStatus` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MarriageDate` date DEFAULT NULL,
  `Gender` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Nationality` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `State` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LGA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Management` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateHired` date DEFAULT NULL,
  `dateTerminated` date DEFAULT NULL,
  `employmentType` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee_old`
--

CREATE TABLE `hr_employee_old` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EmployeeId` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `Title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `OtherNames` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DriversLicenseNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` date NOT NULL,
  `MaritalStatus` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MarriageDate` date DEFAULT NULL,
  `Gender` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Nationality` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `State` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LGA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DepartmentName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  `Group` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Management` tinyint(4) DEFAULT NULL,
  `Location` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_history_documents`
--

CREATE TABLE `hr_history_documents` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `startDate` varchar(30) DEFAULT NULL,
  `endDate` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `hr_comments` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `secure` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_immigration`
--

CREATE TABLE `hr_immigration` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `DocumentType` varchar(30) DEFAULT NULL,
  `DocumentNo` varchar(50) DEFAULT NULL,
  `File` varchar(250) NOT NULL,
  `IssueDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `EligibleDate` date DEFAULT NULL,
  `IssueBy` varchar(50) DEFAULT NULL,
  `EligibleRenewDate` date DEFAULT NULL,
  `Comments` text,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_jobdescription`
--

CREATE TABLE `hr_jobdescription` (
  `id` int(11) NOT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `EmployeeStatus` varchar(30) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Level` varchar(30) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `Unit` varchar(30) DEFAULT NULL,
  `Responsabilities` text,
  `EffectiveFrom` date DEFAULT NULL,
  `ConcludedOn` date DEFAULT NULL,
  `ReportTo` varchar(30) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `File` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_medical`
--

CREATE TABLE `hr_medical` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `Hospital` varchar(100) DEFAULT NULL,
  `Note` varchar(100) DEFAULT NULL,
  `File` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_promotion`
--

CREATE TABLE `hr_promotion` (
  `id` int(11) NOT NULL,
  `From` varchar(100) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `EffectDate` date DEFAULT NULL,
  `Description` int(11) DEFAULT NULL,
  `File` int(11) DEFAULT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_unit`
--

CREATE TABLE `hr_unit` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_units`
--

CREATE TABLE `hr_units` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departments_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobfiles`
--

CREATE TABLE `jobfiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FileName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Path` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Job_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `JobNo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `JobType` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quotation_id` int(11) DEFAULT NULL,
  `WaybillNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PONo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Customer_id` int(10) UNSIGNED DEFAULT NULL,
  `Client` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubContractor` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Project` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mail` text COLLATE utf8_unicode_ci,
  `TransmitalNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateDelivered` date DEFAULT NULL,
  `Progress` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Stage` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mech_bendtestresults`
--

CREATE TABLE `mech_bendtestresults` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `BendTest` varchar(50) DEFAULT NULL,
  `SpecimenNo` varchar(100) DEFAULT NULL,
  `RoomTemp` varchar(30) DEFAULT '0.00',
  `Dimension` varchar(30) DEFAULT NULL,
  `Mandrel` varchar(20) DEFAULT NULL,
  `JigSize` varchar(30) DEFAULT NULL,
  `Angle` varchar(30) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_hardnessdtl`
--

CREATE TABLE `mech_hardnessdtl` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `Point` int(11) NOT NULL,
  `Value` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_jobs`
--

CREATE TABLE `mech_jobs` (
  `id` int(11) NOT NULL,
  `JobNo` varchar(50) NOT NULL,
  `WaybillNo` varchar(30) NOT NULL,
  `PWPS` varchar(30) DEFAULT NULL,
  `PWPSNo` varchar(20) DEFAULT NULL,
  `SpecimentID` varchar(20) DEFAULT NULL,
  `SpecimentIDValue` varchar(20) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `PipeType` varchar(30) DEFAULT NULL,
  `PipeA` varchar(100) DEFAULT NULL,
  `PipeB` varchar(100) DEFAULT NULL,
  `HeatNoA` varchar(100) DEFAULT NULL,
  `HeatNoB` varchar(100) DEFAULT NULL,
  `MaterialGradeA` varchar(30) DEFAULT NULL,
  `MaterialGradeB` varchar(30) DEFAULT NULL,
  `DiameterA` varchar(20) DEFAULT NULL,
  `DiameterB` varchar(20) DEFAULT NULL,
  `WallThicknessA` varchar(50) DEFAULT NULL,
  `WallThicknessB` varchar(50) DEFAULT NULL,
  `ContractorLabel` varchar(50) DEFAULT NULL,
  `WeldingPosition` varchar(50) DEFAULT NULL,
  `WeldingProcess` varchar(50) DEFAULT NULL,
  `Client` varchar(200) DEFAULT NULL,
  `Contractor` varchar(200) DEFAULT NULL,
  `SubContractor` varchar(100) DEFAULT NULL,
  `Project` varchar(100) DEFAULT NULL,
  `ClientSpecification` varchar(100) DEFAULT NULL,
  `ReferenceCode` varchar(50) DEFAULT NULL,
  `TestPieceNo` varchar(100) DEFAULT NULL,
  `CouponDescription` varchar(100) DEFAULT NULL,
  `WeldersID` varchar(130) DEFAULT NULL,
  `ManufacturerA` varchar(100) DEFAULT NULL,
  `ManufacturerB` varchar(100) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateLastModified` datetime DEFAULT NULL,
  `ModifiedBy` varchar(30) DEFAULT NULL,
  `CurrentStage` varchar(50) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_jobsplan`
--

CREATE TABLE `mech_jobsplan` (
  `id` int(11) NOT NULL,
  `JobNo` varchar(50) DEFAULT NULL,
  `JobPlanCode` varchar(50) DEFAULT NULL,
  `SpecimenID` varchar(250) DEFAULT NULL,
  `SpecimenIDValue` varchar(250) DEFAULT NULL,
  `PWPS` varchar(250) DEFAULT NULL,
  `PWPSNo` varchar(250) DEFAULT NULL,
  `Description` varchar(130) DEFAULT NULL,
  `Issued` int(11) DEFAULT NULL,
  `Progress` decimal(8,2) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateLastModified` datetime DEFAULT NULL,
  `PipeType` varchar(30) DEFAULT NULL,
  `PipeA` varchar(100) DEFAULT NULL,
  `PipeB` varchar(100) DEFAULT NULL,
  `HeatType` varchar(50) DEFAULT NULL,
  `HeatNoA` varchar(100) DEFAULT NULL,
  `HeatNoB` varchar(100) DEFAULT NULL,
  `MaterialGradeType` varchar(50) DEFAULT NULL,
  `MaterialGradeA` varchar(50) DEFAULT NULL,
  `MaterialGradeB` varchar(50) DEFAULT NULL,
  `DiameterA` varchar(50) DEFAULT NULL,
  `DiameterB` varchar(50) DEFAULT NULL,
  `WallThicknessA` varchar(50) DEFAULT NULL,
  `WallThicknessB` varchar(50) DEFAULT NULL,
  `Client` varchar(200) DEFAULT NULL,
  `Contractor` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `SubContractor` varchar(100) DEFAULT NULL,
  `Project` varchar(300) DEFAULT NULL,
  `ClientSpecification` varchar(200) DEFAULT NULL,
  `ReferenceCode` varchar(100) DEFAULT NULL,
  `TestPieceNo` varchar(250) DEFAULT NULL,
  `CouponDescription` varchar(100) DEFAULT NULL,
  `WeldersID` varchar(130) DEFAULT NULL,
  `ManufacturerA` varchar(100) DEFAULT NULL,
  `ManufacturerB` varchar(100) DEFAULT NULL,
  `WeldingProcess` varchar(250) DEFAULT NULL,
  `WeldingPosition` varchar(250) DEFAULT NULL,
  `WeldingPositionValue` varchar(250) DEFAULT NULL,
  `WeldingProcessValue` varchar(250) DEFAULT NULL,
  `Field1` varchar(250) DEFAULT NULL,
  `Field1Value` varchar(250) DEFAULT NULL,
  `FormNo` int(11) DEFAULT NULL,
  `TypeOfJoint` varchar(250) DEFAULT NULL,
  `Template` varchar(30) DEFAULT NULL,
  `ContractorLabel` varchar(50) DEFAULT NULL,
  `IssuedBy` varchar(30) DEFAULT NULL,
  `TestPieceID` varchar(250) DEFAULT NULL,
  `TestPieceIDValue` varchar(250) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Field2` varchar(200) DEFAULT NULL,
  `Field2Value` varchar(200) DEFAULT NULL,
  `Field3` varchar(200) DEFAULT NULL,
  `Field3Value` varchar(200) DEFAULT NULL,
  `Field4` varchar(200) DEFAULT NULL,
  `Field4Value` varchar(200) DEFAULT NULL,
  `CTODStandard` varchar(50) DEFAULT NULL,
  `CTODClipGuage` varchar(50) DEFAULT NULL,
  `CTODPreCrackTemp` varchar(50) DEFAULT NULL,
  `CTODMachineUsed` varchar(50) DEFAULT NULL,
  `CTODSpecimenID` varchar(50) DEFAULT NULL,
  `CTODTestTemp` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_jobsplandtl`
--

CREATE TABLE `mech_jobsplandtl` (
  `id` int(11) NOT NULL,
  `JobPlanCode` varchar(50) NOT NULL,
  `TestId` varchar(50) DEFAULT NULL,
  `Test` varchar(50) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Serial` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_tests`
--

CREATE TABLE `mech_tests` (
  `id` int(11) NOT NULL,
  `Code` varchar(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_bend`
--

CREATE TABLE `mech_test_bend` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `TestDate` date NOT NULL,
  `TestPieceNo` varchar(50) NOT NULL,
  `TestMethod` varchar(200) NOT NULL,
  `Equipment` varchar(30) DEFAULT NULL,
  `ClientRef` varchar(100) NOT NULL,
  `Remark` varchar(100) NOT NULL,
  `Acceptance` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateLastModified` date DEFAULT NULL,
  `ModifyBy` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_charpydtl`
--

CREATE TABLE `mech_test_charpydtl` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Temp` varchar(20) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `EA` varchar(20) DEFAULT NULL,
  `EB` varchar(20) DEFAULT NULL,
  `EC` varchar(20) DEFAULT NULL,
  `EAvrg` varchar(30) DEFAULT NULL,
  `ExpA` varchar(220) DEFAULT NULL,
  `ExpB` varchar(20) DEFAULT NULL,
  `ExpC` varchar(20) DEFAULT NULL,
  `ExpAvrg` varchar(20) DEFAULT NULL,
  `SA` varchar(20) DEFAULT NULL,
  `SB` varchar(20) DEFAULT NULL,
  `SC` varchar(20) DEFAULT NULL,
  `SAvrg` varchar(20) DEFAULT NULL,
  `ED` varchar(30) DEFAULT NULL,
  `EE` varchar(30) DEFAULT NULL,
  `ExpD` varchar(30) DEFAULT NULL,
  `ExpE` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_hardnessdtl`
--

CREATE TABLE `mech_test_hardnessdtl` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `Point` int(11) NOT NULL,
  `Value` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_hardnessgraph`
--

CREATE TABLE `mech_test_hardnessgraph` (
  `Id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `GraphPath` varchar(200) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Standard` varchar(100) DEFAULT NULL,
  `TestLoad` varchar(20) DEFAULT NULL,
  `Location` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_header`
--

CREATE TABLE `mech_test_header` (
  `id` int(11) NOT NULL,
  `JobPlanCode` varchar(50) DEFAULT NULL,
  `JobNo` varchar(50) DEFAULT NULL,
  `Test` varchar(50) DEFAULT NULL,
  `WelderID` varchar(150) DEFAULT NULL,
  `WeldingPosition` varchar(150) DEFAULT NULL,
  `ResultId` int(11) DEFAULT NULL,
  `TestDate` date DEFAULT NULL,
  `TestPieceNo` varchar(100) DEFAULT NULL,
  `TestMethod` varchar(100) DEFAULT NULL,
  `EquipmentNo` varchar(50) DEFAULT NULL,
  `ClientRef` varchar(200) DEFAULT NULL,
  `Remark` varchar(300) DEFAULT NULL,
  `Acceptance` text,
  `Status` varchar(20) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateLastModified` date DEFAULT NULL,
  `ModifyBy` varchar(100) DEFAULT NULL,
  `Issued` decimal(8,1) DEFAULT '1.0',
  `Field1` varchar(50) DEFAULT NULL,
  `Field2` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_macro`
--

CREATE TABLE `mech_test_macro` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `GraphPath` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Magnification` varchar(50) NOT NULL,
  `Etchant` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_nickbreakdtl`
--

CREATE TABLE `mech_test_nickbreakdtl` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) DEFAULT NULL,
  `SpecimentID` varchar(50) DEFAULT NULL,
  `Width` varchar(50) DEFAULT NULL,
  `Thickness` varchar(50) DEFAULT NULL,
  `Lenght` varchar(50) DEFAULT NULL,
  `Observation` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_tensile`
--

CREATE TABLE `mech_test_tensile` (
  `id` int(11) NOT NULL,
  `JobNo` varchar(50) NOT NULL,
  `JobPlanCode` varchar(50) NOT NULL,
  `ResultId` varchar(20) NOT NULL,
  `TestDate` date NOT NULL,
  `TestPieceNo` varchar(20) NOT NULL,
  `TestMethod` varchar(100) NOT NULL,
  `ClientRef` varchar(200) NOT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Acceptance` varchar(250) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `DateLastModified` datetime DEFAULT NULL,
  `ModifyBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_tensiledtl`
--

CREATE TABLE `mech_test_tensiledtl` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `Orientation` varchar(250) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Width` varchar(30) DEFAULT NULL,
  `Thickness` varchar(30) DEFAULT NULL,
  `Diameter` varchar(30) DEFAULT NULL,
  `Area` varchar(30) DEFAULT NULL,
  `BreakingLoad` varchar(30) DEFAULT NULL,
  `TensileStrenght` varchar(30) DEFAULT NULL,
  `YieldStrenght` varchar(30) DEFAULT NULL,
  `GaugeLenght` varchar(30) DEFAULT NULL,
  `Elongation` varchar(30) DEFAULT NULL,
  `FractureLocation` varchar(250) DEFAULT NULL,
  `ReductionInArea` varchar(50) DEFAULT NULL,
  `Field1Value` varchar(20) DEFAULT NULL,
  `Field2Value` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech_test_tensilegraph`
--

CREATE TABLE `mech_test_tensilegraph` (
  `id` int(11) NOT NULL,
  `ResultId` int(11) NOT NULL,
  `GraphPath` varchar(250) NOT NULL,
  `TensileType` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `TestPieceNo` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `application_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_employee_items`
--

CREATE TABLE `pay_employee_items` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `payItems_id` int(11) DEFAULT NULL,
  `ItemName` varchar(30) NOT NULL,
  `Value` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pay_items`
--

CREATE TABLE `pay_items` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `PercentageOf` varchar(30) DEFAULT NULL,
  `Percentage` decimal(10,2) DEFAULT NULL,
  `Amount` decimal(14,2) DEFAULT NULL,
  `ApplyToAll` tinyint(4) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `PermissionName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `RoleName` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_jobscheduledtl`
--

CREATE TABLE `plan_jobscheduledtl` (
  `id` int(11) NOT NULL,
  `JobNo` varchar(50) DEFAULT NULL,
  `Activity` text,
  `Material` varchar(500) DEFAULT NULL,
  `Responsible` varchar(50) DEFAULT NULL,
  `RefDoc` text NOT NULL,
  `Note` text,
  `StartDate` date DEFAULT NULL,
  `StartedDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `EndedDate` date DEFAULT NULL,
  `Status` varchar(11) DEFAULT NULL,
  `LastModified` date NOT NULL,
  `ModifiedBy` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plan_jobschedulehdr`
--

CREATE TABLE `plan_jobschedulehdr` (
  `id` int(11) NOT NULL,
  `JobType` varchar(30) DEFAULT NULL,
  `JobNo` varchar(50) DEFAULT NULL,
  `WaybillNo` varchar(30) DEFAULT NULL,
  `Contractor` varchar(50) DEFAULT NULL,
  `Client` varchar(50) DEFAULT NULL,
  `ContactPerson` varchar(50) DEFAULT NULL,
  `Project` varchar(100) DEFAULT NULL,
  `ReferenceDoc` text,
  `RequestMethod` varchar(50) DEFAULT NULL,
  `MaterialReceived` varchar(250) DEFAULT NULL,
  `Quantity` varchar(50) DEFAULT NULL,
  `JobLocation` varchar(50) DEFAULT NULL,
  `DateMaterialReceived` varchar(50) DEFAULT NULL,
  `DateJobReceived` varchar(50) DEFAULT NULL,
  `DateIssued` varchar(50) DEFAULT NULL,
  `StartDate` varchar(50) DEFAULT NULL,
  `EndDate` varchar(50) DEFAULT NULL,
  `CreatedBy` date DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `LastModified` date DEFAULT NULL,
  `Revision` varchar(10) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `IssuedBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Bankname` varchar(50) DEFAULT NULL,
  `AcctNo` varchar(50) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_buget_items`
--

CREATE TABLE `pro_buget_items` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Start` date DEFAULT NULL,
  `Ends` date DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `Budget` double DEFAULT NULL,
  `buget_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_employee_request`
--

CREATE TABLE `pro_employee_request` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_group`
--

CREATE TABLE `pro_group` (
  `id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` text,
  `Currency` varchar(30) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_products_services`
--

CREATE TABLE `pro_products_services` (
  `id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentPrice` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requestattachments`
--

CREATE TABLE `pro_requestattachments` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `Path` varchar(100) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requestcomments`
--

CREATE TABLE `pro_requestcomments` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Comments` varchar(250) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `TDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requestdtl`
--

CREATE TABLE `pro_requestdtl` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `ItemDescription` varchar(100) DEFAULT NULL,
  `vendor_id` varchar(10) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ProposedPrice` decimal(14,2) DEFAULT NULL,
  `MarketRange` varchar(30) DEFAULT NULL,
  `FinalPrice` decimal(14,2) DEFAULT NULL,
  `TotalCost` decimal(14,2) DEFAULT NULL,
  `Difference` decimal(14,2) DEFAULT NULL,
  `ProcuredPrice` decimal(14,2) DEFAULT NULL,
  `Cancel` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requesthdr`
--

CREATE TABLE `pro_requesthdr` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `RequestNo` varchar(30) NOT NULL,
  `RequestType` varchar(50) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` text,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `Attention` int(11) DEFAULT NULL,
  `Currency` text,
  `Stage1` varchar(50) DEFAULT NULL,
  `Stage2` datetime DEFAULT NULL,
  `Stage3` datetime DEFAULT NULL,
  `Stage4` datetime DEFAULT NULL,
  `Stage5` datetime DEFAULT NULL,
  `Stage6` datetime DEFAULT NULL,
  `Stage7` datetime DEFAULT NULL,
  `Stage8` datetime DEFAULT NULL,
  `Stage9` datetime DEFAULT NULL,
  `Stage10` datetime DEFAULT NULL,
  `Stage11` datetime DEFAULT NULL,
  `Stage12` datetime DEFAULT NULL,
  `Stage13` datetime DEFAULT NULL,
  `Stage14` datetime DEFAULT NULL,
  `Priority` varchar(30) DEFAULT NULL,
  `DeadLine` date DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Delay` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `QualityRequired` varchar(30) DEFAULT NULL,
  `CashRequired` varchar(30) DEFAULT NULL,
  `StoreRequest` varchar(30) DEFAULT NULL,
  `InitialCost` decimal(14,2) DEFAULT '0.00',
  `ReviewedCost` decimal(14,2) DEFAULT '0.00',
  `ProcuredCost` decimal(14,2) DEFAULT '0.00',
  `Difference` decimal(14,2) DEFAULT '0.00',
  `TDate` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Purchased` varchar(30) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requests`
--

CREATE TABLE `pro_requests` (
  `id` bigint(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `RequestNo` varchar(30) NOT NULL,
  `RequestType` varchar(50) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` text,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `Attention` int(11) DEFAULT NULL,
  `Currency` text,
  `Stage1` text,
  `Stage2` text,
  `Stage3` text,
  `Stage4` text,
  `Stage5` text,
  `Stage6` text,
  `Stage7` text,
  `Stage8` text,
  `Stage9` text,
  `Stage10` text,
  `Stage11` text,
  `Stage12` text,
  `Stage13` text,
  `Priority` varchar(30) DEFAULT NULL,
  `DeadLine` date DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Delay` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `QualityRequired` varchar(30) DEFAULT NULL,
  `CashRequired` varchar(30) DEFAULT NULL,
  `StoreRequest` varchar(30) DEFAULT NULL,
  `InitialCost` decimal(14,2) DEFAULT NULL,
  `ReviewedCost` decimal(14,2) DEFAULT NULL,
  `ProcuredCost` decimal(14,2) DEFAULT NULL,
  `Difference` decimal(14,2) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Purchased` varchar(30) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requests_attachments`
--

CREATE TABLE `pro_requests_attachments` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `path` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requests_departments`
--

CREATE TABLE `pro_requests_departments` (
  `id` bigint(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requests_items`
--

CREATE TABLE `pro_requests_items` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `ItemDescription` text,
  `budget_id` int(11) DEFAULT '1',
  `vendor_id` varchar(10) DEFAULT '1',
  `Quantity` int(11) DEFAULT NULL,
  `Price1` decimal(14,2) DEFAULT NULL,
  `MarketRange` varchar(30) DEFAULT NULL,
  `Price2` decimal(14,2) DEFAULT NULL,
  `Price3` decimal(14,2) DEFAULT NULL,
  `Difference` decimal(14,2) DEFAULT NULL,
  `FinalPrice` decimal(14,2) DEFAULT NULL,
  `Cancel` varchar(30) DEFAULT NULL,
  `Attachment` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_requests_units`
--

CREATE TABLE `pro_requests_units` (
  `id` bigint(14) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_rolerequest`
--

CREATE TABLE `pro_rolerequest` (
  `id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_vendor`
--

CREATE TABLE `pro_vendor` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `BankDetails` varchar(250) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Mobile` varchar(22) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactPhone` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_vendors`
--

CREATE TABLE `pro_vendors` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(252) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankDetails` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationfiles`
--

CREATE TABLE `quotationfiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `FileName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Path` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Comments` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotations_id` int(10) UNSIGNED NOT NULL,
  `Rev` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationitems`
--

CREATE TABLE `quotationitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Service_id` int(10) UNSIGNED NOT NULL,
  `ItemDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `Standard` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPrice` decimal(14,2) NOT NULL,
  `Quantity` decimal(8,2) NOT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `Quotation_id` int(10) UNSIGNED NOT NULL,
  `Range` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bold` int(11) DEFAULT NULL,
  `Total` decimal(14,2) DEFAULT NULL,
  `quote_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `QuotationNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Customer_id` int(10) UNSIGNED DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `Currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubTotal` decimal(14,2) DEFAULT NULL,
  `Total` decimal(14,2) DEFAULT NULL,
  `DiscountRate` decimal(8,2) DEFAULT NULL,
  `Discount` decimal(14,2) DEFAULT '0.00',
  `PaymentTerms` text COLLATE utf8_unicode_ci,
  `PreparedBy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReviewedBy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApprovedBy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rev` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VAT` int(11) DEFAULT '0',
  `VATRate` decimal(8,2) DEFAULT NULL,
  `YourRef` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Attention` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ViewTotal` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ViewPrice` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Job_id` int(10) UNSIGNED DEFAULT NULL,
  `Stage` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IncreasedRatio` int(11) DEFAULT NULL,
  `PONo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POFile` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rev0` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rev1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rev2` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_attachments`
--

CREATE TABLE `sales_attachments` (
  `id` int(11) NOT NULL,
  `FileName` varchar(50) DEFAULT NULL,
  `FileCode` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `DateUploaded` date DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_customers`
--

CREATE TABLE `sales_customers` (
  `id` int(11) NOT NULL,
  `CustomerCode` varchar(30) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactPhone` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_services`
--

CREATE TABLE `sales_services` (
  `id` int(11) NOT NULL,
  `ServiceName` varchar(45) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `UPrice` decimal(14,4) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serialmanager`
--

CREATE TABLE `serialmanager` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `buy` bigint(20) DEFAULT NULL,
  `sell` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_notifications`
--

CREATE TABLE `sys_notifications` (
  `id` int(11) NOT NULL,
  `Sender` varchar(50) DEFAULT NULL,
  `Receiver` varchar(50) DEFAULT NULL,
  `DateSent` date DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Message` varchar(200) DEFAULT NULL,
  `Link` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sys_routes`
--

CREATE TABLE `sys_routes` (
  `id` int(11) NOT NULL,
  `link` varchar(50) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `varsNames` varchar(50) DEFAULT NULL,
  `vars` varchar(50) DEFAULT NULL,
  `app` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sys_serial`
--

CREATE TABLE `sys_serial` (
  `id` bigint(11) NOT NULL,
  `Quotation` int(11) DEFAULT NULL,
  `JobNo` int(11) DEFAULT NULL,
  `Invoice` int(11) DEFAULT NULL,
  `EmployeeNo` int(11) DEFAULT NULL,
  `RequestNo` bigint(11) DEFAULT NULL,
  `MotCle` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_temp` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Avatar` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_online` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_users_old`
--

CREATE TABLE `sys_users_old` (
  `id` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Salt` varchar(200) DEFAULT NULL,
  `Role` varchar(30) NOT NULL,
  `Groupe` varchar(30) DEFAULT NULL,
  `SendEmail` int(4) DEFAULT NULL,
  `DateRegistered` datetime DEFAULT NULL,
  `LastLoggedIn` datetime DEFAULT NULL,
  `Activation` varchar(100) DEFAULT NULL,
  `LoggedIn` int(4) DEFAULT NULL,
  `Block` int(4) DEFAULT NULL,
  `SyncID` bigint(20) DEFAULT NULL,
  `Name` varchar(200) NOT NULL,
  `Position` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sys_utilities`
--

CREATE TABLE `sys_utilities` (
  `sno` int(11) NOT NULL,
  `expenses` int(11) DEFAULT NULL,
  `invoices` int(11) DEFAULT NULL,
  `transactioncode` int(11) DEFAULT NULL,
  `JobPlanCode` int(11) DEFAULT NULL,
  `ResultId` int(11) DEFAULT NULL,
  `Job` varchar(11) DEFAULT NULL,
  `Quotations` int(11) DEFAULT NULL,
  `FormNo` int(11) DEFAULT NULL,
  `Customer` int(11) DEFAULT NULL,
  `QHSECalibrationReview` date DEFAULT NULL,
  `CalibrationMailSent` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Order` int(11) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `application_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tw_objectives`
--

CREATE TABLE `tw_objectives` (
  `id` int(11) NOT NULL,
  `objective` varchar(150) DEFAULT NULL,
  `kpi` varchar(150) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `resources` varchar(50) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `attachment` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tw_tasks`
--

CREATE TABLE `tw_tasks` (
  `id` int(11) NOT NULL,
  `task` text,
  `unit` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `priority` varchar(30) DEFAULT NULL,
  `resources` varchar(30) DEFAULT NULL,
  `resources_available` int(11) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `scheduled` datetime DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `objective_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `request` tinyint(4) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password_temp` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_store_item`
--
ALTER TABLE `admin_store_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_store_movement`
--
ALTER TABLE `admin_store_movement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_items`
--
ALTER TABLE `asset_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `att_log`
--
ALTER TABLE `att_log`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bdd_jobfiles`
--
ALTER TABLE `bdd_jobfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bdd_quotationsdtl`
--
ALTER TABLE `bdd_quotationsdtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bdd_quotationshdr`
--
ALTER TABLE `bdd_quotationshdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bdd_requests`
--
ALTER TABLE `bdd_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cal_equipments`
--
ALTER TABLE `cal_equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactcategories`
--
ALTER TABLE `contactcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_customer_id_foreign` (`user_id`);

--
-- Indexes for table `contact_category`
--
ALTER TABLE `contact_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_category_category_id_foreign` (`Category_id`),
  ADD KEY `contact_category_contact_id_foreign` (`Contact_id`);

--
-- Indexes for table `crm_customers`
--
ALTER TABLE `crm_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_projects`
--
ALTER TABLE `crm_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_services`
--
ALTER TABLE `crm_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_categories`
--
ALTER TABLE `doc_categories`
  ADD PRIMARY KEY (`id`,`Name`);

--
-- Indexes for table `doc_documents`
--
ALTER TABLE `doc_documents`
  ADD PRIMARY KEY (`id`,`DocNo`);

--
-- Indexes for table `doc_files`
--
ALTER TABLE `doc_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_subcategories`
--
ALTER TABLE `doc_subcategories`
  ADD PRIMARY KEY (`id`,`Name`);

--
-- Indexes for table `doc_types`
--
ALTER TABLE `doc_types`
  ADD PRIMARY KEY (`id`,`Name`);

--
-- Indexes for table `fin_invoices`
--
ALTER TABLE `fin_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_tickets`
--
ALTER TABLE `flight_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_contract`
--
ALTER TABLE `hr_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_credentials`
--
ALTER TABLE `hr_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_cv_highlight`
--
ALTER TABLE `hr_cv_highlight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_department`
--
ALTER TABLE `hr_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_departments`
--
ALTER TABLE `hr_departments`
  ADD PRIMARY KEY (`id`,`Name`);

--
-- Indexes for table `hr_employee`
--
ALTER TABLE `hr_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_employee_employeeid_unique` (`EmployeeId`);

--
-- Indexes for table `hr_employee_old`
--
ALTER TABLE `hr_employee_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hr_employee.old_employeeid_unique` (`EmployeeId`);

--
-- Indexes for table `hr_history_documents`
--
ALTER TABLE `hr_history_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_immigration`
--
ALTER TABLE `hr_immigration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_jobdescription`
--
ALTER TABLE `hr_jobdescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_medical`
--
ALTER TABLE `hr_medical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_promotion`
--
ALTER TABLE `hr_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_unit`
--
ALTER TABLE `hr_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_units`
--
ALTER TABLE `hr_units`
  ADD PRIMARY KEY (`id`,`Name`);

--
-- Indexes for table `jobfiles`
--
ALTER TABLE `jobfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobfiles_job_id_foreign` (`Job_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_customer_id_foreign` (`Customer_id`);

--
-- Indexes for table `mech_bendtestresults`
--
ALTER TABLE `mech_bendtestresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_hardnessdtl`
--
ALTER TABLE `mech_hardnessdtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_jobs`
--
ALTER TABLE `mech_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_jobsplan`
--
ALTER TABLE `mech_jobsplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_jobsplandtl`
--
ALTER TABLE `mech_jobsplandtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_tests`
--
ALTER TABLE `mech_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_bend`
--
ALTER TABLE `mech_test_bend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_charpydtl`
--
ALTER TABLE `mech_test_charpydtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_hardnessdtl`
--
ALTER TABLE `mech_test_hardnessdtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_hardnessgraph`
--
ALTER TABLE `mech_test_hardnessgraph`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mech_test_header`
--
ALTER TABLE `mech_test_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_macro`
--
ALTER TABLE `mech_test_macro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_nickbreakdtl`
--
ALTER TABLE `mech_test_nickbreakdtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_tensile`
--
ALTER TABLE `mech_test_tensile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_tensiledtl`
--
ALTER TABLE `mech_test_tensiledtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech_test_tensilegraph`
--
ALTER TABLE `mech_test_tensilegraph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_application_id_foreign` (`application_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_employee_items`
--
ALTER TABLE `pay_employee_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_items`
--
ALTER TABLE `pay_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `plan_jobscheduledtl`
--
ALTER TABLE `plan_jobscheduledtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_jobschedulehdr`
--
ALTER TABLE `plan_jobschedulehdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_buget_items`
--
ALTER TABLE `pro_buget_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_employee_request`
--
ALTER TABLE `pro_employee_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_group`
--
ALTER TABLE `pro_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_products_services`
--
ALTER TABLE `pro_products_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requestattachments`
--
ALTER TABLE `pro_requestattachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requestcomments`
--
ALTER TABLE `pro_requestcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requestdtl`
--
ALTER TABLE `pro_requestdtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requesthdr`
--
ALTER TABLE `pro_requesthdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requests`
--
ALTER TABLE `pro_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requests_attachments`
--
ALTER TABLE `pro_requests_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requests_departments`
--
ALTER TABLE `pro_requests_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requests_items`
--
ALTER TABLE `pro_requests_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_requests_units`
--
ALTER TABLE `pro_requests_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_rolerequest`
--
ALTER TABLE `pro_rolerequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_vendor`
--
ALTER TABLE `pro_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_vendors`
--
ALTER TABLE `pro_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotationfiles`
--
ALTER TABLE `quotationfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotationfiles_quotation_id_foreign` (`quotations_id`);

--
-- Indexes for table `quotationitems`
--
ALTER TABLE `quotationitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotationitems_service_id_foreign` (`Service_id`),
  ADD KEY `quotationitems_quotation_id_foreign` (`Quotation_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_customer_id_foreign` (`Customer_id`),
  ADD KEY `quotations_job_id_foreign` (`Job_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`Name`);

--
-- Indexes for table `sales_attachments`
--
ALTER TABLE `sales_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_customers`
--
ALTER TABLE `sales_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_services`
--
ALTER TABLE `sales_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serialmanager`
--
ALTER TABLE `serialmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_notifications`
--
ALTER TABLE `sys_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_routes`
--
ALTER TABLE `sys_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_serial`
--
ALTER TABLE `sys_serial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_users_username_unique` (`username`),
  ADD UNIQUE KEY `sys_users_email_unique` (`email`);

--
-- Indexes for table `sys_users_old`
--
ALTER TABLE `sys_users_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_utilities`
--
ALTER TABLE `sys_utilities`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_module_id_foreign` (`module_id`),
  ADD KEY `tasks_application_id_foreign` (`application_id`);

--
-- Indexes for table `tw_objectives`
--
ALTER TABLE `tw_objectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tw_tasks`
--
ALTER TABLE `tw_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_users_username_unique` (`username`),
  ADD UNIQUE KEY `sys_users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_store_item`
--
ALTER TABLE `admin_store_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_store_movement`
--
ALTER TABLE `admin_store_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_items`
--
ALTER TABLE `asset_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_log`
--
ALTER TABLE `att_log`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bdd_jobfiles`
--
ALTER TABLE `bdd_jobfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bdd_quotationsdtl`
--
ALTER TABLE `bdd_quotationsdtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bdd_quotationshdr`
--
ALTER TABLE `bdd_quotationshdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bdd_requests`
--
ALTER TABLE `bdd_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cal_equipments`
--
ALTER TABLE `cal_equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactcategories`
--
ALTER TABLE `contactcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_category`
--
ALTER TABLE `contact_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_customers`
--
ALTER TABLE `crm_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_projects`
--
ALTER TABLE `crm_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_services`
--
ALTER TABLE `crm_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_categories`
--
ALTER TABLE `doc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_documents`
--
ALTER TABLE `doc_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_files`
--
ALTER TABLE `doc_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_subcategories`
--
ALTER TABLE `doc_subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_types`
--
ALTER TABLE `doc_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fin_invoices`
--
ALTER TABLE `fin_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_tickets`
--
ALTER TABLE `flight_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_contract`
--
ALTER TABLE `hr_contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_credentials`
--
ALTER TABLE `hr_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_cv_highlight`
--
ALTER TABLE `hr_cv_highlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_department`
--
ALTER TABLE `hr_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_departments`
--
ALTER TABLE `hr_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee`
--
ALTER TABLE `hr_employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee_old`
--
ALTER TABLE `hr_employee_old`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_history_documents`
--
ALTER TABLE `hr_history_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_immigration`
--
ALTER TABLE `hr_immigration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_jobdescription`
--
ALTER TABLE `hr_jobdescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_medical`
--
ALTER TABLE `hr_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_promotion`
--
ALTER TABLE `hr_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_unit`
--
ALTER TABLE `hr_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_units`
--
ALTER TABLE `hr_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobfiles`
--
ALTER TABLE `jobfiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_bendtestresults`
--
ALTER TABLE `mech_bendtestresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_hardnessdtl`
--
ALTER TABLE `mech_hardnessdtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_jobs`
--
ALTER TABLE `mech_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_jobsplan`
--
ALTER TABLE `mech_jobsplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_jobsplandtl`
--
ALTER TABLE `mech_jobsplandtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_tests`
--
ALTER TABLE `mech_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_bend`
--
ALTER TABLE `mech_test_bend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_charpydtl`
--
ALTER TABLE `mech_test_charpydtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_hardnessdtl`
--
ALTER TABLE `mech_test_hardnessdtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_hardnessgraph`
--
ALTER TABLE `mech_test_hardnessgraph`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_header`
--
ALTER TABLE `mech_test_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_macro`
--
ALTER TABLE `mech_test_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_nickbreakdtl`
--
ALTER TABLE `mech_test_nickbreakdtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_tensile`
--
ALTER TABLE `mech_test_tensile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_tensiledtl`
--
ALTER TABLE `mech_test_tensiledtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mech_test_tensilegraph`
--
ALTER TABLE `mech_test_tensilegraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_employee_items`
--
ALTER TABLE `pay_employee_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_items`
--
ALTER TABLE `pay_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_jobscheduledtl`
--
ALTER TABLE `plan_jobscheduledtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_jobschedulehdr`
--
ALTER TABLE `plan_jobschedulehdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_buget_items`
--
ALTER TABLE `pro_buget_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_employee_request`
--
ALTER TABLE `pro_employee_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_group`
--
ALTER TABLE `pro_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_products_services`
--
ALTER TABLE `pro_products_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requestattachments`
--
ALTER TABLE `pro_requestattachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requestcomments`
--
ALTER TABLE `pro_requestcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requestdtl`
--
ALTER TABLE `pro_requestdtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requesthdr`
--
ALTER TABLE `pro_requesthdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requests`
--
ALTER TABLE `pro_requests`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requests_attachments`
--
ALTER TABLE `pro_requests_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requests_departments`
--
ALTER TABLE `pro_requests_departments`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requests_items`
--
ALTER TABLE `pro_requests_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_requests_units`
--
ALTER TABLE `pro_requests_units`
  MODIFY `id` bigint(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_rolerequest`
--
ALTER TABLE `pro_rolerequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_vendor`
--
ALTER TABLE `pro_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_vendors`
--
ALTER TABLE `pro_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotationfiles`
--
ALTER TABLE `quotationfiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotationitems`
--
ALTER TABLE `quotationitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_attachments`
--
ALTER TABLE `sales_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_customers`
--
ALTER TABLE `sales_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_services`
--
ALTER TABLE `sales_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serialmanager`
--
ALTER TABLE `serialmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_notifications`
--
ALTER TABLE `sys_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_routes`
--
ALTER TABLE `sys_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_serial`
--
ALTER TABLE `sys_serial`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_users_old`
--
ALTER TABLE `sys_users_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_utilities`
--
ALTER TABLE `sys_utilities`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tw_tasks`
--
ALTER TABLE `tw_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `sys_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_customer_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `contact_category`
--
ALTER TABLE `contact_category`
  ADD CONSTRAINT `contact_category_category_id_foreign` FOREIGN KEY (`Category_id`) REFERENCES `contactcategories` (`id`),
  ADD CONSTRAINT `contact_category_contact_id_foreign` FOREIGN KEY (`Contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `jobfiles`
--
ALTER TABLE `jobfiles`
  ADD CONSTRAINT `jobfiles_job_id_foreign` FOREIGN KEY (`Job_id`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_customer_id_foreign` FOREIGN KEY (`Customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `quotationfiles`
--
ALTER TABLE `quotationfiles`
  ADD CONSTRAINT `quotationfiles_quotation_id_foreign` FOREIGN KEY (`quotations_id`) REFERENCES `quotations` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `tasks_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `applications` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
