-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 03:12 PM
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
-- Database: `spes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_Application` varchar(255) NOT NULL,
  `first_Name` varchar(255) NOT NULL,
  `middle_Name` varchar(255) DEFAULT NULL,
  `last_Name` varchar(255) NOT NULL,
  `suffix` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `citizenship` varchar(255) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `spes_type` varchar(10) NOT NULL,
  `parent_status` varchar(10) NOT NULL,
  `parents_displaced` varchar(10) NOT NULL,
  `no_street` varchar(255) NOT NULL,
  `province_id` varchar(255) NOT NULL,
  `city_municipality_id` varchar(255) NOT NULL,
  `barangay_id` varchar(255) NOT NULL,
  `no_street2` varchar(255) NOT NULL,
  `province_id2` varchar(255) NOT NULL,
  `city_municipality_id2` varchar(255) NOT NULL,
  `barangay_id2` varchar(255) NOT NULL,
  `father_first_name` varchar(255) NOT NULL,
  `father_middle_name` varchar(255) DEFAULT NULL,
  `father_last_name` varchar(255) NOT NULL,
  `father_suffix` varchar(100) NOT NULL,
  `father_contact_no` varchar(15) NOT NULL,
  `mother_first_name` varchar(255) NOT NULL,
  `mother_middle_name` varchar(255) DEFAULT NULL,
  `mother_last_name` varchar(255) NOT NULL,
  `mother_contact_no` varchar(15) DEFAULT NULL,
  `elem_name` varchar(255) NOT NULL,
  `elem_degree` varchar(255) NOT NULL,
  `year_grade_level` varchar(255) NOT NULL,
  `elem_date_attendance` varchar(255) NOT NULL,
  `hs_name` varchar(255) NOT NULL,
  `hs_degree` varchar(255) NOT NULL,
  `hs_year_level` varchar(255) NOT NULL,
  `hs_date_attendance` varchar(20) NOT NULL,
  `suc_name` varchar(255) NOT NULL,
  `suc_course` varchar(255) NOT NULL,
  `suc_year_level` varchar(255) NOT NULL,
  `suc_date_attendance` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `spes_times` varchar(255) NOT NULL,
  `date_change` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `type_Application`, `first_Name`, `middle_Name`, `last_Name`, `suffix`, `birthday`, `place_of_birth`, `citizenship`, `mobile_no`, `email`, `civil_status`, `sex`, `spes_type`, `parent_status`, `parents_displaced`, `no_street`, `province_id`, `city_municipality_id`, `barangay_id`, `no_street2`, `province_id2`, `city_municipality_id2`, `barangay_id2`, `father_first_name`, `father_middle_name`, `father_last_name`, `father_suffix`, `father_contact_no`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `mother_contact_no`, `elem_name`, `elem_degree`, `year_grade_level`, `elem_date_attendance`, `hs_name`, `hs_degree`, `hs_year_level`, `hs_date_attendance`, `suc_name`, `suc_course`, `suc_year_level`, `suc_date_attendance`, `status`, `spes_times`, `date_change`) VALUES
(1, 1, 'Renewal', 'Princess Joy', 'Adame', 'Mendoza', '', '2001-10-03', 'Batangas City', 'Filipino', '09169737928', 'pcam0307@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Sitio Kanluran', 'Batangas', 'Batangas City', 'Wawa', 'Sitio Kanluran', 'Batangas', 'Batangas City', 'Wawa', 'Leo', 'Mendoza', 'Mendoza', '', '09915195470', 'Armie', 'Adame', 'Mendoza', '09068540133', 'Sta.Clara Elementary School', 'n/a', 'Graduate', '2014', 'Batangas National High School', 'Achiever', 'Graduate', '2018', 'Batangas State University', 'Dean\'s Lister', 'Fourth Year/Graduating', '2024', 'Archived', '3', '2023-12-03 17:36:12.318457'),
(2, 2, 'New Applicants', 'Nico Alfonso', 'Nuyda', 'Pangilinan', '', '2000-08-07', 'Baguio City', 'Filipino', '09458893257', 'nikoalfonsop@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'Sitio Silangan', 'Batangas', 'Batangas CIty', 'Wawa', 'IPC Village', 'Occidental Mindoro', 'San Jose', 'Bubog', 'Franklin', 'Santos', 'Pangilinan', '', 'n/a', 'Beatriz', 'Nuyda', 'Pangilinan', '0991595455', 'Occidental Mindoro State College', 'n/a', 'Graduate', '2014', 'San Jose National High School', 'With Honor', 'Graduate', '2018', 'Batangas State University', 'Dean\'s List', 'Fourth Year/Graduating', '2024', 'Archived', '0', '2023-12-03 17:33:59.553226'),
(3, 3, 'New Applicants', 'Gabriel', 'Perez', 'Valenton', '', '2002-06-11', 'Bauan, Batangas', 'Filipino', '09613294739', '20-06353@g.batstate-u.edu.ph', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Calle Arzobispo', 'Batangas', 'Lipa', 'San Carlos', 'Calle Arzobispo', 'Batangas', 'Lipa', 'San Carlos', 'Lou', 'Sarabia', 'Valenton', '', 'n/a', 'Maria Eliza', 'Perez', 'Valenton', 'n/a', 'TSCLC', 'n/a', 'Graduate', '2014', 'Canossa Academy Lipa', 'n/a', 'Graduate', '2019', 'BSU Alangilan', 'n/a', 'Fourth Year/Graduating', '2024', 'Approved', '0', NULL),
(4, 4, 'Renewal', 'Trisha Fae', 'De Ocampo', 'Sarmiento', '', '2002-08-23', 'Agoncillo, Batangas', 'Filipino', '09398553247', '20-01176@g.batstate-u.edu.ph', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Mendoza St.', 'Batangas', 'Agoncillo', 'Poblacion', 'Mendoza St.', 'Batangas', 'Agoncillo', 'Poblacion', 'Metodio', 'Landicho', 'Sarmiento', '', '09601120251', 'Fritzie', 'De Ocampo', 'Sarmiento', 'n/a', 'Our Lady of Caysasay Academy', 'n/a', 'Graduate', '2014', 'Our Lady of Caysasay Academy', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Approved', '1', NULL),
(5, 5, 'Renewal', 'Charlene Joy', 'Virtus', 'Visca', '', '2000-12-25', 'Batangas City', 'Filipino', '09292955619', '20-06585@g.batstate-u.edu.ph', 'Single', 'Female', 'Student', 'Solo Paren', 'Yes, Local', 'Purok 1 Kumintang Ilaya', 'Batangas', 'Batangas City', 'Kumintang Ilaya', 'Purok 1 Kumintang Ilaya', 'Batangas', 'Batangas City', 'Kumintang Ilaya', 'Zalde', 'Miralles', 'Visca', '', 'n/a', 'Elen', 'Mercado', 'Virtus', '09613770930', 'Batangas City South Elementary School', 'n/a', 'Graduate', '2014', 'Batangas National High School', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Approved', '2', '2023-12-03 17:09:23.379903'),
(6, 6, 'New Applicants', 'Robin', 'Rivero', 'Mariano', '', '2002-03-16', 'Pasay city', 'Filipino', '09982588602', '20-04699@g.batstate-u.edu.ph', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'Matala,Ibaan, Batangas', 'batangas', 'Ibaan', 'Matala', 'Matala, Ibaan batangas', 'Batangas', 'Ibaan', 'Matala', 'Noli', 'Getizo', 'Mariano', '', 'n/a', 'Lani', 'Rivero', 'Mariano', 'n/a', 'Ibaan Elementary School', 'n/a', 'Graduate', '2014', 'Batangas National High School', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Approved', '0', '2023-12-03 17:13:38.390578'),
(7, 7, 'Renewal', 'Keana Grace', 'Grigore', 'Alay', '', '2002-02-18', 'Balibago, Rosario Batangas', 'Filipino', '09271779394', 'keanagracealay0218@gmail.com', 'Single', 'Female', 'Student', 'Solo Paren', 'No', 'Sitio Bana', 'Batangas', 'Rosario', 'Balibago', 'Sitio Bana', 'Batangas', 'Rosario', 'Balibago', 'Christopher', 'Caguimbal', 'Alay', '', 'n/a', 'Analyn', 'Grigore', 'Alay', '09568067354', 'Alupay Elementary School', 'n/a', 'Graduate', '2014', 'Alupay National High School', 'Conduct Awardee, Best Innivator, With Honors', 'Graduate', '2019', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Archived', '1', '2023-12-03 17:35:30.232555'),
(8, 8, 'Renewal', 'Florie Mae', 'Alix', 'Cordero', '', '2001-10-05', 'Calaca Batangas', 'Filipino', '09069787312', 'crie476@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', '', 'Igualdad St', 'Batangas', 'Batangas City', 'Barangay 01 Calaca', 'Igualdad St', 'Batangas', 'Batangas City', 'Barangay 01 Calaca', 'Jimmy', 'N/A', 'Cordero', '', '09365565215', 'Rowena', 'Alix', 'Cordero', '09169939699', 'SRAPS', 'n/a', 'Graduate', '2014', 'DGANHS', 'With Honors', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Archived', '1', '2023-12-03 17:45:51.463630'),
(9, 9, 'New Applicants', 'Ian Mark', 'Acu?a', 'Gutierrez', '', '2002-08-09', 'San Pascual, Batangas', 'Filipino', '09950490677', 'ianmark425@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', '205', 'Batangas', 'Batangas City', 'Tramo San Pascual', '205', 'Batangas', 'Batangas City', 'Tramo San Pascual', 'Anselmo', 'N/A', 'Gutierrez', '', 'n/a', 'Vicenta', 'Acu?a', 'Gutierrez', 'n/a', 'San Antonio Elementary School', 'n/a', 'Graduate', '2014', 'San Pascual National Highschool', '', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Approved', '0', '2023-12-03 17:42:28.718782'),
(10, 10, 'New Applicants', 'Mark Joseph', 'Buquid', 'Manzano', '', '2005-06-27', 'Batangas city', 'Filipino', '09158877646', 'Markjosephmanzano1@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Local', 'Santo Nino / Sitio Supreme', 'Batangas', 'Batangas city', 'Sto nino', 'Sitio Supreme sto nino', 'Batangas', 'Batangas city', 'Sto Nino', 'Rodrigo', 'Cantos', 'Manzano', '', '09975224540', 'Maxima', 'Buquid', 'Manzano', '09279072028', 'Sto nino elementary school', 'n/a', 'Graduate', '2016', 'Sto nino national high school', 'Achiever', 'Graduate', '2020', 'Sti college batangas', 'Alumni', '', 'Until now', 'Declined', '0', '2023-12-03 17:47:01.808454'),
(11, 11, 'Renewal', 'Andrea', 'De Torres', 'Baluyot', '', '2002-01-31', 'Rosario Batangas', 'Filipino', '09993669694', 'andreabaluyot0131@gmail.com', 'Single', 'Female', 'Student', 'Solo Paren', 'No', 'Sitio Pitak 84', 'Batangas', 'Batangas CIty', 'Macalamcam A, Rosario Batangas', 'Sitio Pitak 84', 'Batangas', 'Batangas City', 'Macalamcam A, Rosario Batangas', 'Ronaldo', 'N/A', 'Baluyot', '', 'n/a', 'Thelma', 'De Torres', 'Baluyot', '09955159033', 'Macalamcam A Elementary School', 'n/a', 'Graduate', '2014', 'Alupay National High School', 'With Honors', 'Graduate', '2018', 'Batangas State University', 'Dean\'s List', 'Fourth Year/Graduating', '2024', 'Pending', '2', NULL),
(12, 12, 'Renewal', 'Edylbert', 'Manongsong', 'Abanador', '', '2002-06-02', 'Bauan, Batangas', 'Filipino', '09272480966', 'abanadoredylbert@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', '149B', 'Batangas', 'Batangas City', 'Inicbulan', '149B', 'Batangas', 'Batangas City', 'Inicbulan', 'Fernando', 'R', 'Abanador', '', '09957897344', 'Rowena', 'Manongsong', 'Abanador', '09740774640', 'CENTEX Batangas', 'n/a', 'Graduate', '2014', 'Bauan Technical Integrated High School', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '1', NULL),
(13, 13, 'New Applicants', 'Aaron Christopher', 'de Leyos', 'Mendoza', '', '2002-02-23', 'Banaba West Batangas City', 'Filipino', '09917620180', 'aaronmendoza0223@yahoo.com', 'Single', 'Male', 'Student', 'Seperated', 'No', 'Sitio Roadside', 'Batangas', 'Batangas City', 'Banaba West', 'Sitio Roadside', 'Batangas', 'Batangas City', 'Banaba West', 'Anthony', 'L', 'Mendoza', '', 'n/a', 'Christy Anna', 'de Leyos', 'Mendoza', '09214770100', 'Banaba West Elementary School', 'n/a', 'Graduate', '2014', 'Bauan Technical Integrated High School', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '0', NULL),
(14, 14, 'Renewal', 'Catherine', 'Buquid', 'Regilme', '', '2000-10-21', 'Batangas', 'Filipino', 'n/a', 'catherine.regilme@g.batstate-u.edu.ph', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Sto.Ni?o, Sitio Supreme Batangas City', 'Batangas', 'Batangas', 'Sto. Ni?o', 'Sto.Ni?o, Sitio Supreme Batangas City', 'Batangas', 'Batangas', 'Sto. Ni?o', 'Edgardo', 'Rentoy', 'Regilme', '', 'n/a', 'Liberty', 'Buquid', 'Regilme', 'n/a', 'Sto. Ni?o Elementary School', 'n/a', 'Graduate', '2013', 'ACLC College Batangas', 'With Honor', 'Graduate', '2019', 'Batangas State University', 'Top Performing Student', 'Graduate', '2023', 'Pending', '2', NULL),
(15, 15, 'Renewal', 'Christine Julianne', 'Misal', 'Landicho', '', '2002-05-16', 'Wawa Ibaba, Lemery Batangas', 'Filipino', '09366052634', 'christinejulianne1@gmail.com', 'Single', 'Female', 'Student', 'Solo Paren', 'Yes, Abroa', 'Brgy. Cawit, Taal', 'Batangas', 'Taal', 'Cawit', 'Brgy. Cawit, Las Residencies de Taal', 'Batangas', 'Taal', 'Cawit', 'Reden', 'Godoy', 'Landicho', '', 'n/a', 'Josienette', 'Misal', 'Landicho', 'n/a', 'R. Ventruranza Central School', 'n/a', 'Graduate', '2014', 'Gov. Feliciano Leviste Memorial National Highschool', 'n/a', 'Graduate', '2019', 'Batangas State University', 'With honors', '', 'n/a', 'Pending', '3', NULL),
(16, 16, 'Renewal', 'Jenalyn', 'Aala', 'Miranda', '', '2002-04-05', 'Banyaga, Agoncillo, Batangas', 'Filipino', '09558745634', 'jenalynaalamiranda@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Banyaga, Agoncillo, Batangas', 'Batangas', 'Agoncillo', 'Banyaga', 'Banyaga, Agoncillo, Batangas', 'Batangas', 'Agoncillo', 'Banyaga', 'Pitacio Miranda', 'Luya', 'Miranda', '', '09063674456', 'Nene Miranda', 'Aala', 'Miranda', '09356753489', 'Banyaga Elementary School', 'n/a', 'Graduate', '2014', 'Banyaga National High School', 'With Honor', 'Graduate', '2018', 'Batangas State ?niversite', 'Dean\'s Lister', 'Fourth Year/Graduating', '2024', 'Pending', '1', NULL),
(17, 17, 'Renewal', 'Georgie', 'Ison', 'Padilla', '', '2002-07-19', 'Puting bato west', 'Filipino', '09676800531', 'padillagina221@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Puting bato west, Calaca, Batangas', 'Batangas', 'Calaca Batangas', 'Puting Bato West Calaca Batangas', 'Puting Bato West Calaca Batangas', 'Batangas', 'Calaca Batangas', 'Puting Bato West Calaca Batangas', 'Gregorio', 'Villanueva', 'Padilla', '', '09876571962', 'Rowena', 'Ison', 'Padilla', '09871152428', 'Puting Bato West Elementary school', 'n/a', 'Graduate', '2014', 'Pedro A. Paterno National High School', 'With honor', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '1', NULL),
(18, 18, 'New Applicants', 'Janica', 'Landicho', 'Liwag', '', '2002-03-21', 'Intramuros Manila', 'Filipino', '09169593466', 'nice.liwag21@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Abroa', 'B15, L5', 'Batangas', 'Taal', 'Buli', 'B15, L5', 'Batangas', 'Taal', 'Buli', 'June', 'Villanueva', 'Liwag', '', '09123456789', 'Jennifer', 'Landicho', 'Liwag', '09123465789', 'Lemery Pilot Elementary School', 'n/a', 'Graduate', '2014', 'Fame Academy of Science and Technology', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '0', NULL),
(19, 19, 'Renewal', 'Leigh Shazney', 'Mendoza', 'Begornia', '', '2001-12-05', 'Batangas City', 'Filipino', '09568426099', 'leigh.begornia05@gmail.com', 'Single', 'Female', 'Student', 'Seperated', 'Yes, Abroa', 'Noble Street', 'Batangas', 'Batangas City', 'Pob 7', 'Noble Street', 'Batangas', 'Batangas City', 'Noble Street', 'Roel', 'Asuque', 'Begornia', '', 'n/a', 'Eliza', 'Mendoza', 'Begornia', '09163046999', 'University of Batangas', 'n/a', 'Graduate', '2013', 'University of Batangas', 'n/a', 'Graduate', '2017', 'Golden Gate Colleges', 'Dean?s Lister', 'Fourth Year/Graduating', '2024', 'Pending', '3', NULL),
(20, 20, 'New Applicants', 'Ericka May', 'Fronda', 'Fajiculay', '', '2003-01-29', 'Mangansag Corcuera Romblon', 'Filipino', '09661759357', '21-00836@g.batstate-u.edu.ph', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Camella Soro Soro Karsada', 'Corcuera Romblon', 'Soro Soro Karsada', '', 'Payayasog', 'Corcuera Romblon', 'Batangas City', 'Mangansag', 'Orly', 'Faderagao', 'Fajiculay', '', 'n/a', 'Vivian', 'Falcatan', 'Fronda', 'n/a', 'Mangansag elementary school', 'n/a', 'Graduate', '2014', 'Mabini National High school', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', '', 'n/a', 'Pending', '0', NULL),
(21, 21, 'New Applicants', 'Jhon Loyd', 'De Chavez', 'Bunyi', '', '2003-08-08', 'Batangas City', 'Filipino', '09294398340', 'jhonloyddbunyi@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Local', 'Alcaede Street', 'Batangas', 'San Pascual', 'Poblacion', 'Alcaede Street', 'Batangas', 'San Pascual', 'Poblacion', 'Gerardo', 'Bunyi', 'Bunyi', '', '0929440524', 'Elena', 'De Chavez', 'Bunyi', 'n/a', 'Princeton Science School Home of Young Achievers', 'n/a', 'Graduate', '2014', '  Princeton Science School Home of Young Achievers', 'n/a', 'Graduate', '2021', 'Batangas State University', 'n/a', '', 'Currently in College', 'Pending', '0', NULL),
(22, 22, 'Renewal', 'Krystell Elaine', 'Dela Cruz', 'Alteza', '', '2003-05-27', 'Naparing Dinalupihan Bataan', 'Filipino', '09954413373', 'krystellelainealteza@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Abroa', 'Largo St. Mariner\'s Residences', '', 'Batangas', 'Kumintang Ilaya', 'Sitio Poltero', 'Batangas', 'Batangas', 'Payapa Ilaya', 'Eleno', 'Tolentino', 'Alteza', '', '09925817091', 'Violeta', 'Castro', 'Dela Cruz', '09277053389', 'Almanza Elementary School', 'n/a', 'Graduate', '2016', 'Payapa National High School', 'With Honors', 'Graduate', '2019', 'Batangas State University', 'n/a', '', 'n/a', 'Pending', '1', NULL),
(23, 23, 'New Applicants', 'Divine Althea', 'Valenzuela', 'Macalalad', '', '2003-01-04', 'Batangas City', 'Filipino', '09158219303', 'divinealtheam@gmail.com', 'Single', 'Female', 'Student', 'Seperated', 'No', 'Balete Relocation Site', 'Batangas', 'Batangas City', 'Balete Relocation Site', 'Balete Relocation Site', 'Batangas', 'Batangas City', 'Balete Relocation Site', 'Mateo', 'Andal', 'Macalalad', '', '09451558720', 'Julie', 'Valenzuela', 'Macalalad', '09913168393', 'Gulod Elementary School', 'n/a', 'Graduate', '2014', 'Batangas National High School', 'n/a', 'Graduate', '2019', 'Batangas State University', 'n/a', '', 'Present', 'Pending', '0', NULL),
(24, 24, 'New Applicants', 'Carlos Miguel', 'Agutaya', 'Perez', '', '2002-02-05', 'Calapan Oriental Mindoro', 'Filipino', '09456709089', 'miguel0205.cmp@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'FPIC Housing Calicanto', 'Batangas', 'Batangas City', 'Calicanto', 'FPIC Housing Compound Calicanto Batangas City', 'Batangas', 'Batangas City', 'Calicanto', 'Norberto', 'Rivera', 'Perez', '', 'n/a', 'Donnalyn', 'Agutaya', 'Perez', '09167447810', 'St. Bridget College', 'n/a', 'Graduate', '2012', 'St. Bridget College', 'n/a', 'Graduate', '2020', 'Batangas State University', 'n/a', '', 'n/a', 'Pending', '0', NULL),
(25, 25, 'New Applicants', 'Gerlie', 'Buquid', 'Tag-at', '', '2002-03-03', 'Quezon City, Manila', 'Filipino', '09166848495', 'princessgerliebuquidtagat@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Pinamucan East, Batangas City', 'Batangas', 'Batangas City', 'Pinamucan', 'Pinamucan East, Sitio Pook', 'Batangas', 'Batangas City', 'Pinamucan', 'Calixto', 'Torres', 'Tag-at', '', '09165182244', 'Florencia', 'Buquid', 'Tag-at', '09169343039', 'Piit Elementary School', 'n/a', 'Graduate', '2015', 'Sto Nino National High School', 'n/a', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '0', NULL),
(26, 26, 'New Applicants', 'Carlo', 'Owano', 'Hernandez', '', '2000-07-28', 'Balete Batangas City', 'Filipino', '09292910971', 'carlowano123@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Sitio 6 Balete Batangas City', 'Batangas', 'Batangas City', 'Balete', '', 'Batangas', 'Batangas City', 'Balete', 'Sergio', 'Garcia', 'Hernandez', '', 'n/a', 'Marilyn', 'Owano', 'Hernandez', '09455832753', 'Balete Elementary school', 'n/a', 'Graduate', '2013', 'Balete Integrated School', 'With honors', 'Graduate', '2019', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '0', NULL),
(27, 27, 'New Applicants', 'Michael', 'Evangelista', 'Borbon', '', '2004-10-19', 'Mahabang Dahilig Batangas City', 'Filipino', '09272942437', 'michaelborbon10192004@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Sitio Centro Kanluran', 'Batangas', 'Batangas City', 'Mahabang Dahilig', 'Sitio Centro Kanluran', 'Batangas', 'Batangas City', 'Mahabang Dahilig', 'Eutiquio', 'Banaag', 'Borbon', '', '09357546717', 'Fidela', 'Evangelista', 'Borbon', '09357546717', 'Mahabang Dahilig Elementary School', 'n/a', 'Graduate', '2016', 'Sto Ni?o National High School', 'n/a', 'Graduate', '2020', 'Westmead International School', 'n/a', '', 'Undergraduate', 'Pending', '0', NULL),
(28, 28, 'Renewal', 'Alessandra', 'Perculiza', 'Calingasan', '', '2002-09-21', 'Batangas City', 'Filipino', '09968560775', 'sandsacads@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Abroa', 'Sitio Santolan', 'Batangas', 'Batangas City', 'Pallocan West', 'Sitio Santolan', 'Batangas', 'Batangas City', 'Pallocan West', 'Emil John', 'Obias', 'Calingasan', '', 'n/a', 'Alely', 'Perculiza', 'Calingasan', '09081013806', 'The Holy Child School Inc. & BatStateU-The NEU', 'n/a', 'Graduate', '2014', 'Divine Child Academy & LPU-Batangas', 'Salutatorian & Dean\'s Lister', 'Graduate', '2020', 'Batangas State University', 'Dean\'s Lister', '', 'n/a', 'Pending', '2', NULL),
(29, 29, 'New Applicants', 'Jerecho', 'Sason', 'Balaca?a', '', '2002-12-19', 'Pinamalayan Oriental Mindoro', 'Filipino', '09933201535', '20-01925@g.batstate-u.edu.ph', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'P. Burgos Street, Barangay 12 Purok 6, 4200', 'Batangas', 'Batangas', 'Barangay 12', 'Quezon Street', 'Oriental Mindoro', 'Pinamalayan', 'Zone 3', 'Christopher', 'Saguid', 'Balaca?a', '', '09560412219', 'Floridel', 'Magculang', 'Sason', '09069183192', 'Abada College', 'n/a', 'Graduate', '2014', 'Abada College', 'n/a', 'Graduate', '2020', 'Batangas State University', 'n/a', '', 'n/a', 'Pending', '0', NULL),
(30, 30, 'New Applicants', 'Franklin', 'Lontoc', 'Altares', '', '2002-04-04', 'Palauiz zambales', 'Filipino', '09457448440', 'franklinaltares1@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Local', 'sitio 4 balagtas', 'batangas', 'batangas city', 'balagtas', 'sitio 4 balagtas', 'batangas', 'batangas city', 'balagtas', 'Fred', 'Agostos', 'Altares', '', '09975232576', 'Archel', 'Albero', 'Altares', '09975232576', 'Jose C. Pastor Memorial Elementary School', 'n/a', 'Graduate', '2014', 'Batangas National High School (jr high) AICS (senior high)', 'with honor (AICS)', 'Graduate', '2018', 'Batangas State University', 'n/a', '', 'n/a', 'Pending', '0', NULL),
(31, 31, 'Renewal', 'Jovet', 'N/A', 'Catapang', '', '2002-05-12', 'Haligue Kanluran, Batangas City', 'Filipino', '09668852398', 'jovetcatapang01@gmail.com', 'Single', 'Male', 'Student', 'Solo Paren', 'No', 'Camella Solamente block 13 lot 13', 'Batangas', 'Batangas City', 'Soro Soro Karsada, Batangas City', 'Camella Solamente block 13 lot 13', 'Batangas', 'Batangas City', 'Soro Soro Karsada, Batangas City', 'N/A', 'N/A', 'N/A', '', 'n/a', 'Verginia', 'Catapang', 'Catapang', 'n/a', 'Haligue Kanluran Elementary School', 'n/a', 'Graduate', '2014', 'Stop nino National High School', 'n/a', 'Graduate', '2017', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '1', NULL),
(32, 32, 'New Applicants', 'Sheen Khyl', 'Austria', 'Ebreo', '', '2002-07-22', 'San Pablo Laguna', 'Filipino', '09218075685', 'ebreosheenkhyla224@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Centro', 'Batangas', 'Rosario', 'Alupay', 'Centro', 'Batangas', 'Rosario', 'Alupay', 'Virgilio', 'Macaraig', 'Ebreo', '', '09569057663', 'Mirasol', 'Austria', 'Ebreo', '09517106373', 'Alupay Elementary School', 'n/a', 'Graduate', '2014', 'Batangas Eastern Colleges', 'n/a', 'Graduate', '2020', 'Batangas State University', 'n/a', '', 'Present', 'Pending', '0', NULL),
(33, 33, 'Renewal', 'Jay Mark', 'Alega', 'Cascalla', '', '2002-06-07', 'Sitio Cueva Brgy. San Andres Isla Verde Batangas City', 'Filipino', '09568326699', 'jay.maaaark@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Purok 1', 'Batangas', 'Batangas City', 'Kumintang Ilaya', 'Purok 1', 'Batangas', 'Batangas City', 'Kumintang Ilaya', 'Johnny', 'Escarez', 'Cascalla', '', '09392505058', 'Evelyn', 'Alega', 'Cascalla', '09668854544', 'Christ the Lord Institute Foundation Inc.', 'n/a', 'Graduate', '2014', 'Christ the Lord Institute Foundation Inc.', 'with Honor', 'Graduate', '2018', 'Batangas State University', 'n/a', 'Fourth Year/Graduating', '2024', 'Pending', '3', NULL),
(34, 34, 'New Applicants', 'John Dexter', 'Rubion', 'Lanot', '', '2003-01-07', 'Bansud, Oriental Mindoro', 'Filipino', '09954894362', 'rubiondexter@gmail.com', 'Single', 'Male', 'Student', 'Solo Paren', 'Yes, Abroa', 'Lopez Jaena', 'Batangas', 'Batangas City', 'Poblacion 2', 'Lopez Jaena', 'Batangas', 'Batangas City', 'Poblacion 2', 'Rommel', 'Naling', 'Lanot', '', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Mariano P. Leuterio Memorial School', '', '', '2015', 'Naujan Academy', 'WIth High Honors', '', '2021', 'Batangas State Univesity', 'N/A', '', 'N/A', 'Pending', '0', NULL),
(35, 35, 'New Applicants', 'Rozel', 'Canillo', 'Roncejero', '', '2005-06-03', 'Albay Bicol', 'Filipino', '09939345295', 'roncejerorozel@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Sitio Pitak Macalamcam A Rosario Batangas', 'Batangas Province', 'Rosario', 'Macalamcam A', '086 Purok 3 Sitio Pitak Macalamcam A Rosario Batangas', 'Batangas', 'Rosario', 'Macalamcam A', 'Rosandy', 'Niepe', 'Roncejero', '', '09095845046', 'Liezel', 'Canillo', 'Roncejero', '09203091403', 'Macalamcam A Elementary School', '', '', '2016', 'Alupay Integrated National Highschool', 'With Honors', '', '2020', 'Batangas State University', 'None', '', 'None', 'Pending', '0', NULL),
(36, 36, 'New Applicants', 'Marion Jerico', 'Castillo', 'Barbosa', '', '2002-01-26', 'Bauan, Batangas', 'Filipino', '09917276951', 'marionjericobarbosa@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', '#35 F. Mangobos St.', 'Bauan', 'Batangas', 'Pob.1', '#35 F. Mangobos St.', 'Bauan', 'Batangas', 'Pob.1', 'Mario', 'Sandoval', 'Barbosa', '', '09917275961', 'Cynthia', 'Castillo', 'Barbosa', '09917276951', 'Bauan East Central School', '', '', '2014', 'Bauan Technical Integrated High School', 'N/A', '', '2018', 'Batangas State University', 'N/A', '', '2024', 'Pending', '0', NULL),
(37, 37, 'New Applicants', 'Myziel Joy', 'Samarita', 'Sorezo', '', '2001-09-28', 'Mulanay, Quezon', 'Filipino', '09917829122', 'myzieljoy5@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Palsahingin, San Pascual, Batangas', 'Batangas', 'San Pascual', 'Palsahingin', 'Palsahingin, San Pascual, Batangas', 'Batangas', 'San Pascual', 'Palsahingin', 'Epitacio', 'De Guzman', 'Sorezo', '', 'N/A', 'Cristina', 'Samarita', 'Sorezo', '', 'Mataas na Lula-Palsahingin Elementary School', '', '', '2007-2008', 'Alalum National Highschool', 'Achiever', '', '2014-2015', 'Batangas State University', 'Dean Lister 2nd', '', '2023-2024', 'Pending', '0', NULL),
(38, 38, 'New Applicants', 'Angela', 'V', 'Motel', '', '2001-04-13', 'Batangas City', 'Filipino', '09167096719', 'motelangela13@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Bilogo Batangas City', 'Batangas City', 'Batangas City', 'Bilogo', 'Purok 1 Bilogo Batangas City', 'Batangas City', 'Batangas City', 'Bilogo', 'Larry', 'O', 'Motel', '', 'N/A', 'Elen', 'V', 'Motel', 'N/A', 'Paharang Elementary School', '', '', '2012-2013', 'Batangas Christian School', 'With Honored', '', '2018-2019', 'Batangas State University', 'N/A', '', '2024-2025', 'Pending', '0', NULL),
(39, 39, 'New Applicants', 'Amiel', 'Cantos', 'Buquid', '', '2001-11-14', 'Sto Ni?o Batangas City', 'Filipino', '09455314811', 'buquidamiel37@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Local', 'Sitio 5, Balagtas Batangas City', 'Batangas City', 'Batangas City', 'Barangay Sto Ni?o', 'Sto Ni?o Batangas City', 'Batangas City', 'Batangas City', 'Sto Ni?o Batangas City', 'Maximino', 'Aldea', 'Buquid', '', '09455314811', 'Melecia', 'Marasigan', 'Cantos', '09655992487', 'Sto Ni?o Elementary School', '', '', '2012', 'Sto Ni?o National High School', 'Best In Math, Science, English and Filipino.', '', 'Year 2018', 'Batangas State University - Alangilan Campus', 'Best In alak', '', 'Year : 2024', 'Pending', '0', NULL),
(40, 40, 'New Applicants', 'Shandra Mae', '', 'Mendoza', '', '2001-09-14', 'Marikina City', 'Filipino', 'n/a', 'mendozashandramae@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Blk 5 Lot 8 Almeda Subdivision', 'Batangas', 'Tanauan', 'Bagumbayan', 'Blk 5 Lot 8 Almeda Subdivision', 'Batangas', 'Tanauan City', 'Bagumbayan', 'Adalbert', 'Remos', 'Mendoza', '', '-', 'Luminada', 'Vivas', 'Mendoza', '-', 'Sambat Elementary School', '', '', '2012', 'La Consolacion College Tanauan', '-', '', '2022', 'Batangas State University', 'Dean?s Lister', '', '2024', 'Pending', '0', NULL),
(41, 41, 'New Applicants', 'Angel Keisha', 'Montalbo', 'Milla', '', '2001-02-24', 'Batangas City', 'Filipino', '09083148926', 'angelkeishamilla@gmail.com', 'Single', 'Female', 'Student', 'Seperated', 'Yes, Local', 'Purok 6', 'Batangas', 'Batangas City', 'Calicanto', 'Purok 6', 'Batangas', 'Batangas City', 'Calicanto', 'Alfonso', 'Ulunan', 'Milla', '', 'N/A', 'Leny', 'Montalbo', 'Milla', '09084617565', 'Batangas City South Elementary School', '', '', '2013', 'Batangas National High School', 'Honor', '', '2018', 'Batangas State University', 'N/A', '', '2024', 'Pending', '0', NULL),
(42, 42, 'New Applicants', 'Aedrian Jeao', 'Gupo', 'De Torres', '', '2002-07-17', 'Manila', 'Filipino', '09292917449', 'aedrianjeaodetorres@yahoo.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'St Paula Homes Libjo Batangas City', 'Batangas', 'Batangas City', 'Libjo', 'St Paula Homes Libjo Batangas City', 'Batangas', 'Batangas City', 'Libjo', 'Julian', 'Abante', 'De Torres', '', 'N/A', 'Mary Jane', 'Gupo', 'De Torres', '09498030746', 'University of Batangas', '', '', '2014', 'University of Batangas', 'N/A', '', '2018', 'University of Batangas', 'N/A', '', '2024', 'Pending', '0', NULL),
(43, 43, 'New Applicants', 'Kean', 'Reyes', 'Brutas', '', '2001-10-18', 'Batangas City', 'Filipino', '09473166824', 'brutaskeanroswen@gmail.com', 'Single', 'Male', 'Student', 'Seperated', 'Yes, Abroa', 'B6 L12 Phase 3 St. Paula Homes, Sitio Lamao', 'Batangas', 'Batangas City', 'Libjo', 'B6 L12 Phase 3 St. Paula Homes, Sitio Lamao', 'Batangas', 'Batangas City', 'Libjo', 'Sherwin', 'Tolentino', 'Brutas', '', '09124567893', 'Mary Claire', 'Reyes', 'Brutas', '09871234567', 'University of Batangas', '', '', '2013', 'University of Batangas', '', '', '2020', 'Batangas State University - The National Engineering University', '', '', '2024', 'Pending', '0', NULL),
(44, 44, 'New Applicants', 'Marie Angelica', 'Seures', 'Fortus', '', '2001-11-15', 'Lipa Medix', 'Filipino', '09196317898', 'lycaforfus@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Malaya, Rosario, Batangas', 'Batangas', 'Rosario', 'Malaya', 'Malaya, Rosario, Batangas', 'Batangas', 'Rosario', 'Malaya', 'Avelino', 'Umali', 'Fortus', '', '09195554325', 'Felicidad', 'Seures', 'Fortus', '09183558292', 'Malaya Elementary School', '', '', '2013', 'Saint Joseph College of Rosario Batangas Inc. / University of Batangas', 'None', '', '2020', 'Lyceum of the Philippines University - Batangas', 'None', '', '2025', 'Pending', '0', NULL),
(45, 45, 'New Applicants', 'Jurenz Ibhan', 'Masangkay', 'Bonsol', '', '2002-03-10', 'Taal, Batangas', 'Filipino', '09975444397', 'bonsoljurenzibhan@gmail.com', 'Single', 'Male', 'Student', 'Solo Paren', 'No', 'M.H. Del Pilar', 'Batangas', 'Lemery', 'Brgy. Lucky', 'N/A', 'Batangas', 'Taal', 'Tierra Alta', 'Everardo', 'Jasa', 'Bonsol', '', '(+)', 'Juliet', 'Masangkay', 'Bonsol', '09676219004', 'Taal Central School', '', '', '2014', 'Taal National High School', 'With Honors', '', '2017', 'Westmead International School', 'Emerging Leader of the Year', '', 'N/a (still studying)', 'Pending', '0', NULL),
(46, 46, 'New Applicants', 'Marc Aldwin', 'Dote', 'Familara', '', '2002-03-18', 'Batangas City', 'Filipino', '09194019588', 'aldwinfamilara@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Local', 'D. Silang St.', 'Batangas', 'Batangas City', '7', 'D. Silang St.', 'Batangas', 'Batangas City', '7', 'Allan', 'N/A', 'Familara', '', '09663766326', 'Marita', 'Dote', 'Familara', '09487210189', 'Batangas City South Elementary School', '', '', '2014', 'Batangas National High School', 'With Honors, Eagle Scout Award', '', '2018', 'Westmead International School', 'Outstanding Leader, Most Involved Leader', '', '2024', 'Pending', '0', NULL),
(47, 47, 'New Applicants', 'SCYRUS CHARLES', 'ANTE', 'BLANCO', '', '2003-07-15', 'BATANGAS CITY', 'Filipino', '09914222287', '21-01765@g.batstate-u.edu.ph', 'Single', 'Male', 'Student', 'Solo Paren', 'No', 'BLOOMFIELDS HOMES', 'BATANGAS', 'SAN PASCUAL', 'BALIMBING', 'ST. PETER SUBDIVISION', 'BATANGAS', 'BATANGAS CITY', 'ALANGILAN', 'PEDROLITO', 'COZ', 'BLANCO', '', 'N/A', 'LOLITA', 'ANTE', 'BLANCO', '09569046536', 'MARIAN LEARNING CENTER AND SCIENCE HIGH SCHOOL', '', '', '2015', 'MARIAN LEARNING CENTER AND SCIENCE HIGH SCHOOL INC.', 'RECOGNITION IN CULTURE AND ARTS, RECOGNITION IN SPORTS, RECOGNITION IN ACADEMICS', '', '2021', 'BATANGAS STATE UNIVERSITY', 'MOST OUTSTANDING STUDENT IN PROGRAMMING (ICET-CIT)', '', '', 'Pending', '0', NULL),
(48, 48, 'New Applicants', 'Allysa Jane Catibog', 'Blanza', 'Catibog', '', '2002-03-09', 'Batangas Provincial Hospital', 'Filipino', '09561637899', 'allysajanecatibog@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'Laurel', 'Batangas', 'San Pascual', 'Laure;', 'Sinisian East', 'Batangas', 'Lemery', 'Sinisian East', 'Nilo', 'Blanza', 'Catibog', '', '09519295689', 'Gemmalyn', 'Blanza', 'Catibog', '09561637888', 'Sinisian East Elementary School', '', '', '2014', 'GFLMNHS', 'with honor', '', '2018', 'Batangas State University', '', '', '', 'Pending', '0', NULL),
(49, 49, 'New Applicants', 'Fiona', 'Gabia', 'Bayer', '', '2002-01-16', 'Batangas', 'Filipino', 'n/a', 'fionabayer02@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'Yes, Local', 'N/A', 'Batangas', 'Batangas city', 'Conde labac', 'N/A', 'Batangas', 'Batangas city', 'Conde labac', 'Rosalino', 'Asi', 'Bayer', '', 'N/A', 'Doris', 'Gaboa', 'Bayer', 'N/A', 'Conde labac elementary school', '', '', '2014', 'Conde labac national highschool', '', '', '2019', 'Westmead international school', '', '', '2025', 'Pending', '0', NULL),
(50, 50, 'New Applicants', 'Paul Sian', 'Gonito', 'Vergara', '', '2001-10-07', 'Batangas city', 'Filipino', '09064028385', 'vpaulsian1@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', '#2 kating an st pallocan west batangas city', 'Batangas', 'Batangas city', 'Pallocan west', '#2 Kating an St.', 'Batangas', 'Batangas city', 'Pallocan West', 'Luisito', 'Marin', 'Vergara', '', '--', 'Agnes', 'Macatangay', 'Gonito', '--', 'St. Bridget College', '', '', '--', 'Saint Bridget College', 'None', '', '--', 'Saint Bridget College', 'None', '', 'Not yet', 'Pending', '0', NULL),
(51, 51, 'New Applicants', 'Francis heaven', 'Arriesgado', 'Ebora', '', '2002-09-20', 'Batangas City', 'Filipino', 'n/a', 'n/a', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'STA.CLARA', 'Batangas', 'Batangas Citty', 'Sta.clara', 'Sta.clara', 'Batangas', 'Batangas city', 'Sta.clara', 'Candido frisco', 'Panaligan', 'Ebora', '', 'N/A', 'Ruby', 'Arriesgado', 'Ebora', 'N/A', 'Sta.clara elementary school', '', '', '2014-2015', 'Batangas National High School', 'N/A', '', '2018-2019', 'Batangas state University', 'N/A', '', 'Not Yet', 'Pending', '0', NULL),
(52, 52, 'New Applicants', 'Adrian', 'Clerigo', 'Barro', '', '2005-04-23', 'Mahabang Parang Batangas City', 'Filipino', '09770654023', 'aianbarro.2313@gmail.com', 'Single', 'Male', 'Student', 'Solo Paren', 'No', 'Blk. 8 Lot 18, Camella Solamente, Soro-soro Karsada Batangas City', 'Batangas', 'Batangas City', 'Soro-soro Karsada', 'Blk. 8 Lot 18, Camella Solamente, Soro-soro Karsada Batangas City', 'Batangas', 'Batangas City', 'Soro-soro Karsada Batangas City', 'Leonardo', 'Nuay', 'Barro', '', 'N/A', 'Macaria', 'Clerigo', 'Barro', '09175571440', 'Concepcion Elementary School', '', '', '2017', 'Casa del Bambino Emmanuel Montessori', 'Consistent Achiever', '', '2021', 'De La Salle Lipa', 'N/A', '', 'Not yet.', 'Pending', '0', NULL),
(53, 53, 'New Applicants', 'Eljay', 'DELOS SANTOS', 'RAMOS', '', '2000-01-27', 'Lipa City', 'Filipino', '09098467818', 'eljayramos21@gmail.com', 'Single', 'Male', 'Student', 'Seperated', 'Yes, Local', 'San Nicolas st', 'Batangas', 'Lipa City', 'Balintawak', 'San Nicolas st.', 'Batangas', 'lipa City', 'Balintawak', 'Michael Ramos', 'Melba delos Santos', 'Ramos', '', '09755088206', 'Melba', 'DELOS SANTOS', 'RAMOS', '09755088206', 'Teodoro M. Kalaw Mem. School', '', '', '2012', 'Lipa National High School', 'none', '', '2017', 'Kolehiyo ng Lungsod ng Lipa', 'None', '', 'Currently', 'Pending', '0', NULL),
(54, 54, 'New Applicants', 'Pauline Mae', 'Binay', 'Mendez', '', '2001-10-31', 'Kumintang Ibaba, Batangas City, Batangas', 'Filipino', '09123456789', 'mendezpaulinemae@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Santuray Road', 'Batangas', 'Batangas City', 'Kumintang Ibaba', 'Santuray Road', 'Batangas', 'Batangas City', 'Kumintang Ibaba', 'Rey', 'Muros', 'Mendez', '', '09567890123', 'Emma', 'Binay', 'Mendez', '09389012345', 'Batangas City East Elementary School', '', '', '2014', 'Batangas National High School', 'With Honors', '', '2018', 'Batangas State University', 'Cum Laude', '', '2024', 'Pending', '0', NULL),
(55, 55, 'New Applicants', 'mark ryan', 'atienza', 'almarez', '', '2002-07-08', 'calatagan batangas', 'Filipino', '09994555210', 'almarezmark7@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'Bolbok Batangas City', 'Batangas', 'Batangas City', 'Bolbok', 'purok 7, bolbok batangas city', 'batangas', 'Batangas City', 'bolbok', 'romeo', 'andal', 'almarez', '', '*', 'venia', 'andaya', 'atienza', '*', 'bolbok elementary school', '', '', '2014', 'san pascual national high school', 'none', '', '2017', 'Batangas state university', 'none', '', 'current', 'Pending', '0', NULL),
(56, 56, 'New Applicants', 'Brian', 'Magtibay', 'Tan', '', '1998-07-10', 'Batangas City, Batangas', 'Filipino', '09356789012', 'brianmagtibaytan@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Dimacuha Road', 'Batangas', 'Batangas City', 'Sta. Rita', 'Dimacuha Road', 'Batangas', 'Batangas City', 'Sta. Rita', 'Rodolfo', 'Cabello', 'Tan', '', '09456789012', 'Erlinda', 'Magtibay', 'Tan', '09676543210', 'Sta. Rita Elementary School', '', '', '2011', 'University of Batangas', 'N/A', '', '2015', 'University of Batangas', 'N/A', '', '2019', 'Pending', '0', NULL),
(57, 57, 'New Applicants', 'Alexander', 'Batumbakal', 'Albon', '', '1996-03-23', 'Lipa City, Batangas', 'Filipino', '09304569876', 'alexanderalbon@yahoo.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'Pandayan', 'Batangas', 'Balete', 'Malabanan', 'Pandayan', 'Batangas', 'Balete', 'Malabanan', 'George', 'Alonso', 'Albon', '', '09215791357', 'Lily', 'Batumbakal', 'Albon', '09563427869', 'De La Salle Lipa', '', '', '2009', 'De La Salle Lipa', 'Batch Valedictorian', '', '2013', 'De La Salle Lipa', 'Magna Cum Laude', '', '2017', 'Pending', '0', NULL),
(58, 58, 'New Applicants', 'Andrey Nicole', 'Bayer', 'Asi', '', '2002-03-27', 'Dianne\'s Maternity lying In', 'Filipino', '09758547189', 'andreynicoleasi@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Purok 6 Conde Labac Batangas City', 'Batangas', 'Batangas City', 'Conde Labac', 'Purok 6 Conde Labac Batangas City', 'Batangas', 'Batangas City', 'Conde Labac', 'Roberto', 'Almarez', 'Asi', '', '09066393392', 'Nerie', 'Bayer', 'Asi', '09974860384', 'Conde Labac Elementary School', '', '', '2013-2014', 'Conde Labac Integrated School', 'None', '', '2017-2018', 'University of Batangas', 'Dean Lister', '', 'Not yet', 'Pending', '0', NULL),
(59, 59, 'New Applicants', 'Mike Jols', 'Madrigal', 'Orpano', '', '2003-08-02', 'San Jose Occidental Mindoro', 'Filipino', '09451170327', 'mikejolsorpano8203@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Sitio Silangan', 'Batangas', 'Batangas', 'Wawa', 'Gimeno', 'Occidental Mindoro', 'Sablayan', 'Ligaya', 'Manuel', 'Madrigal', 'Orpano', '', '09752857839', 'Menchu', 'Madrigal', 'Orpano', '+63 953 046 547', 'Pag-asa Elementary School', '', '', '2015', 'San Jose National High School', 'N/a', '', '2021', 'Batangas State University', 'N/a', '', 'N/a', 'Pending', '0', NULL),
(60, 60, 'New Applicants', 'Jans Dave', 'Balani', 'Mulingtapang', '', '2003-02-21', 'Lemery', 'Filipino', '09169381747', '21-01483@g.batstate-u.edu.ph', 'Single', 'Male', 'Student', 'Solo Paren', 'No', 'Sambal Ibaba Lemery Batangas', 'Batangas', 'Lemery', 'Sambal Ibaba', '248 Rajah Matanda St', 'Batangas', 'Lemery', 'Sambal Ibaba', 'Rodolfo', 'Piol', 'Mulingtapang', '', 'N/A', 'Julita', 'Balani', 'Mulingtapang', '09991964501', 'Lemery Pilot Elementary School', '', '', '2015', 'Governor Feliciano Leviste Memorial National High School', 'N/A', '', '2019', 'Batangas State University', 'N/A', '', '2025', 'Pending', '0', NULL),
(61, 61, 'New Applicants', 'Caitlin Rose', 'Ala', 'Magadia', '', '2002-06-20', 'Dalig Batangas City', 'Filipino', '09167675025', 'caitlin.magadia@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Sitio 1', 'Batangas', 'Batangas City', 'Dalig', 'Sitio 1', 'Batangas', 'Batangas City', 'Dalig', 'Ramil', 'Pallarcuna', 'Magadia', '', 'N/A', 'Daiselyn', 'Ala', 'Magadia', 'N/A', 'MAMES', '', '', '2014', 'BNHS', 'With Honor', '', '2018', 'BSU-TNEU', '-', '', '-', 'Pending', '0', NULL),
(62, 62, 'New Applicants', 'Kier', 'Maranan', 'De Chavez', '', '2002-09-27', 'Lying-in Hospital', 'Filipino', '-', 'kier.dechavez15@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'No', 'Tierra del Oro', 'Batangas', 'Batangas City', 'Santa Rita Karsada', 'Tierra del Oro', 'Batangas', 'Batangas City', 'Tierra del Oro', 'Alejandro', 'Puri', 'De Chavez', '', '-', 'Rowena', 'Maranan', 'De Chavez', '-', 'U.P.Ed Montessori', '', '', '2014', 'University of Batangas', '-', '', '2020', 'Batangas State University', '-', '', '-', 'Pending', '0', NULL),
(63, 63, 'New Applicants', 'Angelo', 'mendoza', 'moster', '', '2001-07-13', 'Batangas City', 'Filipino', '09452155401', 'angelomoster628@gmail.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Abroa', 'Sta Clara Batangas City', 'Batangas', 'Batangas City', 'Sta Clara', 'Sta Clara', 'Batangas', 'Batangas City', 'Sta Clara', 'Gaudencio', 'Balmes', 'Moster', '', '09452155488', 'Lieline', 'Mendoza', 'Moster', '09452155389', 'Sta Clara Elementary School', '', '', 'Sta Clara Elementary School', 'GGC', 'Salutatorian', '', 'GGC', 'BSU', 'N/A', '', 'BSU', 'Pending', '0', NULL),
(64, 64, 'New Applicants', 'Dexter', 'Panaligan', 'Rubio', '', '2001-08-28', 'Batangas City', 'Filipino', '09663528989', 'dexter.rubio@yahoo.com', 'Single', 'Male', 'Student', 'Living Tog', 'Yes, Local', 'Sta Clara', 'Batangas', 'Batangas City', 'Sta Clara', 'Sta Clara Batangas City', 'Batangas', 'Batangas City', 'Sta Clara', 'Mardie', 'Balucan', 'Rubio', '', '09663528989', 'Carmela', 'Guihin', 'Rubio', '09058942386', 'Sta Clara', '', '', '2012-2013', 'Batangas National High school', 'None', '', '2017-2018', 'Batangas State University', 'None', '', 'None', 'Pending', '0', NULL),
(65, 1, 'Renewal', 'Princess Joy', 'Adame', 'Mendoza', '', '2001-10-03', 'Batangas City', 'Filipino', '09169737928', 'pcam0307@gmail.com', 'Single', 'Female', 'Student', 'Living Tog', 'No', 'Sitio Kanluran', 'Batangas', 'Batangas City', 'Wawa', 'Sitio Kanluran', 'Batangas', 'Batangas City', 'Wawa', 'Leo', 'Mendoza', 'Mendoza', '', '09915195470', 'Armie', 'Adame', 'Mendoza', '09068540133', 'Sta.Clara Elementary School', '', 'Graduate', '2014', 'Batangas National High School', 'Achiever', 'Graduate', '2018', 'Batangas State University', 'Dean\'s Lister', 'Fourth Year/Graduating', '2024', 'Archived', '3', '2023-12-03 17:46:01.091581');

--
-- Triggers `applicants`
--
DELIMITER $$
CREATE TRIGGER `update_date_change` BEFORE UPDATE ON `applicants` FOR EACH ROW BEGIN
    IF NEW.status <> OLD.status THEN
        SET NEW.date_change = NOW(6);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_documents`
--

CREATE TABLE `applicant_documents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id_photo` varchar(255) NOT NULL,
  `birth_certificate` varchar(255) NOT NULL,
  `e_signature` varchar(255) NOT NULL,
  `photo_grades` varchar(255) NOT NULL,
  `photo_itr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant_documents`
--

INSERT INTO `applicant_documents` (`id`, `user_id`, `school_id_photo`, `birth_certificate`, `e_signature`, `photo_grades`, `photo_itr`) VALUES
(1, 1, 'uploads/6513a102e4a6b_Screenshot 2023-09-13 153646.png', 'uploads/6513a102e4c75_377124724_974837236918555_7989074401671136457_n.jpg', 'uploads/6513a102e4dcf_Screenshot 2023-09-13 153609.png', 'uploads/6513a102e4f58_combinepdf-compressed.pdf', 'uploads/6513a102e51d2_wp9580954.jpg'),
(2, 2, 'uploads/6513a99e1de73_Screenshot 2023-09-13 154347.png', 'uploads/6513a99e1e16b_377124724_974837236918555_7989074401671136457_n-compressed.pdf', 'uploads/6513a99e1e2e1_Screenshot 2023-09-13 153553.png', 'uploads/6513a99e1e45a_wp9580954.jpg', 'uploads/6513a99e1e5b7_iRBkJY.jpg'),
(3, 3, 'uploads/6513aa7c176cd_COR 1st Sem.pdf', 'uploads/6513aa7c178f3_LabAct3_Mendoza, Princess Catherine_ IT4109.pdf', 'uploads/6513aa7c17ad0_Screenshot 2023-09-13 154347.png', 'uploads/6513aa7c1c951_377124724_974837236918555_7989074401671136457_n.jpg', 'uploads/6513aa7c1cc62_iRBkJY.jpg'),
(4, 6, 'uploads/653d18eb7acd7_394005630_304040632439880_1083158608769718471_n.png', 'uploads/653d18eb7b47f_394005630_304040632439880_1083158608769718471_n.png', 'uploads/653d18eb7b675_394005630_304040632439880_1083158608769718471_n.png', 'uploads/653d18eb7b7e5_394005630_304040632439880_1083158608769718471_n.png', 'uploads/653d18eb7ba76_394005630_304040632439880_1083158608769718471_n.png'),
(5, 5, 'uploads/653f605704bbb_download.jpg', 'uploads/653f60570516d_download.jpg', 'uploads/653f60570556a_download.jpg', 'uploads/653f60570591c_download.jpg', 'uploads/653f605705d22_download.jpg'),
(6, 7, 'uploads/6544a6bc6a5b7_CS-423-Chapter-1-Module.pdf', 'uploads/6544a6bc6acd9_download.jpg', 'uploads/6544a6bc6afa0_download.jpg', 'uploads/6544a6bc6b2d6_CS-423-Chapter-1-Module.pdf', 'uploads/6544a6bc6b6f2_download.jpg'),
(7, 7, 'uploads/6544aa53b50c8_download.jpg', 'uploads/6544aa53b55c6_download.jpg', 'uploads/6544aa53b5b5b_download.jpg', 'uploads/6544aa53b604b_CS-423-Chapter-1-Module.pdf', 'uploads/6544aa53b656f_CS-423-Chapter-1-Module.pdf'),
(8, 7, 'uploads/6544ad1920e72_CS-423-Chapter-1-Module.pdf', 'uploads/6544ad1921e03_download.jpg', 'uploads/6544ad1923148_download.jpg', 'uploads/6544ad19234c1_capstone_1-3_new.pdf', 'uploads/6544ad1923853_CS-423-Chapter-1-Module.pdf'),
(9, 7, 'uploads/6544b9c9bc796_CS-423-Chapter-1-Module.pdf', 'uploads/6544b9c9bcc00_download.jpg', 'uploads/6544b9c9bcf7b_download.jpg', 'uploads/6544b9c9bda20_CS-423-Chapter-1-Module.pdf', 'uploads/6544b9c9be371_CS-423-Chapter-1-Module.pdf'),
(10, 8, 'uploads/6544bb7a5b482_seal.png', 'uploads/6544bb7a5be0d_download.jpg', 'uploads/6544bb7a5c122_download.jpg', 'uploads/6544bb7a5c2f6_CS-423-Chapter-1-Module.pdf', 'uploads/6544bb7a5c4fd_capstone_1-3_new.pdf'),
(11, 10, 'uploads/6544bd9f1cb4f_394005630_304040632439880_1083158608769718471_n.png', 'uploads/6544bd9f1cfc2_download.jpg', 'uploads/6544bd9f1d22e_download.jpg', 'uploads/6544bd9f1d3f7_CS-423-Chapter-1-Module.pdf', 'uploads/6544bd9f1d815_CS-423-Chapter-1-Module.pdf'),
(12, 12, 'uploads/6544beb59ab8b_CS-423-Chapter-1-Module.pdf', 'uploads/6544beb59ae51_download.jpg', 'uploads/6544beb59b294_download.jpg', 'uploads/6544beb59b444_capstone_1-3_new.pdf', 'uploads/6544beb59b590_394005630_304040632439880_1083158608769718471_n.png'),
(13, 1, 'uploads/656be553814d1_irbkjy.jpg', 'compressed/656be55381900_birth_cert.pdf', 'uploads/656be55381696_irbkjy.jpg', 'uploads/656be55381237_“Deathrow”.pdf', 'uploads/656be55381395_irbkjy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `action`, `status`, `date`) VALUES
(1, 2, 'Status updated from  to Approved', 'Approved', '2023-12-03 16:20:03'),
(2, 2, 'Status updated from Approved to Declined', 'Declined', '2023-12-03 16:21:35'),
(3, 1, 'Status is set to Approved', 'Approved', '2023-12-03 16:22:25'),
(4, 3, 'Status is set to Approved', 'Approved', '2023-12-03 16:23:18'),
(5, 4, 'Status is set to Approved', 'Approved', '2023-12-03 16:31:45'),
(6, 5, 'Status is set to Approved', 'Approved', '2023-12-03 17:09:23'),
(7, 6, 'Status is set to Approved', 'Approved', '2023-12-03 17:13:38'),
(8, 2, 'Status is set to Archived', 'Archived', '2023-12-03 17:33:59'),
(9, 7, 'Status is set to Declined', 'Declined', '2023-12-03 17:35:23'),
(10, 7, 'Status is set to Archived', 'Archived', '2023-12-03 17:35:30'),
(11, 1, 'Status is set to Archived', 'Archived', '2023-12-03 17:36:12'),
(12, 8, 'Status is set to Declined', 'Declined', '2023-12-03 17:42:05'),
(13, 9, 'Status is set to Approved', 'Approved', '2023-12-03 17:42:28'),
(14, 8, 'Status is set to Archived', 'Archived', '2023-12-03 17:45:51'),
(15, 65, 'Status is set to Archived', 'Archived', '2023-12-03 17:46:01'),
(16, 10, 'Status is set to Declined', 'Declined', '2023-12-03 17:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role` varchar(100) DEFAULT 'user',
  `username` varchar(255) NOT NULL,
  `suffix` varchar(100) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role`, `username`, `suffix`, `lname`, `gname`, `mname`, `email`, `gender`, `password`, `reset_token_hash`, `reset_token_expires_at`) VALUES
(1, 'user', 'Cath', '', 'Mendoza', 'Princess Catherine', 'Adame', 'pcam0307@gmail.com', 'Female', '1003', '', NULL),
(2, 'user', 'Nico', '', 'Pangilinan', 'Nico Alfonso', 'Nuyda', 'nikoalfonsop@gmail.com', 'Male', 'xmj123IX#', NULL, NULL),
(3, 'user', 'Gabgab', '', 'Valenton', 'Gabriel', 'Perez', '20-06353@g.batstate-u.edu.ph', 'Male', '12345', '', NULL),
(4, 'user', 'Trisha', '', 'Sarmiento', 'Trisha Fae', 'De Ocampo', '20-01176@g.batstate-u.edu.ph', 'Female', '12345', '', NULL),
(5, 'user', 'Chacha', '', 'Visca', 'Charlene Joy', 'Virtus', '20-06585@g.batstate-u.edu.ph', 'Female', '12345', '', NULL),
(6, 'user', 'Robin', '', 'Mariano', 'Robin', 'Rivero', '20-04699@g.batstate-u.edu.ph', 'Male', '12345', '', NULL),
(7, 'user', 'Keana', '', 'Alay', 'Keana Grace', 'Grigore', 'keanagracealay0218@gmail.com', 'Female', '12345', '', NULL),
(8, 'user', 'Florie', '', 'Cordero', 'Florie Mae', 'Alix', 'crie476@gmail.com', 'Female', '12345', '', NULL),
(9, 'user', 'Ian', '', 'Gutierrez', 'Ian Mark', 'Acu?a', 'ianmark425@gmail.com', 'Male', '12345', '', NULL),
(10, 'user', 'Mj', '', 'Manzano', 'Mark Joseph', 'Buquid', 'Markjosephmanzano1@gmail.com', 'Male', '12345', '', NULL),
(11, 'user', 'Andrea', '', 'Baluyot', 'Andrea', 'De Torres', 'andreabaluyot0131@gmail.com', 'Female', '12345', '', NULL),
(12, 'user', 'Edylbert', '', 'Abanador', 'Edylbert', 'Manongsong', 'abanadoredylbert@gmail.com', 'Male', '12345', '', NULL),
(13, 'user', 'Aaron', '', 'Mendoza', 'Aaron Christopher', 'de Leyos', 'aaronmendoza0223@yahoo.com', 'Male', '12345', '', NULL),
(14, 'user', 'Catherine', '', 'Regilme', 'Catherine', 'Buquid', 'catherine.regilme@g.batstate-u.edu.ph', 'Female', '12345', '', NULL),
(15, 'user', 'Juls', '', 'Landicho', 'Christine Julianne', 'Misal', 'christinejulianne1@gmail.com', 'Female', '12345', '', NULL),
(16, 'user', 'Jen', '', 'Miranda', 'Jenalyn', 'Aala', 'jenalynaalamiranda@gmail.com', 'Female', '12345', '', NULL),
(17, 'user', 'Georg', '', 'Padilla', 'Georgie', 'Ison', 'padillagina221@gmail.com', 'Female', '12345', '', NULL),
(18, 'user', 'Janica', '', 'Liwag', 'Janica', 'Landicho', 'nice.liwag21@gmail.com', 'Female', '12345', '', NULL),
(19, 'user', 'Leigh', '', 'Begornia', 'Leigh Shazney', 'Mendoza', 'leigh.begornia05@gmail.com', 'Female', '12345', '', NULL),
(20, 'user', 'May', '', 'Fajiculay', 'Ericka May', 'Fronda', '21-00836@g.batstate-u.edu.ph', 'Female', '12345', '', NULL),
(21, 'user', 'Loyd', '', 'Bunyi', 'Jhon Loyd', 'De Chavez', 'jhonloyddbunyi@gmail.com', 'Male', '12345', '', NULL),
(22, 'user', 'Krystell', '', 'Alteza', 'Krystell Elaine', 'Dela Cruz', 'krystellelainealteza@gmail.com', 'Female', '12345', '', NULL),
(23, 'user', 'Althea', '', 'Macalalad', 'Divine Althea', 'Valenzuela', 'divinealtheam@gmail.com', 'Female', '12345', '', NULL),
(24, 'user', 'CM', '', 'Perez', 'Carlos Miguel', 'Agutaya', 'miguel0205.cmp@gmail.com', 'Male', '12345', '', NULL),
(25, 'user', 'Gerlie', '', 'Tag-at', 'Gerlie', 'Buquid', 'princessgerliebuquidtagat@gmail.com', 'Female', '12345', '', NULL),
(26, 'user', 'Carlo', '', 'Hernandez', 'Carlo', 'Owano', 'carlowano123@gmail.com', 'Male', '12345', '', NULL),
(27, 'user', 'Michael', '', 'Borbon', 'Michael', 'Evangelista', 'michaelborbon10192004@gmail.com', 'Male', '12345', '', NULL),
(28, 'user', 'Alessandra', '', 'Calingasan', 'Alessandra', 'Perculiza', 'sandsacads@gmail.com', 'Female', '12345', '', NULL),
(29, 'user', 'Jerecho', '', 'Balaca?a', 'Jerecho', 'Sason', '20-01925@g.batstate-u.edu.ph', 'Male', '12345', '', NULL),
(30, 'user', 'Franklin', '', 'Altares', 'Franklin', 'Lontoc', 'franklinaltares1@gmail.com', 'Male', '12345', '', NULL),
(31, 'user', 'Jovet', '', 'Catapang', 'Jovet', 'N/A', 'jovetcatapang01@gmail.com', 'Male', '12345', '', NULL),
(32, 'user', 'Sheen', '', 'Ebreo', 'Sheen Khyl', 'Austria', 'ebreosheenkhyla224@gmail.com', 'Female', '12345', '', NULL),
(33, 'user', 'JhayM', '', 'Cascalla', 'Jay Mark', 'Alega', 'jay.maaaark@gmail.com', 'Male', '12345', '', NULL),
(34, 'user', 'Dex', '', 'Lanot', 'John Dexter', 'Rubion', 'rubiondexter@gmail.com', 'Male', '12345', '', NULL),
(35, 'user', 'Rozel', '', 'Roncejero', 'Rozel', 'Canillo', 'roncejerorozel@gmail.com', 'Female', '12345', '', NULL),
(36, 'user', 'Marion', '', 'Barbosa', 'Marion Jerico', 'Castillo', 'marionjericobarbosa@gmail.com', 'Male', '12345', '', NULL),
(37, 'user', 'Myziel', '', 'Sorezo', 'Myziel Joy', 'Samarita', 'myzieljoy5@gmail.com', 'Female', '12345', '', NULL),
(38, 'user', 'Angela', '', 'Motel', 'Angela', 'V', 'motelangela13@gmail.com', 'Female', '12345', '', NULL),
(39, 'user', 'Amiel', '', 'Buquid', 'Amiel', 'Cantos', 'buquidamiel37@gmail.com', 'Male', '12345', '', NULL),
(40, 'user', 'Shandra', '', 'Mendoza', 'Shandra Mae', '', 'mendozashandramae@gmail.com', 'Female', '12345', '', NULL),
(41, 'user', 'Angel', '', 'Milla', 'Angel Keisha', 'Montalbo', 'angelkeishamilla@gmail.com', 'Female', '12345', '', NULL),
(42, 'user', 'Jeao', '', 'De Torres', 'Aedrian Jeao', 'Gupo', 'aedrianjeaodetorres@yahoo.com', 'Male', '12345', '', NULL),
(43, 'user', 'Kean', '', 'Brutas', 'Kean', 'Reyes', 'brutaskeanroswen@gmail.com', 'Male', '12345', '', NULL),
(44, 'user', 'Lyca', '', 'Fortus', 'Marie Angelica', 'Seures', 'lycaforfus@gmail.com', 'Female', '12345', '', NULL),
(45, 'user', 'Jurenz', '', 'Bonsol', 'Jurenz Ibhan', 'Masangkay', 'bonsoljurenzibhan@gmail.com', 'Male', '12345', '', NULL),
(46, 'user', 'Aldwin', '', 'Familara', 'Marc Aldwin', 'Dote', 'aldwinfamilara@gmail.com', 'Male', '12345', '', NULL),
(47, 'user', 'Scy', '', 'Blanco', 'SCYRUS CHARLES', 'ANTE', '21-01765@g.batstate-u.edu.ph', 'Male', '12345', '', NULL),
(48, 'user', 'Allysa', '', 'Catibog', 'Allysa Jane Catibog', 'Blanza', 'allysajanecatibog@gmail.com', 'Female', '12345', '', NULL),
(49, 'user', 'Fiona', '', 'Bayer', 'Fiona', 'Gabia', 'fionabayer02@gmail.com', 'Female', '12345', '', NULL),
(50, 'user', 'Paul', '', 'Vergara', 'Paul Sian', 'Gonito', 'vpaulsian1@gmail.com', 'Male', '12345', '', NULL),
(51, 'user', 'Francis', '', 'Ebora', 'Francis heaven', 'Arriesgado', 'n/a', 'Male', '12345', '', NULL),
(52, 'user', 'Adrian', '', 'Barro', 'Adrian', 'Clerigo', 'aianbarro.2313@gmail.com', 'Male', '12345', '', NULL),
(53, 'user', 'Eljay', '', 'RAMOS', 'Eljay', 'DELOS SANTOS', 'eljayramos21@gmail.com', 'Male', '12345', '', NULL),
(54, 'user', 'Pauline', '', 'Mendez', 'Pauline Mae', 'Binay', 'mendezpaulinemae@gmail.com', 'Female', '12345', '', NULL),
(55, 'user', 'Mark', '', 'almarez', 'mark ryan', 'atienza', 'almarezmark7@gmail.com', 'Male', '12345', '', NULL),
(56, 'user', 'Brian', '', 'Tan', 'Brian', 'Magtibay', 'brianmagtibaytan@gmail.com', 'Male', '12345', '', NULL),
(57, 'user', 'Alexander', '', 'Albon', 'Alexander', 'Batumbakal', 'alexanderalbon@yahoo.com', 'Male', '12345', '', NULL),
(58, 'user', 'Andrey', '', 'Asi', 'Andrey Nicole', 'Bayer', 'andreynicoleasi@gmail.com', 'Female', '12345', '', NULL),
(59, 'user', 'Mike', '', 'Orpano', 'Mike Jols', 'Madrigal', 'mikejolsorpano8203@gmail.com', 'Male', '12345', '', NULL),
(60, 'user', 'Jans', '', 'Mulingtapang', 'Jans Dave', 'Balani', '21-01483@g.batstate-u.edu.ph', 'Male', '12345', '', NULL),
(61, 'user', 'Caitlin', '', 'Magadia', 'Caitlin Rose', 'Ala', 'caitlin.magadia@gmail.com', 'Female', '12345', '', NULL),
(62, 'user', 'Kier', '', 'De Chavez', 'Kier', 'Maranan', 'kier.dechavez15@gmail.com', 'Male', '12345', '', NULL),
(63, 'user', 'Tinggoy', '', 'moster', 'Angelo', 'mendoza', 'angelomoster628@gmail.com', 'Male', '12345', '', NULL),
(64, 'user', 'Dexter', '', 'Rubio', 'Dexter', 'Panaligan', 'dexter.rubio@yahoo.com', 'Male', '12345', '', NULL),
(65, 'user', 'Cjoy', '', 'Mendoza', 'Cjoy', 'Adame', 'cjoy@gmail.com', 'female', '1227', '', NULL),
(66, 'user', 'emji123', 'jr', 'Celestino', 'MIchael Jeffrey', 'Sernal', 'emjhay.celstino20@gmail.com', 'male', '206044', '9f5581a066a9af3b13b6ead208f93a8c377521a4bc03e2f25c6dcfd5e2c5634e', '2023-12-03 13:48:24'),
(67, 'admin', 'admin', '', 'admin', 'admin', 'admin', 'batangascity.spes@gmail.com', 'male', 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_documents`
--
ALTER TABLE `applicant_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `applicant_documents`
--
ALTER TABLE `applicant_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
