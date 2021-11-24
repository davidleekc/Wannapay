-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 03:57 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_balance` double(10,2) NOT NULL DEFAULT 0.00,
  `account_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `account_name`, `address`, `description`, `account_balance`, `account_verified`, `created_at`, `updated_at`) VALUES
(103, 'Iab8732361', 'Prof. Dagmar Larkin', '41584 Daija Corner Apt. 084\nLake Rosina, KS 59637', 'Temporibus magnam dignissimos ratione blanditiis. Nulla corporis voluptatibus hic non rerum voluptas. A corrupti qui qui asperiores alias maxime. Non dolores unde perspiciatis quis.', 1327.88, 1, NULL, NULL),
(104, 'Q6T3000244', 'Benny Quigley', '2009 Stark Ville Apt. 443\nDejahtown, NV 64736', 'Assumenda et consequuntur reprehenderit. Sit corrupti tempora incidunt ut adipisci.', 3191.46, 1, NULL, '2021-11-01 07:08:45'),
(105, 'Xhd1144878', 'Eloisa Schaden', '567 Orval Village\nDibbertland, AR 76227', 'Et aut earum omnis dolores ut. Tempora eos neque aut non. Dignissimos sed similique facere omnis hic. Velit repellendus rerum necessitatibus voluptatem quis nulla.', 3270.17, 1, NULL, NULL),
(106, 'G0a5821174', 'Marjory Hamill', '555 Kallie Stream Suite 381\nSouth Dixieport, UT 36638-2950', 'Architecto quia qui cupiditate. Doloremque asperiores assumenda illum et porro velit. Voluptas placeat qui quasi possimus rerum iste repellendus.', 3927.48, 1, NULL, NULL),
(107, 'tmf8986197', 'Dr. Wilma Pollich Sr.', '48929 Becker Estates\nSchillermouth, NM 85439-5430', 'Et quibusdam id sed deserunt. Error dolor inventore et ea sapiente enim aut. Dolorem voluptatem beatae enim blanditiis mollitia recusandae voluptatem voluptate.', 3550.98, 0, NULL, NULL),
(108, 'x803720988', 'Dorthy Pollich', '671 Cleveland Place\nSouth Erling, IL 32213-4308', 'Autem impedit eum iste rerum et aut. Sint sit sapiente cumque ab culpa. Ut at sequi itaque sequi consequuntur qui. Molestiae officia minima harum porro. Harum ducimus porro ut.', 1493.96, 0, NULL, NULL),
(109, 'GCf7788264', 'Terence Rutherford', '812 Dare Alley\nThompsonton, TX 64948', 'Voluptatibus sunt aut nihil saepe sed rerum dicta. Et dolores accusamus sed et. Eos veniam corrupti qui asperiores. Necessitatibus veniam quae voluptatum aut quos accusantium.', 3177.09, 1, NULL, NULL),
(110, 'qXt2973623', 'Aaron Mayer Jr.', '533 Fidel Stream\nSouth Xaviershire, CO 57320-2626', 'Incidunt maxime totam quisquam. Dolorem ut officiis a soluta ad et odit.', 1894.60, 0, NULL, NULL),
(111, 'RRw7840126', 'Miss Melisa Ebert I', '622 Torphy Landing\nChanellechester, DE 05992-1009', 'Illum sunt quisquam est numquam. Odio tempora perferendis dolore quas repudiandae quia vel atque. Sed nostrum ad qui veniam quae cum qui.', 2293.54, 0, NULL, NULL),
(112, 'IBW5316580', 'Darby Gleichner', '4231 Bailey Prairie Suite 474\nNew Leopoldmouth, AK 14396-2339', 'Nam eius illum perspiciatis optio aliquid quam. Et numquam vero aspernatur et reprehenderit magni vero. Aut temporibus delectus debitis quis enim sed sunt inventore.', 992.28, 1, NULL, NULL),
(113, '9RW7959001', 'Candice O\'Keefe', '431 Wiza Drive\nShaniafort, NC 98122-1023', 'Ad consequatur est voluptatem rem recusandae iste. Rerum libero debitis quas ut mollitia voluptas. Et velit porro voluptates aut qui. Animi ullam porro cumque qui repellat suscipit autem.', 231.07, 1, NULL, NULL),
(114, 'svr9015828', 'Marianne Emmerich', '4606 Doyle Meadows\nHayesshire, CO 72084', 'Qui consequuntur maiores velit ut sequi quisquam. Ut quidem aut ipsum. Natus rerum et debitis consequatur perspiciatis quia aliquam. Quo est autem ut exercitationem et.', 1255.54, 1, NULL, NULL),
(115, 'fTK7037645', 'Prof. Jeramy Reilly', '7039 Heaney Mountains Apt. 347\nDavistown, PA 92689', 'Sed sint accusantium nostrum perspiciatis asperiores. Rem quas voluptas cum dolores quibusdam quis vel. Et eaque sed aut ipsum.', 1586.83, 0, NULL, NULL),
(116, '2PZ9354311', 'Julie Schimmel IV', '37147 Mandy Spring\nHellerburgh, MA 70438-0961', 'Soluta ipsum neque perspiciatis quae non minima dolore. Itaque laudantium sequi tempore corporis sequi. Qui ipsum ab dolore id tempora et voluptatibus dolor.', 2804.91, 0, NULL, NULL),
(117, 'yLC2476194', 'Jesus Rippin', '41426 Gennaro Bypass\nCollinsborough, SD 22257', 'Omnis qui repellat est sunt dolorem fugit non velit. Quo sunt optio dolore voluptatem id quis sed. Aspernatur quo voluptas voluptas eligendi aut eaque sapiente.', 4717.57, 1, NULL, NULL),
(118, 'GF71605127', 'Prof. Keaton Waters', '82719 Eichmann Lodge\nSouth Ottisborough, AL 23660-0547', 'Quis sed dolores quod. Sit dolorum quia fugiat illum. Sit ipsam ducimus consequatur officiis aperiam. Modi vel fugiat temporibus. Quod eos consequuntur et.', 4908.56, 0, NULL, NULL),
(119, 'MK49181243', 'Jalyn Dicki MD', '428 Bertha Cape Suite 439\nSouth Marley, DE 46093-0231', 'Voluptatibus vel cum rem excepturi. Aut enim ut voluptatibus veritatis distinctio iure velit. Harum dolores laboriosam vel nobis qui reiciendis et.', 4620.24, 1, NULL, NULL),
(120, 'i2G8972835', 'Melisa Koepp III', '604 Goyette Flats Suite 988\nPort Annabell, MD 80724', 'Repellendus facilis doloremque corrupti minima. Consequuntur quia qui mollitia et maiores.', 2343.10, 0, NULL, NULL),
(121, 'q4X1439964', 'Deondre Beier', '6893 Tobin Tunnel\nWest Grover, DE 61150', 'Quia maiores et et omnis. Perferendis aliquid animi ut facilis. Iure eos natus assumenda fugit officiis. Aut praesentium et nemo non nesciunt cupiditate.', 1711.37, 0, NULL, NULL),
(122, 'f735079160', 'Miguel Kozey', '62000 Steve Road\nNorth Mosestad, IA 58281-4821', 'Architecto qui alias sint consequatur illo aperiam quam quia. Ut voluptate praesentium voluptas deleniti minus quia. Asperiores rerum laudantium omnis dolor et porro inventore.', 1980.87, 1, NULL, NULL),
(123, 'yUo8815961', 'Dr. Juliet Berge Jr.', '24488 Zemlak Vista\nEast Zachariah, MS 32568-6742', 'Saepe eum optio enim minima accusamus et quia illum. Iure voluptas nulla omnis. Repellat non optio ex et.', 999.07, 0, NULL, NULL),
(124, 'Hac5032102', 'Mr. Rylan Bayer PhD', '287 Assunta Avenue Apt. 351\nPort Rashad, OK 19554-1952', 'Enim omnis laudantium rerum. Reprehenderit inventore fuga similique iste. Aspernatur qui ipsum aut esse. Ad quia quo debitis a.', 3658.09, 1, NULL, NULL),
(125, 'jEx6180639', 'Dr. Audra Kuhic Sr.', '18089 Witting Drives\nDavionview, WV 13458', 'Dolor officia quam repellat aspernatur debitis nobis eos. Dolor totam sunt temporibus. Qui quas quas dolorum qui assumenda earum sed. Occaecati aliquam atque aliquid voluptatem fugit fugiat qui.', 919.50, 0, NULL, NULL),
(126, 'kAY9165495', 'Dr. Bettye O\'Connell V', '45690 Lewis Throughway Suite 621\nWardhaven, MA 18410-4634', 'Et aut enim quae numquam enim. Quo sapiente autem molestiae accusamus consequatur sed. Ipsa reprehenderit voluptatem mollitia quaerat. Quis doloribus impedit suscipit animi nulla libero velit.', 3022.81, 1, NULL, NULL),
(127, 'hMj4713076', 'Lizzie Abbott', '65862 Klocko Camp\nWest Summershire, AR 32920', 'Reprehenderit esse sit suscipit sequi dolorum. Culpa saepe laboriosam placeat. Quas cupiditate ut optio ut.', 1704.62, 0, NULL, NULL),
(128, 'Sua8843845', 'Prof. Lillie Brown', '34573 Greenfelder Orchard Suite 793\nTorphyburgh, SD 54884', 'Qui velit et nesciunt dolor et quam. Et eum ad ipsum voluptate magni rerum voluptatem. Quaerat quia totam quae quo dolorum quo suscipit.', 3717.18, 0, NULL, NULL),
(129, 'W2T8531963', 'Lorena Kovacek MD', '14617 D\'Amore Vista\nDanialland, NV 28658', 'Ducimus quam sed et odit repudiandae eaque voluptatem. Aut voluptate impedit voluptatem voluptatem. Quos molestias deserunt quis quam consequatur earum. Ut similique perferendis accusantium quo sed.', 3015.08, 0, NULL, NULL),
(130, 'rvs8250946', 'Kenyatta Gaylord', '686 Lacy Tunnel Suite 396\nWest Sigurdview, ID 10396', 'Fugiat consequatur autem dolorum officia eum. In tenetur porro tempora esse quis tempora. Aliquid consequatur impedit recusandae sed rem et. Sed dolorem vel dolorem in.', 2744.10, 1, NULL, NULL),
(131, 'oo16916170', 'Elaina Cronin', '420 Cummings Club\nEast Geoview, ME 42076', 'A odit dolore voluptatum tenetur voluptatem ipsa. Fugit autem sequi tenetur dicta. Laudantium dolor voluptate atque vero modi earum voluptates. Animi neque vel vero ducimus est.', 2453.16, 0, NULL, NULL),
(132, 'Eed1713675', 'Ms. Alene Kemmer', '732 Claud Highway Suite 312\nKuvalisburgh, NV 65426', 'Dignissimos accusamus iure quis consequuntur excepturi nisi. Quo recusandae ut et qui. Quia necessitatibus blanditiis aliquam est nemo ut. Id deserunt maxime optio inventore.', 1950.98, 0, NULL, NULL),
(133, 'sgi6111181', 'Prof. Gudrun Smitham', '499 Hirthe Turnpike\nLake Kileymouth, WI 17926-3098', 'Sint quasi delectus quod nostrum enim et quidem necessitatibus. Expedita ut cumque quae facilis tempora reprehenderit. Sapiente id velit molestias aut necessitatibus harum facilis.', 3114.08, 0, NULL, NULL),
(134, 'fcm4517312', 'Candace Haley', '5891 Rollin Extension Apt. 207\nNorth Coleman, DC 74613', 'Voluptas sed dolorem aut magni est. Veritatis a id ut soluta molestias corrupti.', 4864.62, 0, NULL, NULL),
(135, 'VkP1667795', 'Royal Farrell', '2973 Ralph Greens Apt. 530\nLangoshfurt, MS 09891', 'Aut suscipit beatae rerum nam id possimus. Et quas non quis. In dolorum eligendi omnis totam. Esse sint possimus optio voluptatum eos quas.', 1761.21, 0, NULL, NULL),
(136, 'aES3915991', 'Kali Padberg IV', '4758 Novella Freeway\nMyahaven, ME 85970', 'Soluta nobis et quidem dolores ipsa maxime voluptatibus. Ad velit sed ducimus maiores accusamus. Quam ullam sequi qui quo enim. Itaque aut veniam officia quis magnam qui rerum.', 3178.85, 0, NULL, NULL),
(137, 'GXq5855300', 'Mr. Cole Hamill DVM', '3371 Kuphal Lock Suite 922\nSauerstad, CO 72003', 'Enim quia cupiditate voluptatibus quo. Non rem quam repellendus omnis quam nemo dolorum quo. Qui numquam et earum consequatur ut consequatur. Consequatur quaerat excepturi qui fugit.', 2872.85, 0, NULL, NULL),
(138, 'woc9478651', 'Tabitha Anderson', '826 Donnelly Parkway Suite 686\nMireilleborough, LA 94977', 'Expedita excepturi cumque ut consectetur enim. Quia rerum et eaque aperiam. Earum quos veniam neque soluta rerum reprehenderit et. Et quas sequi officiis reprehenderit vel praesentium qui.', 4083.95, 0, NULL, NULL),
(139, 'fOY8812212', 'Shanny Reichel', '65913 Okuneva Union\nAuertown, MT 96885-3291', 'Ut quasi consectetur reprehenderit ex ex iste. Maxime rem quisquam ad minima distinctio. Non reprehenderit totam quis enim fugit expedita. Quia et non optio mollitia.', 3931.48, 1, NULL, NULL),
(140, 'ZTl3980233', 'Alberto Gleichner', '94841 Raymundo Cove Apt. 712\nNorth Diego, CO 02229', 'Qui vel magni sapiente cumque eveniet. Molestiae veniam ut est aspernatur quam. Molestias distinctio minima quo.', 4888.52, 0, NULL, NULL),
(141, 'F3M4393838', 'Keaton Bernier', '7300 Ignatius Lodge\nLake Rod, ND 37043', 'Fugit ut tenetur rerum earum consequatur. Natus neque consequuntur ipsa a inventore. Omnis dolores aperiam error nostrum adipisci commodi sunt.', 4798.57, 1, NULL, NULL),
(142, 'yDX4859467', 'Dedrick Franecki', '791 Brandi Island Apt. 397\nNew Kailynport, OR 44835-4924', 'Blanditiis praesentium itaque et voluptas ut consequatur. Commodi est ut omnis quia et. Omnis aperiam ipsa facere eius. Qui distinctio et veniam dolorum temporibus.', 1653.28, 1, NULL, NULL),
(143, 'E3j7281314', 'Prof. Novella Gottlieb', '58699 Ebert Branch\nGutmannville, DC 82461', 'Aperiam asperiores soluta omnis sunt aut. Aliquam sit perspiciatis magnam qui. Sint laborum sint minus molestias qui sit ullam. Quas et autem aperiam eveniet voluptatem cum consequatur et.', 2461.73, 1, NULL, NULL),
(144, 'UIJ8049152', 'Prof. Ned Strosin', '30421 Satterfield Inlet\nEast Octavia, NH 44681', 'Odit sunt non dolores ad doloremque. Omnis sunt nihil vitae quis quibusdam quod. Alias voluptatem ipsum fuga iusto.', 2129.71, 0, NULL, NULL),
(145, 'dBh1375015', 'Citlalli Heidenreich', '683 Gavin Ridge\nEast Jordonfurt, KY 09173-1057', 'Sequi provident est numquam quos numquam molestiae rem. Saepe maiores illo et voluptatibus laborum deserunt. Aperiam veritatis voluptas autem.', 4412.68, 1, NULL, NULL),
(146, 'Mbi7755242', 'Garfield Kutch', '91749 Cristobal Stravenue\nNorth Howardmouth, RI 15798', 'Sed reiciendis quibusdam perspiciatis sequi est asperiores. Dolorem quidem nesciunt qui et porro dolor. Et id ullam nihil laboriosam ducimus praesentium a. Voluptates quia reiciendis dolores soluta.', 1505.46, 0, NULL, NULL),
(147, '2Y31011419', 'Morgan Yundt', '914 Seth Locks Suite 792\nEast Einarhaven, RI 48002-3014', 'Nemo reprehenderit occaecati et nobis aliquam. Dolores et quasi aut quia aut provident deleniti. Id ipsa laudantium maiores officiis. Maxime est amet quisquam.', 3774.45, 1, NULL, NULL),
(148, 'HZ82552142', 'Otto Langosh', '74567 Luettgen Wells\nPort Gladys, TN 81315-1785', 'Voluptates et vel magnam qui velit deserunt. Qui ad voluptas cupiditate voluptas sint vel. Id et expedita impedit ullam libero voluptas dolores.', 3674.91, 1, NULL, NULL),
(149, 'V705968581', 'Agustin Cummerata', '7337 Dominique Roads\nNew Heath, TN 79571-4217', 'Rem ad facilis quis veritatis et. Quia saepe dolores minus voluptate sunt repellat. Temporibus dolores nihil nostrum fuga. Consequatur sequi omnis corrupti veritatis tempore illum.', 3292.60, 0, NULL, NULL),
(150, 'elv5223816', 'Nathan Feeney', '5476 Dickens Fords\nNorth Lucasmouth, OK 17496-1980', 'Voluptatem non qui quas voluptatem deleniti. Harum accusamus quae impedit quaerat reprehenderit nam. Quos occaecati sint porro dolorem. Recusandae corrupti harum sapiente ipsa est.', 1263.72, 0, NULL, NULL),
(151, 'qOK5880264', 'Louvenia McCullough', '48375 Gleichner Highway Suite 915\nLake Marilieshire, KS 42958', 'Culpa saepe dolorem minus. Nulla omnis ab aspernatur quo sed. Est ullam saepe vel vel sunt tempora error.', 843.02, 1, NULL, NULL),
(152, 'QOX4745654', 'Helga Doyle', '992 Schmitt Center\nDurganland, LA 57841-9143', 'Sit nulla totam quis ipsum nisi. Et placeat repudiandae quo rerum iusto eius corrupti. Cum inventore sed laudantium id vitae. Rerum doloremque architecto asperiores quibusdam.', 1949.94, 0, NULL, NULL),
(153, 'KJQ3813323', 'Jalyn Hauck Sr.', '965 Pfannerstill Trace Suite 837\nDietrichport, MT 72017', 'Autem modi ipsam et ut. Incidunt beatae est rem sunt asperiores sit. Vitae esse quibusdam omnis illo itaque odio. Voluptatem voluptatum qui quam officiis.', 2828.33, 0, '2021-11-01 03:01:12', NULL),
(154, 'FQz7649394', 'Merle Hamill', '508 Schmeler Passage Suite 652\nMicahfurt, TX 22128', 'Modi sed eum inventore autem voluptate harum accusantium. Qui ipsam quae veniam. Et veniam sequi cumque et nobis laborum numquam. Sed natus et voluptatum est dolorem cupiditate provident at.', 802.54, 0, '2021-11-01 03:01:12', NULL),
(155, 'PTz1920121', 'Dasia Reilly', '66909 Michelle Highway\nNew Sedrick, NC 75791', 'Amet itaque vel repudiandae deserunt. Eos reiciendis libero ut sunt amet. Quos odio voluptas culpa ad voluptatem dolor. Animi ut adipisci quis.', 3116.22, 0, '2021-11-01 03:01:12', NULL),
(156, 'i317274199', 'Kaylin Roberts', '45989 Rebeca Haven\nMontyborough, NC 04078-1303', 'Sit aperiam eum aperiam sed impedit. Quibusdam qui sit libero officiis maiores voluptates. Quisquam magni natus quas magnam. A ipsum doloribus ut architecto voluptate est.', 3725.48, 0, '2021-11-01 03:01:12', NULL),
(157, 't329454541', 'Cristal Kuhn', '4381 Cormier Via Suite 235\nEast Taliachester, FL 56334', 'Aut quod velit ut architecto eum. Nihil ut dolorem cupiditate recusandae harum aut cum saepe. Qui sed eos et delectus.', 2415.55, 0, '2021-11-01 03:01:12', NULL),
(158, 'mFy3051787', 'Gina Zboncak', '76896 Fannie Cove\nHenriettemouth, OK 02097', 'Quis et sed voluptatem laudantium. Id eos ut suscipit. Cupiditate nihil non sunt iusto. Et vel ipsam sit autem quae.', 4832.45, 1, '2021-11-01 03:01:12', NULL),
(159, 'cKB2529692', 'Jordon Hansen PhD', '36586 Jadon Forks\nSouth Noblemouth, CO 77951-5445', 'Officia aspernatur ab et aut ea. Occaecati sed qui nihil sapiente minus porro. Asperiores porro est ad voluptas cupiditate repellat explicabo. Voluptatem in enim eos distinctio.', 3824.01, 1, '2021-11-01 03:01:12', NULL),
(160, 'yrx3918077', 'Jarred Towne Sr.', '493 Emilio Junction\nMooreside, TX 99332', 'Et quo et quae cupiditate ut. Deserunt ut dolor neque. Quo sit et consequatur fugiat omnis nisi explicabo.', 2187.76, 0, '2021-11-01 03:01:12', NULL),
(161, 'VMO6823086', 'Rosalee Crist', '31162 Howe Lodge\nNorth Cathrine, CO 00096', 'Optio nulla id aperiam unde aspernatur perferendis. Suscipit deleniti qui exercitationem veniam dolorem non error. Ut sunt in necessitatibus tempora unde. Rem ipsum id voluptas veniam nihil.', 4976.21, 0, '2021-11-01 03:01:12', NULL),
(162, 'bA22791878', 'Vickie Kuhic', '5440 Erdman Loop\nNew Aimeeshire, KS 52695-8560', 'Quia sit tempora et voluptate qui neque. Omnis corporis labore sed eligendi. Sint aut aut quos sed aut. Et ut qui quasi et assumenda eos.', 899.35, 1, '2021-11-01 03:01:12', NULL),
(163, 'sgG2949492', 'Dr. Ervin Metz', '84363 Smith Keys Suite 598\nEast Watson, NH 29769-6553', 'Sapiente excepturi dolores nostrum optio aut vel. Explicabo unde ducimus autem provident pariatur consectetur.', 2133.51, 0, '2021-11-01 03:01:12', NULL),
(164, '4Xj1471943', 'Terrill Corkery', '23672 Loraine Drives Apt. 424\nWolffborough, GA 75325', 'Quam voluptate voluptatum exercitationem dolor. Excepturi dicta dolores rem ipsa sapiente tempora neque eaque. Ea est exercitationem alias accusantium error.', 326.86, 0, '2021-11-01 03:01:12', NULL),
(165, 'kEG2617340', 'Orin Aufderhar', '8877 Kyra Heights\nAvaport, NM 92448-2069', 'Sint minus accusamus consectetur voluptatem id voluptate. Minus voluptatem est quaerat sed architecto recusandae laudantium. Non quia ea et ut molestiae.', 1576.59, 0, '2021-11-01 03:01:12', NULL),
(166, 'gnH1445625', 'Dr. Michel Feeney', '39472 Wisoky Terrace\nEast Manleytown, RI 83581-5463', 'Doloribus vel esse ut reiciendis distinctio eveniet. Quia ea inventore repudiandae a quod quidem doloremque.', 4394.53, 1, '2021-11-01 03:01:12', NULL),
(167, 'Xml8367268', 'Ethan Shanahan', '99726 Austyn Viaduct Apt. 954\nEmmafort, MT 31718-6883', 'Sunt libero rerum earum. Repudiandae omnis numquam eos tenetur. Natus vel aliquid excepturi quasi.', 451.35, 1, '2021-11-01 03:01:12', NULL),
(168, '2ZB5103103', 'Mr. Chaz Mohr PhD', '587 Ashtyn Points Suite 441\nMargarettefort, TN 97946', 'Adipisci eaque ullam nisi eius illum debitis placeat. At qui ad non et et. Voluptates unde incidunt rerum similique accusantium ipsum in. Alias omnis sunt omnis recusandae unde incidunt et magnam.', 540.87, 0, '2021-11-01 03:01:12', NULL),
(169, 'qGY8218693', 'Dr. Judson Simonis DVM', '7825 McLaughlin Pines Apt. 871\nSouth Augusta, SC 92343-7145', 'Est repudiandae nam ut est dicta soluta. Ratione quos atque dolore consequatur facere eaque fugit voluptate. Explicabo dolorem iusto quia cum facilis quis.', 3843.08, 0, '2021-11-01 03:01:12', NULL),
(170, 'VcW8236297', 'Mr. Efren Wisozk II', '143 Donnelly Bridge Apt. 723\nAiyanaland, VA 57410', 'Dolor aliquid eius accusamus omnis voluptas est. Voluptatem cumque quis quo sint vel. Eum vitae perferendis et soluta atque fugit ea.', 1089.14, 1, '2021-11-01 03:01:12', NULL),
(171, 'yI31541333', 'Prof. Nicola Lesch MD', '2629 Rowena Mount Suite 422\nEast Leoneville, OK 15191-1362', 'Eligendi mollitia et voluptatum ut nostrum rerum quis. Voluptatem magni eligendi error eveniet. Voluptates nostrum accusamus vero aut delectus et. Molestiae minima facilis maxime vero animi debitis.', 1483.58, 0, '2021-11-01 03:01:12', NULL),
(172, 'd8k7420621', 'Melisa Williamson', '10171 Carroll Parkway\nWest Ewaldbury, MS 41707', 'Tenetur aut fuga quia animi. Facere unde placeat dolorem aut et. Ipsum minus fuga dolorum nobis qui. Et neque hic nostrum autem reiciendis aspernatur ipsum.', 3725.89, 1, '2021-11-01 03:01:12', NULL),
(173, 'm0u3558630', 'Elva Wintheiser', '32294 Parker View Apt. 985\nLake Shanachester, LA 42966', 'In et omnis rerum aut aut alias. Mollitia commodi omnis neque non. Iure voluptatem sed quidem animi vero ducimus in. Quibusdam voluptate id architecto et qui.', 4102.45, 0, '2021-11-01 03:01:12', NULL),
(174, 'HgN4551651', 'Prof. Modesta Kuphal', '27493 Carroll Ville\nPort Layne, AR 99147-6484', 'Dolor quo alias omnis vero voluptatem placeat autem. Quas at veritatis molestias. Provident in aperiam temporibus ex quis excepturi impedit. Culpa libero sint voluptas veniam ut maiores.', 4448.98, 1, '2021-11-01 03:01:12', NULL),
(175, '8CN5059592', 'Susanna Lakin', '81615 Turner Mews Apt. 496\nEast Dougberg, GA 28022-5009', 'Est similique qui nobis quasi non saepe impedit. Et itaque aut pariatur voluptatem eius.', 4864.08, 1, '2021-11-01 03:01:12', NULL),
(176, 'jA36827123', 'Charity Wolff', '6922 Clifton Street Apt. 643\nNorth Abigaleborough, TN 31128-4958', 'Quia nisi nostrum ea qui ea cumque amet. Temporibus quia quia perspiciatis eius excepturi harum quasi. Tenetur quia earum asperiores facere molestiae et commodi officia.', 2724.86, 0, '2021-11-01 03:01:12', NULL),
(177, '8LG4437769', 'Mr. Graham Roob Jr.', '90150 Effertz Estates Suite 247\nHilpertstad, NM 57280', 'Est cum aut aut molestiae. Eum blanditiis ad dolorem consectetur consequatur quo. Dolorem repellendus adipisci voluptate facilis tempore enim. Est nam doloremque quia ad ipsam.', 1830.16, 1, '2021-11-01 03:01:12', NULL),
(178, 'yCb9673348', 'Ursula Christiansen', '310 Carter Drive\nLowehaven, GA 19536', 'Excepturi voluptatum inventore et dolorum reprehenderit. Velit dignissimos nihil quis eum. Asperiores culpa a eum quo. Praesentium aliquid autem consectetur consectetur.', 4566.43, 0, '2021-11-01 03:01:12', NULL),
(179, 'kVx6933831', 'Clint DuBuque', '315 Emilia Mission\nOralstad, NV 34240', 'Quibusdam qui facere non laboriosam molestiae ullam quae. Id aut non molestiae asperiores dignissimos. Culpa consectetur voluptas voluptate non nobis consectetur.', 1129.90, 1, '2021-11-01 03:01:12', NULL),
(180, 'WgJ8668959', 'Prof. Frederik Lueilwitz DDS', '4527 Melany Junction\nNew Blanche, AK 51143-7205', 'Sit facere velit corrupti sint dolores. Consectetur in quibusdam velit tempore sit. Dignissimos est debitis aspernatur quasi pariatur impedit esse. Sed vel explicabo maiores sequi.', 2007.54, 1, '2021-11-01 03:01:12', NULL),
(181, 'FV73307848', 'Shad Wiegand', '119 Reilly Streets\nTorpton, KY 17441', 'Quas ipsa nostrum debitis dignissimos ea commodi. Voluptas dolor corrupti culpa ut. Minus nihil sed ut id. At nisi odio delectus libero excepturi dolorem debitis.', 403.66, 1, '2021-11-01 03:01:12', NULL),
(182, 'ia16154574', 'Elsa Fadel', '9841 Effertz Forges\nOsbaldofort, DE 89043-6526', 'Maiores perspiciatis soluta placeat. Mollitia et voluptatem modi distinctio nihil aut quia qui. Perferendis itaque tenetur eligendi dicta.', 1279.19, 0, '2021-11-01 03:01:12', NULL),
(183, 'XRV3334625', 'Maida Considine', '681 Heathcote Light Suite 743\nTyreeville, AK 43270-0712', 'Quam id perspiciatis est nihil inventore optio. Nesciunt eum corporis officiis quisquam debitis in tenetur. Pariatur doloremque nulla eius. Aut consequatur cupiditate sequi sit quibusdam.', 1671.52, 0, '2021-11-01 03:01:12', NULL),
(184, 'q2U9277011', 'Meda Kihn II', '290 Raleigh Ranch\nWest Laruemouth, CO 13509', 'Non minus eaque atque qui rerum. Ut tempora magni inventore soluta. Modi voluptatibus deleniti sint et quibusdam libero et. Quas eos nulla id dolorem ea ducimus et maiores.', 2891.20, 1, '2021-11-01 03:01:12', NULL),
(185, 'ox62032532', 'Miss Gilda Ward', '88317 Dickinson Mountain Apt. 766\nO\'Konbury, PA 19283-0711', 'Aut qui eligendi dolorem facilis tempore voluptas. Velit amet vel pariatur pariatur possimus. Eum alias ducimus ipsam dolor voluptas.', 3463.83, 0, '2021-11-01 03:01:12', NULL),
(186, 'dJb2869554', 'Dayne Schmidt', '586 Margot Crescent\nIsaacside, MO 99014', 'Non culpa perspiciatis eveniet natus. Mollitia qui est ad ut sed repudiandae est. Qui velit inventore quisquam numquam aspernatur et esse. Deserunt dolore consequatur fugit quas sed ab eius.', 1733.48, 0, '2021-11-01 03:01:12', NULL),
(187, 'lxB3857749', 'Prof. Celia Thompson', '189 Halie Corner\nPort Marjolaineside, OK 56698', 'Modi perspiciatis harum enim aut rerum. Illo atque dicta ipsum aut ipsum. Temporibus odio quisquam distinctio a est consequatur numquam voluptas.', 420.65, 1, '2021-11-01 03:01:12', NULL),
(188, 'IWK6473182', 'Guadalupe Von Jr.', '10055 Kulas Landing\nKaraview, MD 63118', 'Qui pariatur est ex est. Deleniti quibusdam placeat occaecati error facere reiciendis. Nulla quia voluptatem accusamus. Vel earum laboriosam quis delectus fugiat quaerat ducimus pariatur.', 94.11, 0, '2021-11-01 03:01:12', NULL),
(189, 'YbO8454270', 'Kassandra Boyle', '6724 Jones Crossroad\nRunolfssonville, MA 51750', 'Voluptatem odio qui in vel quam. Et dolorum quae reiciendis. Repellat dignissimos eum eius necessitatibus veniam.', 3487.88, 1, '2021-11-01 03:01:12', NULL),
(190, 'om55287017', 'Dr. Burnice Rosenbaum III', '9714 Hoeger Loaf Suite 010\nHuelview, IA 75737', 'Facere aliquam minus laudantium quia amet aperiam. Facilis excepturi doloremque ipsa. Sint cumque voluptas vel sit qui et consectetur.', 4294.63, 1, '2021-11-01 03:01:12', NULL),
(191, 'yO69917751', 'Jadon Russel', '16824 Genoveva Common Apt. 736\nMadelynburgh, AL 15123', 'Ipsa dolor et ut nam eius aperiam qui. Est nihil saepe eligendi reiciendis saepe cumque dignissimos. Aut quis vel tenetur repudiandae culpa.', 721.83, 0, '2021-11-01 03:01:12', NULL),
(192, '4sH8804397', 'Malika Larson', '949 Zack Unions Suite 384\nJamaalview, MD 07880', 'Quam qui voluptas beatae. Iste dolorum labore occaecati suscipit nihil. Doloremque ab delectus et in inventore voluptas.', 3696.19, 0, '2021-11-01 03:01:12', NULL),
(193, 'xfc3464400', 'Mr. Jack Baumbach', '2529 Cletus Crossing Apt. 687\nSouth Jaronview, HI 86803', 'Enim aperiam ea ullam velit id et quas. Omnis earum tempore iusto reprehenderit ut ut inventore. Et beatae voluptas quas recusandae id voluptatem reiciendis.', 387.64, 0, '2021-11-01 03:01:12', NULL),
(194, 'LKV3437834', 'Prof. Aditya Grant', '4149 Bayer Trail\nBalistrerifurt, KY 34708', 'Dolorem non aliquid est qui odio. Numquam nisi fugit reiciendis. Qui tempora libero ullam labore odit odit quam.', 4447.44, 0, '2021-11-01 03:01:12', NULL),
(195, 'NaB5501474', 'Laurence Raynor', '420 Ignatius Plains\nEast Gladyshaven, WA 82445', 'Aspernatur sit dignissimos corporis reprehenderit eaque voluptatem. Provident modi modi aspernatur. Voluptatem voluptatem suscipit rerum dolore repellendus omnis.', 3861.90, 0, '2021-11-01 03:01:12', NULL),
(196, '8jb4916663', 'Mauricio Considine', '91046 Nikolaus Key\nWest Shaniya, NY 69867-8605', 'Vel voluptas sed harum nulla excepturi qui harum enim. Facere soluta qui sit atque neque. Consequuntur nihil rem eos sapiente.', 4953.74, 1, '2021-11-01 03:01:12', NULL),
(197, 'c7W8006143', 'Jeffry Hettinger', '812 Lance Lodge Suite 562\nMacyville, ND 03266-5487', 'Odit et repudiandae iste. Vitae temporibus hic a cumque rem reprehenderit vitae. Eaque itaque autem vero cupiditate quod dolorum sint. Officia vero et quis et eveniet.', 4633.98, 0, '2021-11-01 03:01:12', NULL),
(198, '9PU3194792', 'Araceli Gutkowski', '4128 Swift Park\nNew Donmouth, VT 16182', 'Ipsum reiciendis dolores ea dicta omnis eveniet quia consectetur. Saepe voluptatem eum aut minima dolorem. Ut neque tenetur et beatae. Voluptatem voluptates sed ipsa voluptatem.', 4801.23, 0, '2021-11-01 03:01:12', NULL),
(199, '2Sa8300561', 'Deonte Bernier', '2040 Javon Mountains\nEwaldbury, DE 45507', 'Cupiditate veritatis est placeat nobis architecto. Corporis accusamus non qui aliquam.', 1563.58, 0, '2021-11-01 03:01:12', NULL),
(200, 'h3a1349653', 'Devan Abernathy', '864 Cydney Greens Suite 950\nWest Trudiechester, UT 12871-2152', 'Sed culpa optio inventore consequatur dolor iure. Molestiae qui voluptatem itaque maiores maiores.', 4695.68, 0, '2021-11-01 03:01:12', NULL),
(201, 'igS4824798', 'Dr. Kiera Friesen Jr.', '26287 Stokes Walks\nPort Jazmin, UT 49971', 'Dolor maiores quam neque. Vel temporibus temporibus ut voluptatum amet neque.', 1541.12, 1, '2021-11-01 03:01:12', NULL),
(202, 'Gdy8613765', 'Mrs. Sabrina Senger V', '1874 Wisozk Union\nWest Verniceburgh, VT 66611', 'Ut aut ea modi eum quae veritatis. Id necessitatibus ut delectus maxime ex quas totam. Soluta voluptatem aut eum rem aspernatur dolor quam rerum.', 4346.78, 1, '2021-11-01 03:01:12', NULL),
(203, 'isl1236543', 'Ni Li Hi', '2, Street 1 Hellow world', 'Lorem Ipsum Doren Disum Coren Cisum', 0.00, 0, '2021-11-01 03:22:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'created', 1, 'Modules\\Article\\Entities\\Post', 2, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Post1\",\"intro\":\"This is the first post for laravel starter\",\"content\":\"<p>ga ga goo<\\/p>\",\"type\":\"Article\",\"category_id\":1,\"category_name\":\"Post\",\"is_featured\":1,\"meta_title\":\"Eh\",\"meta_keywords\":\"eheh\",\"meta_description\":\"eheheh\",\"published_at\":\"2021-11-02T10:20:40.000000Z\",\"moderated_at\":null,\"moderated_by\":null,\"status\":1,\"created_by_alias\":\"Poster\"}}', '2021-11-02 06:22:04', '2021-11-02 06:22:04'),
(2, 'posts', 'updated', 1, 'Modules\\Article\\Entities\\Post', 2, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2021-11-02 06:22:45', '2021-11-02 06:22:45'),
(3, 'posts', 'updated', 1, 'Modules\\Article\\Entities\\Post', 2, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2021-11-02 06:23:08', '2021-11-02 06:23:08'),
(4, 'posts', 'updated', 1, 'Modules\\Article\\Entities\\Post', 2, 'App\\Models\\User', '{\"attributes\":{\"category_id\":3,\"category_name\":\"Media\"},\"old\":{\"category_id\":1,\"category_name\":\"Post\"}}', '2021-11-02 06:24:33', '2021-11-02 06:24:33'),
(5, 'posts', 'updated', 1, 'Modules\\Article\\Entities\\Post', 2, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2021-11-02 06:24:40', '2021-11-02 06:24:40'),
(6, 'posts', 'updated', 1, 'Modules\\Article\\Entities\\Post', 2, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2021-11-02 06:24:47', '2021-11-02 06:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bind_to_account` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_month` int(11) DEFAULT NULL,
  `expired_year` int(11) DEFAULT NULL,
  `card_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `bind_to_account`, `card_number`, `card_holder`, `expired_month`, `expired_year`, `card_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(103, 'ROt6922733', '0739571901269473', 'Danielle Willms I', 8, 2028, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(104, 'pu62113134', '8802787950639234', 'Gilberto Tromp', 1, 2022, 'Master', '2021-11-01 02:56:03', NULL, NULL),
(105, 'tLn2075594', '0989799273119776', 'Sonia Pfannerstill', 4, 2024, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(106, 'Sgx8707331', '1091481896790768', 'Shanon Streich', 8, 2023, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(107, 'fNK2813573', '8358096465976580', 'Holden Schmeler', 10, 2026, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(108, '6RG4718504', '0766178395051617', 'Rahul Metz', 2, 2028, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(109, 'oDs4349689', '0981510161591113', 'Kelly Mante DVM', 4, 2029, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(110, 'ZGx3571499', '8738557356264556', 'Prof. Patricia Beatty', 10, 2022, 'Master', '2021-11-01 02:56:03', NULL, NULL),
(111, 'uwH6318903', '7885033889733395', 'Mitchel Marvin', 9, 2030, 'Visa', '2021-11-01 02:56:03', NULL, NULL),
(112, 'j8q3998926', '0056402024066261', 'Jeffrey Bartell', 5, 2025, 'Master', '2021-11-01 02:56:03', NULL, NULL),
(113, 'Qeg6770267', '2204786975500273', 'Mrs. Ellen Padberg III', 6, 2030, 'Master', '2021-11-01 02:56:03', NULL, NULL),
(114, 'k512131378', '3214343234342144', 'Bella Orn', 11, 2022, 'Visa', NULL, '2021-11-01 02:57:16', NULL),
(115, 'DHj6994676', '5145565682613435', 'Furman Bauch', 3, 2023, 'Master', NULL, '2021-11-01 02:57:24', NULL),
(116, '8s75457263', '5373289130845395', 'Braden Feeney', 10, 2026, 'Visa', NULL, NULL, NULL),
(117, '8ge8388990', '3996205996877668', 'Johnson Sipes', 7, 2026, 'Master', NULL, NULL, NULL),
(118, 'tho7200133', '4362258712437176', 'Miss Beryl Lesch V', 12, 2025, 'Visa', NULL, NULL, NULL),
(119, '6aT9181802', '9027740832701000', 'Milford Schiller I', 10, 2022, 'Master', NULL, NULL, NULL),
(120, 'lgK8837730', '2576465311783749', 'Stephany Runte', 8, 2029, 'Master', NULL, NULL, NULL),
(121, 'LxI6190211', '2053408809305937', 'Daija Rosenbaum DVM', 12, 2026, 'Master', NULL, NULL, NULL),
(122, 'Rd35236368', '4790644251229256', 'Mr. Doyle Ferry III', 5, 2023, 'Master', NULL, NULL, NULL),
(123, '8qv7338477', '2893647476776719', 'Clementina Mueller', 10, 2029, 'Visa', NULL, NULL, NULL),
(124, 'SO74806146', '0566716540992000', 'Jalon Crona', 6, 2030, 'Master', NULL, NULL, NULL),
(125, 'ngp8829183', '1005334346699622', 'Erica Bogan', 10, 2023, 'Master', NULL, NULL, NULL),
(126, '3aL8875839', '7770680227525873', 'Taryn Bruen', 5, 2027, 'Master', NULL, NULL, NULL),
(127, 'cWo5556028', '5436566122397768', 'Madonna Lakin', 1, 2022, 'Master', NULL, NULL, NULL),
(128, '9F28897197', '4816420022339662', 'Mrs. Vella Wisoky V', 2, 2023, 'Master', NULL, NULL, NULL),
(129, 'nGn7777840', '5596485118091051', 'Gerry Spinka', 5, 2029, 'Visa', NULL, NULL, NULL),
(130, 'HUP1587702', '6309129651728173', 'Emory Russel', 10, 2028, 'Master', NULL, NULL, NULL),
(131, '73T4019328', '2123920087316229', 'Earlene Mraz', 2, 2027, 'Visa', NULL, NULL, NULL),
(132, 'mE37680823', '0195162230512998', 'Lenna Bruen V', 9, 2025, 'Visa', NULL, NULL, NULL),
(133, 'u7P2273007', '4281753606048549', 'Mr. Felton Harvey DDS', 4, 2030, 'Master', NULL, NULL, NULL),
(134, 'Bd68719602', '0158670349836803', 'Lupe Mraz IV', 11, 2025, 'Master', NULL, NULL, NULL),
(135, 'dgN8530388', '1677963222199966', 'Ms. Dovie Ratke IV', 6, 2029, 'Visa', NULL, NULL, NULL),
(136, 'Fs73550256', '9052142224489578', 'Dr. Ryan O\'Conner DVM', 4, 2026, 'Visa', NULL, NULL, NULL),
(137, '6l29677705', '7103670735316649', 'Jeremie Stiedemann IV', 11, 2024, 'Visa', NULL, NULL, NULL),
(138, '7NJ6441049', '7585080237130590', 'Shayne Jast', 5, 2024, 'Master', NULL, NULL, NULL),
(139, 'eRE3823881', '7085350714430162', 'Leonora Gaylord', 7, 2028, 'Visa', NULL, NULL, NULL),
(140, 'UKa2464317', '8511155495641542', 'Tanya Kertzmann', 11, 2027, 'Master', NULL, NULL, NULL),
(141, 'b7A6632263', '8955865702006328', 'Hilton Ferry IV', 4, 2029, 'Master', NULL, NULL, NULL),
(142, 'q6j5307347', '2572748008380260', 'Edwina Lindgren', 7, 2028, 'Visa', NULL, NULL, NULL),
(143, '4aP3034912', '2474691211089097', 'Alberto Mitchell V', 9, 2029, 'Visa', NULL, NULL, NULL),
(144, '7Q75039895', '4748657773440006', 'Ken O\'Connell', 12, 2028, 'Master', NULL, NULL, NULL),
(145, 'ztb1942740', '3960150756221696', 'Augusta Koepp', 1, 2029, 'Master', NULL, NULL, NULL),
(146, 'gFw3331909', '3139994814632069', 'Prof. Mortimer Kris', 12, 2025, 'Visa', NULL, NULL, NULL),
(147, 'RBm7320898', '5564086530374460', 'Elissa Huel', 2, 2023, 'Master', NULL, NULL, NULL),
(148, 'llz3172303', '1461284236248724', 'Prof. Tatum Ullrich II', 6, 2025, 'Visa', NULL, NULL, NULL),
(149, 'uEU7141473', '0312995576442522', 'Dr. Trey Armstrong', 3, 2028, 'Visa', NULL, NULL, NULL),
(150, 'uAI7563030', '1328234153992817', 'Murray Zulauf', 5, 2023, 'Visa', NULL, NULL, NULL),
(151, 'vK01091038', '5520782948125554', 'Cristopher Macejkovic', 5, 2027, 'Visa', NULL, NULL, NULL),
(152, 'IRB4762522', '2045122868422905', 'Catherine Marks', 2, 2029, 'Visa', NULL, NULL, NULL),
(153, 'Iab8732361', '1111222233334444', 'Lee Car Do', 12, 2022, 'Visa', NULL, NULL, NULL),
(154, 'Iab8732361', '1234555567890000', 'Lee Car Do', 11, 2023, 'Master', NULL, NULL, NULL),
(155, 'Iab8732361', '1111222233334444', 'Lee Car Do', 12, 2022, 'Visa', NULL, NULL, NULL),
(156, '8u65829940', '0649551353162423', 'Herminio Okuneva', 1, 2022, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(157, 'oxn6442150', '4856939574678755', 'Candice Von', 12, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(158, 'Vzq3673384', '4374588521208494', 'Dr. Christiana Hodkiewicz', 12, 2029, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(159, '5Q77711545', '4590480214202581', 'Ellsworth Hahn', 9, 2027, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(160, 'jif1495447', '8749614375244571', 'Geraldine Swaniawski', 3, 2024, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(161, 'dk93695413', '9662462231301981', 'Cassandra Ullrich', 5, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(162, '5QW5382081', '5478115932736504', 'Amelie Bednar', 4, 2025, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(163, 'Xaa8206677', '7528975514293736', 'Pierce Thompson', 6, 2026, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(164, 'oEY4350825', '8257269717322673', 'Bernie Kub', 8, 2024, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(165, 'xve5017859', '3392682280108992', 'Monica Kunze', 7, 2024, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(166, 'mxm1562288', '5056823879615167', 'Leola Mayer', 8, 2023, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(167, 'QZB4675089', '9868260863784969', 'Dr. Hunter Mayer', 8, 2027, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(168, 'MtB3749847', '0174407025943029', 'Theodora Gleason', 11, 2025, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(169, 'BkA4896056', '5712787984265761', 'Serenity O\'Reilly', 11, 2028, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(170, 'Tgk7150222', '1322779719868986', 'Ethan Prosacco', 3, 2023, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(171, 'zNw6751383', '8761675775607822', 'Mr. Friedrich Oberbrunner V', 6, 2024, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(172, 'MOE9655691', '5743775983374546', 'Prudence Daniel', 11, 2024, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(173, 'Zyo3703238', '3755139849493588', 'Mireille Mitchell', 4, 2023, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(174, 'tmq8449591', '0408322647849926', 'Mollie Bednar', 8, 2022, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(175, '6eR4223151', '0032838696162339', 'Mr. Alvis Kemmer', 10, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(176, 'i9T8543172', '9691213969531550', 'Nova Kohler', 10, 2029, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(177, 'hud2838365', '9376736748978132', 'Jack Dickinson', 2, 2027, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(178, 'xyt7993889', '8368456334234229', 'Armani Leffler V', 3, 2026, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(179, '3WW9981325', '9058213171227460', 'Nicholas Casper Sr.', 11, 2023, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(180, 'RLu6320788', '3772334009990850', 'Eldora Padberg', 12, 2026, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(181, 'tDf1230275', '3477522510099669', 'Nils Schmitt', 2, 2023, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(182, 'Cot9993305', '4620091275685445', 'Miss Lelia Bernier Jr.', 10, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(183, '8CD4737682', '1956992167186181', 'Dr. Robb Schroeder', 7, 2025, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(184, 'Sdn3437911', '6936756759506839', 'Fleta Koepp', 2, 2025, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(185, 'YOW9799332', '2459243965151998', 'Mable Douglas', 1, 2022, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(186, 'JUj1200723', '0239205437494781', 'Ariane Haag', 8, 2027, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(187, 'LS15688392', '3203209161797250', 'Dr. Jon Kautzer', 12, 2023, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(188, 'Xfj9559210', '7475135717771606', 'Pasquale Tremblay', 3, 2024, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(189, 'E3W8334504', '7928047929098783', 'Willard Gleichner', 12, 2030, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(190, 'qsB8654951', '9124135369376594', 'Bernadine Schimmel', 11, 2030, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(191, 'PrR7237610', '2192707767145937', 'Ms. Kassandra Kovacek III', 4, 2027, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(192, 'anm4385702', '2993575564257889', 'Jamel Hartmann', 5, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(193, 'E7D2533974', '6450306810459643', 'Miss Kathryne Cassin', 4, 2025, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(194, 'lIv2493697', '4559571345528408', 'Libbie Jakubowski', 10, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(195, 'fTi1327643', '5736351649551961', 'Zakary Huels', 5, 2029, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(196, 'biZ4795512', '8590106026659100', 'Prof. Clotilde Torp', 5, 2023, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(197, '6M38566288', '9948222778107522', 'Estel Lubowitz', 7, 2023, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(198, 'YIV7887573', '4026094764422914', 'Rasheed Miller', 12, 2026, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(199, 'vVi8363190', '9333406867840831', 'Damion Herman', 2, 2023, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(200, 'd5o5486645', '6563191842323834', 'Loyal Wolff', 7, 2028, 'Master', '2021-11-01 03:01:12', NULL, NULL),
(201, 'HgB9797960', '5313474312703734', 'Miss Ruth Johns', 4, 2030, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(202, 'y4Y7611652', '9568189955044965', 'Neil Turner', 1, 2027, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(203, '3aU5801917', '4235676445766362', 'Mr. Rowan Hauck Jr.', 9, 2024, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(204, '4IF9056757', '3385351796750271', 'Brenden Konopelski', 5, 2029, 'Visa', '2021-11-01 03:01:12', NULL, NULL),
(205, 'i1y6573989', '0752307688348328', 'Brennon Corkery', 2, 2027, 'Visa', '2021-11-01 03:01:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `order`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Post', 'p', 'Its a good day', '12', 1, 2, 2, NULL, '2021-11-01 07:16:41', '2021-11-01 07:18:29', NULL),
(2, 'Fun', 'f', 'HEHE', '2', 1, 2, 2, NULL, '2021-11-02 06:23:49', '2021-11-02 06:23:49', NULL),
(3, 'Media', 'm', 'haha', '3', 1, 2, 2, NULL, '2021-11-02 06:24:03', '2021-11-02 06:24:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`, `generated_conversions`) VALUES
(1, 'Modules\\Tag\\Entities\\Tag', 1, 'a82c1441-15a4-45bb-ae18-56f6f29fa2b4', 'tags', 'simple-move', 'kHqDDhr79N2QPa8ogMXCPw2P8m4cuKhl6IIlQrrK.jpg', 'image/jpeg', 'public', 'public', 5199, '[]', '[]', '[]', 1, '2021-11-02 06:20:24', '2021-11-02 06:20:26', '{\"thumb\":true,\"thumb300\":true}');

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
(3, '2018_03_11_062135_create_posts_table', 1),
(4, '2018_03_12_062135_create_categories_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_02_19_152418_create_permission_tables', 1),
(7, '2020_02_19_173115_create_activity_log_table', 1),
(8, '2020_02_19_173641_create_settings_table', 1),
(9, '2020_02_19_173700_create_userprofiles_table', 1),
(10, '2020_02_19_173711_create_notifications_table', 1),
(11, '2020_02_22_115918_create_user_providers_table', 1),
(12, '2020_05_01_163442_create_tags_table', 1),
(13, '2020_05_01_163833_create_polymorphic_taggables_table', 1),
(14, '2020_05_04_151517_create_comments_table', 1),
(15, '2020_10_27_155557_create_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'view_backend', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(2, 'edit_settings', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(3, 'view_logs', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(4, 'view_users', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(5, 'add_users', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(6, 'edit_users', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(7, 'delete_users', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(8, 'restore_users', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(9, 'block_users', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(10, 'view_roles', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(11, 'add_roles', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(12, 'edit_roles', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(13, 'delete_roles', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(14, 'restore_roles', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(15, 'view_backups', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(16, 'add_backups', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(17, 'create_backups', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(18, 'download_backups', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(19, 'delete_backups', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(20, 'view_posts', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(21, 'add_posts', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(22, 'edit_posts', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(23, 'delete_posts', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(24, 'restore_posts', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(25, 'view_categories', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(26, 'add_categories', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(27, 'edit_categories', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(28, 'delete_categories', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(29, 'restore_categories', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(30, 'view_tags', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(31, 'add_tags', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(32, 'edit_tags', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(33, 'delete_tags', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(34, 'restore_tags', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(35, 'view_comments', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(36, 'add_comments', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(37, 'edit_comments', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(38, 'delete_comments', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(39, 'restore_comments', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_og_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `intro`, `content`, `type`, `category_id`, `category_name`, `is_featured`, `featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `meta_og_image`, `meta_og_url`, `hits`, `order`, `status`, `moderated_by`, `moderated_at`, `created_by`, `created_by_name`, `created_by_alias`, `updated_by`, `deleted_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Post1', 'p1', 'This is the first post for laravel starter', '<p>ga ga goo</p>', 'Article', 3, 'Media', 1, '/storage/files/man-power.jpg', 'Eh', 'eheh', 'eheheh', '/storage/files/man-power.jpg', NULL, 4, 1, 1, NULL, NULL, 2, 'Admin Istrator', 'Poster', 2, NULL, '2021-11-02 08:20:40', '2021-11-02 06:22:04', '2021-11-02 06:24:47', NULL);

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
(1, 'super admin', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(2, 'administrator', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(3, 'manager', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(4, 'executive', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58'),
(5, 'user', 'web', '2021-10-27 01:49:58', '2021-10-27 01:49:58');

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
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 1, 1, 'Modules\\Article\\Entities\\Post');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `group_name`, `description`, `image`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tag1', 't1', 'OneTag', 'Description for tag 1', 'http://127.0.0.1:8000/storage/1/kHqDDhr79N2QPa8ogMXCPw2P8m4cuKhl6IIlQrrK.jpg', 1, 'eh', 'eheheh', 'eheh', 2, 2, NULL, '2021-11-02 06:20:24', '2021-11-02 06:20:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_ref_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_amount` double(10,2) NOT NULL,
  `transaction_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_ref_no`, `transaction_date`, `transaction_amount`, `transaction_method`, `transaction_description`, `transaction_from`, `transaction_to`, `created_at`, `updated_at`) VALUES
(102, '5895356383435729', '2001-02-04 00:00:00', 679.30, 'FPX', 'Explicabo beatae vero dolor voluptate. Similique asperiores qui qui ex eveniet. Delectus maiores tenetur ab corporis dicta voluptatum.', 'Gaetano Hoppe', 'Triston Terry', NULL, NULL),
(103, '6098674179394420', '1988-09-02 00:00:00', 899.49, 'wallet', 'Libero consequatur et reprehenderit doloremque molestiae. Dolorum animi itaque iste aut facilis minus voluptatem. Blanditiis est ratione veritatis mollitia ut molestiae ex.', 'Aisha Waters', 'Prof. Demarcus Dietrich', NULL, NULL),
(104, '4932642084730876', '1973-11-10 00:00:00', 2410.05, 'wallet', 'Sit et a natus aut. Voluptatibus ipsum porro tempore magnam ea. Quia aspernatur ut sint inventore.', 'Estel Reynolds', 'Alexander Green', NULL, NULL),
(105, '6580159965121918', '2006-10-04 00:00:00', 1169.61, 'FPX', 'Voluptates dolorem exercitationem qui velit voluptatum alias sint. Aspernatur voluptatem quibusdam assumenda deleniti voluptas qui. Eum autem aliquam illo et.', 'Zackery Labadie', 'Dr. Richmond Cruickshank', NULL, NULL),
(106, '8421621928164427', '2017-11-13 00:00:00', 530.63, 'FPX', 'Vitae libero libero et doloribus eaque. Quia nihil iusto nihil. Ipsam tenetur praesentium ut eveniet.', 'Seth Steuber', 'Keely Swift Jr.', NULL, NULL),
(107, '2242373877109336', '2015-10-08 00:00:00', 2415.77, 'wallet', 'Nihil ut odio eligendi dolorem sint. Facere ducimus quis aut quidem reiciendis. Laborum quidem temporibus vero quae.', 'Dr. Edwin Bradtke II', 'Ms. Alaina Trantow V', NULL, NULL),
(108, '8538084884126877', '1974-12-26 00:00:00', 4504.23, 'FPX', 'Ipsa natus voluptas distinctio rem pariatur. Reprehenderit illum autem distinctio sapiente. Magni id animi dolor est.', 'Dusty Lebsack', 'Ernestine Hintz', NULL, NULL),
(109, '1243166376069252', '1970-12-18 00:00:00', 2293.24, 'FPX', 'Alias eaque quis voluptas quidem tempore. Aut at quae unde sapiente laborum. Et quibusdam sit consequatur eum voluptatem illo. Qui occaecati ipsa cum et.', 'Britney Stoltenberg', 'Roxanne Lockman', NULL, NULL),
(110, '2310077443672594', '1995-02-15 00:00:00', 1105.59, 'FPX', 'Inventore numquam asperiores sequi alias. Aperiam aspernatur et et voluptatem praesentium vero. Aut suscipit cum et ut debitis praesentium suscipit.', 'Mr. Greg Kuvalis', 'Lemuel Rempel II', NULL, NULL),
(111, '6871597387241291', '2011-02-06 00:00:00', 4290.59, 'FPX', 'Et quae aut inventore qui ut iure dolorum sit. Voluptatem vero ipsum deserunt dolor blanditiis nostrum quis. Quia labore excepturi saepe quae reiciendis fugiat.', 'King Heller', 'Prof. Dejuan Cormier III', NULL, NULL),
(112, '7049292477550361', '1986-05-24 00:00:00', 923.39, 'FPX', 'Illo ut esse maiores voluptatem sunt enim molestiae. Quas consequuntur necessitatibus qui nisi quo.', 'Brando Leannon', 'Christelle Reynolds', NULL, NULL),
(113, '7990819729835318', '2003-02-25 00:00:00', 3774.52, 'FPX', 'Id qui necessitatibus quis tempora unde. Odio rerum aliquam aliquam illo. Amet rem sunt et provident qui.', 'Ms. Ila Williamson DDS', 'Lorena Fay', NULL, NULL),
(114, '5434477787082891', '2008-11-12 00:00:00', 408.99, 'wallet', 'Similique corporis omnis et est sed provident dolores. Ad possimus dignissimos quia id dolore. Qui architecto rerum non corrupti. Quia nihil officiis natus rerum laudantium ducimus sed.', 'Cleora Mosciski', 'Adelbert Macejkovic', NULL, NULL),
(115, '9676831071122956', '1971-10-24 00:00:00', 2044.47, 'FPX', 'Eos omnis delectus et repellat dicta. Itaque voluptatem et voluptate ut. Hic et aut distinctio laboriosam. Aut unde nisi quisquam ad. Expedita perferendis non velit dolorem a earum.', 'Derek White Sr.', 'Jaden Wunsch', NULL, NULL),
(116, '5312587877055361', '2021-06-20 00:00:00', 2393.18, 'wallet', 'Iure eum omnis earum facilis dolor eos. Dolores neque sunt blanditiis temporibus. Vel ut beatae id facilis quidem assumenda nostrum et.', 'Amir Reichel', 'Irving Wyman IV', NULL, NULL),
(117, '5756587613681432', '1978-10-14 00:00:00', 1579.58, 'FPX', 'Perspiciatis dolorem ut omnis quia. Eum molestiae deserunt rerum unde voluptatem. Ab delectus vel qui voluptate ab libero.', 'Erna Wiza DDS', 'Eliza Kreiger PhD', NULL, NULL),
(118, '5587239386106603', '1982-04-28 00:00:00', 4832.54, 'FPX', 'Hic eveniet ut aut temporibus. Est veniam perferendis maiores sint eligendi dolores perspiciatis. Ratione omnis est esse similique.', 'Mr. Ryleigh Volkman II', 'Gussie Berge', NULL, NULL),
(119, '9840732210194685', '2015-12-16 00:00:00', 2322.24, 'wallet', 'Nemo maiores velit beatae ratione id. Accusantium ab dolor consectetur unde. Natus voluptatem architecto ipsam earum.', 'Timmy Schimmel', 'Demarco Beer', NULL, NULL),
(120, '4981680677974986', '1980-12-17 00:00:00', 4725.55, 'FPX', 'Optio et blanditiis delectus. Nisi dignissimos odio sint qui esse temporibus et. Amet earum dolore velit illo voluptatem.', 'Evalyn Harber', 'Ms. Marta Walsh', NULL, NULL),
(121, '8329527427548609', '2018-03-18 00:00:00', 46.43, 'wallet', 'Ut suscipit ex ipsam possimus aspernatur iure. Et vitae nihil quam illum. Quod neque natus dolorem quia cum aperiam. Ullam rerum omnis nemo.', 'Dr. Brady Mante DVM', 'Amari Greenfelder', NULL, NULL),
(122, '6749178566355873', '1996-01-30 00:00:00', 4897.16, 'wallet', 'Cupiditate magni expedita et nesciunt et perferendis similique. A reprehenderit et non aliquid. Magnam iste eum dolores iusto. Doloribus unde sit dolorum corporis et at.', 'Lempi Senger', 'Ms. Annalise Haag V', NULL, NULL),
(123, '8317959785204368', '2009-12-29 00:00:00', 1604.67, 'FPX', 'Nulla aperiam quibusdam est reprehenderit neque. Ab odio voluptatibus quis repellat quis alias eveniet iure. Eos veritatis aliquid ut quos earum commodi.', 'Prof. Eddie Gottlieb', 'Sandy Bruen', NULL, NULL),
(124, '2499195862757962', '1984-02-27 00:00:00', 1631.80, 'wallet', 'Recusandae pariatur impedit voluptatibus eligendi et possimus dicta. Adipisci molestias laborum dignissimos.', 'Verlie Carter', 'Darlene Murazik', NULL, NULL),
(125, '1368232777095121', '1978-12-08 00:00:00', 2508.83, 'wallet', 'Dignissimos consequatur ducimus praesentium nemo et. Rerum dolor ut eos. Eius vero autem ex sit suscipit. Velit aut placeat vitae quo.', 'Jaqueline Jenkins', 'Lesly Medhurst', NULL, NULL),
(126, '3881451959152711', '1989-03-21 00:00:00', 4842.41, 'wallet', 'Dolor ea placeat iusto tempora quis aliquid est. Delectus distinctio harum qui id provident ut. Sit non ut placeat at iste aut. Autem qui unde et suscipit quos eum.', 'Daphne Anderson', 'Garth Feest', NULL, NULL),
(127, '3886927968231640', '1997-12-02 00:00:00', 4235.49, 'wallet', 'Sint molestiae reiciendis consequatur eum eos quo ut non. Iusto rerum voluptas et ab rem enim ad. Libero similique amet quae autem.', 'Serenity Reynolds', 'Jed Block', NULL, NULL),
(128, '1218962148911236', '2002-09-30 00:00:00', 2700.88, 'FPX', 'Magni sed et et temporibus optio ut quia. Aut deleniti provident voluptate. Beatae dolorem dolor ut ea molestiae enim.', 'Kathryne Heller Jr.', 'Mallie Johnston', NULL, NULL),
(129, '5469499739430911', '1993-02-07 00:00:00', 3545.13, 'wallet', 'Consequatur nisi ut ut illo. Voluptatem rem est corporis dolorem qui magnam. Laboriosam omnis sapiente vero hic. In illo sed officia quaerat sapiente iusto nihil.', 'Marcelo Hudson', 'Vallie Turcotte', NULL, NULL),
(130, '6572999392887614', '1989-01-11 00:00:00', 3742.95, 'FPX', 'Dolores quidem et sit laborum. Et consequatur quasi eligendi quos quo repellendus.', 'Dr. Easton Dickinson', 'Jamel Roob', NULL, NULL),
(131, '8310092813120960', '1998-07-21 00:00:00', 3356.43, 'FPX', 'Aut delectus in iusto aut voluptas quia delectus. Saepe nostrum est velit perspiciatis quis ad excepturi voluptas. Vitae qui autem beatae non.', 'King Boyer', 'Alisa Daniel II', NULL, NULL),
(132, '3441648773098738', '1998-12-31 00:00:00', 4525.98, 'wallet', 'Alias rem libero quaerat voluptas qui in. Rerum iste ipsam dolor libero laudantium delectus sint. Cupiditate ut molestias deserunt consectetur.', 'Delores Wunsch', 'Dr. Easton Tremblay Jr.', NULL, NULL),
(133, '3784270042065417', '2016-11-26 00:00:00', 4553.45, 'wallet', 'Soluta ipsam incidunt impedit deleniti eum amet. Veniam doloremque inventore eveniet atque. Enim perspiciatis est rem modi ratione occaecati id.', 'Mrs. Kenyatta Rowe V', 'Dr. Miguel Jones Sr.', NULL, NULL),
(134, '6095842083877925', '1990-07-08 00:00:00', 4927.96, 'wallet', 'Rerum commodi et voluptates velit nihil sit asperiores ut. Adipisci culpa exercitationem consequatur amet tenetur consequatur autem. Consequatur nulla eveniet enim aut nulla excepturi.', 'Makayla Konopelski', 'Dr. Sylvan Littel', NULL, NULL),
(135, '5774179435946736', '2002-01-23 00:00:00', 2966.97, 'FPX', 'Et occaecati et optio impedit ullam similique. Voluptatibus laudantium ut magni qui voluptatem mollitia rerum. Voluptates adipisci fugiat esse et est.', 'Mrs. Princess McDermott III', 'Herta Schultz', NULL, NULL),
(136, '8120322715870335', '1979-05-29 00:00:00', 2613.01, 'wallet', 'Ducimus fugiat quos quae tempora sed neque. Voluptatem minima omnis ea quia eum et consequatur. Officia dicta aperiam et voluptas. Distinctio rem error eos voluptatum dolor quo quaerat omnis.', 'Curtis Shanahan', 'Ulises Oberbrunner', NULL, NULL),
(137, '8081518629205781', '2005-11-25 00:00:00', 4907.06, 'FPX', 'A debitis consequatur totam repudiandae odit nobis praesentium reiciendis. Exercitationem ipsa maxime porro iste. Illo ducimus facilis et consequatur voluptates aut eveniet.', 'Jaunita Hammes', 'Neva Mosciski', NULL, NULL),
(138, '4984503023750433', '1970-03-30 00:00:00', 158.17, 'wallet', 'Impedit quam omnis eos qui consequatur. Ullam laboriosam sit deserunt error consequuntur neque qui. Quaerat dolor vel unde. Sed sapiente voluptas reiciendis aspernatur ullam animi.', 'Dr. Kenneth Oberbrunner', 'Dr. Geovany Dibbert PhD', NULL, NULL),
(139, '5693226471963784', '2021-08-11 00:00:00', 2281.25, 'FPX', 'Qui accusantium voluptas voluptatem. Voluptatem quae voluptas autem. Rerum facilis voluptatem dolorem dolore consequuntur.', 'Dr. Keaton Klocko', 'Golda Wunsch', NULL, NULL),
(140, '2790284656035996', '2020-03-17 00:00:00', 3544.27, 'wallet', 'Adipisci consequuntur nihil rerum dignissimos. Magni reprehenderit doloribus quasi consequatur quia qui. Quia natus velit fugit vel. Expedita velit et quia accusantium est.', 'Prof. Jerald Treutel III', 'Delia Bode', NULL, NULL),
(141, '2648624340452017', '1996-10-04 00:00:00', 3756.99, 'FPX', 'Nulla voluptas eum harum non voluptatem. Culpa rem sed veritatis omnis laudantium qui. Adipisci non quis culpa nihil.', 'Myrtice Huels MD', 'Mr. Linwood Shields', NULL, NULL),
(142, '4532170012096210', '2012-08-15 00:00:00', 1199.34, 'wallet', 'Soluta dolor ipsum qui ut autem officiis. Et necessitatibus voluptatem deleniti in et laudantium non aut. Delectus vero aut dicta consequatur dolor unde harum suscipit.', 'Deshawn Lind', 'Kaitlyn Wiza', NULL, NULL),
(143, '5614497028040087', '1973-08-26 00:00:00', 2055.76, 'wallet', 'Est consequatur exercitationem aliquid minima tempora occaecati rerum. Nisi numquam eos eaque enim. Dolores eius similique similique veritatis saepe.', 'Mr. Zakary Hoeger', 'Henderson O\'Keefe', NULL, NULL),
(144, '3732207181648513', '1988-09-16 00:00:00', 4261.18, 'FPX', 'Dolores omnis vero inventore expedita est laboriosam atque. Aperiam sint deleniti placeat laborum. Sit et iure esse aut non.', 'Tyra Corkery', 'Alden Conn', NULL, NULL),
(145, '2702210148407524', '2012-05-14 00:00:00', 198.34, 'wallet', 'Reprehenderit voluptas id ad necessitatibus. Dicta sint velit in sapiente recusandae cumque. Quis occaecati illum velit voluptatem. In consequatur eius officia.', 'Roy Erdman', 'Danial Effertz', NULL, NULL),
(146, '6480121525329860', '1982-05-08 00:00:00', 1957.15, 'FPX', 'Et fugiat ea nisi sunt et et. Quas quasi qui in amet itaque consequatur. Quis ratione nobis repudiandae omnis occaecati. Ratione aut aliquid voluptatem sit qui.', 'Prof. Norberto Hamill', 'Alessia Harber', NULL, NULL),
(147, '9204081213225900', '2002-05-10 00:00:00', 2869.56, 'wallet', 'Id et at deleniti quae ad. Vel eius rerum explicabo. Dolor aut voluptas aut modi. Deleniti eveniet accusamus et modi ea magnam culpa.', 'Sonya Denesik', 'Emiliano Hodkiewicz DDS', NULL, NULL),
(148, '3762663193358461', '1973-01-29 00:00:00', 4045.85, 'FPX', 'Enim natus aspernatur architecto. Hic sequi ut tempora aut ad repudiandae. Rerum magni fuga inventore aperiam exercitationem non esse.', 'Sid Hayes', 'Dr. Nicholaus Heathcote V', NULL, NULL),
(149, '4751624217381085', '2003-10-16 00:00:00', 3033.01, 'FPX', 'Ab ratione eos beatae ipsam repellendus. Optio eos qui quidem harum aliquam veniam tenetur. Odio autem ducimus quae eius corrupti.', 'Candice O\'Keefe', 'Deondre Beier', NULL, NULL),
(150, '2761327065018190', '2008-07-09 00:00:00', 1468.53, 'wallet', 'Provident recusandae aut est quidem minima. Perferendis quis ipsa sed aut.', 'Miss Marian Kiehn', 'Mrs. Aubrey Sawayn', NULL, NULL),
(151, '2604223757646874', '1987-02-25 00:00:00', 2474.62, 'FPX', 'Incidunt velit repellendus rerum odio minima ratione est eos. Id cupiditate illo officia sunt earum necessitatibus voluptas dolorem. Iste omnis qui esse necessitatibus omnis et.', 'Dr. Josefina Roberts IV', 'Mrs. Shanelle Kerluke III', NULL, NULL),
(152, '8438663020851159', '1971-12-03 00:00:00', 4054.61, 'FPX', 'Enim ea excepturi repellendus. A hic illum deleniti. Quia quia sit ut. Odio assumenda voluptas molestiae ratione excepturi rerum et.', 'Urban Heller', 'Miss Jennyfer Beahan', '2021-11-01 03:01:12', NULL),
(153, '2388575360398954', '2017-08-23 00:00:00', 990.98, 'wallet', 'Non voluptatum est rerum tenetur laborum. Optio praesentium officia consequatur qui eum animi. Sunt est non ipsum necessitatibus deserunt.', 'Robb Farrell', 'Colby Lebsack MD', '2021-11-01 03:01:12', NULL),
(154, '8270987271483237', '1973-09-03 00:00:00', 1887.38, 'FPX', 'Aut aut perferendis et libero. Eaque in ab aliquid. Hic natus et nihil ut sint sed.', 'Ms. Matilda Breitenberg', 'Nathanael Wolf', '2021-11-01 03:01:12', NULL),
(155, '3317733370868890', '1983-05-10 00:00:00', 2417.30, 'FPX', 'Consequatur quo pariatur fugiat nisi rerum minus. Necessitatibus recusandae enim et pariatur quaerat accusantium. Dignissimos voluptatibus corporis ut consequatur.', 'Prof. Ottis Schinner', 'Elaina Jerde', '2021-11-01 03:01:12', NULL),
(156, '8039496618755999', '1994-09-03 00:00:00', 4068.10, 'FPX', 'Placeat fugiat laudantium dolorem sit et reprehenderit. Exercitationem est rerum est exercitationem.', 'Serena Bechtelar', 'Moshe Lakin', '2021-11-01 03:01:12', NULL),
(157, '9873078121208703', '2005-06-03 00:00:00', 4965.09, 'FPX', 'Beatae facere quo consequatur nihil numquam. Ut aspernatur quasi aliquam voluptas dicta. Nisi debitis velit aut dolorum totam harum ut.', 'Dr. Dariana Mosciski Sr.', 'Prof. Edwardo Cummerata MD', '2021-11-01 03:01:12', NULL),
(158, '8662679390933064', '2001-12-07 00:00:00', 3202.70, 'wallet', 'Eaque optio quam voluptates. Molestiae quia facilis unde qui. Corrupti est temporibus ea sit quidem voluptas.', 'Ressie Zieme', 'Mrs. Nannie Hegmann', '2021-11-01 03:01:12', NULL),
(159, '5672600346119721', '1976-09-29 00:00:00', 3379.15, 'wallet', 'Eum molestias delectus et animi dignissimos incidunt. Quam voluptates beatae facere est. Quis cupiditate eaque cupiditate numquam quae et. Reiciendis voluptatem aut distinctio dolorem explicabo.', 'Aglae Hahn DVM', 'Miss Sienna Parisian', '2021-11-01 03:01:12', NULL),
(160, '7055421443644961', '1979-09-25 00:00:00', 27.93, 'wallet', 'Ullam deserunt corporis sint ducimus laborum. Et sit architecto esse earum qui et. Repudiandae alias porro quas nihil porro illo iste. Distinctio expedita est dolorum inventore nostrum.', 'Neha Zulauf', 'Eddie Marquardt', '2021-11-01 03:01:12', NULL),
(161, '1241986434634857', '2019-10-08 00:00:00', 2888.19, 'wallet', 'Nihil explicabo in numquam veniam quas excepturi ea. Ut nostrum corporis quasi sunt odio. Architecto sed et soluta aut ex blanditiis hic.', 'Dr. Ursula Wunsch Sr.', 'Prof. Elliott McDermott II', '2021-11-01 03:01:12', NULL),
(162, '9742434250179300', '2001-09-12 00:00:00', 3476.10, 'FPX', 'Ex laborum cum rerum facilis. Animi et ut eius atque eum.', 'Katelin Kozey II', 'Jan Wilderman', '2021-11-01 03:01:12', NULL),
(163, '9458111618030689', '2004-01-06 00:00:00', 4723.96, 'wallet', 'Quia qui quia corrupti non voluptatum est. Nostrum error qui impedit aut. Et eos est est unde.', 'Emilia Senger PhD', 'Kamron Kris', '2021-11-01 03:01:12', NULL),
(164, '2278638570428343', '2018-09-23 00:00:00', 1308.66, 'wallet', 'Facilis porro reiciendis pariatur. Iste aut qui similique corporis culpa nesciunt. Sit temporibus recusandae totam nesciunt cumque dignissimos.', 'Shirley Weimann III', 'Dr. Kody Reynolds', '2021-11-01 03:01:12', NULL),
(165, '2902131431427441', '1985-01-19 00:00:00', 3302.49, 'wallet', 'Et illo est et ipsum. Voluptatibus maiores et tenetur molestiae facilis. Amet quos aspernatur a sit est est ipsa.', 'Kennedy Brakus', 'Dr. Max Shanahan', '2021-11-01 03:01:12', NULL),
(166, '2655143083804625', '1992-10-03 00:00:00', 2151.28, 'FPX', 'Et voluptates nemo eveniet illo aut culpa. Incidunt et dolorem sapiente et et. Et sit quo excepturi assumenda. Esse ea saepe est aut.', 'Neha Buckridge', 'Keanu Ankunding', '2021-11-01 03:01:12', NULL),
(167, '9153053860488829', '1987-11-09 00:00:00', 3526.16, 'wallet', 'Dignissimos asperiores reprehenderit qui reprehenderit. Inventore neque aspernatur voluptatem aliquid. Perferendis quas sed illum officiis eaque.', 'Dr. Deven Huels', 'Lisandro Simonis', '2021-11-01 03:01:12', NULL),
(168, '9945587451023475', '1993-07-30 00:00:00', 3147.71, 'FPX', 'Ipsum iusto doloremque necessitatibus voluptatem. Deserunt animi ut deserunt dignissimos fugiat nam qui. Quis nostrum non sunt. Nam id qui sunt optio.', 'Ms. Maida Murphy', 'Mr. Nigel Nader IV', '2021-11-01 03:01:12', NULL),
(169, '7023019694851046', '2008-07-28 00:00:00', 1885.99, 'FPX', 'Voluptas esse voluptatibus labore ipsa pariatur. Nostrum quasi dignissimos eum qui animi. Error ab quasi quia saepe id fugiat rerum. Id quia amet qui illo culpa autem ut.', 'Miss Vilma Mosciski Jr.', 'Cali Kulas', '2021-11-01 03:01:12', NULL),
(170, '6456999548085598', '1999-04-12 00:00:00', 2913.80, 'wallet', 'Sequi dolorum suscipit et officiis. Occaecati facere praesentium omnis omnis. Officiis ea delectus qui laudantium aliquam consequatur adipisci. Porro et quae accusamus sapiente.', 'Prof. Wendell Gutmann III', 'Americo Friesen', '2021-11-01 03:01:12', NULL),
(171, '1410964812265031', '1975-12-01 00:00:00', 3634.52, 'FPX', 'Et id sed ut. Inventore quia pariatur aut dolor et molestias. Veniam atque dolores perspiciatis. Ut tenetur iure nisi aut totam voluptas id.', 'Kattie Terry', 'Amy Reichert', '2021-11-01 03:01:12', NULL),
(172, '7811447027019477', '1992-12-21 00:00:00', 1639.18, 'wallet', 'Nobis provident beatae quidem ullam non fugiat voluptas iure. Aut quasi provident natus et sapiente aliquid atque aliquid. Sapiente sunt voluptatem molestiae.', 'Meghan Grady', 'Keenan Renner', '2021-11-01 03:01:12', NULL),
(173, '8087175247852144', '2000-07-26 00:00:00', 4605.71, 'FPX', 'Rem sed amet ut asperiores repellat non. Est amet aspernatur aperiam numquam perferendis corporis nihil. Autem fuga quasi occaecati nisi unde. Nostrum inventore voluptatum vel nam.', 'Curtis Hamill', 'Dora Dietrich MD', '2021-11-01 03:01:12', NULL),
(174, '9986511547238001', '1980-11-10 00:00:00', 3449.08, 'FPX', 'Dolore et ut odit et ut eveniet. Dolores cumque sint eum autem repellat ipsum. Vel nihil aliquid nihil quidem libero.', 'Berta Corkery', 'Prof. Bertrand O\'Kon', '2021-11-01 03:01:12', NULL),
(175, '7660622142404101', '2011-01-10 00:00:00', 1898.20, 'FPX', 'Odio tempore ab et sint aperiam. Quo nesciunt minus enim excepturi officiis quod ea. Sunt consequatur quo saepe recusandae. Quod illo sed esse maiores reiciendis maxime sed.', 'Rickie Streich', 'Sim Lowe', '2021-11-01 03:01:12', NULL),
(176, '4214705068237368', '1990-10-26 00:00:00', 4087.86, 'FPX', 'Recusandae maxime eum quod deleniti quod eum. Et assumenda quia iure sit ut placeat eligendi. Optio id dolor quasi explicabo.', 'Wilbert Stroman', 'Cali Keebler', '2021-11-01 03:01:12', NULL),
(177, '6217865386187033', '2017-10-28 00:00:00', 439.77, 'FPX', 'Porro suscipit molestiae eos praesentium omnis. In reiciendis est dolores consequatur labore quos et repellendus. Ipsa occaecati magnam ratione illum ut totam voluptas. Accusamus aut illum excepturi.', 'Dr. Milford Lang', 'Rae Corkery', '2021-11-01 03:01:12', NULL),
(178, '2319676698383577', '1975-05-19 00:00:00', 384.18, 'FPX', 'Esse consequuntur id excepturi odio ut. Incidunt dolore esse quod quia rerum. Eum est corporis est repellendus numquam.', 'Dr. Blaze Gleichner', 'Ferne Bradtke IV', '2021-11-01 03:01:12', NULL),
(179, '7592423389293304', '1980-12-11 00:00:00', 1702.01, 'FPX', 'Quas tempora ea necessitatibus. Doloribus eos nesciunt libero dolorem. Vero fugiat qui soluta suscipit cumque. Error quasi exercitationem quas minima facere. Ut et architecto velit eligendi.', 'Emily Friesen', 'Ms. Karianne Little DVM', '2021-11-01 03:01:12', NULL),
(180, '5635432190769484', '1983-01-04 00:00:00', 27.75, 'FPX', 'In aut id nobis. Ut hic enim aut dicta. Dolor magni veniam sit atque nulla porro. Est aspernatur dolore voluptas.', 'Elody Fahey', 'Miss Donna Runolfsson', '2021-11-01 03:01:12', NULL),
(181, '1071591548975368', '1991-02-07 00:00:00', 162.86, 'FPX', 'Voluptatum corporis dolorum occaecati qui. Suscipit ut aut dolorem nulla. Incidunt quibusdam qui et possimus sit.', 'Kian Lueilwitz', 'Jed Stokes', '2021-11-01 03:01:12', NULL),
(182, '8217013928373453', '2007-01-01 00:00:00', 4079.84, 'FPX', 'Quis similique non culpa numquam consequuntur. Alias assumenda odio amet laboriosam ducimus placeat nihil. Iusto accusamus asperiores corrupti. Esse quasi atque incidunt sit nobis aut dolorem eos.', 'Sydnee Pacocha', 'Ms. Marjory Durgan', '2021-11-01 03:01:12', NULL),
(183, '2234217717246971', '1992-05-12 00:00:00', 548.70, 'wallet', 'Voluptatum hic natus voluptatum consequatur nisi nihil corrupti. Unde tempore aut sunt harum a. In itaque et a. Laboriosam placeat sit natus qui. Perspiciatis quidem enim possimus eum.', 'Prof. Filiberto Gerhold Sr.', 'Marilyne Monahan', '2021-11-01 03:01:12', NULL),
(184, '3781223691373404', '2008-12-15 00:00:00', 4363.20, 'FPX', 'Excepturi asperiores sunt perferendis illo accusantium placeat. Sunt ab quidem sint sed quidem. Excepturi ducimus est ad deleniti vitae eum.', 'Prof. Myron Greenholt Sr.', 'Mr. Osvaldo Donnelly', '2021-11-01 03:01:12', NULL),
(185, '1773266828668825', '1970-11-22 00:00:00', 803.18, 'FPX', 'Officiis porro voluptatem sint nihil. Architecto quos saepe nulla dolore consequatur.', 'Shemar Satterfield', 'Philip Wuckert', '2021-11-01 03:01:12', NULL),
(186, '8169590828270325', '1993-08-05 00:00:00', 497.70, 'FPX', 'Et itaque non rerum quia expedita. Illo vel tenetur assumenda laboriosam nobis quibusdam. Ipsa nobis eius distinctio inventore nisi tempora. A suscipit vel ut ratione voluptas.', 'Joannie Nikolaus', 'Therese Larson', '2021-11-01 03:01:12', NULL),
(187, '9401426134244387', '2010-04-29 00:00:00', 4175.74, 'wallet', 'Sapiente et voluptatibus ipsum. Sint nesciunt accusantium sunt. Inventore aspernatur eligendi quae quibusdam ab. Commodi maxime ad ipsum.', 'Estefania D\'Amore', 'Clare Kuhic', '2021-11-01 03:01:12', NULL),
(188, '1850834711163663', '1993-05-15 00:00:00', 3229.82, 'wallet', 'Dolores necessitatibus accusantium non voluptas. Quidem magni eveniet unde amet non labore eaque vitae. Quaerat rerum magnam omnis non. Et quia sunt quisquam voluptas rerum nam.', 'Carroll Bashirian', 'Dedrick Botsford II', '2021-11-01 03:01:12', NULL),
(189, '7803707037335186', '2005-07-10 00:00:00', 346.24, 'wallet', 'Et voluptatem quaerat dolorem doloremque magnam commodi earum. Quae molestiae quo molestiae repudiandae voluptatum nam et. Voluptatem quis enim molestiae aliquam rem excepturi.', 'Prof. Jayme Hoeger', 'Hadley Powlowski PhD', '2021-11-01 03:01:12', NULL),
(190, '3693744593400511', '2007-01-27 00:00:00', 2429.73, 'FPX', 'Fuga et ipsam cupiditate repellendus. Rem ullam rem aut consequatur voluptates recusandae provident recusandae. Odit corporis et nesciunt eum ipsam officiis. Mollitia est ad qui veritatis ut.', 'Tania Botsford', 'Shea Gislason II', '2021-11-01 03:01:12', NULL),
(191, '6554321327150640', '2021-04-15 00:00:00', 3167.01, 'FPX', 'Delectus a ratione animi consequatur dolore modi. Voluptatibus illum voluptatem enim cupiditate. Ut cupiditate qui praesentium qui. Quo cupiditate eius deleniti omnis maiores.', 'Raheem Stroman', 'Vivienne Renner V', '2021-11-01 03:01:12', NULL),
(192, '7117232746013386', '1986-07-06 00:00:00', 996.61, 'wallet', 'Nihil doloribus facere quia quasi libero aut debitis et. Libero cupiditate animi magni tenetur et aut accusantium. Veniam iste velit ea cupiditate nostrum tenetur eius.', 'Telly Goldner', 'Simone Wiza', '2021-11-01 03:01:12', NULL),
(193, '4228249260765836', '1983-02-19 00:00:00', 4656.22, 'wallet', 'Excepturi eligendi perferendis culpa ea. Dolores ipsa ratione hic est magni et. Qui sed vitae possimus modi enim aut. Et eius ex quo aperiam beatae ipsum et.', 'Buck McKenzie', 'Mary Schaefer', '2021-11-01 03:01:12', NULL),
(194, '2834762479859104', '1972-01-25 00:00:00', 4663.24, 'FPX', 'Dolores qui consequatur odit tempore. Distinctio qui omnis tempora aut. Laborum consequatur dolorum sequi odio delectus qui dolore.', 'Dortha Schmidt PhD', 'Hilton Tromp', '2021-11-01 03:01:12', NULL),
(195, '9847596034201381', '2018-09-30 00:00:00', 1082.74, 'FPX', 'Adipisci rerum ullam magnam incidunt. Consequatur quaerat in autem deleniti nisi rerum. Sunt vero temporibus aliquid vitae.', 'Elvera Senger', 'Mr. Fern Lang I', '2021-11-01 03:01:12', NULL),
(196, '6808198140483620', '2003-12-09 00:00:00', 2940.71, 'wallet', 'Doloremque iusto architecto accusamus repellat voluptas consectetur atque laborum. Quos eum vel praesentium nihil. Ipsum temporibus illo inventore saepe.', 'Jerrod Stamm', 'Lesly Crist', '2021-11-01 03:01:12', NULL),
(197, '9638166959127489', '2000-05-25 00:00:00', 3150.46, 'FPX', 'Eum aut aut deserunt ab et. Animi voluptates dolorum est qui. Expedita commodi minima ipsum numquam omnis qui. Labore numquam rem laboriosam.', 'Prof. Jaquelin Boyle', 'Samara Graham', '2021-11-01 03:01:12', NULL),
(198, '4122892797090690', '1987-10-23 00:00:00', 4638.76, 'wallet', 'Sunt sit fugit voluptas ut. Pariatur qui in eos. Et rerum aspernatur ipsum omnis inventore. Sed deleniti totam omnis ea dolorem quidem sed non.', 'Miss Alisha Waters', 'Dr. Rachael Parisian', '2021-11-01 03:01:12', NULL),
(199, '6436838765614704', '2009-07-16 00:00:00', 643.53, 'wallet', 'Iusto laboriosam accusamus est. Eligendi maxime quam consequuntur ut itaque. Rem autem repellat accusantium id est voluptas quia.', 'Mrs. Laisha Turcotte DDS', 'Frederik Larson Jr.', '2021-11-01 03:01:12', NULL),
(200, '5896771121250098', '2006-12-07 00:00:00', 1091.74, 'wallet', 'Doloremque error aliquid placeat est modi quibusdam ex. Explicabo atque corrupti animi sed id et. Est qui qui repellat atque recusandae cumque.', 'Rafaela Lueilwitz MD', 'Dr. Micah Robel I', '2021-11-01 03:01:12', NULL),
(201, '8724966551895221', '2017-08-31 00:00:00', 653.54, 'FPX', 'Est omnis excepturi quo non accusamus. Qui voluptates dolore velit. Quis labore quas ut nulla nihil voluptate. Voluptas maxime ut reiciendis voluptatum.', 'Dr. Kiera Thompson', 'Isadore Keebler', '2021-11-01 03:01:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_metadata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `user_id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `url_website`, `url_facebook`, `url_twitter`, `url_instagram`, `url_linkedin`, `date_of_birth`, `address`, `bio`, `avatar`, `user_metadata`, `last_ip`, `login_count`, `last_login`, `email_verified_at`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '732.271.8520', 'Female', NULL, NULL, NULL, NULL, NULL, '2011-06-09', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 16, '2021-11-04 23:57:32', NULL, 1, NULL, 1, NULL, '2021-10-27 01:49:58', '2021-11-04 23:57:32', NULL),
(2, 2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '+1.678.464.2501', 'Other', NULL, NULL, NULL, NULL, NULL, '1993-07-10', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 2, '2021-11-02 06:09:56', NULL, 1, NULL, 2, NULL, '2021-10-27 01:49:58', '2021-11-02 06:09:56', NULL),
(3, 3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '(951) 388-4810', 'Male', NULL, NULL, NULL, NULL, NULL, '1984-05-09', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 33, '2021-11-01 07:14:20', NULL, 1, NULL, 3, NULL, '2021-10-27 01:49:58', '2021-11-01 07:14:20', NULL),
(4, 4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '442.972.5908', 'Female', NULL, NULL, NULL, NULL, NULL, '2002-04-02', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 1, '2021-11-01 07:13:41', NULL, 1, NULL, 4, NULL, '2021-10-27 01:49:58', '2021-11-01 07:13:41', NULL),
(5, 5, 'General User', 'General', 'User', '100005', 'user@user.com', '1-657-634-6431', 'Other', NULL, NULL, NULL, NULL, NULL, '1979-04-17', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 1, '2021-11-01 07:12:44', NULL, 1, NULL, 5, NULL, '2021-10-27 01:49:58', '2021-11-01 07:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'img/default-avatar.jpg',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '732.271.8520', 'Female', '2011-06-09', '2021-10-27 01:49:57', '$2y$10$Tj1Waxa8GjQYd2cXnAgRVOSfRXA.c.r1sqKZPFCAr3ss7khXvMPE.', 'img/default-avatar.jpg', 1, NULL, '2021-10-27 01:49:57', '2021-10-27 01:49:57', NULL),
(2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '+1.678.464.2501', 'Other', '1993-07-10', '2021-10-27 01:49:57', '$2y$10$bggu/FGvheQWBaRbd3gNyOIgh2usr8nRfsEwVlb/h/BU8KVlHrq9m', 'img/default-avatar.jpg', 1, NULL, '2021-10-27 01:49:57', '2021-10-27 01:49:57', NULL),
(3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '(951) 388-4810', 'Male', '1984-05-09', '2021-10-27 01:49:58', '$2y$10$vqMZi8z1./51HJI9LrxK6erBocGaWODq1w7eNLpE76JO6XuVkmAce', 'img/default-avatar.jpg', 1, NULL, '2021-10-27 01:49:58', '2021-10-27 01:49:58', NULL),
(4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '442.972.5908', 'Female', '2002-04-02', '2021-10-27 01:49:58', '$2y$10$2nft3SZKYw7QxJvBEnRC1Odjjv3p9upM4oYRpeUKuUqJLOrXHM7fW', 'img/default-avatar.jpg', 1, NULL, '2021-10-27 01:49:58', '2021-10-27 01:49:58', NULL),
(5, 'General User', 'General', 'User', '100005', 'user@user.com', '1-657-634-6431', 'Other', '1979-04-17', '2021-10-27 01:49:58', '$2y$10$KbkDDrDX2mXWMckKcmTniuxFTBsd9juh/TF5eJAgpe7W3BV9aswd6', 'img/default-avatar.jpg', 1, NULL, '2021-10-27 01:49:58', '2021-10-27 01:49:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_providers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD CONSTRAINT `user_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
