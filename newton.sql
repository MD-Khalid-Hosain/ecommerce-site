-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 04:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newton`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_title`, `about_discription`, `activation`, `created_at`, `updated_at`) VALUES
(1, 'WELCOME OUR STORE!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi hic amet repellendus assumenda voluptatem iste. In exercitationem aliquam eligendi sint quidem natus eum aliquid laboriosam id adipisci excepturi voluptas, eaque, doloribus corporis ducimus ut suscipit alias ad! Quidem vel sint quasi fugit officiis aliquam, provident suscipit veritatis sunt amet! Rem maxime amet quo laudantium deleniti quia ipsum delectus, nesciunt dignissimos debitis incidunt sed nisi earum cumque assumenda, voluptatibus, laborum harum perspiciatis ut magnam sunt. Facere, recusandae impedit. Nisi iste, officiis?', 1, '2020-06-16 17:37:00', '2020-06-16 17:42:32'),
(2, 'WELCOME OUR HISTORY!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi hic amet repellendus assumenda voluptatem iste. In exercitationem aliquam eligendi sint quidem natus eum aliquid laboriosam id adipisci excepturi voluptas, eaque, doloribus corporis ducimus ut suscipit alias ad! Quidem vel sint quasi fugit officiis aliquam, provident suscipit veritatis sunt amet! Rem maxime amet quo laudantium deleniti quia ipsum delectus, nesciunt dignissimos debitis incidunt sed nisi earum cumque assumenda, voluptatibus, laborum harum perspiciatis ut magnam sunt. Facere, recusandae impedit. Nisi iste, officiis?', 0, '2020-06-16 17:37:14', '2020-06-16 17:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'banner_image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_description`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Amazing Pure Nature Hohey', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin', '1.jpeg', '2020-06-10 16:14:19', '2020-06-10 16:14:20'),
(2, 'Amazing Pure Nature Hohey', 'Product naming is the discipline of deciding what a product will be called, and is very similar in concept and approach to the process of deciding on a name for a company or organization.', '2.jpeg', '2020-06-10 16:15:42', '2020-06-10 16:15:43'),
(3, 'Amazing Pure Nature', 'Product naming is the discipline of deciding what a product will be called, and is very similar in concept and approach to the process of deciding on a name for a company or organization.', '3.jpeg', '2020-06-10 16:17:00', '2020-06-10 16:17:00'),
(4, 'Pure Nature', 'Product naming is the discipline of deciding what a product will be called, and is very similar in concept and approach to the process of deciding on a name for a company or organization.', '4.jpeg', '2020-06-10 16:18:21', '2020-06-10 16:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog_image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `ip_address`, `product_id`, `product_amount`, `created_at`, `updated_at`) VALUES
(13, '127.0.0.1', 5, 1, '2020-06-18 14:10:30', NULL),
(14, '127.0.0.1', 4, 1, '2020-06-18 14:15:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `category_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'category_default_image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `added_by`, `category_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sports', 1, '1.png', '2020-06-10 16:00:00', '2020-06-16 18:07:30', NULL),
(2, 'women', 1, '2.jpeg', '2020-06-10 16:01:09', '2020-06-10 16:01:11', NULL),
(3, 'Bags & Luggage', 1, '3.webp', '2020-06-10 16:01:44', '2020-06-10 16:01:45', NULL),
(4, 'Books & Stationeries', 1, '4.jpeg', '2020-06-10 16:02:22', '2020-06-10 16:02:22', NULL),
(6, 'toys', 1, '6.jpeg', '2020-06-10 16:03:25', '2020-06-10 16:03:26', NULL),
(7, 'Men', 1, '7.jpeg', '2020-06-10 16:44:56', '2020-06-10 16:44:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Córdoba', 1, NULL, NULL),
(2, 'Rosario', 1, NULL, NULL),
(3, 'Mendoza', 1, NULL, NULL),
(4, 'Santa Fe', 1, NULL, NULL),
(5, 'Sydney', 2, NULL, NULL),
(6, 'Melbourne', 2, NULL, NULL),
(7, 'Brisbane', 2, NULL, NULL),
(8, 'Perth', 2, NULL, NULL),
(9, 'Dhaka ', 3, NULL, NULL),
(10, 'Chittagong', 3, NULL, NULL),
(11, 'Khulna', 3, NULL, NULL),
(12, 'Rajshahi', 3, NULL, NULL),
(13, 'Karachi', 4, NULL, NULL),
(14, 'Lahore', 4, NULL, NULL),
(15, 'Faisalabad', 4, NULL, NULL),
(16, 'Rawalpindi', 4, NULL, NULL),
(17, 'Toronto ', 5, NULL, NULL),
(18, 'Ottawa ', 5, NULL, NULL),
(19, 'Moscow', 6, NULL, NULL),
(20, 'Saint Petersburg', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactmessages`
--

CREATE TABLE `contactmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Contact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contact_phone` int(11) NOT NULL,
  `activation` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `Contact_address`, `Contact_email`, `Contact_phone`, `activation`, `created_at`, `updated_at`) VALUES
(2, 'borhunuddin Bhola', 'naim.ahtasam@gmail.com', 1877827589, 0, '2020-06-15 18:35:31', '2020-06-16 18:35:15'),
(3, 'Borishal , Bhola , Borhunuddin.2 no woard', 'naim.ahtasam1@gmail.com', 1768176261, 1, '2020-06-15 19:20:43', '2020-06-16 18:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', NULL, NULL),
(2, 'Australia', NULL, NULL),
(3, 'Bangladesh', NULL, NULL),
(4, 'Pakistan', NULL, NULL),
(5, 'Canada', NULL, NULL),
(6, 'Russia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'this is the coupon name',
  `coupon_discount` int(11) NOT NULL COMMENT 'this is the discount amount',
  `coupon_validity` date NOT NULL COMMENT 'this is the coupon validity',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `created_at`, `updated_at`) VALUES
(1, 'BD1', 1, '2020-06-30', '2020-06-10 16:49:24', '2020-06-10 16:49:39'),
(2, 'BD2', 2, '2020-06-24', '2020-06-10 16:49:57', NULL),
(3, 'BD3', 3, '2020-06-24', '2020-06-10 16:50:10', NULL),
(4, 'BD4', 4, '2020-06-23', '2020-06-10 16:50:25', NULL),
(5, 'BD10', 10, '2020-06-23', '2020-06-10 16:50:54', NULL),
(6, 'BD5', 5, '2020-06-10', '2020-06-10 16:51:36', NULL),
(7, 'BD6', 6, '2020-06-26', '2020-06-10 16:52:00', NULL),
(8, 'BD7', 7, '2020-06-11', '2020-06-10 16:52:24', NULL),
(9, 'BD8', 8, '2020-06-24', '2020-06-10 16:52:59', NULL),
(10, 'BD9', 9, '2020-06-27', '2020-06-10 16:53:20', NULL),
(11, 'BD25', 25, '2020-06-30', '2020-06-10 16:53:46', NULL),
(12, 'BD50', 50, '2020-07-01', '2020-06-10 16:54:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_question` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_question`, `faq_answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Why this application??', 'Buying product.', '2020-06-15 10:32:43', NULL, NULL),
(2, 'An effective FAQ page??', 'Reflects your audience needs.', '2020-06-15 10:38:42', NULL, NULL),
(3, 'What are some good FAQ Questions?', 'Nintendo. The Nintendo Online FAQs are bold, functional and simple in approach.', '2020-06-15 10:39:08', NULL, NULL),
(4, 'What should be on a FAQ page?', 'Use “FAQ” or “Frequently Asked Questions” as the page title.', '2020-06-15 10:39:45', NULL, NULL),
(5, 'How do I create a FAQ?', 'Gather Your Most Frequently Asked Questions. ...', '2020-06-15 10:40:21', NULL, NULL),
(6, 'What is a FAQ document?', 'Pronounced as separate letters, or as \"fak,\" and short for frequently asked questions,', '2020-06-15 10:40:50', NULL, NULL),
(7, 'What is the most ridiculous question ever?', 'What is the most ridiculous question ever?', '2020-06-15 10:41:36', NULL, NULL),
(8, 'How do I write a FAQ?', 'Use “FAQ” or “Frequently Asked Questions” as the page title.\r\nWrite questions from the point of view of your customer.\r\nWrite the FAQ sheet in an actual question-and-answer format.\r\nKeep answers short.\r\nFully answer the question, don\'t just link to a different page.', '2020-06-15 10:42:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_13_013527_create_faqs_table', 1),
(5, '2020_03_06_020708_create_categories_table', 1),
(6, '2020_03_26_203327_create_products_table', 1),
(7, '2020_03_31_023258_create_product_multiple_images_table', 1),
(8, '2020_04_09_235250_create_carts_table', 1),
(9, '2020_04_14_153417_create_banners_table', 1),
(10, '2020_04_17_215058_create_coupons_table', 1),
(11, '2020_04_26_015551_create_blogs_table', 1),
(12, '2020_05_03_013925_create_orders_table', 1),
(13, '2020_05_03_024735_create_order_lists_table', 1),
(14, '2020_05_04_012737_create_countries_table', 1),
(15, '2020_05_04_012810_create_cities_table', 1),
(16, '2020_05_17_230935_create_permission_tables', 1),
(18, '2020_06_06_160038_create_contactmessages_table', 1),
(20, '2020_06_04_220157_create_contacts_table', 2),
(23, '2020_06_07_215520_create_abouts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 1),
(3, 'App\\User', 2),
(4, 'App\\User', 1),
(4, 'App\\User', 2),
(5, 'App\\User', 1),
(5, 'App\\User', 2),
(6, 'App\\User', 1),
(6, 'App\\User', 2),
(7, 'App\\User', 1),
(7, 'App\\User', 2),
(8, 'App\\User', 1),
(8, 'App\\User', 2),
(9, 'App\\User', 1),
(9, 'App\\User', 2),
(10, 'App\\User', 1),
(10, 'App\\User', 2),
(11, 'App\\User', 1),
(11, 'App\\User', 2),
(12, 'App\\User', 1),
(12, 'App\\User', 2),
(13, 'App\\User', 1),
(13, 'App\\User', 2),
(14, 'App\\User', 1),
(14, 'App\\User', 2),
(15, 'App\\User', 1),
(15, 'App\\User', 2),
(16, 'App\\User', 1),
(16, 'App\\User', 2),
(17, 'App\\User', 1),
(17, 'App\\User', 2),
(18, 'App\\User', 1),
(18, 'App\\User', 2),
(19, 'App\\User', 1),
(19, 'App\\User', 2),
(20, 'App\\User', 1),
(20, 'App\\User', 2),
(21, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(2, 'App\\User', 1),
(3, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `full_name`, `email_address`, `phone_number`, `country_id`, `city_id`, `address`, `note`, `sub_total`, `total`, `coupon_name`, `payment_method`, `paid_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Naim Rahman Ahtasam', 'naim.ahtasam1@gmail.com', '01768176261', 1, 2, 'uttora', 'Borishal , Bhola , Borhunuddin.2 no woard', 2000, 1000, 'BD50', 1, 1, '2020-06-10 17:11:42', NULL),
(2, 2, 'Achol', 'naim.ahtasam@gmail.com', '01768176261', 4, 13, 'uttora', 'A very very nice product ... The application is also user friendly', 1000, 1000, NULL, 2, 2, '2020-06-10 17:23:12', NULL),
(3, 2, 'Achol', 'naim.ahtasam@gmail.com', '01768176261', 4, 13, 'uttora', 'A very very nice product ... The application is also user friendly', 1000, 1000, NULL, 2, 2, '2020-06-10 17:23:15', NULL),
(4, 3, 'shahin sir', 'shahinsir@gmail.com', '01877827589', 3, 9, 'uttora', 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', 1000, 1000, NULL, 1, 1, '2020-06-14 16:29:37', NULL),
(5, 3, 'shahin sir', 'shahinsir@gmail.com', '01768176261', 1, 1, 'uttora', 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', 120, 120, NULL, 1, 1, '2020-06-14 16:32:32', NULL),
(6, 3, 'shahin sir', 'shahinsir@gmail.com', '01768176261', 2, 5, 'uttora', 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', 1000, 1000, NULL, 1, 1, '2020-06-14 16:33:19', NULL),
(7, 3, 'shahin sir', 'shahinsir@gmail.com', '01768176261', 1, 1, 'uttora', 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', 8750, 4375, 'BD50', 1, 1, '2020-06-14 16:34:27', NULL),
(8, 1, 'Naim Rahman Ahtasam', 'naim.ahtasam1@gmail.com', '01768176261', 1, 1, 'uttora', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 50000, 50000, NULL, 1, 1, '2020-06-16 18:40:58', NULL),
(9, 1, 'Naim Rahman Ahtasam', 'naim.ahtasam1@gmail.com', '01761166155', 2, 5, 'Borhunuddin Bhola Borishal', 'Borhunuddin Bhola Borishal', 360, 324, 'BD10', 2, 2, '2020-06-17 09:29:00', NULL),
(10, 1, 'Naim Rahman Ahtasam', 'naim.ahtasam1@gmail.com', '01761166155', 2, 5, 'Borhunuddin Bhola Borishal', 'Borhunuddin Bhola Borishal', 360, 324, 'BD10', 2, 2, '2020-06-17 09:29:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_lists`
--

CREATE TABLE `order_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_lists`
--

INSERT INTO `order_lists` (`id`, `user_id`, `order_id`, `product_id`, `product_amount`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 2, NULL, '3', '2020-06-10 17:11:42', NULL),
(2, 2, 2, 4, 1, 'A very very nice product ... The application is also user friendly', '4', '2020-06-10 17:23:12', '2020-06-10 17:27:58'),
(3, 3, 4, 4, 1, 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', '3', '2020-06-14 16:29:37', '2020-06-14 16:31:27'),
(4, 3, 5, 3, 1, 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', '4', '2020-06-14 16:32:32', '2020-06-14 16:37:48'),
(5, 3, 6, 2, 2, 'About Naviforce : Naviforce itself is an amazing product a combination of an impressive look,', '3', '2020-06-14 16:33:19', '2020-06-14 16:35:36'),
(6, 3, 7, 1, 7, 'About Naviforce: Naviforce itself is an amazing product a combination of an impressive look,', '2', '2020-06-14 16:34:27', '2020-06-14 16:36:16'),
(7, 1, 8, 4, 50, NULL, NULL, '2020-06-16 18:40:58', NULL),
(8, 1, 9, 3, 3, NULL, NULL, '2020-06-17 09:29:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add faq', 'web', '2020-06-15 10:46:37', '2020-06-15 10:46:37'),
(2, 'see faq', 'web', '2020-06-15 10:47:30', '2020-06-15 10:47:30'),
(3, 'edit faq', 'web', '2020-06-15 10:48:35', '2020-06-15 10:48:35'),
(4, 'delete faq', 'web', '2020-06-15 10:48:57', '2020-06-15 10:48:57'),
(5, 'add about', 'web', '2020-06-15 10:56:30', '2020-06-15 10:56:30'),
(6, 'see about', 'web', '2020-06-15 10:56:52', '2020-06-15 10:56:52'),
(7, 'edit about', 'web', '2020-06-15 10:57:14', '2020-06-15 10:57:14'),
(8, 'delete about', 'web', '2020-06-15 10:57:33', '2020-06-15 10:57:33'),
(9, 'add category', 'web', '2020-06-15 11:02:55', '2020-06-15 11:02:55'),
(10, 'see category', 'web', '2020-06-15 11:03:10', '2020-06-15 11:03:10'),
(11, 'edit category', 'web', '2020-06-15 11:03:39', '2020-06-15 11:03:39'),
(12, 'delete category', 'web', '2020-06-15 11:03:57', '2020-06-15 11:03:57'),
(13, 'add product', 'web', '2020-06-15 11:05:05', '2020-06-15 11:05:05'),
(14, 'see product', 'web', '2020-06-15 11:05:22', '2020-06-15 11:05:22'),
(15, 'edit product', 'web', '2020-06-15 11:05:38', '2020-06-15 11:05:38'),
(16, 'delete product', 'web', '2020-06-15 11:05:52', '2020-06-15 11:05:52'),
(17, 'add coupon', 'web', '2020-06-15 11:06:58', '2020-06-15 11:06:58'),
(18, 'see coupon', 'web', '2020-06-15 11:07:09', '2020-06-15 11:07:09'),
(19, 'edit coupon', 'web', '2020-06-15 11:07:18', '2020-06-15 11:07:18'),
(20, 'delete coupon', 'web', '2020-06-15 11:07:30', '2020-06-15 11:07:30'),
(21, 'see role manage', 'web', '2020-06-15 11:13:19', '2020-06-15 11:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_thumbnail_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_short_description`, `product_long_description`, `category_id`, `product_thumbnail_image`, `product_slug`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 'Cricket Bat - Wooden', '1250', 'About Cricket Bat\r\n\r\nCricket is very popular game now a days. That\'s why cricket bat is widely used all over the world. The blade of a cricket bat is a Wooden block that is generally flat on the striking face and with a ridge on the reverse (back) which concentrates wood in the middle where the ball is generally hit. The bat is traditionally made from willow wood, specifically from a variety of White Willow called Cricket Bat Willow (Salix alba var. caerulea), treated with raw (unboiled) linseed oil, which has a protective function. This variety of willow is used as it is very tough and shock-resistant, not being significantly dented nor splintering on the impact of a cricket ball at high speed, while', 'About Cricket Bat\r\n\r\nCricket is very popular game now a days. That\'s why cricket bat is widely used all over the world. The blade of a cricket bat is a Wooden block that is generally flat on the striking face and with a ridge on the reverse (back) which concentrates wood in the middle where the ball is generally hit. The bat is traditionally made from willow wood, specifically from a variety of White Willow called Cricket Bat Willow (Salix alba var. caerulea), treated with raw (unboiled) linseed oil, which has a protective function. This variety of willow is used as it is very tough and shock-resistant, not being significantly dented nor splintering on the impact of a cricket ball at high speed, while', 1, '1.png', 'cricket-bat-wooden-1591805199', 43, '2020-06-10 16:06:39', '2020-06-14 16:34:27'),
(2, 'Xiaomi leisure style sports backpack 23L - Blue', '500', 'Brand: Xiaomi\r\nName: Xiaomi Leisure Sports Backpack\r\nCapacity: 23L\r\nTime to market: Summer of 2019\r\nColor Classification: Black Blue Gray\r\nInternal structure: zipper pocket, ID bag, laminated zipper bag, computer pocket, camera pocket', 'Brand: Xiaomi\r\nName: Xiaomi Leisure Sports Backpack\r\nCapacity: 23L\r\nTime to market: Summer of 2019\r\nColor Classification: Black Blue Gray\r\nInternal structure: zipper pocket, ID bag, laminated zipper bag, computer pocket, camera pocket', 3, '2.webp', 'xiaomi-leisure-style-sports-backpack-23l-blue-1591807158', 48, '2020-06-10 16:39:18', '2020-06-14 16:33:19'),
(3, 'MI Aluminium Roller Ball Pen - Gold', '120', '● Switzerland imported refill: smooth writing and smear-proof, retractable and refillable\r\n● 0.5mm fine point draws razor-sharp, consistent lines\r\n● Handy retractable and rotatable design, convenient to use\r\n● All-metal precision connection parts, 50,000 times rotation life test', '● Switzerland imported refill: smooth writing and smear-proof, retractable and refillable\r\n● 0.5mm fine point draws razor-sharp, consistent lines\r\n● Handy retractable and rotatable design, convenient to use\r\n● All-metal precision connection parts, 50,000 times rotation life test', 4, '3.jpeg', 'mi-aluminium-roller-ball-pen-gold-1591807284', 56, '2020-06-10 16:41:24', '2020-06-17 09:29:00'),
(4, 'Watch For Men - Golden', '1000', 'About Naviforce :\r\nNaviforce itself is an amazing product a combination of an impressive look, excellent quality at affordable price. Made of solid and durable material, combined with imported Japan movement, makes Naviforce as a reliable choice. Customer satisfaction are guaranteed. NAVIFORCE Watch is International Men Sport Watch Brand, which already registered in Germany, Italy, United Kingdom, United States, Korea, Turkey, HongKong, Thailand etc. In the past 10 years,', 'About Naviforce :\r\nNaviforce itself is an amazing product a combination of an impressive look, excellent quality at affordable price. Made of solid and durable material, combined with imported Japan movement, makes Naviforce as a reliable choice. Customer satisfaction are guaranteed. NAVIFORCE Watch is International Men Sport Watch Brand, which already registered in Germany, Italy, United Kingdom, United States, Korea, Turkey, HongKong, Thailand etc. In the past 10 years,', 7, '4.jpeg', 'watch-for-men-golden-1591807646', 50, '2020-06-10 16:47:26', '2020-06-16 18:43:12'),
(5, 'Hunter Fashionable Backpack For Men - Black and Grey', '200', 'SKU: 0X4AF72\r\n\r\nBRAND : Individual Collections  |  More Regular Backpack from Individual Collections', 'SKU: 0X4AF72\r\n\r\nBRAND : Individual Collections  |  More Regular Backpack from Individual Collections', 3, '5.png', 'hunter-fashionable-backpack-for-men-black-and-grey-1592165512', 50, '2020-06-14 20:11:52', '2020-06-14 20:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_multiple_images`
--

CREATE TABLE `product_multiple_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_multiple_image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_multiple_images`
--

INSERT INTO `product_multiple_images` (`id`, `product_id`, `product_multiple_image_name`, `created_at`, `updated_at`) VALUES
(1, 1, '1-1.png', '2020-06-10 16:06:40', NULL),
(2, 1, '1-2.png', '2020-06-10 16:06:40', NULL),
(3, 1, '1-3.png', '2020-06-10 16:06:41', NULL),
(4, 2, '2-1.jpeg', '2020-06-10 16:39:20', NULL),
(5, 2, '2-2.jpeg', '2020-06-10 16:39:20', NULL),
(6, 2, '2-3.jpeg', '2020-06-10 16:39:21', NULL),
(7, 2, '2-4.jpeg', '2020-06-10 16:39:21', NULL),
(8, 3, '3-1.jpeg', '2020-06-10 16:41:24', NULL),
(9, 4, '4-1.jpeg', '2020-06-10 16:47:27', NULL),
(10, 4, '4-2.jpeg', '2020-06-10 16:47:27', NULL),
(11, 4, '4-3.jpeg', '2020-06-10 16:47:27', NULL),
(12, 4, '4-4.jpeg', '2020-06-10 16:47:28', NULL),
(13, 4, '4-5.jpeg', '2020-06-10 16:47:28', NULL),
(14, 4, '4-6.jpeg', '2020-06-10 16:47:29', NULL),
(15, 6, '6-1.png', '2020-06-14 20:12:36', NULL),
(16, 6, '6-2.png', '2020-06-14 20:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-06-15 10:50:53', '2020-06-15 10:50:53'),
(2, 'super admin', 'web', '2020-06-15 10:51:44', '2020-06-15 10:51:44'),
(3, 'editor', 'web', '2020-06-15 11:24:25', '2020-06-15 11:24:25');

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
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(6, 3),
(7, 3),
(10, 3),
(11, 3),
(14, 3),
(15, 3),
(18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Naim Rahman Ahtasam', 'naim.ahtasam1@gmail.com', '2020-06-10 15:54:06', '$2y$10$UF/t2AOPQY0gyOPPE2Kuo.RAmV9XYzb8VbyMfgCDlvD7NfEHB5k0C', NULL, 1, '2020-06-10 15:50:02', '2020-06-10 15:54:06'),
(2, 'Naim', 'naim.ahtasam@gmail.com', '2020-06-10 17:19:53', '$2y$10$/WRTJMeYAT13sLjF09kK8O09.UT494S/l9DfWyEWxij.0IPWAke4S', NULL, 1, '2020-06-10 17:18:40', '2020-06-10 17:19:53'),
(3, 'shahin sir', 'shahinsir@gmail.com', '2020-06-10 17:19:53', '$2y$10$ifzIYZLbNknGKsaaO2SEsuLdGXfoMLMh6Ujw36nOGrlYs8i2ipgFq', NULL, 2, '2020-06-14 16:25:30', '2020-06-14 16:25:30'),
(4, 'fahim', 'fahim@gmail.com', '2020-06-10 17:19:53', '$2y$10$5qj0ooLpSqgukFEGKJqqF.dtsfFDBUhD7GRr/HTxb.PtEBnnR3Swu', NULL, 1, '2020-06-15 11:20:21', '2020-06-15 11:20:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactmessages`
--
ALTER TABLE `contactmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_coupon_name_unique` (`coupon_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_lists`
--
ALTER TABLE `order_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_multiple_images`
--
ALTER TABLE `product_multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contactmessages`
--
ALTER TABLE `contactmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_lists`
--
ALTER TABLE `order_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_multiple_images`
--
ALTER TABLE `product_multiple_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
