-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 11:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_ambassador`
--

CREATE TABLE `brand_ambassador` (
  `brand_ambassador_id` varchar(8) NOT NULL,
  `brand_name` varchar(18) DEFAULT NULL,
  `brand_ambassador_name` varchar(20) DEFAULT NULL,
  `brand_ambassador_email` varchar(20) DEFAULT NULL,
  `brand_ambassador_contact_no` varchar(13) DEFAULT NULL,
  `brand_ambassador_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_ambassador`
--

INSERT INTO `brand_ambassador` (`brand_ambassador_id`, `brand_name`, `brand_ambassador_name`, `brand_ambassador_email`, `brand_ambassador_contact_no`, `brand_ambassador_address`) VALUES
('ba901', 'Audi', 'Akash Kumar', 'akash34@gmail.com', '01911111888', 'Banani,Dhaka'),
('ba902', 'BMW', 'Anurag Bashu', 'anurag311@gmail.com', '01812222888', 'Gulshan,Dhaka'),
('ba903', 'Abarth', 'Hashal Patal', 'hashal651@gmail.com', '01321128777', 'Badda,Dhaka'),
('ba904', 'Alfa', 'Emon Hossain', 'emon7676@gmail.com', '01999117788', 'Rampura,Dhaka'),
('ba905', 'Aston Martin', 'Nitish Rana', 'nitish456@gmail.com', '01999222882', 'Azimpur,Dhaka'),
('ba906', 'Bentley', 'Sawkat Hasan', 'sawkat566@gmail.com', '01992211119', 'Mohammadpur,Dhaka'),
('ba907', 'Bugatti', 'Fahim Ahmed', 'fahim77566@gmail.com', '01321212121', 'Farmgate,Dhaka'),
('ba908', 'Cadillac', 'Yeasin Rohoman', 'yeasin9911@gmail.com', '01899888442', 'Gulshan,Dhaka'),
('ba909', 'Alfa Romeo', 'Abdur Rashid Sawom', 'sawom@gmail.com', '01911111555', 'Banani,Dhaka'),
('ba910', 'Chevrolet', 'Pranto Ahmed', 'pranto@gmail.com', '01812222840', 'Gulshan,Dhaka'),
('ba911', 'Chrysler', 'Tahamid Khan', 'tahamid@gmail.com', '01321128760', 'Jatrabari,Dhaka'),
('ba912', 'Citroen', 'Shahed Hossain', 'shahed@gmail.com', '01999117730', 'Rampura,Dhaka'),
('ba913', 'Daewoo', 'Rana ghosh', 'rana@gmail.com', '01699222877', 'Azimpur,Dhaka'),
('ba914', 'Dodge ', 'Mithun Ahmed', 'mithun@gmail.com', '01992211126', 'Mohammadpur,Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `car_id` varchar(10) NOT NULL,
  `car_model` varchar(45) DEFAULT NULL,
  `car_type` varchar(15) DEFAULT NULL,
  `brand` varchar(12) DEFAULT NULL,
  `body_type` varchar(30) DEFAULT NULL,
  `number_of_seat` int(2) DEFAULT NULL,
  `drive_wheel` varchar(15) DEFAULT NULL,
  `engine_type` varchar(10) DEFAULT NULL,
  `engine_capacity` varchar(9) DEFAULT NULL,
  `max_power` varchar(8) DEFAULT NULL,
  `fuel_type` varchar(10) DEFAULT NULL,
  `fuel_system` varchar(20) DEFAULT NULL,
  `fuel_tank_capacity` varchar(5) DEFAULT NULL,
  `top_speed` varchar(10) DEFAULT NULL,
  `price_taka` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`car_id`, `car_model`, `car_type`, `brand`, `body_type`, `number_of_seat`, `drive_wheel`, `engine_type`, `engine_capacity`, `max_power`, `fuel_type`, `fuel_system`, `fuel_tank_capacity`, `top_speed`, `price_taka`) VALUES
('car_301', 'Audi Q3 1.4 TFSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front', 'fuel ', '1395 cc', '150 hp', 'gasoline', 'direct injection', '64 L', '203 km/h', 3600000),
('car_302', 'Audi Q5 2.0 TFSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front+rear', 'fuel ', '1984 cc', '180 hp', 'gasoline', 'direct injection', '64 L', '210 km/h', 4000000),
('car_303', 'Audi Q7 3.6 FSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front+rear', 'fuel ', '3597 cc', '280 hp', 'gasoline', 'multipoint injection', '100 L', '225 km/h', 4500000),
('car_304', 'Audi Q7 3.0 TFSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front+rear', 'fuel ', '2995 cc', '272 hp', 'gasoline', 'direct injection', '100 L', '222 km/h', 4300000),
('car_305', 'BMW X1 sDrive18i', 'SUV Offroad car', 'BMW', '5-doors,suv', 5, 'rear', 'fuel ', '1995 cc', '150 hp', 'gasoline', 'multipoint injection', '63 L', '202 km/h', 3000000),
('car_306', 'BMW X3 2.0i', 'SUV Offroad car', 'BMW', '5-doors,suv', 5, 'front', 'fuel ', '1995 cc', '150 hp', 'gasoline', 'multipoint injection', '67 L', '198 km/h', 4000000),
('car_307', 'Abarth 500C 1.4 16v T-Jet', 'Convertible\r\n', 'Abarth', '3-doors, convertible', 4, 'front', 'fuel+gass', '1368 cc', '135 hp', 'gasoline', 'direct injection', '35 L', '205 km/h', 3000000),
('car_308', 'Alfa Romeo Spider 2.0 Vel', 'Convertible', 'Alfa', '2-doors, convertible', 5, 'rear', 'fuel ', '1962 cc', '127 hp', 'gasoline', 'multipoint injection', '51 L', '225 km/h', 2500000),
('car_309', 'Alfa Romeo Spider 2.0 Twi', 'Convertible', 'Alfa', '2-doors, convertible', 5, 'front', 'fuel+gass', '1970 cc', '150 hp', 'gasoline', 'multipoint  injectio', '70 L', '210 km/h', 2800000),
('car_310', 'Alfa Romeo Spider 1.8 T.S', 'Convertible', 'Alfa', '2-doors, convertible', 2, 'front', 'fuel', '1747 cc', '144 hp', 'gasoline', 'multipoint injection', '70 L', '205 km/h', 2000000),
('car_311', 'Alfa Romeo Brera 2.2 JTS', 'Coupe', 'Alfa', '3-doors, coupe', 4, 'front', 'fuel', '2198 cc', '185 hp', 'gasoline', 'direct injection', '70 L', '222 km/h', 3200000),
('car_312', 'Aston Martin DBS', 'Coupe', 'Aston Martin', '2-doors, coupe', 4, 'rear', 'fuel', '5935 cc', '517 hp', 'gasoline', 'multipoint injection', '78 L', '307 km/h', 5000000),
('car_313', 'Audi S5 Coupe 4.2 FSI qua', 'Coupe', 'Audi', '2-doors, coupe', 4, 'front+rear', 'fuel', '4163 cc', '354 hp', 'gasoline', 'direct injection', '64 L', '250 km/h', 4500000),
('car_314', 'Bentley Continental GT V8', 'Coupe', 'Bentley', '2-doors, coupe', 4, 'front+rear', 'fuel', '3993 cc', '507 hp', 'gasoline', 'direct injection', '100 L', '222 km/h', 4300000),
('car_315', 'Bugatti Veyron 16.4', 'Coupe', 'Bugatti', '2-doors, coupe', 2, 'front+rear', 'fuel', '7993 cc', '1001 hp', 'gasoline', 'multipoint injection', '100 L', '407 km/h', 5700000),
('car_316', 'Cadillac CTS Coupe 3.6 Sp', 'Coupe', 'Cadillac', '2-doors, coupe', 5, 'rear', 'fuel', '3564 cc', '322 hp', 'gasoline', 'direct injection', '68 L', '249 km/h', 4300000),
('car_317', 'Audi A1 Sportback 1.2 TFS', 'Hatchback', 'Audi', '5-doors, hatchback', 4, 'front', 'fuel', '1197  cc', '86 hp', 'gasoline', 'direct injection', '45 L', '185 km/h', 2000000),
('car_318', 'Alfa Romeo Spider 2.0 Vel', 'Hatchback', 'Alfa', '2-doors, hatchback', 4, 'rear', 'fuel', '1962 cc', '127 hp', 'gasoline', 'multipoint injection', '45 L', '180 km/h', 2000000),
('car_319', 'Aston Martin Rapide', 'Sedan', 'Aston Martin', '4-doors, sedan', 4, 'rear', 'fuel+gass', '5935 cc', '476 hp', 'gasoline', 'multipoint  injectio', '91 L', '303 km/h', 4800000),
('car_320', 'Audi S4 3.0 TFSI quattro', 'Sedan', 'Audi', '4-doors, sedan', 5, 'front+rear', 'fuel+gass', '2995 cc', '333 hp', 'gasoline', 'multipoint injection', '65 L', '250 km/h', 4300000),
('car_321', 'Alfa Romeo 156 Sportwagon 1.6 T.Spark', 'Wagon', 'Alfa Romeo', '5-doors, station wagon', 5, 'front', 'fuel', '1598 cc', '120 hp', 'gasoline', 'direct injection', '63 L', '200 km/h', 3000000),
('car_322', 'Alfa Romeo 156 Sportwagon 1.6 Impression', 'Wagon', 'Alfa Romeo', '5-doors, station wagon', 5, 'front+rear', 'fuel', '5935 cc', '120 hp', 'gasoline', 'multipoint injection', '70 L', '200 km/h', 3100000),
('car_323', 'Alfa Romeo Crosswagon 1.9 Progression', 'Wagon', 'Alfa Romeo', '5-doors, station wagon', 5, 'front+rear', 'fuel', '4163 cc', '150 hp', 'gasoline', 'direct injection', '64 L', '192 km/h', 3000000),
('car_324', 'Chevrolet Orlando 1.4T LS', 'MPV', 'Chevrolet', '5-doors, mpv', 7, 'front', 'fuel', '1362 cc', '140 hp', 'gasoline', 'multipoint injection', '65 L', '200 km/h', 4600000),
('car_325', 'Chevrolet Tacuma 1.6 Pure', 'MPV', 'Chevrolet', '5-doors, mpv', 7, 'front+rear', 'fuel+gass', '1598 cc', '105 hp', 'gasoline', 'multipoint injection', '60 L', '167 km/h', 3800000),
('car_326', 'Chrysler Grand Voyager 3.8 V6', 'MPV', 'Chrysler', '5-doors, mpv', 7, 'rear', 'fuel+gass', '3778 cc', '193 hp', 'gasoline', 'direct injection', '78 L', '193 km/h', 4100000),
('car_327', 'Citroen Berlingo 1.4i Cinqspace', 'MPV', 'Citroen', '4-doors, mpv', 6, 'front', 'fuel', '1360  cc', '175 hp', 'gasoline', 'multipoint injection', '45 L', '167 km/h', 3300000),
('car_328', 'Daewoo Tacuma 1.6 Spirit', 'MPV', 'Daewoo', '5-doors, mpv', 5, 'front+rear', 'fuel', '1598 cc', '105 hp', 'gasoline', 'multipoint injection', '60 L', '180 km/h', 3200000),
('car_329', 'Dodge Journey 2.4 SE Base', 'MPV', 'Dodge ', '4-doors, mpv', 5, 'rear', 'fuel', '2360 cc', '170 hp', 'gasoline', 'multipoint  injectio', '77 L', '188 km/h', 3800000),
('car_330', 'Audi S4 5.2 FSI quard', 'Sedan', 'Audi', '4-doors, sedan', 5, 'front+rear', 'fuel', '2995 cc', '333 hp', 'gasoline', 'multipoint injection', '65 L', '250 km/h', 4300000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(6) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_gender` varchar(7) DEFAULT NULL,
  `customer_email` varchar(20) DEFAULT NULL,
  `customer_contact_no` varchar(15) DEFAULT NULL,
  `customer_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_contact_no`, `customer_address`) VALUES
('c201', 'Naeem Hossain', 'Male', 'naeem@gmail.com', '01355566688', 'Gaibandha, Rangpur'),
('c202', 'Nahid Hasan ', 'Male', 'nahid@gmail.com', '01311122299', 'Thana Sodor, Khulna'),
('c203', 'Atikur Rahman', 'Male', 'atik@gmail.com', '01722112211', 'Lalbag, Dhaka'),
('c204', 'Farzana Akter', 'Female', 'farzana@gmail.com', '01756565656', 'Farmgate, Dhaka'),
('c205', 'Sakal Sarkar', 'Male', 'sakal@gmail.com', '01355567777', 'Saikhira,Khulna'),
('c206', 'Sakib Hossain', 'Male', 'sakin@gmail.com', '01355577444', 'Sutrapur,Dhaka'),
('c207', 'Jesica Rahman', 'Female', 'jesica@gmail.com', '01855577999', 'Lokkhi Bazar,Dhaka'),
('c208', 'Urmi Jamal', 'Female', 'urmi@gmail.com', '01822299111', 'Azimpur,Dhaka'),
('c209', 'Anik Barman', 'Male', 'anik017@gmail.com', '01722557799', 'Rajabazar,Dhaka'),
('c210', 'Rashed Ahmed', 'Male', 'rashed@gmail.com', '02147483647', 'Bonani,Dhaka'),
('c211', 'Tomori Khan', 'Female', 'tomori@gmail.com', '01899664411', 'kolabagan,Dhaka'),
('c212', 'Tasneem Sara', 'Female', 'sara@gmail.com', '01922211166', 'Science Lab,Dhaka'),
('c213', 'Rabbi Hassan', 'Male', 'rabbii@gmail.com', '01555566688', 'Sylhet Sadar-Sylhet'),
('c214', 'Md Mubtasim', 'Male', 'mubastim@gmail.com', '01511122299', 'Moglabazar-Sylhet'),
('c215', 'Shibly Sadique', 'Male', 'shiblyl@gmail.com', '01822112211', 'Dakshin Surma-Sylhet'),
('c216', 'Tabassum Rahman', 'Female', 'tabassum@gmail.com', '01685895461', 'Jalalabad-Sylhet'),
('c217', 'Nymuzzaman Saikat', 'Male', 'nymuzzaman@gmail.com', '01355567777', 'Thana Sodor-Sylhet'),
('c218', 'Abdur Rashid', 'Male', 'rashid@gmail.com', '01955577444', 'Sutrapur,Dhaka'),
('c219', 'Tanjima Tithy ', 'Female', 'tithy@gmail.com', '01655577999', 'Lokkhi Bazar,Dhaka'),
('c220', 'Wafia Jannat', 'Female', 'jannat@gmail.com', '01722299111', 'Mirpur2,Dhaka'),
('c221', 'Sayed Jubayed', 'Male', 'jubayed@gmail.com', '01922557799', 'Rajabazar,Dhaka'),
('c222', 'Harisur Rohoman', 'Male', 'harisur@gmail.com', '02547483647', 'Jalalabad-Sylhet'),
('c223', 'Anika Tahrin', 'Female', 'anika@gmail.com', '01799664411', 'Kolabagan,Dhaka'),
('c224', 'Samia Kabir', 'Female', 'samia@gmail.com', '01622111665', 'Rampur,Chandpur-Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(7) NOT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `emp_gender` varchar(7) DEFAULT NULL,
  `emp_email` varchar(30) DEFAULT NULL,
  `emp_contact` varchar(15) DEFAULT NULL,
  `emp_address` varchar(30) DEFAULT NULL,
  `emp_posting_branch` varchar(20) DEFAULT NULL,
  `emp_salary` int(8) DEFAULT NULL,
  `emp_responsibility` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_gender`, `emp_email`, `emp_contact`, `emp_address`, `emp_posting_branch`, `emp_salary`, `emp_responsibility`) VALUES
('emp101', 'Imran Khan', 'Male', 'imran@gmail.com', '01515-111101', 'Azimpur,Dhaka', 'Dhaka', 40000, 'Sales Manager'),
('emp102', 'Saif khan', 'Male', 'saif@gmail.com', '01515-111102', 'Badda,Dhaka', 'Dhaka', 45000, 'Finance Manager'),
('emp103', 'Fardina Mohoty', 'Female', 'mohoty@gmail.com', '01515-111103', 'Farmgate,Dhaka', 'Dhaka', 45000, 'Customer Service Representative'),
('emp104', 'Afshana Riya', 'Female', 'riya@gmail.com', '01515-111104', 'Farmgate,Dhaka', 'Dhaka', 45000, 'Customer Service Representative'),
('emp105', 'Rafid Al Bukhari', 'Male', 'rafid@gmail.com', '01515-111105', 'Mirpur2,Dhaka', 'Dhaka', 35000, 'Car Maintenance'),
('emp106', 'Nazmul Hasan', 'Male', 'nazmul@gmail.com', '01515-111106', 'Mirpur10,Dhaka', 'Dhaka', 35000, 'Car Maintenance'),
('emp107', 'Asif Sadat', 'Male', 'asif@gmail.com', '01515-111107', 'Mirpur1,Dhaka', 'Dhaka', 35000, 'Car Maintenance'),
('emp108', 'Arfina Akter', 'Female', 'arfina@gmail.com', '01515-111108', 'Segunbagica,Dhaka', 'Dhaka', 38000, 'Casher'),
('emp109', 'Tanvir Mahedi', 'Male', 'tanvir@gmail.com', '01515-111109', 'Mirpur4,Dhaka', 'Dhaka', 25000, 'Gatekeeper'),
('emp110', 'AF Rudro', 'Male', 'rudro@gmail.com', '01515-111110', 'Bagadi,Chandpur-Chittagong', 'Chittagong', 40000, 'Sales Manager'),
('emp111', 'Niaz Al Rakib', 'Male', 'rakib@gmail.com', '01515-111111', 'Balia,Chandpur-Chittagong', 'Chittagong', 45000, 'Finance Manager'),
('emp112', 'Zannatun Tahura ', 'Female', 'tahura@gmail.com', '01515-111112', 'Chandra,Chandpur-Chittagong', 'Chittagong', 45000, 'Customer Service Representative'),
('emp113', 'Tamanna Zaman', 'Female', 'tamanna@gmail.com', '01515-111113', 'Rupsha,Chandpur-Chittagong', 'Chittagong', 45000, 'Customer Service Representative'),
('emp114', 'Atiqur Rahaman ', 'Male', 'atiq@gmail.com', '01515-111114', 'Rupsha,Chandpur-Chittagong', 'Chittagong', 35000, 'Car Maintenance'),
('emp115', 'Mohammad Sakin', 'Male', 'sakin@gmail.com', '01515-111115', 'Ashikati,Chandpur-Chittagong', 'Chittagong', 35000, 'Car Maintenance'),
('emp116', 'Muhit Rahman', 'Male', 'muhit@gmail.com', '01515-111116', 'Rampur,Chandpur-Chittagong', 'Chittagong', 35000, 'Car Maintenance'),
('emp117', 'Rabia Sultana', 'Female', 'rabia@gmail.com', '01515-111117', 'Mulgram,Chandpur-Chittagong', 'Chittagong', 38000, 'Casher'),
('emp118', 'Tanvir Ahmed', 'Male', 'ahmed@gmail.com', '01515-111118', 'Balia,Chandpur-Chittagong', 'Chittagong', 25000, 'Gatekeeper'),
('emp119', 'Jamil Saqlain', 'Male', 'jamil@gmail.com', '01515-111119', 'Kotwali-Sylhet', 'Sylhet', 40000, 'Sales Manager'),
('emp120', 'Sohel Rahman', 'Male', 'sohel@gmail.com', '01515-111120', 'Jalalabad-Sylhet', 'Sylhet', 45000, 'Finance Manager'),
('emp121', 'Nayeema Mitu ', 'Female', 'mitu@gmail.com', '01515-111121', 'Kotwali-Sylhet', 'Sylhet', 45000, 'Customer Service Representative'),
('emp122', 'Faiah Bari', 'Female', 'bari@gmail.com', '01515-111122', 'Jalalabad-Sylhet', 'Sylhet', 45000, 'Customer Service Representative'),
('emp123', 'Mohammad Azmee', 'Male', 'azmee@gmail.com', '01515-111123', 'Sylhet Sadar-Sylhet', 'Sylhet', 35000, 'Car Maintenance'),
('emp124', 'Badhan Molla', 'Male', 'badhon@gmail.com', '01515-111124', 'Moglabazar-Sylhet', 'Sylhet', 35000, 'Car Maintenance'),
('emp125', 'Ridwan Ahmed', 'Male', 'ridwan@gmail.com', '01515-111125', 'Dakshin Surma-Sylhet', 'Sylhet', 35000, 'Car Maintenance'),
('emp126', 'Sadia Afrin', 'Female', 'sadia@gmail.com', '01515-111126', 'Sylhet Sadar-Sylhet', 'Sylhet', 38000, 'Casher'),
('emp127', 'Rabbi Hassan', 'Male', 'rabbi@gmail.com', '01515-111127', 'Dakshin Surma-Sylhet', 'Sylhet', 25000, 'Gatekeeper');

-- --------------------------------------------------------

--
-- Table structure for table `payment_bill`
--

CREATE TABLE `payment_bill` (
  `pb_id` varchar(10) NOT NULL,
  `purchase_car_id` varchar(10) DEFAULT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_contact` varchar(15) DEFAULT NULL,
  `purchase_car_brand` varchar(10) DEFAULT NULL,
  `car_model` varchar(35) DEFAULT NULL,
  `car_price` int(12) DEFAULT NULL,
  `paid_amount` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_bill`
--

INSERT INTO `payment_bill` (`pb_id`, `purchase_car_id`, `customer_id`, `customer_name`, `customer_contact`, `purchase_car_brand`, `car_model`, `car_price`, `paid_amount`) VALUES
('pb501', 'car_303', 'c201', 'Naeem Hossain', '01355566688', 'Audi', 'Audi Q7 3.6 FSI', 4500000, 4500000),
('pb502', 'car_304', 'c203', 'Atikur Rahman', '01722112211', 'Audi', 'Audi Q7 3.0 TFSI', 4300000, 4300000),
('pb503', 'car_307', 'c204', 'Farzana Akter', '01756565656', 'Abarth', 'Abarth 500C 1.4 16v T-Jet', 3000000, 3000000),
('pb504', 'car_310', 'c206', 'Sakib Hossain', '01355577444', 'Alfa', 'Alfa Romeo Spider 1.8 T.S', 2000000, 2000000),
('pb505', 'car_313', 'c207', 'Jesica Rahman', '01855577999', 'Audi', 'Audi S5 Coupe 4.2 FSI qua', 4500000, 4500000),
('pb506', 'car_316', 'c209', 'Anik Barman', '01722557799', 'Cadillac', 'Cadillac CTS Coupe 3.6 Sp', 4300000, 4300000),
('pb507', 'car_307', 'c211', 'Tomori Khan', '01899664411', 'Abart', 'Abarth 500C 1.4 16v T-Jet', 3000000, 3000000),
('pb508', 'car_303', 'c213', 'Rabbi Hassan', '01555566688', 'Audi', 'Audi Q7 3.6 FSI', 4500000, 4500000),
('pb509', 'car_317', 'c215', 'Shibly Sadique', '01822112211', 'Alfa', 'Alfa Romeo 156 Sportwagon 1.6 T.Spa', 3000000, 3000000),
('pb510', 'car_319', 'c217', 'Nymuzzaman Saikat', '01355567777', 'Alfa', 'Alfa Romeo 156 Sportwagon 1.6 Impre', 3100000, 3100000),
('pb511', 'car_321', 'c221', 'Sayed Jubayed', '01922557799', 'Cadillac', 'Cadillac CTS Coupe 3.6 Sp', 3000000, 3000000),
('pb512', 'car_324', 'c222', 'Harisur Rohoman', '02547483647', 'Audi', 'Audi A1 Sportback 1.2 TFS', 4600000, 4600000),
('pb513', 'car_328', 'c224', 'Samia Kabir', '01622111665', 'Aston Mart', 'Aston Martin Rapide', 3200000, 3200000),
('pb514', 'car_303', 'c202', 'Nahid Hasan', '01311122299', 'Audi', 'Audi Q7 3.6 FSI', 4500000, 4500000),
('pb515', 'car_303', 'c205', 'Sakal Sarkar', '01355567777', 'Audi', 'Audi Q7 3.6 FSI', 4300000, 4300000),
('pb516', 'car_303', 'c208', 'Urmi Jamal', '01822299111', 'Abarth', 'Audi Q7 3.6 FSI', 3000000, 3000000),
('pb517', 'car_307', 'c212', 'Tasneem Sara', '01922211166', 'Abarth', 'Abarth 500C 1.4 16v T-Jet', 2000000, 2000000),
('pb518', 'car_303', 'c216', 'Tabassum Rahman', '01685895461', 'Audi', 'Audi Q7 3.6 FSI', 4500000, 4500000),
('pb519', 'car_307', 'c219', 'Tanjima Tithy', '01655577999', 'Abarth', 'Abarth 500C 1.4 16v T-Jet', 4300000, 4300000),
('pb520', 'car_303', 'c223', 'Anika Tahrin', '01799664411', 'Audi', 'Audi Q7 3.6 FSI', 3000000, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `customer_id` varchar(8) NOT NULL,
  `car_id` varchar(15) DEFAULT NULL,
  `purchase_date` varchar(12) DEFAULT NULL,
  `paid_amount` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`customer_id`, `car_id`, `purchase_date`, `paid_amount`) VALUES
('c201', 'car_303', '23-10-2020', 4500000),
('c202', 'car303', '07-02-2021', 4500000),
('c203', 'car_304', '25-10-2020', 4300000),
('c204', 'car_307', '01-11-2020', 3000000),
('c205', 'car303', '07-02-2021', 4500000),
('c206', 'car_310', '03-11-2020', 2000000),
('c207', 'car_313', '4-11-2020', 4500000),
('c208', 'car303', '09-02-2021', 4500000),
('c209', 'car_316', '9-11-2020', 4300000),
('c211', 'car_307', '10-12-2020', 3000000),
('c212', 'car307', '15-02-2021', 3000000),
('c213', 'car_303', '15-12-2020', 4500000),
('c215', 'car_317', '29-12-2020', 4300000),
('c216', 'car303', '16-02-2021', 4500000),
('c217', 'car_319', '01-01-2021', 4800000),
('c219', 'car307', '18-02-2021', 3000000),
('c221', 'car_321', '12-01-2021', 3000000),
('c222', 'car_324', '29-01-2021', 4600000),
('c223', 'car303', '20-02-2021', 4500000),
('c224', 'car_328', '05-02-2021', 3200000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` varchar(10) NOT NULL,
  `car_id` varchar(10) DEFAULT NULL,
  `shop_branch` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `car_id`, `shop_branch`) VALUES
('stk7001', 'car4001', 'Dhaka'),
('stk7002', 'car4002', 'Dhaka'),
('stk7003', 'car4003', 'Dhaka'),
('stk7004', 'car4004', 'Dhaka'),
('stk7005', 'car4005', 'Dhaka'),
('stk7006', 'car4006', 'Dhaka'),
('stk7007', 'car4007', 'Dhaka'),
('stk7008', 'car4008', 'Dhaka'),
('stk7009', 'car4009', 'Dhaka'),
('stk7010', 'car4010', 'Dhaka'),
('stk70101', 'car40101', 'Sylhet'),
('stk70102', 'car40102', 'Sylhet'),
('stk70103', 'car40103', 'Sylhet'),
('stk70104', 'car40104', 'Sylhet'),
('stk70105', 'car40105', 'Sylhet'),
('stk70106', 'car40106', 'Sylhet'),
('stk70107', 'car40107', 'Sylhet'),
('stk70108', 'car40108', 'Sylhet'),
('stk70109', 'car40109', 'Sylhet'),
('stk7011', 'car4011', 'Dhaka'),
('stk70110', 'car40110', 'Sylhet'),
('stk70111', 'car40111', 'Sylhet'),
('stk70112', 'car40112', 'Sylhet'),
('stk70113', 'car40113', 'Sylhet'),
('stk70114', 'car40114', 'Sylhet'),
('stk70115', 'car40115', 'Sylhet'),
('stk70116', 'car40116', 'Sylhet'),
('stk70117', 'car40117', 'Sylhet'),
('stk70118', 'car40118', 'Sylhet'),
('stk70119', 'car40119', 'Sylhet'),
('stk7012', 'car4012', 'Dhaka'),
('stk70120', 'car40120', 'Sylhet'),
('stk7013', 'car4013', 'Dhaka'),
('stk7014', 'car4014', 'Dhaka'),
('stk7015', 'car4015', 'Dhaka'),
('stk7016', 'car4016', 'Dhaka'),
('stk7017', 'car4017', 'Dhaka'),
('stk7018', 'car4018', 'Dhaka'),
('stk7019', 'car4019', 'Dhaka'),
('stk7020', 'car4020', 'Dhaka'),
('stk7021', 'car4021', 'Dhaka'),
('stk7022', 'car4022', 'Dhaka'),
('stk7023', 'car4023', 'Dhaka'),
('stk7024', 'car4024', 'Dhaka'),
('stk7025', 'car4025', 'Dhaka'),
('stk7026', 'car4026', 'Dhaka'),
('stk7027', 'car4027', 'Dhaka'),
('stk7028', 'car4028', 'Dhaka'),
('stk7029', 'car4029', 'Dhaka'),
('stk7030', 'car4030', 'Dhaka'),
('stk7031', 'car4031', 'Dhaka'),
('stk7032', 'car4032', 'Dhaka'),
('stk7033', 'car4033', 'Dhaka'),
('stk7034', 'car4034', 'Dhaka'),
('stk7035', 'car4035', 'Dhaka'),
('stk7036', 'car4036', 'Dhaka'),
('stk7037', 'car4037', 'Dhaka'),
('stk7038', 'car4038', 'Dhaka'),
('stk7039', 'car4039', 'Dhaka'),
('stk7040', 'car4040', 'Dhaka'),
('stk7041', 'car4041', 'Chittagong'),
('stk7042', 'car4042', 'Chittagong'),
('stk7043', 'car4043', 'Chittagong'),
('stk7044', 'car4044', 'Chittagong'),
('stk7045', 'car4045', 'Chittagong'),
('stk7046', 'car4046', 'Chittagong'),
('stk7047', 'car4047', 'Chittagong'),
('stk7048', 'car4048', 'Chittagong'),
('stk7049', 'car4049', 'Chittagong'),
('stk7050', 'car4050', 'Chittagong'),
('stk7051', 'car4051', 'Chittagong'),
('stk7052', 'car4052', 'Chittagong'),
('stk7053', 'car4053', 'Chittagong'),
('stk7054', 'car4054', 'Chittagong'),
('stk7055', 'car4055', 'Chittagong'),
('stk7056', 'car4056', 'Chittagong'),
('stk7057', 'car4057', 'Chittagong'),
('stk7058', 'car4058', 'Chittagong'),
('stk7059', 'car4059', 'Chittagong'),
('stk7060', 'car4060', 'Chittagong'),
('stk7061', 'car4061', 'Chittagong'),
('stk7062', 'car4062', 'Chittagong'),
('stk7063', 'car4063', 'Chittagong'),
('stk7064', 'car4064', 'Chittagong'),
('stk7065', 'car4065', 'Chittagong'),
('stk7066', 'car4066', 'Chittagong'),
('stk7067', 'car4067', 'Chittagong'),
('stk7068', 'car4068', 'Chittagong'),
('stk7069', 'car4069', 'Chittagong'),
('stk7070', 'car4070', 'Chittagong'),
('stk7071', 'car4071', 'Chittagong'),
('stk7072', 'car4072', 'Chittagong'),
('stk7073', 'car4073', 'Chittagong'),
('stk7074', 'car4074', 'Chittagong'),
('stk7075', 'car4075', 'Chittagong'),
('stk7076', 'car4076', 'Chittagong'),
('stk7077', 'car4077', 'Chittagong'),
('stk7078', 'car4078', 'Chittagong'),
('stk7079', 'car4079', 'Chittagong'),
('stk7080', 'car4080', 'Chittagong'),
('stk7081', 'car4081', 'Sylhet'),
('stk7082', 'car4082', 'Sylhet'),
('stk7083', 'car4083', 'Sylhet'),
('stk7084', 'car4084', 'Sylhet'),
('stk7085', 'car4085', 'Sylhet'),
('stk7086', 'car4086', 'Sylhet'),
('stk7087', 'car4087', 'Sylhet'),
('stk7088', 'car4088', 'Sylhet'),
('stk7089', 'car4089', 'Sylhet'),
('stk7090', 'car4090', 'Sylhet'),
('stk7091', 'car4091', 'Sylhet'),
('stk7092', 'car4092', 'Sylhet'),
('stk7093', 'car4093', 'Sylhet'),
('stk7094', 'car4094', 'Sylhet'),
('stk7095', 'car4095', 'Sylhet'),
('stk7096', 'car4096', 'Sylhet'),
('stk7097', 'car4097', 'Sylhet'),
('stk7098', 'car4098', 'Sylhet'),
('stk7099', 'car4099', 'Sylhet'),
('stk71000', 'car40100', 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_cars`
--

CREATE TABLE `upcoming_cars` (
  `car_id` varchar(10) NOT NULL,
  `car_model` varchar(45) DEFAULT NULL,
  `car_type` varchar(15) DEFAULT NULL,
  `brand` varchar(12) DEFAULT NULL,
  `body_type` varchar(30) DEFAULT NULL,
  `number_of_seat` int(2) DEFAULT NULL,
  `drive_wheel` varchar(15) DEFAULT NULL,
  `engine_type` varchar(10) DEFAULT NULL,
  `engine_capacity` varchar(9) DEFAULT NULL,
  `max_power` varchar(8) DEFAULT NULL,
  `fuel_type` varchar(10) DEFAULT NULL,
  `fuel_system` varchar(20) DEFAULT NULL,
  `fuel_tank_capacity` varchar(5) DEFAULT NULL,
  `top_speed` varchar(10) DEFAULT NULL,
  `price_taka` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcoming_cars`
--

INSERT INTO `upcoming_cars` (`car_id`, `car_model`, `car_type`, `brand`, `body_type`, `number_of_seat`, `drive_wheel`, `engine_type`, `engine_capacity`, `max_power`, `fuel_type`, `fuel_system`, `fuel_tank_capacity`, `top_speed`, `price_taka`) VALUES
('car_601', 'Audi Q8 8.4 TFSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front', 'fuel', '1595 cc', '185 hp', 'gasoline', 'direct injection', '64 L', '222 km/h', 3900000),
('car_602', 'Audi Q6 7.6 FSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front+rear', 'fuel', '2084 cc', '190 hp', 'gasoline', 'direct injection', '68 L', '220 km/h', 4200000),
('car_603', 'Audi Q7 7.8 TFT', 'Hatchback', 'Audi', '5-doors,suv', 5, 'front+rear', 'fuel ', '3797 cc', '295 hp', 'gasoline', 'multipoint injection', '110 L', '235 km/h', 4400000),
('car_604', 'Audi Q9 7.0 TFSI', 'SUV Offroad car', 'Audi', '5-doors,suv', 5, 'front+rear', 'fuel ', '4095 cc', '282 hp', 'gasoline', 'direct injection', '105 L', '232 km/h', 4500000),
('car_605', 'BMW X5 sDrive18i', 'Hatchback', 'BMW', '5-doors,suv', 5, 'rear', 'fuel ', '2095 cc', '185 hp', 'gasoline', 'multipoint injection', '63 L', '215 km/h', 3100000),
('car_606', 'BMW X6 3.0i', 'SUV Offroad car', 'BMW', '5-doors,suv', 5, 'front', 'fuel ', '2195 cc', '190 hp', 'gasoline', 'multipoint injection', '69 L', '200 km/h', 4000000),
('car_607', 'Abarth 600C 1.4 16v T-Jet', 'Convertible', 'Abarth', '3-doors, convertible', 4, 'front', 'fuel+gass', '1568 cc', '155 hp', 'gasoline', 'direct injection', '35 L', '215 km/h', 3000000),
('car_608', 'Alfa Romeo Spider 4.0 Vel', 'Convertible', 'Alfa', '2-doors, convertible', 5, 'rear', 'fuel ', '2162 cc', '157 hp', 'gasoline', 'multipoint injection', '51 L', '228 km/h', 2500000),
('car_609', 'Alfa Romeo Spider 5.0 Twi', 'Convertible', 'Alfa', '2-doors, convertible', 5, 'front', 'fuel+gass', '1995 cc', '172 hp', 'gasoline', 'multipoint  injectio', '70 L', '215 km/h', 2800000),
('car_610', 'Alfa Romeo Spider 3.8 T.S', 'Convertible', 'Alfa', '2-doors, convertible', 2, 'front', 'fuel', '1947 cc', '164 hp', 'gasoline', 'multipoint injection', '70 L', '210 km/h', 2000000),
('car_611', 'Alfa Romeo Brera 4.2 JTS', 'Coupe', 'Alfa', '3-doors, coupe', 4, 'front', 'fuel', '2298 cc', '195 hp', 'gasoline', 'direct injection', '70 L', '232 km/h', 3200000),
('car_612', 'Aston Martin TBS', 'Coupe', 'Aston Martin', '2-doors, coupe', 4, 'rear', 'fuel', '5955 cc', '537 hp', 'gasoline', 'multipoint injection', '78 L', '317 km/h', 5000000),
('car_613', 'Daewoo Tacuma 6.6 Spirit', 'MPV', 'Daewoo', '5-doors, mpv', 5, 'front+rear', 'fuel', '1798 cc', '135 hp', 'gasoline', 'multipoint injection', '60 L', '190 km/h', 3200000),
('car_614', 'Dodge Journey 4.4 SE Base', 'MPV', 'Dodge ', '4-doors, mpv', 5, 'rear', 'fuel', '2460 cc', '190 hp', 'gasoline', 'multipoint  injectio', '77 L', '198 km/h', 3800000),
('car_615', 'Audi S7 5.2 TFSI quard', 'Sedan', 'Audi', '4-doors, sedan', 5, 'front+rear', 'fuel', '3095 cc', '343 hp', 'gasoline', 'multipoint injection', '65 L', '260 km/h', 4300000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_ambassador`
--
ALTER TABLE `brand_ambassador`
  ADD PRIMARY KEY (`brand_ambassador_id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `payment_bill`
--
ALTER TABLE `payment_bill`
  ADD PRIMARY KEY (`pb_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `upcoming_cars`
--
ALTER TABLE `upcoming_cars`
  ADD PRIMARY KEY (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
