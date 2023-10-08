-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 10:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mansoury_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` double DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adjustment_details`
--

CREATE TABLE `adjustment_details` (
  `id` int(11) NOT NULL,
  `quantity` double DEFAULT NULL,
  `type` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_08_03_092203_create_categories_table', 1),
(6, '2021_03_08_020247_create_adjustment_details_table', 1),
(7, '2021_03_08_020247_create_adjustments_table', 1),
(8, '2021_03_08_020247_create_brands_table', 1),
(9, '2021_03_08_020247_create_clients_table', 1),
(10, '2021_03_08_020247_create_currencies_table', 1),
(11, '2021_03_08_020247_create_expense_categories_table', 1),
(12, '2021_03_08_020247_create_expenses_table', 1),
(13, '2021_03_08_020247_create_payment_purchase_returns_table', 1),
(14, '2021_03_08_020247_create_payment_purchases_table', 1),
(15, '2021_03_08_020247_create_payment_sale_returns_table', 1),
(16, '2021_03_08_020247_create_payment_sales_table', 1),
(17, '2021_03_08_020247_create_payment_with_credit_card_table', 1),
(18, '2021_03_08_020247_create_product_variants_table', 1),
(19, '2021_03_08_020247_create_product_warehouse_table', 1),
(20, '2021_03_08_020247_create_products_table', 1),
(21, '2021_03_08_020247_create_providers_table', 1),
(22, '2021_03_08_020247_create_purchase_details_table', 1),
(23, '2021_03_08_020247_create_purchase_return_details_table', 1),
(24, '2021_03_08_020247_create_purchase_returns_table', 1),
(25, '2021_03_08_020247_create_purchases_table', 1),
(26, '2021_03_08_020247_create_quotation_details_table', 1),
(27, '2021_03_08_020247_create_quotations_table', 1),
(28, '2021_03_08_020247_create_sale_details_table', 1),
(29, '2021_03_08_020247_create_sale_return_details_table', 1),
(30, '2021_03_08_020247_create_sale_returns_table', 1),
(31, '2021_03_08_020247_create_sales_table', 1),
(32, '2021_03_08_020247_create_serveurs_table', 1),
(33, '2021_03_08_020247_create_settings_table', 1),
(34, '2021_03_08_020247_create_transfer_details_table', 1),
(35, '2021_03_08_020247_create_transfers_table', 1),
(36, '2021_03_08_020247_create_units_table', 1),
(37, '2021_03_08_020247_create_warehouses_table', 1),
(38, '2021_03_08_020251_add_foreign_keys_to_adjustment_details_table', 1),
(39, '2021_03_08_020251_add_foreign_keys_to_adjustments_table', 1),
(40, '2021_03_08_020251_add_foreign_keys_to_expense_categories_table', 1),
(41, '2021_03_08_020251_add_foreign_keys_to_expenses_table', 1),
(42, '2021_03_08_020251_add_foreign_keys_to_payment_purchase_returns_table', 1),
(43, '2021_03_08_020251_add_foreign_keys_to_payment_purchases_table', 1),
(44, '2021_03_08_020251_add_foreign_keys_to_payment_sale_returns_table', 1),
(45, '2021_03_08_020251_add_foreign_keys_to_payment_sales_table', 1),
(46, '2021_03_08_020251_add_foreign_keys_to_product_variants_table', 1),
(47, '2021_03_08_020251_add_foreign_keys_to_product_warehouse_table', 1),
(48, '2021_03_08_020251_add_foreign_keys_to_products_table', 1),
(49, '2021_03_08_020251_add_foreign_keys_to_purchase_details_table', 1),
(50, '2021_03_08_020251_add_foreign_keys_to_purchase_return_details_table', 1),
(51, '2021_03_08_020251_add_foreign_keys_to_purchase_returns_table', 1),
(52, '2021_03_08_020251_add_foreign_keys_to_purchases_table', 1),
(53, '2021_03_08_020251_add_foreign_keys_to_quotation_details_table', 1),
(54, '2021_03_08_020251_add_foreign_keys_to_quotations_table', 1),
(55, '2021_03_08_020251_add_foreign_keys_to_sale_details_table', 1),
(56, '2021_03_08_020251_add_foreign_keys_to_sale_return_details_table', 1),
(57, '2021_03_08_020251_add_foreign_keys_to_sale_returns_table', 1),
(58, '2021_03_08_020251_add_foreign_keys_to_sales_table', 1),
(59, '2021_03_08_020251_add_foreign_keys_to_settings_table', 1),
(60, '2021_03_08_020251_add_foreign_keys_to_transfer_details_table', 1),
(61, '2021_03_08_020251_add_foreign_keys_to_transfers_table', 1),
(62, '2021_03_08_020251_add_foreign_keys_to_units_table', 1),
(63, '2021_04_11_221536_add_footer_to_settings_table', 1),
(64, '2021_04_30_040505_add_devopped_by_to_settings', 1),
(65, '2021_05_07_140933_add_client_id_to_settings_table', 1),
(66, '2021_05_07_141034_add_warehouse_id_to_settings_table', 1),
(67, '2021_05_07_141303_add_foreign_keys_clients_to_settings', 1),
(68, '2021_07_19_141906_add_sale_unit_id_to_sale_details', 1),
(69, '2021_07_22_013045_add_sale_unit_id_to_quotation_details_table', 1),
(70, '2021_07_22_032512_add_purchase_unit_id_to_purchase_details_table', 1),
(71, '2021_07_22_052330_add_sale_unit_id_to_sale_return_details_table', 1),
(72, '2021_07_22_052447_add_purchase_unit_id_to_purchase_return_details_table', 1),
(73, '2021_07_22_052713_add_purchase_unit_id_to_transfer_details_table', 1),
(74, '2021_07_26_155038_change_cost_column_type_return_details', 1),
(75, '2021_07_30_142441_add_change_to_payment_sales', 1),
(76, '2021_07_31_122946_add_change_to_payment_purchases_table', 1),
(77, '2021_07_31_123105_add_change_to_payment_sale_returns_table', 1),
(78, '2021_07_31_123135_add_change_to_payment_purchase_returns_table', 1),
(79, '2021_09_23_003640_add_default_language_to_settings_table', 1),
(80, '2021_09_24_000547_create_pos_settings', 1),
(81, '2023_08_06_035011_create_notifications_table', 1),
(82, '2023_08_07_003110_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_purchases`
--

CREATE TABLE `payment_purchases` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `change` double DEFAULT 0,
  `Reglement` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_purchase_returns`
--

CREATE TABLE `payment_purchase_returns` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `change` double DEFAULT 0,
  `Reglement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_return_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_sales`
--

CREATE TABLE `payment_sales` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `change` double DEFAULT 0,
  `Reglement` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_sale_returns`
--

CREATE TABLE `payment_sale_returns` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `change` double DEFAULT 0,
  `Reglement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_return_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'المستخدمين والصلاحيات', 'web', '2023-09-13 20:04:37', '2023-09-13 20:04:37'),
(2, 'الأشخاص', 'web', '2023-09-13 20:04:37', '2023-09-13 20:04:37'),
(3, 'البيانات الأساسية', 'web', '2023-09-13 20:04:37', '2023-09-13 20:04:37'),
(4, 'المشتريات', 'web', '2023-09-13 20:04:37', '2023-09-13 20:04:37'),
(5, 'المبيعات', 'web', '2023-09-13 20:04:37', '2023-09-13 20:04:37'),
(6, 'المخازن', 'web', '2023-09-13 20:04:37', '2023-09-13 20:04:37'),
(7, 'المصروفات', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(8, 'التقارير', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(9, 'عرض المستخدمين', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(10, 'إضافة المستخدمين', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(11, 'تعديل المستخدمين', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(12, 'حذف المستخدمين', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(13, 'عرض الصلاحيات', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(14, 'إضافة الصلاحيات', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(15, 'تعديل الصلاحيات', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(16, 'حذف الصلاحيات', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(17, 'عرض العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(18, 'إضافة العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(19, 'تعديل العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(20, 'حذف العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(21, 'إستعادة العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(22, 'طباعة العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(23, 'أرشيف العملاء', 'web', '2023-09-13 20:04:38', '2023-09-13 20:04:38'),
(24, 'عرض الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(25, 'إضافة الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(26, 'تعديل الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(27, 'حذف الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(28, 'إستعادة الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(29, 'طباعة الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(30, 'أرشيف الموردين', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(31, 'عرض الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(32, 'إضافة الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(33, 'تعديل الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(34, 'حذف الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(35, 'إستعادة الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(36, 'طباعة الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(37, 'أرشيف الفئات', 'web', '2023-09-13 20:04:39', '2023-09-13 20:04:39'),
(38, 'عرض الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(39, 'إضافة الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(40, 'تعديل الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(41, 'حذف الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(42, 'إستعادة الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(43, 'طباعة الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(44, 'أرشيف الماركات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(45, 'عرض العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(46, 'إضافة العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(47, 'تعديل العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(48, 'حذف العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(49, 'إستعادة العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(50, 'طباعة العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(51, 'أرشيف العملات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(52, 'عرض الوحدات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(53, 'إضافة الوحدات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(54, 'تعديل الوحدات', 'web', '2023-09-13 20:04:40', '2023-09-13 20:04:40'),
(55, 'حذف الوحدات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(56, 'إستعادة الوحدات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(57, 'طباعة الوحدات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(58, 'أرشيف الوحدات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(59, 'عرض المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(60, 'إضافة المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(61, 'تعديل المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(62, 'حذف المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(63, 'إستعادة المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(64, 'طباعة المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(65, 'أرشيف المنتجات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(66, 'عرض المشتريات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(67, 'إضافة المشتريات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(68, 'حذف المشتريات', 'web', '2023-09-13 20:04:41', '2023-09-13 20:04:41'),
(69, 'طباعة المشتريات', 'web', '2023-09-13 20:04:42', '2023-09-13 20:04:42'),
(70, 'عرض دفع المشتريات', 'web', '2023-09-13 20:04:42', '2023-09-13 20:04:42'),
(71, 'إضافة دفع المشتريات', 'web', '2023-09-13 20:04:42', '2023-09-13 20:04:42'),
(72, 'تعديل دفع المشتريات', 'web', '2023-09-13 20:04:42', '2023-09-13 20:04:42'),
(73, 'حذف دفع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(74, 'عرض مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(75, 'إضافة مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(76, 'حذف مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(77, 'طباعة مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(78, 'عرض دفع مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(79, 'إضافة دفع مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(80, 'تعديل دفع مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(81, 'حذف دفع مرتجع المشتريات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(82, 'عرض المبيعات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(83, 'إضافة المبيعات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(84, 'حذف المبيعات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(85, 'طباعة المبيعات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(86, 'عرض دفع المبيعات', 'web', '2023-09-13 20:04:43', '2023-09-13 20:04:43'),
(87, 'إضافة دفع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(88, 'تعديل دفع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(89, 'حذف دفع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(90, 'عرض مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(91, 'إضافة مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(92, 'حذف مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(93, 'طباعة مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(94, 'عرض دفع مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(95, 'إضافة دفع مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(96, 'تعديل دفع مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(97, 'حذف دفع مرتجع المبيعات', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(98, 'عرض المخازن', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(99, 'إضافة المخازن', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(100, 'تعديل المخازن', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(101, 'حذف المخازن', 'web', '2023-09-13 20:04:44', '2023-09-13 20:04:44'),
(102, 'إستعادة المخازن', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(103, 'طباعة المخازن', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(104, 'أرشيف المخازن', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(105, 'عرض المخزون', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(106, 'طباعة المخزون', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(107, 'عرض تعديل المخزون', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(108, 'إضافة تعديل المخزون', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(109, 'حذف تعديل المخزون', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(110, 'طباعة تعديل المخزون', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(111, 'عرض فئات المصروفات', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(112, 'إضافة فئات المصروفات', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(113, 'تعديل فئات المصروفات', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(114, 'حذف فئات المصروفات', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(115, 'إستعادة فئات المصروفات', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(116, 'طباعة فئات المصروفات', 'web', '2023-09-13 20:04:45', '2023-09-13 20:04:45'),
(117, 'أرشيف فئات المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(118, 'عرض المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(119, 'إضافة المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(120, 'تعديل المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(121, 'حذف المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(122, 'إستعادة المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(123, 'طباعة المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(124, 'أرشيف المصروفات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(125, 'عرض تقرير المدفوعات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(126, 'عرض تقرير مدفوعات المشتريات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(127, 'عرض تقرير مدفوعات المبيعات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(128, 'عرض تقرير مدفوعات مرتجع المشتريات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(129, 'عرض تقرير مدفوعات مرتجع المبيعات', 'web', '2023-09-13 20:04:46', '2023-09-13 20:04:46'),
(130, 'عرض تقرير المخازن', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(131, 'عرض تقرير المبيعات', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(132, 'عرض تقرير المشتريات', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(133, 'عرض تقرير العملاء', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(134, 'عرض تقرير الموردين', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(135, 'عرض تقرير تنبيه المخزون', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(136, 'عرض تقرير الإحصائيات', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47'),
(137, 'الإشعارات', 'web', '2023-09-13 20:04:47', '2023-09-13 20:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_settings`
--

CREATE TABLE `pos_settings` (
  `id` int(11) NOT NULL,
  `note_customer` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT 'Thank You For Shopping With Us. Please Come Again',
  `show_note` tinyint(1) DEFAULT 1,
  `show_barcode` tinyint(1) DEFAULT 1,
  `show_discount` tinyint(1) DEFAULT 1,
  `show_customer` tinyint(1) DEFAULT 1,
  `show_email` tinyint(1) DEFAULT 1,
  `show_phone` tinyint(1) DEFAULT 1,
  `show_address` tinyint(1) DEFAULT 1,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_settings`
--

INSERT INTO `pos_settings` (`id`, `note_customer`, `show_note`, `show_barcode`, `show_discount`, `show_customer`, `show_email`, `show_phone`, `show_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thank You For Shopping With Us . Please Come Again', 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `machine_number` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motor_number` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type_barcode` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `TaxNet` double DEFAULT 0,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_alert` double DEFAULT 0,
  `is_variant` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_sale_id` int(11) DEFAULT NULL,
  `unit_purchase_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` decimal(8,2) DEFAULT 0.00,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(11) NOT NULL,
  `qte` double DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `tax_rate` double DEFAULT 0,
  `TaxNet` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `GrandTotal` double DEFAULT NULL,
  `paid_amount` double DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int(11) NOT NULL,
  `cost` double DEFAULT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT 0,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `discount` double DEFAULT 0,
  `discount_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `total` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` double DEFAULT 0,
  `TaxNet` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `GrandTotal` double DEFAULT NULL,
  `paid_amount` double DEFAULT 0,
  `payment_status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` int(11) NOT NULL,
  `cost` decimal(16,3) DEFAULT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT 0,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `discount` double DEFAULT 0,
  `discount_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `total` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `purchase_return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` double DEFAULT 0,
  `TaxNet` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `GrandTotal` double DEFAULT NULL,
  `status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT 0,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `discount` double DEFAULT 0,
  `discount_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `total` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `quotation_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `6` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-09-13 20:04:48', '2023-09-13 20:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pos` tinyint(1) DEFAULT 0,
  `tax_rate` double DEFAULT 0,
  `TaxNet` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `GrandTotal` double DEFAULT 0,
  `paid_amount` double DEFAULT 0,
  `payment_status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT NULL,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `discount` double DEFAULT NULL,
  `discount_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `total` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` double DEFAULT 0,
  `TaxNet` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `GrandTotal` double DEFAULT NULL,
  `paid_amount` double DEFAULT 0,
  `payment_status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_details`
--

CREATE TABLE `sale_return_details` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT 0,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `discount` double DEFAULT 0,
  `discount_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `quantity` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `sale_return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompanyAdress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `footer` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT 'Mansoury Stock - Ultimate Inventory With POS',
  `developed_by` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT 'Eng.Ahmed Nabil',
  `client_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `default_language` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT 'ar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `Ref` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `items` double DEFAULT NULL,
  `tax_rate` double DEFAULT 0,
  `TaxNet` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `shipping` double DEFAULT 0,
  `GrandTotal` double DEFAULT 0,
  `status` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_details`
--

CREATE TABLE `transfer_details` (
  `id` int(11) NOT NULL,
  `cost` double DEFAULT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `TaxNet` double DEFAULT NULL,
  `tax_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `discount` double DEFAULT NULL,
  `discount_method` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `quantity` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShortName` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operator` char(192) COLLATE utf8mb4_unicode_ci DEFAULT '*',
  `operator_value` double DEFAULT 1,
  `base_unit` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `password`, `roles_name`, `status`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Nabil', 'ahmednassag@gmail.com', NULL, '01016856433', '$2y$10$iIQjP6d8jSD8iLSAJLW6T.NfN693eh7KD/Nv7rpdyICQP.0IY6uay', '[\"Admin\"]', 1, 'avatar.jpg', NULL, '2023-09-13 20:04:48', '2023-09-13 20:04:48'),
(2, 'Admin', 'admin@gmail.com', NULL, '0123456789', '$2y$10$vQk6PfaiXy462HjmJK2yN.iq3I6QC.smp5QWekCw7XqvaNd5sqJ.y', '[\"Admin\"]', 1, NULL, NULL, '2023-09-13 20:04:48', '2023-09-13 20:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id_adjustment` (`warehouse_id`),
  ADD KEY `adjustments_user_id_foreign` (`user_id`);

--
-- Indexes for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjust_product_id` (`product_id`),
  ADD KEY `adjust_adjustment_id` (`adjustment_id`),
  ADD KEY `adjust_product_variant` (`product_variant_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `expense_warehouse_id` (`warehouse_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_purchase_id` (`purchase_id`),
  ADD KEY `payment_purchases_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id_payment_return_purchase` (`purchase_return_id`),
  ADD KEY `payment_purchase_returns_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_sales`
--
ALTER TABLE `payment_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_sale_id` (`sale_id`),
  ADD KEY `payment_sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factures_sale_return` (`sale_return_id`),
  ADD KEY `payment_sale_returns_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_settings`
--
ALTER TABLE `pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_machine_number_unique` (`machine_number`),
  ADD UNIQUE KEY `products_motor_number_unique` (`motor_number`),
  ADD KEY `brand_id_products` (`brand_id`),
  ADD KEY `unit_id_products` (`unit_id`),
  ADD KEY `unit_id_sales` (`unit_sale_id`),
  ADD KEY `unit_purchase_products` (`unit_purchase_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_variant` (`product_id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_warehouse_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `warehouse_id_purchase` (`warehouse_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `purchase_product_variant_id` (`product_variant_id`),
  ADD KEY `purchase_unit_id_purchase` (`purchase_unit_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id_return` (`provider_id`),
  ADD KEY `purchase_return_warehouse_id` (`warehouse_id`),
  ADD KEY `purchase_returns_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_id_return` (`purchase_return_id`),
  ADD KEY `product_id_details_purchase_return` (`product_id`),
  ADD KEY `purchase_return_product_variant_id` (`product_variant_id`),
  ADD KEY `unit_id_purchase_return_details` (`purchase_unit_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_quotation` (`client_id`),
  ADD KEY `warehouse_id_quotation` (`warehouse_id`),
  ADD KEY `quotations_user_id_foreign` (`user_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_quotation_details` (`product_id`),
  ADD KEY `quote_product_variant_id` (`product_variant_id`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `sale_unit_id_quotation` (`sale_unit_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_client_id` (`client_id`),
  ADD KEY `warehouse_id_sale` (`warehouse_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Details_Sale_id` (`sale_id`),
  ADD KEY `sale_product_id` (`product_id`),
  ADD KEY `sale_product_variant_id` (`product_variant_id`),
  ADD KEY `sales_sale_unit_id` (`sale_unit_id`);

--
-- Indexes for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id_returns` (`client_id`),
  ADD KEY `warehouse_id_sale_return_id` (`warehouse_id`),
  ADD KEY `sale_returns_user_id_foreign` (`user_id`);

--
-- Indexes for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`sale_return_id`),
  ADD KEY `product_id_details_returns` (`product_id`),
  ADD KEY `sale_return_id_product_variant_id` (`product_variant_id`),
  ADD KEY `sale_unit_id_return_details` (`sale_unit_id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_warehouse_id` (`from_warehouse_id`),
  ADD KEY `to_warehouse_id` (`to_warehouse_id`),
  ADD KEY `transfers_user_id_foreign` (`user_id`);

--
-- Indexes for table `transfer_details`
--
ALTER TABLE `transfer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id_transfers` (`product_id`),
  ADD KEY `product_variant_id_transfer` (`product_variant_id`),
  ADD KEY `unit_sale_id_transfer` (`purchase_unit_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_sales`
--
ALTER TABLE `payment_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_settings`
--
ALTER TABLE `pos_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_details`
--
ALTER TABLE `transfer_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD CONSTRAINT `adjustment_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `adjustments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `adjustment_details`
--
ALTER TABLE `adjustment_details`
  ADD CONSTRAINT `adjust_adjustment_id` FOREIGN KEY (`adjustment_id`) REFERENCES `adjustments` (`id`),
  ADD CONSTRAINT `adjust_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `adjust_product_variant` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expense_category_id` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`),
  ADD CONSTRAINT `expense_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_purchases`
--
ALTER TABLE `payment_purchases`
  ADD CONSTRAINT `factures_purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `payment_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_purchase_returns`
--
ALTER TABLE `payment_purchase_returns`
  ADD CONSTRAINT `payment_purchase_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplier_id_payment_return_purchase` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`);

--
-- Constraints for table `payment_sales`
--
ALTER TABLE `payment_sales`
  ADD CONSTRAINT `facture_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `payment_sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_sale_returns`
--
ALTER TABLE `payment_sale_returns`
  ADD CONSTRAINT `factures_sale_return` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`),
  ADD CONSTRAINT `payment_sale_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `brand_id_products` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `unit_id_products` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `unit_id_sales` FOREIGN KEY (`unit_sale_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `unit_purchase_products` FOREIGN KEY (`unit_purchase_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_id_variant` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD CONSTRAINT `art_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `mag_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `provider_id` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_id_purchase` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `purchase_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `purchase_unit_id_purchase` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `provider_id_return` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchase_return_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `purchase_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD CONSTRAINT `product_id_details_purchase_return` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_return_id_return` FOREIGN KEY (`purchase_return_id`) REFERENCES `purchase_returns` (`id`),
  ADD CONSTRAINT `purchase_return_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `unit_id_purchase_return_details` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `client_id _quotation` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `quotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_id_quotation` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `product_id_quotation_details` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `quotation_id` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`),
  ADD CONSTRAINT `quote_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sale_unit_id_quotation` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sale_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_id_sale` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `Details_Sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `sale_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sales_sale_unit_id` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD CONSTRAINT `client_id_returns` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sale_returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_id_sale_return_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `sale_return_details`
--
ALTER TABLE `sale_return_details`
  ADD CONSTRAINT `product_id_details_returns` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_return_id` FOREIGN KEY (`sale_return_id`) REFERENCES `sale_returns` (`id`),
  ADD CONSTRAINT `sale_return_id_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `sale_unit_id_return_details` FOREIGN KEY (`sale_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `settings_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `settings_warehouse_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `from_warehouse_id` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `to_warehouse_id` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`),
  ADD CONSTRAINT `transfers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfer_details`
--
ALTER TABLE `transfer_details`
  ADD CONSTRAINT `product_id_transfers` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variant_id_transfer` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `transfer_id` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`),
  ADD CONSTRAINT `unit_sale_id_transfer` FOREIGN KEY (`purchase_unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `base_unit` FOREIGN KEY (`base_unit`) REFERENCES `units` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
