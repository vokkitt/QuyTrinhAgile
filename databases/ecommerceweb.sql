-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 01:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(30, 'Đỏ'),
(31, 'Vàng'),
(32, 'Đen'),
(33, 'Nâu'),
(34, 'Xám'),
(35, 'Tím'),
(36, 'Xanh Dương'),
(37, 'Xanh Lá'),
(38, 'Trắng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(247, 'Trung Quốc'),
(246, 'Việt Nam'),
(248, 'Mỹ'),
(249, 'Nga'),
(250, 'Nhật Bản'),
(251, 'Campuchia'),
(252, 'Mã Lai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(11, 'Le Tai', '', 'tai24102002@gmail.com', '0941709701', 246, '2332', 'Sydney', 'abc', '3400', 'Le Tai', 'dsads', '0941709701', 247, '2332', 'Sydney', 'abc', '3400', 'Le Tai', 'adsds', '0941709701', 247, '2332', 'Sydney', 'abc', '3400', '81dc9bdb52d04dc20036dbd8313ed055', 'e24b525e80708125d8cdd4e6efb5d727', '2023-11-07 04:51:33', '1699361493', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(9, 'jjj', 'jjjj', '\nCustomer Name: Le Tai<br>\nCustomer Email: tai24102002@gmail.com<br>\nPayment Method: Bank Deposit<br>\nPayment Date: 2023-11-13 06:39:53<br>\nPayment Details: <br>\nTransaction Details: <br>sss<br>\nPaid Amount: 379<br>\nPayment Status: Completed<br>\nShipping Status: Completed<br>\nPayment Id: 1699886393<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Bose QuietComfort 45 Bluetooth Wireless Headphones<br>\nSize: <br>\nColor: <br>\nQuantity: 1<br>\nUnit Price: 279<br>\n            ', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(80, 'Áo thun', 18),
(81, 'Hoddie - Jacket', 18),
(83, 'Quần dài', 19),
(84, 'Quần ngắn', 19),
(85, 'Balo', 20),
(86, 'Áo thun - Babytee', 24),
(88, 'Jacket', 24),
(89, 'Quần ngắn', 25),
(90, 'Quần dài', 25),
(91, 'Dép', 26),
(92, 'Túi', 26),
(93, 'Áo thun - Polo', 21),
(95, 'Jacket - Hoodie', 21),
(96, 'Quần dài', 22),
(97, 'Quần ngắn', 22),
(98, 'Tất Vớ', 23),
(99, 'Balo', 23),
(100, 'Giày cổ thấp', 27),
(101, 'Giày cổ cao', 27),
(103, 'Vớ', 28),
(104, 'Túi', 28),
(105, 'Nón', 28);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(16, 'Health', 5),
(17, 'Household', 5),
(18, 'Áo', 9),
(19, 'Quần', 9),
(20, 'Phụ kiện', 9),
(21, 'Áo', 11),
(22, 'Quần', 11),
(23, 'Phụ kiện', 11),
(24, 'Áo', 10),
(25, 'Quần', 10),
(26, 'Phụ kiện', 10),
(27, 'Giày', 12),
(28, 'Phụ kiện', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(18, 116, 'Áo thun NowSG XX', 'M', 'Xanh Lá', '1', '50', '1701005121'),
(19, 103, 'Giày Monk\'s Robe ', '37', 'Nâu', '1', '50', '1701006795'),
(20, 116, 'Áo thun NowSG XX', 'M', 'Xanh Lá', '1', '50', '1701006795');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'BROKEN RADAR', '<p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><em style=\"margin: 0px; padding: 0px; letter-spacing: 0.16px;\"><span style=\"margin: 0px; padding: 0px; font-family: Arial;\"><b>Xin chào, mình là BrokenRadar , hãy gọi tắt là BRO . Dù bạn là người mới, hay chúng ta đã từng có khoảng thời gian dài bên nhau, thì có lẽ bạn vẫn cần BRO giới thiệu một chút về bản thân chứ, đúng không nào?&nbsp;</b></span></em><br></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"><span style=\"font-family: Arial;\">Với những bạn mới biết, mới nghe đến BRO thì quả là tuyệt vời, BRO rất nóng lòng để được làm quen cùng những người bạn mới. Còn với các bạn trẻ nào đã “in relationship with&nbsp;</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO&nbsp;</span><span style=\"font-family: Arial;\">” khá lâu rồi thì hãy cùng kiểm chứng xem chúng ta hiểu nhau đến mức nào nhé. Hãy đi thôi nào, các&nbsp;</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO</span><span style=\"font-family: Arial;\">-er ơi!&nbsp;</span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14pt; font-family: Roboto;\"><span style=\"padding: 0px; margin: 0px; font-family: Arial;\"><b>Không chỉ là thời trang, đó còn là phong cách sống.</b>&nbsp;</span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">&nbsp;</span><span style=\"font-family: Arial;\">mong muốn sẽ trở thành nơi tìm về của giới trẻ, là nơi giúp giới trẻ giải đáp tất cả những câu hỏi: Làm sao để cập nhật xu hướng thời trang mới nhất?, Làm sao để phối đồ đúng chất, chuẩn gu?, Làm sao để sở hữu những món đồ thời thượng nhưng vẫn vừa túi tiền? ...&nbsp; cùng vô vàn lời khuyên thiết thực khác giúp giới trẻ định hình phong cách.&nbsp;</span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14pt;\"><span style=\"padding: 0px; margin: 0px;\"><b><span style=\"font-family: Arial;\">Crush chưa có, nhưng mua sắm thì đã có&nbsp;</span><span style=\"font-size: 16px; letter-spacing: 0.16px;\"><span style=\"font-family: Arial;\">BRO</span><span style=\"font-family: Arial;\">&nbsp;</span></span><span style=\"font-family: Arial;\">lo</span></b></span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"><span style=\"font-family: Arial;\">Khơi nguồn với phong cách streetwear, thế nhưng&nbsp;</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO&nbsp;</span><span style=\"font-family: Arial;\">đã nhanh chóng chuyển mình và hướng đến đại đa số xu hướng thời trang đa dạng của giới trẻ. Với định hướng mới,&nbsp;</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO&nbsp;</span><span style=\"font-family: Arial;\">kỳ vọng sẽ hướng tới phục vụ đại đa số giới trẻ, để ai cũng thể chọn lựa và sắm cho mình những món set đồ ưng ý nhất, và dĩ nhiên với chi phí vô cùng cạnh tranh cùng rất nhiều chương trình ưu đãi nhất.&nbsp;</span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14pt; font-family: Roboto;\"><span style=\"padding: 0px; margin: 0px; font-family: Arial;\"><b>Công nghệ 4.0 cùng giao diện đạt chuẩn “chất chơi”</b></span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"padding: 0px; margin: 0px; font-size: 12pt;\"><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">&nbsp;</span><span style=\"font-family: Arial;\">chính là điểm giao thoa phá cách giữa thời trang và thời đại. Trên tiêu chí “Đơn giản, nhanh chóng và hợp thời”,&nbsp;</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO&nbsp;</span><span style=\"font-family: Arial;\">mong muốn sẽ mang đến những trải nghiệm lướt web và mua sắm đẳng cấp nhất, chuẩn chất của dân sành điệu. Bên cạnh đó,&nbsp;</span><span style=\"letter-spacing: 0.16px; font-family: Arial;\">BRO&nbsp;</span><span style=\"font-family: Arial;\">sở hữu đồng thời hai tài khoản trên mỗi kênh Facebook và Instagram nhằm tối ưu hóa việc truyền tải thông tin đến khách hàng.&nbsp;</span></span></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"><span style=\"font-weight: 700; font-family: Arial; font-size: 18.6667px; letter-spacing: 0.16px;\">Sự hợp tác cùng 4 thương hiệu :</span><br></p><p style=\"padding: 0px; margin-bottom: 1rem; color: rgb(16, 16, 16); font-family: Inter, sans-serif; font-size: 16px; letter-spacing: 0.16px;\"></p>', 'about-banner.jpg', 'Ecommerce PHP - About Us', 'about, about us, about fashion, about company, about ecommerce php project', 'Our goal has always been to get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'FAQ', 'faq-banner.jpg', 'Fashionys.com - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'LIÊN HỆ', 'contact-banner.jpg', 'Fashionys.com - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(67, 11, 'Le Tai', 'tai24102002@gmail.com', '2023-11-26 05:25:21', '', 150, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1701005121'),
(68, 11, 'Le Tai', 'tai24102002@gmail.com', '2023-11-26 05:53:15', '', 200, '', '', '', '', '', 'PayPal', 'Pending', 'Pending', '1701006795');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(103, 'Giày Monk\'s Robe ', '100', '50', 18, 'product-featured-103.jpeg', '', '', '', '', '', 12, 0, 1, 100),
(104, 'Giày Pattas Tomo', '100', '50', 20, 'product-featured-104.jpeg', '', '', '', '', '', 0, 0, 1, 100),
(105, 'Giày Royal White', '100', '70', 20, 'product-featured-105.jpeg', '', '', '', '', '', 6, 0, 1, 100),
(106, 'Giày Track 6.2', '100', '70', 20, 'product-featured-106.jpeg', '', '', '', '', '', 0, 0, 1, 100),
(107, 'Giày Basas Bumper Gump EXT', '200', '150', 20, 'product-featured-107.jpg', '', '', '', '', '', 0, 0, 1, 101),
(108, 'Giày Basas Workaday', '200', '150', 20, 'product-featured-108.jpg', '', '', '', '', '', 0, 0, 1, 101),
(109, 'Giày Vintas Jazico', '200', '150', 20, 'product-featured-109.jpeg', '', '', '', '', '', 0, 0, 1, 101),
(110, 'Giày Vintas Jazico', '200', '150', 20, 'product-featured-110.jpeg', '', '', '', '', '', 0, 0, 1, 101),
(111, 'Vớ trơn', '', '20', 200, 'product-featured-111.jpg', '', '', '', '', '', 1, 0, 1, 103),
(112, 'Vớ sọc', '', '25', 200, 'product-featured-112.jpg', '', '', '', '', '', 1, 0, 1, 103),
(113, 'Túi Ananas Coppy Reup', '', '10', 10, 'product-featured-113.jpg', '', '', '', '', '', 3, 0, 1, 104),
(114, 'Nón bóng rổ ', '', '20', 20, 'product-featured-114.jpg', '', '', '', '', '', 2, 0, 1, 105),
(115, 'Nón Trucker 2.0', '', '20', 200, 'product-featured-115.jpg', '', '', '', '', '', 2, 0, 1, 105),
(116, 'Áo thun NowSG XX', '', '50', 28, 'product-featured-116.jpg', '', '', '', '', '', 14, 0, 1, 93),
(117, 'Áo Polo NowSG Oversize', '', '50', 20, 'product-featured-117.jpg', '', '', '', '', '', 1, 0, 1, 93),
(118, 'Áo Polo NowSG Kickack', '', '50', 20, 'product-featured-118.jpg', '', '', '', '', '', 0, 0, 1, 93),
(119, 'NowSG Jacket Line', '70', '60', 20, 'product-featured-119.jpg', '', '', '', '', '', 0, 0, 1, 95),
(120, 'NowSG Jacket Basic', '70', '50', 20, 'product-featured-120.jpg', '', '', '', '', '', 1, 0, 1, 95),
(121, 'NowSG Jacket Basic 2.0', '70', '50', 20, 'product-featured-121.jpg', '', '', '', '', '', 1, 0, 1, 95),
(122, 'Grey Mix AX Hoodie', '100', '70', 20, 'product-featured-122.jpg', '', '', '', '', '', 3, 0, 1, 95),
(123, 'NowSG Varsity UX 2.0', '70', '60', 20, 'product-featured-123.jpg', '', '', '', '', '', 0, 0, 1, 95),
(124, 'Quần Cargo Trắng dây', '', '70', 30, 'product-featured-124.jpg', '', '', '', '', '', 0, 0, 1, 96),
(125, 'Quần  NowSG Skinny Xám ', '', '50', 32, 'product-featured-125.jpg', '', '', '', '', '', 1, 0, 1, 96),
(126, 'Quần NowSG Basic Thun', '', '50', 50, 'product-featured-126.jpg', '', '', '', '', '', 2, 0, 1, 96),
(127, 'Quần Short Ninja Over', '', '30', 20, 'product-featured-127.jpg', '', '', '', '', '', 1, 0, 1, 97),
(128, 'Quần Short Xám Thùng', '', '30', 20, 'product-featured-128.jpg', '', '', '', '', '', 0, 0, 1, 97),
(129, 'Quần Short Basic Đen', '', '30', 20, 'product-featured-129.jpg', '', '', '', '', '', 0, 0, 1, 97),
(130, 'Quần Short Basic Trắng', '', '30', 20, 'product-featured-130.jpg', '', '', '', '', '', 1, 0, 1, 97),
(131, 'Vớ Gucci x NowSG', '', '200', 20, 'product-featured-131.jpg', '', '', '', '', '', 1, 0, 1, 98),
(132, 'Vớ Line NowSG ', '', '20', 50, 'product-featured-132.jpg', '', '', '', '', '', 1, 0, 1, 98),
(133, 'Balo NowSG Basic', '', '50', 20, 'product-featured-133.jpg', '', '', '', '', '', 1, 0, 1, 99),
(134, 'Balo NowSG Basic 2.0', '', '50', 20, 'product-featured-134.jpg', '', '', '', '', '', 0, 0, 1, 99),
(135, 'Balo NowSG OpenBook', '', '50', 20, 'product-featured-135.jpg', '', '', '', '', '', 1, 0, 1, 99),
(136, 'Áo thun SWE Heart ', '', '30', 32, 'product-featured-136.png', '', '', '', '', '', 7, 0, 1, 86),
(137, 'Áo thun SWE WaveLines', '', '30', 32, 'product-featured-137.png', '', '', '', '', '', 1, 0, 1, 86),
(138, 'Áo thun SWE Lady', '', '30', 32, 'product-featured-138.png', '', '', '', '', '', 0, 0, 1, 86),
(139, 'Áo Babytee SWE Lady', '', '30', 32, 'product-featured-139.png', '', '', '', '', '', 1, 0, 1, 86),
(140, 'Áo Babytee SWE Wind', '', '30', 32, 'product-featured-140.jpg', '', '', '', '', '', 0, 0, 1, 86),
(141, 'Áo Babytee SWE Reye', '', '30', 32, 'product-featured-141.png', '', '', '', '', '', 0, 0, 1, 86),
(142, 'Áo Babytee SWE Cros', '', '30', 32, 'product-featured-142.png', '', '', '', '', '', 0, 0, 1, 86),
(143, 'Quần SWE Hunters', '', '50', 50, 'product-featured-143.png', '', '', '', '', '', 0, 0, 1, 90),
(144, 'Quần SWE Jean', '', '50', 50, 'product-featured-144.png', '', '', '', '', '', 1, 0, 1, 90),
(145, 'Quần Short SWE Xanh', '', '30', 20, 'product-featured-145.png', '', '', '', '', '', 0, 0, 1, 89),
(146, 'Quần Short SWE Cargo', '', '30', 20, 'product-featured-146.png', '', '', '', '', '', 0, 0, 1, 89),
(147, 'Dép SWE Basic Đen', '', '20', 20, 'product-featured-147.png', '', '', '', '', '', 1, 0, 1, 91),
(148, 'Dép SWE Basic Xanh', '', '20', 20, 'product-featured-148.jpg', '', '', '', '', '', 1, 0, 1, 91),
(149, 'Túi SWE Basic Trắng', '', '10', 20, 'product-featured-149.png', '', '', '', '', '', 0, 0, 1, 92),
(150, 'Túi SWE Puffer', '', '20', 20, 'product-featured-150.jpg', '', '', '', '', '', 0, 0, 1, 92),
(151, 'Túi SWE Messenger', '', '20', 20, 'product-featured-151.jpeg', '', '', '', '', '', 0, 0, 1, 92),
(152, 'SWE Backpack Đen', '', '20', 20, 'product-featured-152.png', '', '', '', '', '', 0, 0, 1, 92),
(153, 'Áo khoác da SWE Later', '', '50', 20, 'product-featured-153.png', '', '', '', '', '', 0, 0, 1, 88),
(154, 'Áo khoác Varsity SWE Gothic', '', '50', 20, 'product-featured-154.png', '', '', '', '', '', 0, 0, 1, 88),
(155, 'Áo khoác SWE Xanh', '', '50', 20, 'product-featured-155.png', '', '', '', '', '', 0, 0, 1, 88),
(156, 'Áo khoác SWE Basic Đen', '', '50', 20, 'product-featured-156.png', '', '', '', '', '', 1, 0, 1, 88),
(157, 'Áo thun Hades Lamp Legend', '30', '20', 20, 'product-featured-157.jpg', '', '', '', '', '', 1, 0, 1, 80),
(158, 'Áo thun Hades Vaporwild Wash ', '30', '20', 20, 'product-featured-158.jpg', '', '', '', '', '', 0, 0, 1, 80),
(159, 'Áo thun Hades Insurelady', '30', '20', 20, 'product-featured-159.jpg', '', '', '', '', '', 0, 0, 1, 80),
(160, 'Áo thun Hades Obscure Line', '30', '20', 20, 'product-featured-160.jpg', '', '', '', '', '', 0, 0, 1, 80),
(161, 'Hoodie Hades Metal Trunks ', '', '30', 20, 'product-featured-161.jpg', '', '', '', '', '', 0, 0, 1, 81),
(162, 'Hoodie Hades Tumble Down Boxy', '', '30', 20, 'product-featured-162.jpg', '', '', '', '', '', 0, 0, 1, 81),
(163, 'Hoodie Inhuman', '', '30', 20, 'product-featured-163.jpg', '', '', '', '', '', 0, 0, 1, 81),
(164, 'Hoodie Wadrace', '50', '30', 20, 'product-featured-164.jpg', '', '', '', '', '', 0, 0, 1, 81),
(165, 'Balo Hades x Gucci', '', '100', 5, 'product-featured-165.jpg', '', '', '', '', '', 0, 0, 1, 85),
(166, 'Balo Da Hades', '', '60', 20, 'product-featured-166.jpg', '', '', '', '', '', 0, 0, 1, 85),
(167, 'Balo Hades Basic ', '', '40', 20, 'product-featured-167.jpg', '', '', '', '', '', 0, 0, 1, 85),
(168, 'Áo khoác Hades Tawny', '', '50', 20, 'product-featured-168.jpg', '', '', '', '', '', 0, 0, 1, 81),
(169, 'Áo khoác Hades Varsity Joker', '', '50', 20, 'product-featured-169.jpg', '', '', '', '', '', 0, 0, 1, 81),
(170, 'Áo khoác da Hades Race', '100', '70', 20, 'product-featured-170.jpg', '', '', '', '', '', 0, 0, 0, 81),
(171, 'Áo khoác dù Hades Race', '60', '50', 20, 'product-featured-171.jpg', '', '', '', '', '', 1, 0, 1, 81),
(172, 'Quần Hades Jean', '', '50', 20, 'product-featured-172.jpg', '', '', '', '', '', 0, 0, 1, 83),
(173, 'Quần Hades Jean Wax', '', '50', 20, 'product-featured-173.jpg', '', '', '', '', '', 0, 0, 1, 83),
(174, 'Quần Hades Cargo Nâu', '', '50', 20, 'product-featured-174.jpg', '', '', '', '', '', 0, 0, 1, 83),
(175, 'Quần Hades Đen Basic', '', '30', 20, 'product-featured-175.jpg', '', '', '', '', '', 0, 0, 1, 83),
(176, 'Quần Short Hades Cargo', '', '20', 20, 'product-featured-176.jpg', '', '', '', '', '', 0, 0, 1, 84),
(177, 'Quần Short Hades ĐenXxám', '', '20', 20, 'product-featured-177.jpg', '', '', '', '', '', 3, 0, 1, 84),
(178, 'Quần Short Hades Đen Basic', '', '20', 20, 'product-featured-178.jpg', '', '', '', '', '', 0, 0, 1, 84);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(268, 33, 103),
(269, 36, 106),
(270, 38, 109),
(271, 33, 110),
(272, 38, 105),
(273, 32, 108),
(274, 32, 107),
(275, 37, 104),
(281, 30, 111),
(282, 31, 111),
(283, 32, 111),
(284, 36, 111),
(285, 37, 111),
(286, 32, 112),
(287, 38, 112),
(289, 32, 113),
(290, 32, 114),
(291, 38, 115),
(293, 37, 116),
(294, 38, 117),
(295, 34, 118),
(296, 32, 119),
(297, 32, 120),
(298, 32, 121),
(300, 32, 123),
(301, 34, 122),
(302, 38, 124),
(304, 37, 126),
(305, 38, 126),
(306, 32, 127),
(307, 34, 128),
(308, 32, 129),
(309, 38, 130),
(310, 34, 125),
(311, 32, 131),
(312, 33, 131),
(313, 32, 132),
(314, 37, 132),
(315, 38, 132),
(316, 32, 133),
(317, 32, 134),
(318, 32, 135),
(319, 38, 137),
(320, 32, 138),
(321, 32, 139),
(323, 32, 141),
(324, 34, 142),
(325, 32, 140),
(326, 33, 143),
(328, 36, 144),
(330, 33, 146),
(331, 37, 145),
(332, 32, 147),
(333, 37, 148),
(334, 38, 149),
(336, 32, 151),
(337, 32, 152),
(338, 38, 150),
(339, 32, 153),
(340, 32, 154),
(341, 37, 155),
(342, 32, 156),
(343, 32, 157),
(344, 32, 160),
(345, 33, 159),
(346, 34, 158),
(351, 32, 165),
(352, 32, 166),
(356, 32, 167),
(357, 38, 163),
(358, 33, 164),
(359, 33, 162),
(360, 33, 161),
(361, 33, 168),
(362, 30, 169),
(363, 32, 170),
(364, 34, 171),
(365, 36, 172),
(366, 34, 173),
(367, 33, 174),
(368, 32, 175),
(369, 34, 176),
(370, 34, 177),
(371, 32, 178);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(133, '133.jpeg', 103),
(134, '134.jpeg', 103),
(135, '135.jpeg', 104),
(136, '136.jpeg', 104),
(137, '137.jpeg', 105),
(138, '138.jpeg', 105),
(139, '139.jpeg', 106),
(140, '140.jpeg', 106),
(141, '141.jpg', 107),
(142, '142.jpg', 107),
(143, '143.jpg', 108),
(144, '144.jpg', 108),
(145, '145.jpeg', 109),
(146, '146.jpeg', 109),
(147, '147.jpeg', 110),
(148, '148.jpeg', 110),
(149, '149.jpg', 111),
(150, '150.jpg', 111),
(151, '151.jpg', 111),
(152, '152.jpg', 111),
(153, '153.jpg', 112),
(154, '154.jpg', 112),
(155, '155.jpg', 112),
(156, '156.jpg', 113),
(157, '157.jpg', 113),
(158, '158.jpg', 114),
(159, '159.jpg', 114),
(160, '160.jpg', 115),
(161, '161.jpg', 115),
(162, '162.jpg', 116),
(163, '163.jpg', 116),
(164, '164.jpg', 116),
(165, '165.jpg', 117),
(166, '166.jpg', 118),
(167, '167.jpg', 118),
(168, '168.jpg', 119),
(169, '169.jpg', 119),
(170, '170.jpg', 120),
(171, '171.jpg', 121),
(172, '172.jpg', 121),
(173, '173.jpg', 122),
(174, '174.jpg', 122),
(175, '175.jpg', 123),
(176, '176.jpg', 123),
(177, '177.jpg', 124),
(178, '178.jpg', 125),
(179, '179.jpg', 125),
(180, '180.jpg', 126),
(181, '181.jpg', 126),
(182, '182.jpg', 126),
(183, '183.jpg', 127),
(184, '184.jpg', 128),
(185, '185.jpg', 128),
(186, '186.jpg', 129),
(187, '187.jpg', 130),
(188, '188.jpg', 131),
(189, '189.jpg', 132),
(190, '190.jpg', 132),
(191, '191.jpg', 132),
(192, '192.jpg', 133),
(193, '193.jpg', 134),
(194, '194.jpg', 135),
(195, '195.png', 136),
(196, '196.png', 136),
(197, '197.png', 137),
(198, '198.png', 137),
(199, '199.png', 138),
(200, '200.png', 138),
(201, '201.png', 139),
(202, '202.png', 139),
(203, '203.jpg', 140),
(204, '204.jpg', 140),
(205, '205.png', 141),
(206, '206.png', 141),
(207, '207.png', 142),
(208, '208.png', 142),
(209, '209.png', 143),
(210, '210.png', 143),
(211, '211.png', 144),
(212, '212.png', 144),
(213, '213.png', 145),
(214, '214.png', 145),
(215, '215.png', 146),
(216, '216.png', 146),
(217, '217.jpg', 148),
(218, '218.jpg', 148),
(219, '219.png', 149),
(220, '220.png', 149),
(221, '221.png', 150),
(222, '222.jpg', 150),
(223, '223.jpeg', 151),
(224, '224.jpeg', 151),
(225, '225.png', 152),
(226, '226.png', 152),
(227, '227.png', 153),
(228, '228.png', 153),
(229, '229.png', 154),
(230, '230.png', 154),
(231, '231.jpg', 155),
(232, '232.png', 156),
(233, '233.png', 156),
(234, '234.jpg', 157),
(235, '235.jpg', 158),
(236, '236.jpg', 159),
(237, '237.jpg', 160),
(238, '238.jpg', 161),
(239, '239.jpg', 161),
(240, '240.jpg', 162),
(241, '241.jpg', 162),
(242, '242.jpg', 163),
(243, '243.jpg', 163),
(244, '244.jpg', 164),
(245, '245.jpg', 165),
(246, '246.jpg', 165),
(247, '247.jpg', 166),
(248, '248.jpg', 166),
(249, '249.jpg', 167),
(250, '250.jpg', 167),
(251, '251.jpg', 168),
(252, '252.jpg', 168),
(253, '253.jpg', 169),
(254, '254.jpg', 169),
(255, '255.jpg', 170),
(256, '256.jpg', 170),
(257, '257.jpg', 171),
(258, '258.jpg', 171),
(259, '259.jpg', 172),
(260, '260.jpg', 172),
(261, '261.jpg', 173),
(262, '262.jpg', 173),
(263, '263.jpg', 174),
(264, '264.jpg', 174),
(265, '265.jpg', 175),
(266, '266.jpg', 175),
(267, '267.jpg', 176),
(268, '268.jpg', 176),
(269, '269.jpg', 177),
(270, '270.jpg', 177),
(271, '271.jpg', 178),
(272, '272.jpg', 178);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(448, 52, 103),
(449, 53, 103),
(450, 54, 103),
(451, 55, 103),
(454, 55, 106),
(455, 57, 106),
(456, 58, 106),
(457, 53, 109),
(458, 54, 109),
(459, 58, 109),
(460, 52, 110),
(461, 55, 110),
(462, 56, 110),
(463, 53, 105),
(464, 54, 105),
(465, 53, 108),
(466, 54, 108),
(467, 54, 107),
(468, 57, 107),
(469, 58, 107),
(470, 53, 104),
(471, 54, 104),
(472, 57, 104),
(473, 58, 104),
(475, 59, 111),
(476, 59, 112),
(478, 59, 113),
(479, 59, 114),
(480, 59, 115),
(484, 49, 116),
(485, 50, 116),
(486, 51, 116),
(487, 48, 117),
(488, 49, 117),
(489, 50, 117),
(490, 48, 118),
(491, 49, 118),
(492, 50, 118),
(493, 49, 119),
(494, 50, 119),
(495, 49, 120),
(496, 50, 120),
(497, 51, 120),
(498, 50, 121),
(499, 51, 121),
(502, 49, 123),
(503, 50, 123),
(504, 49, 122),
(505, 50, 122),
(506, 50, 124),
(507, 51, 124),
(511, 49, 126),
(512, 50, 126),
(513, 51, 126),
(514, 50, 127),
(515, 51, 127),
(516, 50, 128),
(517, 51, 128),
(518, 59, 129),
(519, 59, 130),
(520, 49, 125),
(521, 50, 125),
(522, 51, 125),
(523, 59, 131),
(524, 59, 132),
(525, 59, 133),
(526, 59, 134),
(527, 59, 135),
(528, 49, 136),
(529, 50, 136),
(530, 51, 136),
(531, 49, 137),
(532, 50, 137),
(533, 51, 137),
(534, 49, 138),
(535, 50, 138),
(536, 51, 138),
(537, 49, 139),
(538, 51, 139),
(542, 49, 141),
(543, 50, 141),
(544, 49, 142),
(545, 50, 142),
(546, 49, 140),
(547, 50, 140),
(548, 51, 140),
(549, 49, 143),
(550, 50, 143),
(554, 49, 144),
(555, 50, 144),
(556, 51, 144),
(558, 59, 146),
(559, 59, 145),
(560, 54, 147),
(561, 55, 147),
(562, 56, 147),
(563, 54, 148),
(564, 55, 148),
(565, 56, 148),
(566, 57, 148),
(567, 59, 149),
(569, 59, 151),
(570, 59, 152),
(571, 59, 150),
(572, 59, 153),
(573, 49, 154),
(574, 50, 154),
(575, 49, 155),
(576, 50, 155),
(577, 49, 156),
(578, 50, 156),
(579, 51, 156),
(580, 49, 157),
(581, 50, 157),
(582, 51, 157),
(583, 49, 160),
(584, 50, 160),
(585, 51, 160),
(586, 49, 159),
(587, 50, 159),
(588, 51, 159),
(589, 49, 158),
(590, 50, 158),
(591, 51, 158),
(601, 59, 165),
(602, 59, 166),
(606, 59, 167),
(607, 49, 163),
(608, 50, 163),
(609, 51, 163),
(610, 48, 164),
(611, 49, 164),
(612, 49, 162),
(613, 51, 162),
(614, 50, 161),
(615, 51, 161),
(616, 59, 168),
(617, 49, 169),
(618, 50, 169),
(619, 49, 170),
(620, 50, 170),
(621, 51, 170),
(622, 49, 171),
(623, 50, 171),
(624, 49, 172),
(625, 50, 172),
(626, 51, 172),
(627, 49, 173),
(628, 50, 173),
(629, 59, 174),
(630, 49, 175),
(631, 50, 175),
(632, 59, 176),
(633, 49, 177),
(634, 50, 177),
(635, 59, 178);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days!', 'service-5.png'),
(6, 'Free Shipping', 'Enjoy free shipping inside US.', 'service-6.png'),
(7, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png'),
(8, 'Satisfaction Guarantee', 'We guarantee you with our quality satisfaction.', 'service-8.png'),
(9, 'Secure Checkout', 'Providing Secure Checkout Options for all', 'service-9.png'),
(10, 'Money Back Guarantee', 'Offer money back guarantee on our products', 'service-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2023 - Developed By BROKEN RADAR', '285 An Dương Vương , Quận 5 , TP.HCM', 'brokenradar@gmail.com', '+84 941709701', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.020958405712!2d-84.39261378514685!3d39.151504939531584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841acfb8da30203%3A0x193175e741781f21!2s4293%20Simpson%20Ave%2C%20Cincinnati%2C%20OH%2045227%2C%20USA!5e0!3m2!1sen!2snp!4v1647796779407!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'support@ecommercephp.com', 'Visitor Email Message from Ecommerce Site PHP', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 5, 6, 8, 'Ecommerce PHP', 'online fashion store, garments shop, online garments', 'ecommerce php project with mysql database', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'Our list on Top Featured Products', 'Latest Products', 'Our list of recently added products', 'Popular Products', 'Popular products based on customer\'s choice', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@ecom.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'BIDV - 66110005544\r\nLe Quoc Tai - Viet Nam', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(48, 'S'),
(49, 'M'),
(50, 'L'),
(51, 'XL'),
(52, '37'),
(53, '38'),
(54, '39'),
(55, '40'),
(56, '41'),
(57, '42'),
(58, '43'),
(59, 'Freesize');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Sàn Thương Mại Điện Tử Việt Nam', 'Với sự hợp tác cùng 4 Local Brand đình đám', 'Xem Ngay', 'about.php', 'Center'),
(4, 'slider-4.jpg', 'HADES', '', 'Lụm ngay !', 'product-category.php?id=9&type=top-category', 'Left'),
(5, 'slider-5.jpg', 'SWE', '', 'Săn ngay !', 'product-category.php?id=10&type=top-category', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(9, 'HADES', 1),
(10, 'SWE', 1),
(11, 'NOWSG', 1),
(12, 'ANANAS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
