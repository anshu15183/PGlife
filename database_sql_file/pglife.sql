-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pglife`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Wifi', 'Common Area', 'wifi'),
(2, 'Power Backup', 'Building', 'powerbackup'),
(3, 'Fire Extinguisher', 'Building', 'fireext'),
(4, 'TV', 'Common Area', 'tv'),
(5, 'Bed with Mattress', 'Bedroom', 'bed'),
(6, 'Parking', 'Building', 'parking'),
(7, 'Water Purifier', 'Common Area', 'rowater'),
(8, 'Dining', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Washing Machine', 'Common Area', 'washingmachine'),
(11, 'Lift', 'Building', 'lift'),
(12, 'CCTV', 'Building', 'cctv'),
(13, 'Geyser', 'Washroom', 'geyser');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Bengaluru'),
(4, 'Hyderabad'),
(5, 'Jaipur'),
(6, 'Kota'),
(7, 'Kolkata'),
(8, 'Chennai'),
(9, 'Ajmer'),
(10, 'Pune'),
(11, 'Ahmedabad'),
(12, 'Lucknow'),
(13, 'Indore'),
(14, 'Visakhapatnam'),
(15, 'Surat'),
(16, 'Patna');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 5),
(6, 3, 1),
(7, 3, 2),
(8, 3, 5),
(9, 4, 2),
(10, 10, 1),
(11, 12, 3),
(12, 13, 2),
(13, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(2,1) NOT NULL,
  `rating_food` float(2,1) NOT NULL,
  `rating_safety` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, 'Saxena\'s Paying Guest', 'H.No. 3958 Kaseru Walan, Pahar Ganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 5000, 4.3, 3.4, 4.8),
(2, 1, 'Navrang PG Home', '644-C,Mohalla Baoli 6 Tooti Chowk, Paharganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'unisex', 6000, 2.9, 3.4, 3.8),
(3, 2, 'Navkar Paying Guest', '44, Juhu Scheme, Juhu, Mumbai, Maharashtra 400058', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 9500, 3.9, 3.8, 4.9),
(4, 2, 'PG for Girls Borivali West', 'Plot no.258/D4, Gorai no.2, Borivali West, Mumbai, Maharashtra 400092', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 8000, 4.2, 4.1, 4.5),
(5, 2, 'Ganpati Paying Guest', 'Police Beat, Sainath Complex, Besides, SV Rd, Daulat Nagar, Borivali East, Mumbai - 400066', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 8500, 4.2, 3.9, 4.6),
(6, 5, 'Jaipur PG for Boys', '123 Pink City Road, Jaipur', 'Spacious PG with all amenities including AC, Wi-Fi, and food services.', 'male', 7000, 4.5, 4.0, 4.7),
(7, 5, 'Shree PG for Girls', '456 Hawa Mahal Road, Jaipur', 'Comfortable girls PG near city center with top-notch security.', 'female', 6500, 4.2, 4.3, 4.8),
(8, 6, 'Kota Boys PG', 'Near Coaching Hub, Kota', 'PG designed for students with quiet study spaces and nutritious meals.', 'male', 6000, 4.0, 3.8, 4.5),
(9, 6, 'Kota Girls Hostel', 'Station Road, Kota', 'Safe and secure accommodation for girls with study facilities and common areas.', 'female', 5800, 4.1, 4.0, 4.6),
(10, 7, 'Kolkata PG', 'Park Street, Kolkata', 'Modern PG with all amenities, close to business districts.', 'unisex', 7500, 4.3, 4.2, 4.4),
(11, 8, 'Chennai Boys PG', 'OMR Road, Chennai', 'Comfortable PG accommodation with AC, food, and common study areas.', 'male', 6800, 4.0, 3.9, 4.7),
(12, 8, 'Chennai Ladies PG', 'T. Nagar, Chennai', 'Ladies PG with security and all modern amenities.', 'female', 7000, 4.4, 4.1, 4.8),
(13, 9, 'Ajmer Boys PG', 'Dargah Road, Ajmer', 'Well-furnished boys PG near all major attractions.', 'male', 5000, 4.1, 3.8, 4.3),
(14, 9, 'Ajmer Girls PG', 'Mayo Road, Ajmer', 'Safe and secure PG for girls with all facilities.', 'female', 5200, 4.2, 4.0, 4.5),
(15, 10, 'Comfort Stay', 'Koregaon Park', 'A cozy PG in the heart of Pune, offering modern amenities and a comfortable stay.', 'unisex', 8000, 4.2, 4.0, 4.1),
(16, 10, 'Elite PG', 'Hinjewadi', 'A premium PG with all essential facilities, ideal for professionals and students.', 'unisex', 6500, 4.0, 3.8, 4.0),
(17, 11, 'Safe Nest', 'Navrangpura', 'Secure and comfortable PG with easy access to public transport and local amenities.', 'unisex', 7000, 4.1, 4.0, 4.2),
(18, 11, 'Metro Stay', 'Prahlad Nagar', 'Well-maintained PG offering a variety of amenities and services.', 'unisex', 6000, 3.9, 3.8, 4.1),
(19, 12, 'Shanti PG', 'Gomti Nagar', 'Peaceful PG with a homely atmosphere, perfect for students and working professionals.', 'unisex', 5000, 4.0, 3.9, 4.0),
(20, 12, 'City Lodge', 'Hazratganj', 'Comfortable and affordable PG in a prime location with all basic facilities.', 'unisex', 5500, 4.1, 4.0, 3.9),
(21, 13, 'Elite Stay', 'Vijay Nagar', 'Luxurious PG with modern amenities, ideal for both students and professionals.', 'unisex', 6000, 4.2, 4.0, 4.1),
(22, 13, 'Comfort Zone', 'Palasia', 'Affordable and well-equipped PG, offering a comfortable stay.', 'unisex', 5000, 3.9, 3.8, 4.0),
(23, 14, 'Coastal Stay', 'Dwaraka Nagar', 'PG with a seaside vibe, offering a pleasant stay with all necessary facilities.', 'unisex', 6000, 4.1, 4.2, 4.3),
(24, 14, 'Harbor PG', 'Gajuwaka', 'A cozy and secure PG with all essential amenities and a friendly atmosphere.', 'unisex', 5500, 4.0, 3.9, 4.2),
(25, 15, 'Diamond Stay', 'Adajan', 'Comfortable PG with a range of amenities, ideal for a pleasant living experience.', 'unisex', 6500, 4.2, 4.1, 4.0),
(26, 15, 'Riverside PG', 'Pal', 'Affordable PG with good facilities and a great location.', 'unisex', 6000, 4.0, 3.9, 4.1),
(27, 16, 'Bihar Comfort', 'Boring Road', 'A well-maintained PG with essential amenities and a comfortable environment.', 'unisex', 5000, 3.9, 3.8, 4.0),
(28, 16, 'City Square PG', 'Kankarbagh', 'A budget-friendly PG with all necessary facilities and a welcoming atmosphere.', 'unisex', 5500, 4.0, 4.1, 3.9),
(29, 5, 'Royal Stay', 'C-Scheme', 'A luxurious PG with modern amenities and a royal ambiance.', 'unisex', 12000, 4.5, 4.3, 4.4),
(30, 5, 'Heritage PG', 'Malviya Nagar', 'A well-maintained PG with a traditional touch and all necessary facilities.', 'unisex', 10000, 4.2, 4.1, 4.3),
(31, 5, 'Comfort Haven', 'JLN Marg', 'Comfortable PG with spacious rooms and a friendly environment.', 'unisex', 9000, 4.0, 4.0, 4.1),
(32, 5, 'Student’s PG', 'Raja Park', 'Ideal for students, offering affordable rates and a homely atmosphere.', 'male', 6000, 3.9, 3.8, 4.0),
(33, 5, 'Working Professional PG', 'Bapu Nagar', 'PG designed for working professionals with all essential amenities.', 'female', 7000, 4.1, 4.0, 4.2),
(34, 5, 'Modern Living', 'Vaishali Nagar', 'Modern and stylish PG with contemporary design and facilities.', 'unisex', 11000, 4.3, 4.2, 4.4),
(35, 5, 'Peaceful Abode', 'Sodala', 'A serene PG offering a peaceful environment and comfortable stay.', 'unisex', 8000, 4.0, 3.9, 4.1),
(36, 5, 'City View PG', 'Ashok Nagar', 'PG with a great city view, ideal for those who enjoy a lively atmosphere.', 'unisex', 8500, 4.1, 4.0, 4.2);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`id`, `property_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 1, 11),
(10, 1, 13),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 2, 10),
(20, 2, 11),
(21, 2, 13),
(22, 3, 1),
(23, 3, 2),
(24, 3, 3),
(25, 3, 4),
(26, 3, 5),
(27, 3, 7),
(28, 3, 8),
(29, 3, 10),
(30, 3, 11),
(31, 3, 12),
(32, 3, 13),
(33, 4, 1),
(34, 4, 3),
(35, 4, 4),
(36, 4, 5),
(37, 4, 7),
(38, 4, 8),
(39, 4, 10),
(40, 4, 11),
(41, 4, 12),
(42, 4, 13),
(43, 5, 1),
(44, 5, 3),
(45, 5, 4),
(46, 5, 5),
(47, 5, 7),
(48, 5, 8),
(49, 5, 10),
(50, 5, 11),
(51, 5, 12),
(52, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(1, 1, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(2, 1, 'Karan Johar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(3, 2, 'Zoya Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(4, 2, 'Farhan Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(5, 2, 'Anurag Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(6, 3, 'Mira Nair', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(7, 3, 'Meghna Gulzar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(8, 4, 'Farah Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(9, 5, 'Rajkumar Hirani', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(10, 5, 'Sanjay Leela Bhansali', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `college_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(1, 'adi@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Anuj Kalbalia', '9535100112', 'male', 'NITD'),
(2, 'ravi@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Shadab Alam', '9876543210', 'male', 'NITJ'),
(3, 'shami@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Aditya Sood', '9876543210', 'male', 'Chandigarh University'),
(4, 'radhika@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Radhika Bhatia', '9876543210', 'female', 'Delhi University'),
(10, 'james@gmail.com', 'ba2fe7a211d3fbae3903afd0c51f9b9474f5369f', 'James Theo', '8488888880', 'male', 'M H University'),
(12, 'janedoe@email.com', 'e1770cefc174d55219edcab48f3c91905eb5bd9b', 'Jane Doe', '2334949555', 'female', 'ASU'),
(13, 'anshu@gmail.com', '863dae13577340b98c4c247f4a05b204a3543248', 'Anshu Singh', '9462662253', 'male', 'Sri Balaji College of Engineering and Technology');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interested_users_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
