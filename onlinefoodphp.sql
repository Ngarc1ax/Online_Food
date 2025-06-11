-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2025 at 07:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(90, 20, 'Berry Basil Fizz ', 'Sparkling water, berries, basil ', '4.25', '68438fd6e836e.jpg'),
(91, 20, 'Citrus Bloom ', 'Lemon, orange, hibiscus syrup', '3.99', '68439002c12c8.jpg'),
(92, 20, 'Lavender Lemonade', 'Herbal-infused, lightly sweetened', '3.75', '684390245b1b4.jpg'),
(93, 20, 'Cucumber Mint Spritz ', 'Crisp and refreshing with lime ', '4.25', '68439042bdf05.jpg'),
(94, 20, 'Elderflower Tonic ', 'Floral, light, with citrus zest ', '4.50', '68439061d50bf.jpg'),
(95, 20, 'House Root Beer Float ', 'Classic soda with vanilla ice cream', '3.99', '684390981493a.jpg'),
(96, 20, 'Mango Cream Soda ', 'Mango soda with sweet cream topping ', '4.25', '684390bd32c76.jpg'),
(97, 20, 'Cherry Cola Classic ', 'House-made cola with cherry syrup ', '3.50', '684390db4ca19.jpg'),
(98, 20, 'Vanilla Cream Drizzle', 'Sparkling vanilla with marshmallow cream', '4.00', '684390ff5ef03.jpg'),
(99, 20, 'Strawberry Shortcake Float ', 'Strawberry soda, vanilla ice cream, cookie crumble ', '4.75', '6843911ea8782.jpg'),
(100, 20, 'Green Glow Juice', 'Spinach, cucumber, apple, lemon ', '5.75', '6843913d6be91.jpg'),
(101, 20, 'Tropical Sunrise Smoothie ', 'Mango, pineapple, banana, coconut milk ', '6.25', '6843915c3a67c.jpg'),
(102, 20, 'Beet Boost Shot', 'Beet, ginger, lemon, cayenne (2 oz)', '2.75', '68439178f1ee1.jpg'),
(103, 20, 'Acai Super Smoothie ', 'Acai, blueberries, banana, granola', '6.75', '68439197de250.jpg'),
(104, 20, 'Carrot Kick Juice', 'Carrot, orange, turmeric, ginger ', '5.50', '684391b091dad.jpg'),
(105, 18, 'Single-Origin Pour Over ', 'Rotating beans from specialty farms ', '4.25', '684391e0407be.jpg'),
(106, 18, 'Espresso Tonic ', 'Espresso over citrus tonic water ', '4.50', '684391fecd3e6.jpg'),
(107, 18, 'Dirty Chai Latte ', 'Spiced chai tea with espresso shot ', '5.00', '6843921abdefd.jpg'),
(108, 18, 'Mocha Noir', 'Rich dark chocolate mocha with cream ', '5.25', '68439239e8115.jpg'),
(109, 18, 'Vanilla Bean Flat White', 'Silky microfoam with a touch of vanilla ', '4.75', '68439273c7916.jpg'),
(110, 21, 'Firecracker Pepperoni', 'Spicy pepperoni, chili oil, mozzarella (10\")', '10.49', '6843929973973.jpg'),
(111, 21, 'Pesto Margherita Pizza ', 'Tomato, basil, mozzarella, pesto ', '9.99', '684392c17a494.jpg'),
(112, 21, 'Garlic Knots', '6 pcs with house marinara', '4.99', '684392dd0fc29.jpg'),
(113, 21, 'Buffalo Chicken Slice', 'Spicy chicken, ranch drizzle, mozzarella', '4.25', '684392fd16750.jpg'),
(114, 21, 'Four Cheese Pie ', 'Mozzarella, gouda, parmesan, ricotta ', '10.25', '6843931b0372b.jpg'),
(115, 21, 'Side Caesar Salad', 'Romaine, parmesan, croutons, Caesar dressing', '4.99', '6843933701cc2.jpg'),
(116, 23, 'Korean BBQ Beef Bowl ', 'Bulgogi, egg, kimchi, sesame rice', '10.99', '6843935bd97d2.jpg'),
(117, 23, 'Teriyaki Chicken Bowl', 'Grilled chicken, teriyaki glaze, stir-fried veggies ', '9.49', '6843937c5f3dd.jpg'),
(118, 23, 'Tofu Umami Bowl ', 'Crispy tofu, miso glaze, edamame, rice', '8.99', '684393998abdf.jpg'),
(119, 18, 'Iced Vanilla Cold Brew', 'Smooth cold brew with vanilla cream ', '4.25', '68439d02eba38.jpg'),
(120, 18, 'Nitro Black ', 'Chilled, nitrogen-infused espresso', '4.50', '68439d1c19f89.jpg'),
(121, 18, 'Oat Milk Honey Latte ', 'Espresso, oat milk, natural honey', '4.99', '68439d3473365.jpg'),
(122, 18, 'Salted Caramel Cold Brew', 'Topped with foam and caramel drizzle', '4.75', '68439d4e04b21.jpg'),
(123, 18, 'Espresso Float ', 'Vanilla ice cream with a double shot', '5.25', '68439d76b1983.jpg'),
(124, 18, 'Brown Sugar Boba Milk Tea', 'Rich black tea with brown sugar pearls', '5.25', '68439d8dc876e.jpg'),
(125, 18, 'Matcha Strawberry Latte ', 'Matcha layered with milk and strawberry puree', '5.49', '68439da190a66.jpg'),
(126, 18, 'Taro Milk Tea', 'Purple taro flavor, chewy tapioca ', '4.99', '68439db90dac5.jpg'),
(127, 18, 'Thai Milk Tea ', 'Sweet spiced tea with creamy finish ', '4.75', '68439dcd2bb99.jpg'),
(128, 18, 'Honeydew Aloe Refresher ', 'Honeydew slush with aloe chunks ', '5.25', '68439ddfaeb44.jpg'),
(130, 21, 'Fountain Soda (16 oz)', 'Coke, Diet Coke, Fanta, etc. ', '2.25', '68455882b29d0.jpg'),
(131, 21, 'House Lemonade ', 'Made in-house, with lemon zest', '2.75', '6845589a7fc50.jpg'),
(132, 21, 'Sparkling Mineral Water', 'San Pellegrino or similar ', '2.75', '684558b7b2ebb.jpg'),
(133, 21, 'Root Beer Float ', 'Classic vanilla + root beer ', '4.25', '684558d699348.jpg'),
(134, 21, 'Iced Black Tea', 'Unsweetened or lemon', '2.25', '684558f1979f7.jpg'),
(135, 23, 'Thai Basil Pork Bowl ', 'Spicy minced pork, fried egg, jasmine rice ', '9.99', '684559892498c.jpg'),
(136, 23, 'Curry Katsu Bowl ', 'Breaded chicken cutlet, Japanese curry, rice', '10.49', '684559acab8bb.jpg'),
(137, 23, 'Steamed Dumplings (5 pcs) ', 'Chicken or veggie with soy dip', '5.25', '684559e8d4c0b.jpg'),
(138, 23, 'Thai Iced Tea ', 'Creamy black tea, sweetened ', '3.99', '68455a0867dc9.jpg'),
(139, 23, 'Calamansi Cooler', 'Filipino citrus-style drink', '2.99', '68455a1acb857.jpg'),
(140, 23, 'Jasmine Green Tea (iced)', 'Lightly sweetened ', '2.50', '68455a2e80f2b.jpg'),
(141, 23, 'Bottled Water', 'Still or sparkling ', '1.99', '68455a421d793.jpg'),
(142, 23, 'Canned Soda', 'Coke, Sprite, Pepsi ', '1.75', '68455a56a98ed.jpg'),
(143, 22, 'Smoked Brisket Plate ', '12-hour smoked brisket, 2 sides', '15.99', '68455a8c0aea4.jpg'),
(144, 22, 'Grove Ribs Half Rack ', 'Honey-glazed pork ribs with house BBQ sauce ', '13.49', '68455aab7724e.jpg'),
(145, 22, 'Mac & Cheese Bowl', 'Creamy cheddar mac, topped with bacon ', '7.99', '68455ac328d2e.jpg'),
(146, 22, 'Grilled Veggie Skewers ', 'Marinated veggies over open flame ', '8.49', '68455ae278273.jpg'),
(147, 22, 'Pulled Pork Sandwich ', 'Slow-cooked pork, slaw, BBQ sauce on brioche bun ', '9.99', '68455af821b0b.jpg'),
(148, 22, 'Cornbread & Honey Butter ', 'Warm, fluffy, with sweet whipped butter ', '3.75', '68455b0d638d8.jpg'),
(149, 22, 'Sweet Iced Tea ', 'Southern-style, house-brewed', '2.49', '68455b4e3ec5f.jpg'),
(150, 22, 'Lemonade ', 'Fresh-squeezed, slightly tart', '2.75', '68455b66a2737.jpg'),
(151, 22, 'Bottled Water', 'Still or sparkling (16.9 oz)', '1.99', '68455b7a6ccca.jpg'),
(152, 22, 'Classic Soda Fountain ', 'Coke, Sprite, Root Beer (refillable)', '2.49', '68455b8ccb54d.jpg'),
(153, 22, 'Local Craft Beer (12 oz) ', 'Rotating selection (21+)', '6.00', '68455ba06f196.jpg'),
(154, 19, 'Classic Spicy Burger', 'Classic sweet juicy and spicy grilled burger', '4.00', '68455e4f10e54.png'),
(155, 19, 'Chicken Burger', 'Tender chicken patty with lettuce, tomato, and melted cheese on a toasted bun', '4.55', '68455f0f53497.png'),
(156, 19, 'Double Patties with Veggies Burger', 'Two tender beef patties, veggies, and gooey cheese on a toasted bun', '6.00', '68455fdeb3985.png'),
(157, 19, 'Double Cheese Burger', 'Two beef patties smothered in melted cheese and veggies on a toasted bun', '8.50', '6845604f1c74a.png'),
(158, 19, 'Ultimate Bacon Burger', 'Beef patty with smoky crispy bacon and melted cheese', '5.00', '684561a61f155.png'),
(159, 19, 'Fries In Burger', 'Beef patty topped with crispy fries, melted cheese, and veggies on a toasted bun', '7.55', '684563ab0ae59.jpg'),
(160, 19, 'Overload Fries', 'Fries piled high with melted cheese, crunchy bacon, and a rich savory sauce', '6.89', '684563df94594.jpg'),
(161, 19, 'Mustard Overload Fries', 'Smothered in a tangy mustard sauce, crispy bacon, and melted cheddar cheese', '5.89', '6845643988b97.jpg'),
(162, 19, 'Waffle Fries', 'Waffle-shaped fries seasoned with just the right amount of crunch and flavor', '4.00', '6845648cb310d.jpg'),
(163, 19, 'Extra Thin Fries', 'Crispy thin fries, hear the crunch with every bite', '3.00', '684564eb70dfb.jpg'),
(164, 17, 'Sweet Mochi', 'A traditional Japanese mochi treat with more sweetness', '2.99', '6845662cad6cf.jpg'),
(165, 17, 'Caramelized Strawberry ', 'Intense buttery sweetness of caramelized strawberries bursting with flavor', '8.00', '6845667d9126a.jpg'),
(166, 17, 'Soft Puddings', 'Rich flavors and silky smoothness blend into a heavenly dessert experience', '6.00', '684566a7347f7.jpg'),
(167, 17, 'Cream Berries', 'Fresh berries meet velvety cream in a sweet and tangy treat ', '3.50', '684566d158d69.jpg'),
(168, 17, 'Sliced Raspberries ', 'Tender cake infused with the sweet-tart taste of fresh raspberries', '6.00', '684566efe54f8.jpg'),
(169, 17, 'Raspberries Overload Cake ', 'Moist cake, sweet raspberries, and a hint of tartness', '40.00', '684567112d921.jpg'),
(170, 17, 'Chocolate Cream Puff', 'Puff pastry filled with rich, velvety chocolate cream', '2.50', '6845673b592c6.jpg'),
(171, 17, 'Berry Bread Truffles', 'Rich and creamy berry truffles rolled in powdered sugar', '3.00', '6845678b126a5.jpg'),
(172, 17, 'Ultimate Waffles ', 'Fluffy waffles overflowing with mixed berries and topped with whipped cream', '6.00', '684567cd902ad.jpg'),
(173, 17, 'Strawberry Croissant ', 'Strawberry croissant, layers of buttery pastry with sweet strawberries', '4.00', '6845680fa90a2.jpg'),
(174, 17, 'Classic Oreo Cake ', 'Rich Oreo cake with buttercream frosting and crushed Oreos', '35.00', '68456898c2722.jpg'),
(175, 17, 'Glazed Chocolate ', 'Mini chocolate bites, crunchy on the outside and chewy on the inside', '5.00', '6845693053ffa.png');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(30, 49, 'in process', 'otw nepu', '2025-06-10 11:43:34'),
(31, 50, 'closed', 'thanks!', '2025-06-10 11:44:14'),
(32, 49, 'closed', 'thanks!', '2025-06-10 11:45:01'),
(33, 49, 'closed', 'thankls\r\n', '2025-06-10 12:32:08'),
(34, 49, 'rejected', 'sorry', '2025-06-10 12:32:20'),
(35, 49, 'closed', 'th', '2025-06-10 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(17, 14, 'Sweet Cafe', 'sweetcafe@gmail.com', '(909) 466-8888', 'https://sweetcafe.com', '7am', '11pm', '24hr-x7', '10841 White Oak Ave, Rancho Cucamonga, California, 91730, United States', '6841225fc9336.png', '2025-06-05 04:51:43'),
(18, 14, 'Daily Brew', 'dailybrew@gmail.com', '(734) 425-9816', 'https://dailybrew.com', '7am', '11pm', '24hr-x7', '29060 Ford Rd, Garden City, Michigan, 48135, United States', '684122b7c8649.png', '2025-06-05 04:53:11'),
(19, 17, 'Juicy Tenders', 'juicytenders@gmail.com', '(732) 254-2727', 'https://juicytenders.com', '7am', '11pm', '24hr-x7', '437 New Jersey 18, East Brunswick, New Jersey, 08816, United States', '68412962c9b61.png', '2025-06-05 05:21:38'),
(20, 18, 'Fizz & Blend', 'fizz&blend@gmail.com', '(770) 516-1625', 'https://fizz&blend.com', '9am', '11pm', '24hr-x7', '95 Grove Park Ln, Woodstock, Georgia, 30189, United States', '68438e2fa2673.png', '2025-06-07 00:56:15'),
(21, 16, 'Dough Bros', 'doughbros@gmail.com', '(651) 686-9057', 'https://doughbros.com', '8am', '10pm', '24hr-x7', '3385 Denmark Ave, Eagan, Minnesota, 55121, United States\r\n', '68438e8b7f3ba.png', '2025-06-07 00:57:47'),
(22, 13, 'Hot Spot', 'hotspot@gmail.com', '(914) 632-9352', 'https://hotspot.com', '9am', '3am', '24hr-x7', '619 North Ave, New Rochelle, New York, 10801, United States\r\n', '68438ee2b0865.png', '2025-06-07 00:59:14'),
(23, 15, 'Dish Bowl', 'dishbowl@gmail.com', '(303) 239-8859', 'https://dishbowl.com', '6am', '8pm', '24hr-x7', ' 11475 W Colfax Ave, Lakewood, Colorado, 80215, United States ', '68438f6c8ad80.png', '2025-06-07 01:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(13, 'Smoke House', '2025-06-05 04:45:09'),
(14, 'Café', '2025-06-05 04:50:01'),
(15, 'Asian Cuisine', '2025-06-05 04:59:34'),
(16, 'Pizzeria', '2025-06-05 04:59:39'),
(17, 'Fast Food', '2025-06-05 04:59:43'),
(18, 'Beverage', '2025-06-05 04:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(13, 'Nicole', 'John', 'Garcia', 'njgarcia877@gmail.com', '0879646345435', '2168ad5e463d9accb215edaafa31c8d9', 'Northville 16 atlubola', 1, '2025-05-11 13:28:20'),
(14, 'Sample', 'Nicole', 'Garcia', 'n.garcia40896@mcc.edu.ph', '0987654321', '2168ad5e463d9accb215edaafa31c8d9', 'DITOLANG', 1, '2025-05-16 06:52:10'),
(15, 'EL', 'EL', 'Nevi', 'el@gmail.com', '09089855363', '24cbb7442d3d63dc2ba1ade16dfe026d', 'Etsy', 1, '2025-06-05 04:32:30'),
(16, 'Username', 'Nicole', 'Garcia', 'johnrdie@yahoo.com', '0987654321', '2168ad5e463d9accb215edaafa31c8d9', 'ditolang again', 1, '2025-06-09 13:55:35'),
(17, 'User', 'Test', 'Sample', 'test@sample.com', '0987654321', '2168ad5e463d9accb215edaafa31c8d9', 'dito lng ulit', 1, '2025-06-10 11:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(49, 17, 'Lavender Lemonade', 1, '3.75', 'closed', '2025-06-10 13:00:00'),
(50, 17, 'Cucumber Mint Spritz ', 1, '4.25', 'closed', '2025-06-10 11:44:14'),
(51, 17, 'Korean BBQ Beef Bowl ', 12, '10.99', NULL, '2025-06-10 11:35:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
