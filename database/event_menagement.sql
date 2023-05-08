-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 10:25 PM
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
-- Database: `event_menagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `event_id` int(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= pending, 1 =Paid',
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1= present',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = for verification,  1 = confirmed,2= declined',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audience`
--

INSERT INTO `audience` (`id`, `name`, `contact`, `email`, `address`, `event_id`, `payment_status`, `attendance_status`, `status`, `date_created`) VALUES
(2, 'Mark Jason', '+18456-5455-55', 'mjason@sample.com', 'Sample', 2, 1, 0, 1, '0000-00-00 00:00:00'),
(3, 'Md Bokul Islam', '01645645666', 'bokulislam@gmail.com', 'Dhaka Bangladesh', 4, 0, 0, 1, '2023-05-07 23:53:40'),
(4, 'MIlon Miya', '01455353245', 'milon@gmail.com', 'Dhaka Bangladesh', 5, 1, 0, 1, '2023-05-08 00:19:18'),
(5, 'Hasanur Rahman Sujon', '0164564566611', 'sujon@gmail.com', 'Munshiganj Bangladesh', 5, 1, 0, 1, '2023-05-08 00:40:25'),
(6, 'Sahin Alom', '0134234324', 'sahin@gmail.com', 'Dhaka Bangaldesh', 5, 1, 0, 1, '2023-05-08 00:41:27'),
(7, 'Md Saiful Islam', '014543545345', 'saiful@gmail.com', 'Dhaka Bangladesh', 4, 1, 0, 1, '2023-05-08 00:44:27'),
(8, 'Md Hasibul Islam Bahar', '0134234234', 'hasibul@gmail.com', 'Dhaka Bangladesh', 4, 1, 0, 1, '2023-05-08 00:45:02'),
(9, 'Sojib Miya', '025345345', 'sojib@gmail.com', 'Dhaka Bangladesh', 4, 1, 0, 1, '2023-05-08 00:46:09'),
(10, 'Humayin Kobir', '0123432434', 'humayin@gmail.com', 'Dhaka Bangladesh', 6, 1, 0, 1, '2023-05-08 00:46:59'),
(11, 'Rakib Hasan', '01432356', 'rakib23@gmail.com', 'Dhaka Bangladesh', 6, 0, 0, 0, '2023-05-08 00:47:47'),
(12, 'Sultan Mhamud', '0142343242', 'sultan34@gmail.com', 'Dhaka Bnagldesh', 6, 0, 0, 0, '2023-05-08 02:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `event` text NOT NULL,
  `description` text NOT NULL,
  `schedule` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Public, 2-Private',
  `audience_capacity` int(30) NOT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Free,payable',
  `amount` double NOT NULL DEFAULT 0,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `venue_id`, `event`, `description`, `schedule`, `type`, `audience_capacity`, `payment_type`, `amount`, `banner`, `date_created`) VALUES
(4, 1, 'CSE Day', '&lt;span style=&quot;color: rgb(136, 136, 136); font-family: lato, sans-serif; font-size: 15px; text-align: justify;&quot;&gt;Department of Computer Science and Engineering has organized &ldquo;NUB CSE Day 2023&rdquo; from may 10, 2023 &ndash;May 12, 2023 at the permanent Campus of Northern University Bangladesh. This year&rsquo;s &ldquo;NUB CSE Day 2023&rdquo; had a series of events that took place at&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: lato, sans-serif; font-size: 15px; text-align: justify;&quot;&gt;permanent&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: lato, sans-serif; font-size: 15px; text-align: justify;&quot;&gt;campus. Computer Club of Northern University Bangladesh was the sole organizer of that event. Programming Contest, Innovative Software and Hardware projects showcasing, ICT Olympiad, Cyber gaming, Photo Exhibition and a number of Indoor games were the main attraction of NUB CSE Day 2023. Mr. Nasimul Alam Chowdhury, Honorable Parliament Member (Comilla-8) was the Chief Guest of NUB CSE Day 2023 Prof. Dr. Abu Yousuf Md. Abdullah, Honorable Chairman, NUB Trust was the Guest of Honor of the program.&lt;/span&gt;', '2023-05-10 10:00:00', 1, 1499, 1, 0, '1683481860_cse_day.jpg', '0000-00-00 00:00:00'),
(5, 2, 'Call for Papers Bangladesh Beyond 50: Quest for Inclusive Development', '&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: AvenirLTStd-Roman, Helvetica, Roboto, Arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;The school of General Education (henceforth GenEd) is pleased to announce a young&nbsp;scholars&rsquo; seminar (YSS), which is meant to be interdisciplinary, interactive, and inspiring for&nbsp;the youth. The seminar is open to graduate&nbsp;students, budding researchers and other early career scholars.&nbsp;&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: AvenirLTStd-Roman, Helvetica, Roboto, Arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;&lt;br&gt;The submissions are encouraged, but not limited to the following themes and topics:&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: AvenirLTStd-Roman, Helvetica, Roboto, Arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: AvenirLTStd-Roman, Helvetica, Roboto, Arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 1: Economic Growth and Social Changes&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Employment, Skill Development, Development trends, and Labour and Wages&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 2: Culture and Inclusivity&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Religion, History, Ethnicity, Cultural Values, Class Struggle&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 3: Policy and Governance&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Education Policy, Social Inclusion, Local Governance, Internet Governance,&nbsp;Policy Paradigms&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 4: Climate Change, Resilience and Sustainable Development&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Environmental Justice, Water Management, Sustainable City&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 5: Gender Justice and Empowerment&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Women empowerment, patriarchy, gender inequality, mother and child health&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 6: Civic Participation and Democracy&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Popular movements, social movements and mobilization, activism culture&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 7: Youth Trends&lt;br&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Education, Entrepreneurship, Social Media Engagements&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Theme 8: Emerging Technologies and 4 th Industrial Revolution&lt;br&gt;&lt;/span&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;&lt;i style=&quot;line-height: inherit;&quot;&gt;Topics: Social Impact of AI, Blockchain, 5G, VR and Extended Reality, Digital Future&lt;br&gt;&lt;/i&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-family: tahoma, sans-serif;&quot;&gt;Submit your extended abstract not less than 1000 words&nbsp; to&nbsp;&lt;a href=&quot;mailto:genedyss@bracu.ac.bd&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot; processed=&quot;processed&quot; style=&quot;color: rgb(39, 92, 171); line-height: inherit; text-decoration-line: none; transition-property: color, opacity, background-color, border-color; transition-duration: 0.5s;&quot;&gt;genedyss@bracu.ac.bd&lt;/a&gt;&nbsp;&lt;wbr&gt;before&nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; line-height: inherit;&quot;&gt;15 February 2023.&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;', '2023-06-15 10:00:00', 1, 3000, 1, 100, '1683483060_GENEDYSS2023CALLFORPAPERS.jpg', '0000-00-00 00:00:00'),
(6, 5, 'MOU BETWEEN AIUB AND DONGSHIN UNIVERSITY [DSU], REPUBLIC OF KOREA', '&lt;p style=&quot;margin-bottom: 15px; padding: 0px; font-family: Lato, sans-serif; text-align: justify; color: rgb(33, 37, 41); font-size: 16px;&quot;&gt;Amplifying their international collaborations for education, the American International University &ndash; Bangladesh [AIUB] signed a Memorandum of Understanding [MoU] with the Dongshin University [DSU], Republic of Korea. On 10&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Lato, sans-serif; position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em;&quot;&gt;th&lt;/span&gt;&amp;nbsp;April 2023, delegates from DSU arrived at AIUB to discuss the opportunities for collaboration in the form of faculty and student exchange programs, collaborative staff development programs, exchange of academic information and materials of mutual interest, organization of joint research programs, and other academic exchanges. The signing ceremony was endorsed by&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Lato, sans-serif; font-weight: bolder;&quot;&gt;Prof. Dr. Md. Abdur Rahman&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Lato, sans-serif; font-weight: bolder;&quot;&gt;[Pro Vice Chancellor, AIUB]&lt;/span&gt;&amp;nbsp;and&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Lato, sans-serif; font-weight: bolder;&quot;&gt;Prof. Seongrok Oh [Dean, Institute of International Education, DSU]&lt;/span&gt;&amp;nbsp;in the presence of other representatives from both universities.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; font-family: Lato, sans-serif; text-align: justify; color: rgb(33, 37, 41); font-size: 16px;&quot;&gt;The agreement holds great promise for the institutions in developing their academics, enriching cultures, and sharing diversity in the process. AIUB and DSU expressed their interest and eagerness in undertaking the partnership activities moving forward as soon as possible, realizing the potential possibilities of this strategic linkage. This MoU is expected to deliver an opportunity for both organizations to strengthen their mutual relationships and collaborate for mutual benefits.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; font-family: Lato, sans-serif; text-align: justify; color: rgb(33, 37, 41); font-size: 16px;&quot;&gt;This MoU ceremony was organized by Ms. Sazia Afrin, Assistant Professor, Department of Accounting, AIUB, with the utmost supervision and guidance of Prof. Dr. Farheen Hassan, Associate Dean, FBA, AIUB, and Dr. Mohammad Faridul Alam, Associate Professor, and Director, Graduate Program [MBA &amp;amp; EMBA], AIUB. The signing event was also attended by&amp;nbsp;Mr. Manzur H. Khan [Director (OSA) &amp;amp; Proctor]; Mr. Manirul Islam, Director, Institute of Continuing Education; Dr. Md. Aftab Anwar, Head, Department of Management &amp;amp; HRM; and Mr. Mohammad Hamidul Haque, Head, Department of English. &amp;nbsp;Mr. Yohan Cho, an official from the Institute of International Education, DSU, also attended the MoU signing program.&lt;/p&gt;', '2023-05-20 02:00:00', 1, 5000, 1, 0, '1683484620_folklore2022-banner-final.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Event Management System', 'eventmanagesys@gmail.com', '+8801403109511', '1683486960_istockphoto-974238866-612x612.jpg', '&lt;span style=&quot;color: rgb(74, 74, 74); font-family: aeonik; font-size: 18px; text-align: justify;&quot;&gt;An event management software&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;box-sizing: inherit; font-family: aeonik; font-weight: 700; color: rgb(74, 74, 74); font-size: 18px; text-align: justify;&quot;&gt;can address various activities and milestones within the event management lifecycle&lt;/span&gt;&lt;span style=&quot;color: rgb(74, 74, 74); font-family: aeonik; font-size: 18px; text-align: justify;&quot;&gt;. Below are the phases of event management and a description of each.&lt;/span&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(30) NOT NULL,
  `venue` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `venue`, `address`, `description`, `rate`) VALUES
(1, 'Northan Univerty Bangladeh', 'Ashiyan City Rd, Dhaka 1230', 'Private university, Co-education, Research university', 48),
(2, 'Brack University', 'Merul Badda, Dhaka 1212', 'BRAC University New Campus is located in the centre of communication at KHA 224, Progati Sarani, Merul Badda, Dhaka 1212. It is close to Hatirjhil, Rampura, Aftabnagar, Banasree, Niketon, Mohakhali, Gulshan, Banani and Baridhara Residential Areas. Total land area of the project is 5 acres and building will have a total of 17,00,000 square feet.', 100),
(5, 'AIUB Parmenent Cuspas', '408/1, Kuratoli, 1229', 'American International University-Bangladesh, commonly known by its acronym AIUB, is an accredited and reputed private university in Dhaka, Bangladesh. The university is an independent organization with its own board of trustees.', 100);

-- --------------------------------------------------------

--
-- Table structure for table `venue_booking`
--

CREATE TABLE `venue_booking` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-for verification,1=confirmed,2=canceled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue_booking`
--

INSERT INTO `venue_booking` (`id`, `name`, `address`, `email`, `contact`, `venue_id`, `duration`, `datetime`, `status`) VALUES
(5, 'Alfahad Hossain', 'Shobotpur, Sadar, Dinajpur', 'bokul@gmail.com', '01645645666', 1, '5 hours', '0000-00-00 00:00:00', 1),
(6, 'Alfahad Hossain', 'Shobotpur, Sadar, Dinajpur', 'bokul@gmail.com', '01796722657', 2, '5 hours', '2023-05-25 01:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_booking`
--
ALTER TABLE `venue_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venue_booking`
--
ALTER TABLE `venue_booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
