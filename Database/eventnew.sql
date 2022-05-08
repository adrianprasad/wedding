-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 04:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add address', 7, 'add_address'),
(26, 'Can change address', 7, 'change_address'),
(27, 'Can delete address', 7, 'delete_address'),
(28, 'Can view address', 7, 'view_address'),
(29, 'Can add event category', 8, 'add_eventcategory'),
(30, 'Can change event category', 8, 'change_eventcategory'),
(31, 'Can delete event category', 8, 'delete_eventcategory'),
(32, 'Can view event category', 8, 'view_eventcategory'),
(33, 'Can add event details', 9, 'add_eventdetails'),
(34, 'Can change event details', 9, 'change_eventdetails'),
(35, 'Can delete event details', 9, 'delete_eventdetails'),
(36, 'Can view event details', 9, 'view_eventdetails'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add booking', 12, 'add_booking'),
(46, 'Can change booking', 12, 'change_booking'),
(47, 'Can delete booking', 12, 'delete_booking'),
(48, 'Can view booking', 12, 'view_booking');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$320000$HXdXNR6Cc4y4YY3ohcYOzB$gGltbFdR4qd14+YvoLKXHVHxjRMp544ytHPU8a2rnYg=', '2022-05-07 14:07:44.462405', 0, 'adrianprasad', '', '', 'adrianprasadtvm@gmail.com', 0, 1, '2022-05-03 18:21:35.950590'),
(4, 'pbkdf2_sha256$320000$nfNL8hLCwaHmNuPEkddqbP$rhsaVzOQvzZPAhVVmQrLnKI0fgF1fEo1++0QSP2CrlQ=', '2022-05-07 14:08:18.669496', 1, 'event', '', '', 'evet@gmail.com', 1, 1, '2022-05-03 18:33:44.131404'),
(5, 'pbkdf2_sha256$320000$FBO4ttnYUq4jCr9Y9S1Evw$nq1kUQvsdYKQDBKGyCmJ3PpZB5ixHBy80Npv3h2oK4c=', '2022-05-05 11:01:26.907454', 0, 'deevendu', '', '', 'deevendu@gmail.com', 0, 1, '2022-05-05 10:49:28.240508'),
(6, 'pbkdf2_sha256$320000$i76Ko0D9iedyItRJMsVvWr$pO6AFF3/z452WU7pfEPmBokP5uzj38IJiSqQLmItXLM=', '2022-05-07 10:22:02.622859', 0, 'anuroop', '', '', 'anuroop@gmail.com', 0, 1, '2022-05-07 04:12:50.138432'),
(7, 'pbkdf2_sha256$320000$LtzBal04oVCWAMsiZLP9z3$n1J97FCqoPd23bCHNZQ7ymXxofINqaQNcmugtgGNsAQ=', '2022-05-07 14:03:36.077360', 0, 'lyea', '', '', 'lyea@gmail.com', 0, 1, '2022-05-07 14:03:24.418933');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-03 18:34:17.595584', '1', 'Wedding', 1, '[{\"added\": {}}]', 8, 4),
(2, '2022-05-03 18:34:37.118397', '1', 'Wedding', 1, '[{\"added\": {}}]', 9, 4),
(3, '2022-05-04 07:24:34.455330', '2', 'Musical', 3, '', 8, 4),
(4, '2022-05-04 07:24:38.007025', '3', 'Musical', 3, '', 8, 4),
(5, '2022-05-04 09:23:38.922849', '1', 'Order object (1)', 1, '[{\"added\": {}}]', 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'eventapp', 'address'),
(12, 'eventapp', 'booking'),
(11, 'eventapp', 'cart'),
(8, 'eventapp', 'eventcategory'),
(9, 'eventapp', 'eventdetails'),
(10, 'eventapp', 'order'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-03 14:49:56.761412'),
(2, 'auth', '0001_initial', '2022-05-03 14:49:57.070262'),
(3, 'admin', '0001_initial', '2022-05-03 14:49:57.152738'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-03 14:49:57.159740'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-03 14:49:57.166740'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-03 14:49:57.204936'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-03 14:49:57.239941'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-03 14:49:57.250943'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-03 14:49:57.258941'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-03 14:49:57.286688'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-03 14:49:57.289688'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-03 14:49:57.296688'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-03 14:49:57.307687'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-03 14:49:57.320690'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-03 14:49:57.332169'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-03 14:49:57.339168'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-03 14:49:57.351168'),
(18, 'eventapp', '0001_initial', '2022-05-03 14:49:57.630265'),
(19, 'sessions', '0001_initial', '2022-05-03 14:49:57.651656'),
(20, 'eventapp', '0002_booking', '2022-05-04 08:35:04.110365'),
(21, 'eventapp', '0003_remove_order_quantity', '2022-05-04 09:22:41.284385'),
(22, 'eventapp', '0004_rename_event_booking_eventtitle', '2022-05-04 10:26:27.591587'),
(23, 'eventapp', '0005_alter_booking_options_rename_name_address_user', '2022-05-06 13:13:32.756626'),
(24, 'eventapp', '0006_rename_ordered_date_booking_booked_date', '2022-05-06 13:58:17.443295'),
(25, 'eventapp', '0007_remove_booking_description_booking_categorytitle_and_more', '2022-05-06 15:43:49.534711'),
(26, 'eventapp', '0008_alter_booking_categorytitle', '2022-05-06 15:44:03.829534'),
(27, 'eventapp', '0009_alter_booking_options_and_more', '2022-05-06 19:20:08.052582');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1e66csk2srtebjxutg5fbef6uuue0f73', 'e30:1nlut5:Dciz-Ymhcj575PFpezaBPp7XdX3ww05D6XOddFq0sS8', '2022-05-17 15:56:31.161928'),
('1vw35hr9yq4io6ab8vcjysgdmvae4y07', 'e30:1nlutr:ew_88kMXV6ITAUunAlI6NtrnVNruGf_7ZrHuisUM7xQ', '2022-05-17 15:57:19.200147'),
('8c50tdfx51s5suvui3emskx784l7ue5w', 'e30:1nlukW:ImrcR8g2S47zktzbfguxIK5m6xcXLHf61PYR2SCZyNM', '2022-05-17 15:47:40.155521'),
('8z9tuxvzgbm72nciq5p6jfraafwhzygz', '.eJxVjDsOwjAQBe_iGlnr-E9Jzxms9WdxANlSnFSIu0OkFNC-mXkvFnBba9hGWcKc2ZkpdvrdIqZHaTvId2y3zlNv6zJHviv8oINfey7Py-H-HVQc9VsbA86BUmikN7qgF1lrR1MmQcpRAZGyguiBkpzAgkaJAqMmsiC8Rfb-AMW-N2w:1nmf7B:gAuF2rnAt0miXrPtWE17LtenjCM6XNnvd4dWxhq0nS4', '2022-05-19 17:18:09.104185'),
('98hej50ee4u07jvy25el6rf9iqqu7ah8', 'e30:1nluhg:uGhQD-90U6_dL75YcVj76OOdqN2LW4n-USvIsBGD93c', '2022-05-17 15:44:44.795308'),
('iq071ds8lsv60r07tluc5uvm6v0s5016', '.eJxVjEEOwiAQRe_C2hCgIzAu3XsGAsxUqgaS0q6MdzckXej2v_f-W4S4byXsndewkLiISZx-txTzk-sA9Ij13mRudVuXJIciD9rlrRG_rof7d1BiL6OeNRmTkJLTQGCYrXOIk_KZrQJtdM4avJrBIhJjNGQnreCMkRKQF58v2_A3ew:1nmwpr:oM5soaTwm8pKzkyTV5chmVZe7hrvvTOzeQYXXsdvuAg', '2022-05-20 12:13:27.020674'),
('lxcgwfnwyeziqpwzp1zumglf4n193cy4', '.eJxVjDsOwjAQBe_iGlnr-E9Jzxms9WdxANlSnFSIu0OkFNC-mXkvFnBba9hGWcKc2ZkpdvrdIqZHaTvId2y3zlNv6zJHviv8oINfey7Py-H-HVQc9VsbA86BUmikN7qgF1lrR1MmQcpRAZGyguiBkpzAgkaJAqMmsiC8Rfb-AMW-N2w:1nmZHO:0aWyxa0P3k3eH_Y5Rm20tPBEGz8QgRQ4tYutifdXfl0', '2022-05-19 11:04:18.629300'),
('obf7czdzvtai6v1co19vd26kapd08sx4', '.eJxVjEEOwiAQRe_C2hCgIzAu3XsGAsxUqgaS0q6MdzckXej2v_f-W4S4byXsndewkLiISZx-txTzk-sA9Ij13mRudVuXJIciD9rlrRG_rof7d1BiL6OeNRmTkJLTQGCYrXOIk_KZrQJtdM4avJrBIhJjNGQnreCMkRKQF58v2_A3ew:1nmh0M:gFJLWP0L-5Qlt84Z_N_AWMq0lSEaGVZsMsu3kDJLpzo', '2022-05-19 19:19:14.603188'),
('s6ub1wcqczgqytiz5ro7yza4djgai1n6', 'e30:1nlutD:SZBlUPq1L1xvRAAEv9YBMhrAueEONRw8_RLmf7bq2v8', '2022-05-17 15:56:39.425171'),
('t8carx6aq5pbdtwcdx20ha1ajsbpwfhy', '.eJxVjDsOwjAQBe_iGlnr-E9Jzxms9WdxANlSnFSIu0OkFNC-mXkvFnBba9hGWcKc2ZkpdvrdIqZHaTvId2y3zlNv6zJHviv8oINfey7Py-H-HVQc9VsbA86BUmikN7qgF1lrR1MmQcpRAZGyguiBkpzAgkaJAqMmsiC8Rfb-AMW-N2w:1nnC1T:FVwbJ4Hc7HFExvmiJiC90TgPUBo7cVj9CJPEfpvYuHA', '2022-05-21 04:26:27.144517'),
('u2vtq4z0gs28xdqs6ru95nfkdcphchc3', '.eJxVjEEOwiAQRe_C2hCgIzAu3XsGAsxUqgaS0q6MdzckXej2v_f-W4S4byXsndewkLiISZx-txTzk-sA9Ij13mRudVuXJIciD9rlrRG_rof7d1BiL6OeNRmTkJLTQGCYrXOIk_KZrQJtdM4avJrBIhJjNGQnreCMkRKQF58v2_A3ew:1nmhfs:zHzeoEdOaeDJ2jsyky31kd9marf5iRdTi-lEMXWVIB0', '2022-05-19 20:02:08.711973'),
('w1ar65dks4gd5sqmu5ud0ob7n9jrs4pn', '.eJxVjDsOwjAQBe_iGlnr-E9Jzxms9WdxANlSnFSIu0OkFNC-mXkvFnBba9hGWcKc2ZkpdvrdIqZHaTvId2y3zlNv6zJHviv8oINfey7Py-H-HVQc9VsbA86BUmikN7qgF1lrR1MmQcpRAZGyguiBkpzAgkaJAqMmsiC8Rfb-AMW-N2w:1nnL6Y:L7MHIWhRuY0UgxtgDYaPflS4nhq6d9B8C0aycSBWq90', '2022-05-21 14:08:18.671454'),
('xs5kl4o6ix7ulvs9e18y7dxy0d6gtc7j', '.eJxVjEEOwiAQRe_C2hCgIzAu3XsGAsxUqgaS0q6MdzckXej2v_f-W4S4byXsndewkLiISZx-txTzk-sA9Ij13mRudVuXJIciD9rlrRG_rof7d1BiL6OeNRmTkJLTQGCYrXOIk_KZrQJtdM4avJrBIhJjNGQnreCMkRKQF58v2_A3ew:1nmx9Z:PADF1DYQA17Q5rq8sBxs3Ou14k60VD04o74KXaMp-Nw', '2022-05-20 12:33:49.291313'),
('xy7yj4h7n2jawmsu6nzesisjhame53ch', 'e30:1nlumz:R4mWHC5uSnned5gz1HvTw_29dk1b1X9FBMLiZHCoHpQ', '2022-05-17 15:50:13.627605'),
('y82502h8i3xlqe9vyj9ukx5rv2i6ybob', '.eJxVjEEOwiAQRe_C2hCgIzAu3XsGAsxUqgaS0q6MdzckXej2v_f-W4S4byXsndewkLiISZx-txTzk-sA9Ij13mRudVuXJIciD9rlrRG_rof7d1BiL6OeNRmTkJLTQGCYrXOIk_KZrQJtdM4avJrBIhJjNGQnreCMkRKQF58v2_A3ew:1nlyLH:uHzDlf4qis4FjNTaLTODzExJkKVisoWBH1DdV2GNtIU', '2022-05-17 19:37:51.017343');

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_address`
--

CREATE TABLE `eventapp_address` (
  `id` bigint(20) NOT NULL,
  `locality` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventapp_address`
--

INSERT INTO `eventapp_address` (`id`, `locality`, `city`, `state`, `user_id`) VALUES
(1, '', 'Trivandrum', 'Kerala', 3),
(4, '', 'Ernakulam', 'Kerala', 5),
(5, '', 'Ernakulam', 'Kerala', 3),
(7, '', 'Kollam', 'Kerala', 6);

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_booking`
--

CREATE TABLE `eventapp_booking` (
  `id` bigint(20) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_cart`
--

CREATE TABLE `eventapp_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventapp_cart`
--

INSERT INTO `eventapp_cart` (`id`, `quantity`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(21, 1, '2022-05-07 14:07:50.213351', '2022-05-07 14:07:50.213351', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_eventcategory`
--

CREATE TABLE `eventapp_eventcategory` (
  `id` bigint(20) NOT NULL,
  `categorytitle` varchar(50) NOT NULL,
  `slug` varchar(55) NOT NULL,
  `description` longtext NOT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventapp_eventcategory`
--

INSERT INTO `eventapp_eventcategory` (`id`, `categorytitle`, `slug`, `description`, `category_image`, `is_active`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', 'wedding', 'Events', 'category/Wedding-Planners-in-Kolkata-1024x538.jpg', 1, 1, '2022-05-03 18:34:17.594583', '2022-05-03 18:34:17.594583'),
(4, 'Musical', 'Musical', 'Musical events at anywhere', 'category/03_L47MV3w.jpg', 1, 1, '2022-05-03 20:09:14.427077', '2022-05-03 20:09:14.427077');

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_eventdetails`
--

CREATE TABLE `eventapp_eventdetails` (
  `id` bigint(20) NOT NULL,
  `Eventtitle` varchar(150) NOT NULL,
  `slug` varchar(160) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventapp_eventdetails`
--

INSERT INTO `eventapp_eventdetails` (`id`, `Eventtitle`, `slug`, `description`, `image`, `amount`, `is_active`, `is_featured`, `created_at`, `updated_at`, `category_id`) VALUES
(4, 'Live Event', 'Live', 'Musical Live', 'product/03_UuRYyv6.jpg', '65300.00', 1, 1, '2022-05-07 14:05:32.346317', '2022-05-07 14:05:32.346317', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `eventapp_address`
--
ALTER TABLE `eventapp_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_address_user_id_aa40dde6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `eventapp_booking`
--
ALTER TABLE `eventapp_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_booking_address_id_3791b3c1_fk_eventapp_address_id` (`address_id`),
  ADD KEY `eventapp_booking_product_id_7adf096e_fk_eventapp_eventdetails_id` (`product_id`),
  ADD KEY `eventapp_booking_user_id_6eac044a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `eventapp_cart`
--
ALTER TABLE `eventapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_cart_product_id_2dced2f2_fk_eventapp_eventdetails_id` (`product_id`),
  ADD KEY `eventapp_cart_user_id_9b7b2cdd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `eventapp_eventcategory`
--
ALTER TABLE `eventapp_eventcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_eventcategory_slug_fa99a316` (`slug`);

--
-- Indexes for table `eventapp_eventdetails`
--
ALTER TABLE `eventapp_eventdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_eventdetail_category_id_69dc3269_fk_eventapp_` (`category_id`),
  ADD KEY `eventapp_eventdetails_slug_0cdeea36` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `eventapp_address`
--
ALTER TABLE `eventapp_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eventapp_booking`
--
ALTER TABLE `eventapp_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventapp_cart`
--
ALTER TABLE `eventapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `eventapp_eventcategory`
--
ALTER TABLE `eventapp_eventcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eventapp_eventdetails`
--
ALTER TABLE `eventapp_eventdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `eventapp_address`
--
ALTER TABLE `eventapp_address`
  ADD CONSTRAINT `eventapp_address_user_id_aa40dde6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `eventapp_booking`
--
ALTER TABLE `eventapp_booking`
  ADD CONSTRAINT `eventapp_booking_address_id_3791b3c1_fk_eventapp_address_id` FOREIGN KEY (`address_id`) REFERENCES `eventapp_address` (`id`),
  ADD CONSTRAINT `eventapp_booking_product_id_7adf096e_fk_eventapp_eventdetails_id` FOREIGN KEY (`product_id`) REFERENCES `eventapp_eventdetails` (`id`),
  ADD CONSTRAINT `eventapp_booking_user_id_6eac044a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `eventapp_cart`
--
ALTER TABLE `eventapp_cart`
  ADD CONSTRAINT `eventapp_cart_product_id_2dced2f2_fk_eventapp_eventdetails_id` FOREIGN KEY (`product_id`) REFERENCES `eventapp_eventdetails` (`id`),
  ADD CONSTRAINT `eventapp_cart_user_id_9b7b2cdd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `eventapp_eventdetails`
--
ALTER TABLE `eventapp_eventdetails`
  ADD CONSTRAINT `eventapp_eventdetail_category_id_69dc3269_fk_eventapp_` FOREIGN KEY (`category_id`) REFERENCES `eventapp_eventcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
