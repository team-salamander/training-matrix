-- Database Dump
-- Install with mysql -u user -p dbname < training-matrix.sql


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `title`, `short_description`, `description`, `created_at`, `updated_at`) VALUES
(1, 'MTA', 'Microsoft Technology Associate - entry level cetification.', 'Microsoft Technology Associate - entry level cetification.', '2018-12-04 10:33:44', '2018-12-04 10:33:44'),
(2, 'MCSD', 'Microsoft Certified Solutions Developer - ', 'Microsoft Certified Solutions Developer - ', '2018-12-04 14:34:16', '2018-12-04 14:34:16'),
(4, 'MCSA', 'Microsoft Certified Solutions Associate - This certification demonstrates  skills with database installation, maintenance, configuration, and provisioning tasks.', 'Microsoft Certified Solutions Associate - This certification demonstrates  skills with database installation, maintenance, configuration, and provisioning tasks.', '2018-12-07 10:05:15', '2018-12-07 10:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `certification_details`
--

CREATE TABLE `certification_details` (
  `id` int(11) NOT NULL,
  `certification_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certification_details`
--

INSERT INTO `certification_details` (`id`, `certification_id`, `course_id`, `created_at`, `updated_at`) VALUES
(5, 1, 5, '2018-12-07 14:48:08', '2018-12-07 14:48:08'),
(6, 1, 6, '2018-12-07 14:48:08', '2018-12-07 14:48:08'),
(7, 1, 7, '2018-12-07 14:48:08', '2018-12-07 14:48:08'),
(8, 2, 8, '2018-12-10 07:23:29', '2018-12-10 07:23:29'),
(9, 2, 9, '2018-12-10 07:23:29', '2018-12-10 07:23:29'),
(10, 2, 10, '2018-12-10 07:23:29', '2018-12-10 07:23:29'),
(11, 4, 11, '2018-12-10 07:24:13', '2018-12-10 07:24:13'),
(12, 4, 12, '2018-12-10 07:24:13', '2018-12-10 07:24:13'),
(13, 4, 13, '2018-12-10 07:24:13', '2018-12-10 07:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `short_description`, `url`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Software Development Fundamentals', 'The content is introductory level and helps developer understand the various aspects of software development. The course focuses on key fundamental concepts of software development programs that all software developers need to know.', 'https://mva.microsoft.com/en-us/training-courses/software-development-fundamentals-8248?l=xiawPHKy_5104984382', 'The content is introductory level and helps developer understand the various aspects of software development. The course focuses on key fundamental concepts of software development programs that all software developers need to know.', '2018-12-04 10:32:06', '2018-12-04 10:32:06'),
(2, 'Microsoft .NET Fundamentals', 'This MTA Training course helps you build an understanding of these topics: .NET Framework Concepts, Namespaces and Classes in the .NET Framework, .NET Code Compilation, I/O Classes in the .NET Framework, Security, .NET Languages, and Memory Management. ', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=40372', 'This MTA Training course helps you build an understanding of these topics: .NET Framework Concepts, Namespaces and Classes in the .NET Framework, .NET Code Compilation, I/O Classes in the .NET Framework, Security, .NET Languages, and Memory Management. ', '2018-12-04 10:32:32', '2018-12-04 10:32:32'),
(3, 'Database Fundamentals', 'This course is designed to introduce students to Transact-SQL', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20761', 'This course is designed to introduce students to Transact-SQL', '2018-12-04 14:33:27', '2018-12-04 14:33:27'),
(4, 'Provisioning SQL Databases', 'This course is designed to teach students how to provision SQL Server databases both on premise and in SQL Azure.', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20765', 'This course is designed to teach students how to provision SQL Server databases both on premise and in SQL Azure.', '2018-12-04 14:33:27', '2018-12-04 14:33:27'),
(5, 'MTA Course 1', 'Short Description for MTA Course 1', 'https://mva.microsoft.com/en-us/training-courses/software-development-fundamentals-8248?l=xiawPHKy_5104984382', 'MTA Course 1', '2018-12-07 14:47:21', '2018-12-07 14:47:21'),
(6, 'MTA Course 2', 'Short Description for MTA Course 2', 'https://mva.microsoft.com/en-us/training-courses/software-development-fundamentals-8248?l=xiawPHKy_5104984382', 'MTA Course 2', '2018-12-07 14:47:21', '2018-12-07 14:47:21'),
(7, 'MTA Course 3', 'Short Description for MTA Course 3', 'https://mva.microsoft.com/en-us/training-courses/software-development-fundamentals-8248?l=xiawPHKy_5104984382', 'MTA Course 3', '2018-12-07 14:47:21', '2018-12-07 14:47:21'),
(8, 'MCSD Course 1', 'Short Description for MCSD Course 1', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=40372', 'MCSD Course 1', '2018-12-10 07:21:05', '2018-12-10 07:21:05'),
(9, 'MCSD Course 2', 'Short Description for MCSD Course 2', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=40372', 'MCSD Course ', '2018-12-10 07:21:05', '2018-12-10 07:21:05'),
(10, 'MCSD Course 3', 'Short Description for MCSD Course 3', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=40372', 'MCSD Course 3', '2018-12-10 07:21:05', '2018-12-10 07:21:05'),
(11, 'MCSA Course 1', 'Short Description for MCSA Course 1', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'MCSA Course 1', '2018-12-10 07:22:31', '2018-12-10 07:22:31'),
(12, 'MCSA Course 2', 'Short Description for MCSA Course 2', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'MCSA Course 2', '2018-12-10 07:22:31', '2018-12-10 07:22:31'),
(13, 'MCSA Course 3', 'Short Description for MCSA Course 3', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'MCSA Course 3', '2018-12-10 07:22:31', '2018-12-10 07:22:31'),
(14, 'Developing SQL Database', 'This course provides the knowledge and skills to develop a Microsoft SQL Server database. The course focuses on teaching individuals how to use SQL Server product features and tools related to developing a database.', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20762', 'This course provides the knowledge and skills to develop a Microsoft SQL Server database. The course focuses on teaching individuals how to use SQL Server product features and tools related to developing a database.', '2018-12-10 14:18:39', '2018-12-10 14:18:39'),
(15, 'Administering a SQL Database Infrastructure', 'This course provides students who administer and maintain SQL Server databases with the knowledge and skills to administer a SQL server database infrastructure.', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'This course provides students who administer and maintain SQL Server databases with the knowledge and skills to administer a SQL server database infrastructure.', '2018-12-10 14:21:04', '2018-12-10 14:21:04'),
(16, 'Fundamentals of Network Connectivity', 'CCNA level understanding of networks', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'CCNA level understanding of networks', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(17, 'Networking Protocols', 'Networking Protocols', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Networking Protocols', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(18, 'Cybersecurity', 'Cybersecurity', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Cybersecurity', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(19, 'Infrastructure Cabling', 'Copper and Fiber', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Copper and Fiber', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(20, 'PowerShell', 'PowerShell', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'PowerShell', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(21, 'IOS (Cisco)', 'IOS (Cisco)', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'IOS (Cisco)', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(22, 'Basic Configuration of Switches and Routers', 'Basic Configuration of Switches and Routers', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Basic Configuration of Switches and Routers', '2018-12-11 13:28:42', '2018-12-11 13:28:42'),
(23, 'Analytics', 'Analysis of network security and thoughput', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Analysis of network security and thoughput', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(24, 'Basic Process Analysis', 'Basic Process Analysis', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Basic Process Analysis', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(25, 'QoS', 'QoS', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'QoS', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(26, 'Application Flows', 'Interaction of clients, data, and cloud services', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Interaction of clients, data, and cloud services', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(27, 'IoT', 'Securing devices once connected to the Enterprise network, scaling for increase in device count', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Securing devices once connected to the Enterprise network, scaling for increase in device count', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(28, 'UTM', 'End to end cybersecurity solutions', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'End to end cybersecurity solutions', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(29, 'SD-WAN', 'SD-WAN', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'SD-WAN', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(30, 'MPLS', 'Software defined networking', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Software defined networking', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(31, 'VLAN\'s ', 'VLAN\'s ', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'VLAN\'s ', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(32, 'Advanced Switching, firewall,  and Router configuration', 'Advanced IP addressing and routing for complex networks', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Advanced IP addressing and routing for complex networks', '2018-12-11 15:04:25', '2018-12-11 15:04:25'),
(33, 'Lifecycle Management', 'Lifecycle Management', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Lifecycle Management', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(34, 'Network Modeling/Design', 'Network Modeling/Design', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Network Modeling/Design', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(35, 'Business Process Analysis', 'Defining requirements for the network and customer needs', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Defining requirements for the network and customer needs', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(36, 'Advanced Analytics', 'Proper metrics for data driven decision making', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Proper metrics for data driven decision making', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(37, 'Network Functions Virtualization', 'Routing,  firewalls, load balancing, WAN optimization in Virtual environments', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Routing,  firewalls, load balancing, WAN optimization in Virtual environments', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(38, 'Hyperconvergence Strategies and Implementation', 'Maximizing investment in systems', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Maximizing investment in systems', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(39, 'Network Automation', 'Simplifying repetive tasks in dynamic networks', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'Simplifying repetive tasks in dynamic networks', '2018-12-11 15:14:44', '2018-12-11 15:14:44'),
(40, 'VOIP/Telecommunications', 'VOIP/Telecommunications', 'https://www.microsoft.com/en-us/learning/course.aspx?cid=20764', 'VOIP/Telecommunications', '2018-12-11 15:14:44', '2018-12-11 15:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `imageUrl` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `title`, `short_description`, `description`, `imageUrl`, `created_at`, `updated_at`) VALUES
(1, 'Programmer Analyst', 'This is an entry level in the series. Incumbents are given direct and detailed supervision in application development.  The incumbent will maintain, implement, debug, test applications and systems.', 'This is an entry level in the series. Incumbents are given direct and detailed supervision in application development.  The incumbent will maintain, implement, debug, test applications and systems.', 'programmer-analyst-i.png', '2018-12-04 11:08:09', '2018-12-04 11:08:09'),
(2, 'Programmer Analyst II', 'This is mid-level in the series.  Under general direction  plan, design, customize, maintain, implement, debug, test, migrate, and document  applications and systems; to provide and technical support to users.', 'This is mid-level in the series.  Under general direction  plan, design, customize, maintain, implement, debug, test, migrate, and document  applications and systems; to provide and technical support to users.', 'programmer-analyst-ii.png', '2018-12-04 11:08:09', '2018-12-04 11:08:09'),
(3, 'Senior Programmer Analyst', 'This is the advanced journey level in the series. The incumbent will lead project teams, exercise a high degree of independent judgment and possess a higher degree of technical application development skills.', 'This is the advanced journey level in the series. The incumbent will lead project teams, exercise a high degree of independent judgment and possess a higher degree of technical application development skills.', 'programmer-analyst-iii.png', '2018-12-07 10:01:52', '2018-12-07 10:01:52'),
(7, 'Database Administrator I', 'Under supervision, to provide administration, technical support for, and management of databases and related systems.  ', 'Under supervision, to provide administration, technical support for, and management of databases and related systems.  ', 'database-i.png', '2018-12-07 10:12:18', '2018-12-07 10:12:18'),
(8, 'Database Administrator II', 'Under supervision, to provide administration, technical support for, and management of databases and related systems.  ', 'Under general direction, provide administration, planning, technical support for, and management of databases and related systems.  The incumbent is expected to work under general direction to carry out complex assignments and projects and to perform technical support for database server instances and related databases. The incumbent performs independently and is proficient in all aspects of SQL Server database management and administration. ', 'database-ii.png', '2018-12-07 10:12:18', '2018-12-07 10:12:18'),
(9, 'Senior Database Administrator', 'Provide Level III support to support team members to minimise user/system down time.  Escalate unresolved system issues to appropriate vendors.', 'Manage the county\'s database technology and associated schemas to allow secure, efficient and effective access.  Review and revise practices and processes to enhance efficiency of access for users.  Plan and implement regular system upgrades to enhance service continuity.  Provide Level III support to support team members to minimise user/system down time.  Escalate unresolved system issues to appropriate vendors.', 'database-iii.png', '2018-12-07 10:12:18', '2018-12-07 10:12:18'),
(10, 'Call Center(Help Desk)', 'Call Center (Help Desk) ', 'Tier One Support for customers contacting Information Technology, Handle phone calls in a courteous and timely way, Document Issues thoroughly, prepare logs, and track service requests, Report problems and issues to the correct Information Systems division, Follow Operational Procedures for  processing customer support calls and emergencies', 'network.jpeg', '2018-12-10 15:48:05', '2018-12-10 15:48:05'),
(11, 'Desktop Support', 'Desktop Support', 'Ability to install, configure, maintain, and support Desktop devices including all peripherals, Detailed knowledge on installing, maintaining, and supporting common desktop software (office suites, email, scheduling), Ability to analyze computer issues in a logical manner consistent with the OSI Model, Customer service skills, Ability to train customers on common tasks on Desktop software, Abiltiy to diagnose hardware issues with PC\'s  and peripherals - printers, monitors, scanners, smart-devices, Ability to image PC\'s to customer\'s specifications using developed procedures, Effective verbal and written communications skills', 'network.jpeg', '2018-12-10 15:48:05', '2018-12-10 15:48:05'),
(12, 'Computer Operations', 'Computer Operations', 'Operation and monitoring of complex computer systems and peripherals, Support and maintain simple backup devices, Technical documentation of solutions and procedures, Root-cause analysis of hardware and software issues for custom or vendor applications, Updates and maintains accurate inventory of equipment used in County', 'network.jpeg', '2018-12-10 15:48:05', '2018-12-10 15:48:05'),
(13, 'Network Technician', 'Network Technician (Level 1)', 'Works under supervision, Technical support for network communication devices and connectivity, Configure and install network communication devices, switches and routers, Install and troubleshoot cabling and wiring issues, Knowledge of network principles and practices, WAN/LAN/EIGRP/OSPF/SNMP/SSH/DNS/DHCP/LDAP/SMTP, Ability to configure small firewalls and switches, Ability to install VPN Access and Control systems, Ability to use protocal analysis tools, trace network segments for issues, and performance, Abiltiy to subnet and create VLAN\'s, Ability to upgrade hardware firmware and replace hardware that has failed, Familiarity with switching protocols ', 'network-i.png', '2018-12-11 12:04:14', '2018-12-11 12:04:14'),
(14, 'Network Engineer', 'Network Engineer (Level 2)', 'Perform medium to large complex tasks with minimal supervision, Detailed knowledge of operating systems, Windows, Linux, Cisco IOS, Ability to configure and troubleshoot complex firewalls, Troubleshoot network communication issues at the Tier II and III level, Assist in network design, Ability to configure wireless, vices including point to point connections, Ability to monitor network performance and predict issues, Strong technical documenation skills, Analyses departmental network needs as required', 'network-ii.png', '2018-12-11 12:04:14', '2018-12-11 12:04:14'),
(15, 'Network Administrator', 'Network Administrator(Architect)', 'Ability to perform large and complex tasks related to planning, design, and security in support of a County network, Knowledge of network planning, design, and engineering principals, practices and proper implementation with a government entity, Ability to design, maintain, and support a VOIP solution on a large scale, Meticulous documentation, Abiltiy to lead and supervise a team, Abiltiy to create comprehensive testing and planning procedures, Prepares feasibilty studies as required', 'network-iii.png', '2018-12-11 12:04:14', '2018-12-11 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `position_details`
--

CREATE TABLE `position_details` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position_details`
--

INSERT INTO `position_details` (`id`, `position_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(9, 1, 6, '2018-12-07 12:38:56', '2018-12-07 12:38:56'),
(10, 2, 6, '2018-12-07 12:39:20', '2018-12-07 12:39:20'),
(12, 2, 9, '2018-12-10 07:27:48', '2018-12-10 07:27:48'),
(13, 3, 6, '2018-12-10 07:27:48', '2018-12-10 07:27:48'),
(14, 3, 9, '2018-12-10 13:16:07', '2018-12-10 13:16:07'),
(15, 7, 10, '2018-12-10 13:16:07', '2018-12-10 13:16:07'),
(16, 8, 10, '2018-12-10 13:16:07', '2018-12-10 13:16:07'),
(17, 8, 11, '2018-12-10 13:17:03', '2018-12-10 13:17:03'),
(18, 9, 10, '2018-12-10 13:41:18', '2018-12-10 13:41:18'),
(19, 9, 11, '2018-12-10 13:41:18', '2018-12-10 13:41:18'),
(20, 9, 12, '2018-12-10 13:41:18', '2018-12-10 13:41:18'),
(21, 2, 7, '2018-12-10 13:59:15', '2018-12-10 13:59:15'),
(22, 3, 7, '2018-12-10 14:00:55', '2018-12-10 14:00:55'),
(23, 3, 8, '2018-12-10 14:02:24', '2018-12-10 14:02:24'),
(24, 13, 13, '2018-12-11 13:32:27', '2018-12-11 13:32:27'),
(25, 14, 13, '2018-12-11 15:00:28', '2018-12-11 15:00:28'),
(26, 14, 14, '2018-12-11 15:00:28', '2018-12-11 15:00:28'),
(27, 15, 13, '2018-12-11 15:00:28', '2018-12-11 15:00:28'),
(28, 15, 14, '2018-12-11 15:00:28', '2018-12-11 15:00:28'),
(29, 15, 15, '2018-12-11 15:00:28', '2018-12-11 15:00:28'),
(30, 10, 16, '2018-12-11 15:45:25', '2018-12-11 15:45:25'),
(31, 11, 17, '2018-12-11 15:45:25', '2018-12-11 15:45:25'),
(32, 12, 18, '2018-12-11 15:45:25', '2018-12-11 15:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `short_description`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'Basic Programming', 'Long Description of Basic Programming', '2018-12-04 11:18:13', '2018-12-04 11:18:13'),
(2, 'Database technologies', 'Basic Database', 'Basic Database', '2018-12-04 11:18:13', '2018-12-04 11:18:13'),
(5, 'Database Administration', 'Database Administration', 'Database Administration', '2018-12-10 07:31:11', '2018-12-10 07:31:11'),
(6, 'Programming - Level 1 Analyst', 'Programming - Level 1 Short Description', 'Programming - Level 1 Long Description', '2018-12-10 13:30:44', '2018-12-10 13:30:44'),
(7, 'Programming - Level 2 Analyst', 'Programming - Level 2 Short Description', 'Programming - Level 2 Long Description', '2018-12-10 13:35:07', '2018-12-10 13:35:07'),
(8, 'Programming - Level Senior', 'Programming - Level Senior Short Description', 'Programming - Level Senior Long Description', '2018-12-10 13:35:07', '2018-12-10 13:35:07'),
(9, 'Database Technologies', 'Database Technologies', 'Database Technologies', '2018-12-10 13:35:07', '2018-12-10 13:35:07'),
(10, 'Database Administration Level 1', 'Database Administration Level 1 Short Description', 'Database Administration Level 1 Long Description', '2018-12-10 13:35:07', '2018-12-10 13:35:07'),
(11, 'Database Administration Level  2', 'Database Administration Level 2 Short Description', 'Database Administration Level 2 Long Description', '2018-12-10 13:35:07', '2018-12-10 13:35:07'),
(12, 'Database Administration Level Senior', 'Database Administration Level Senior Short Description', 'Database Administration Level Senior Long Description', '2018-12-10 13:35:07', '2018-12-10 13:35:07'),
(13, 'Networking Level 1', 'Network Engineer Level 1 Short Description', 'Network Engineer Level 1 Long Description', '2018-12-11 12:01:51', '2018-12-11 12:01:51'),
(14, 'Networking Level 2', 'Network Engineer Level 2 Short Description', 'Network Engineer Level 2 Long Description', '2018-12-11 12:01:51', '2018-12-11 12:01:51'),
(15, 'Network Administration', 'Network Administrator Short Description', 'Network Administrator Long Description', '2018-12-11 12:01:51', '2018-12-11 12:01:51'),
(16, 'Help Desk Level 1', 'Help Desk Level 1', 'Help Desk Level 1', '2018-12-11 15:30:41', '2018-12-11 15:30:41'),
(17, 'Desktop Support Level 1', 'Desktop Support Level 1', 'Desktop Support Level 1', '2018-12-11 15:42:56', '2018-12-11 15:42:56'),
(18, 'Computer Operations Level 1', 'Computer Operations Level 1', 'Computer Operations Level 1', '2018-12-11 15:42:56', '2018-12-11 15:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `skill_details`
--

CREATE TABLE `skill_details` (
  `id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `certification_id` int(11) DEFAULT NULL,
  `training_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill_details`
--

INSERT INTO `skill_details` (`id`, `skill_id`, `certification_id`, `training_id`, `created_at`, `updated_at`) VALUES
(9, 6, 1, NULL, '2018-12-07 12:40:18', '2018-12-07 12:40:18'),
(10, 6, NULL, 6, '2018-12-07 14:55:11', '2018-12-07 14:55:11'),
(21, 7, 2, NULL, '2018-12-10 07:57:52', '2018-12-10 07:57:52'),
(22, 8, 4, NULL, '2018-12-10 08:01:17', '2018-12-10 08:01:17'),
(23, 8, 1, NULL, '2018-12-10 08:03:19', '2018-12-10 08:03:19'),
(24, 7, NULL, 7, '2018-12-10 14:10:21', '2018-12-10 14:10:21'),
(25, 9, NULL, 8, '2018-12-10 14:12:58', '2018-12-10 14:12:58'),
(26, 8, NULL, 10, '2018-12-10 14:19:19', '2018-12-10 14:19:19'),
(27, 10, 4, NULL, '2018-12-10 14:22:13', '2018-12-10 14:22:13'),
(28, 10, NULL, 11, '2018-12-10 14:22:53', '2018-12-10 14:22:53'),
(29, 11, NULL, 12, '2018-12-10 14:25:00', '2018-12-10 14:25:00'),
(30, 13, NULL, 13, '2018-12-11 13:30:43', '2018-12-11 13:30:43'),
(31, 13, NULL, 14, '2018-12-11 13:36:31', '2018-12-11 13:36:31'),
(32, 13, NULL, 15, '2018-12-11 13:36:31', '2018-12-11 13:36:31'),
(33, 13, NULL, 16, '2018-12-11 13:36:31', '2018-12-11 13:36:31'),
(34, 13, NULL, 17, '2018-12-11 13:36:31', '2018-12-11 13:36:31'),
(35, 13, NULL, 18, '2018-12-11 13:36:31', '2018-12-11 13:36:31'),
(36, 13, NULL, 19, '2018-12-11 13:36:31', '2018-12-11 13:36:31'),
(37, 14, NULL, 20, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(38, 14, NULL, 21, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(39, 14, NULL, 22, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(40, 14, NULL, 23, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(41, 14, NULL, 24, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(42, 14, NULL, 25, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(43, 14, NULL, 26, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(44, 14, NULL, 27, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(45, 14, NULL, 28, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(46, 14, NULL, 29, '2018-12-11 15:09:04', '2018-12-11 15:09:04'),
(47, 15, NULL, 30, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(48, 15, NULL, 31, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(49, 15, NULL, 32, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(50, 15, NULL, 33, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(51, 15, NULL, 34, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(52, 15, NULL, 35, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(53, 15, NULL, 36, '2018-12-11 15:17:00', '2018-12-11 15:17:00'),
(54, 15, NULL, 37, '2018-12-11 15:17:00', '2018-12-11 15:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_details`
--

CREATE TABLE `training_details` (
  `id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_details`
--

INSERT INTO `training_details` (`id`, `skill_id`, `course_id`, `created_at`, `updated_at`) VALUES
(6, 6, 1, '2018-12-07 14:53:30', '2018-12-07 14:53:30'),
(7, 7, 2, '2018-12-10 13:21:58', '2018-12-10 13:21:58'),
(8, 9, 3, '2018-12-10 14:12:27', '2018-12-10 14:12:27'),
(9, 8, 3, '2018-12-10 14:15:37', '2018-12-10 14:15:37'),
(10, 8, 14, '2018-12-10 14:18:53', '2018-12-10 14:18:53'),
(11, 10, 15, '2018-12-10 14:22:42', '2018-12-10 14:22:42'),
(12, 11, 4, '2018-12-10 14:24:30', '2018-12-10 14:24:30'),
(13, 13, 16, '2018-12-11 13:30:06', '2018-12-11 13:30:06'),
(14, 13, 17, '2018-12-11 13:35:31', '2018-12-11 13:35:31'),
(15, 13, 18, '2018-12-11 13:35:31', '2018-12-11 13:35:31'),
(16, 13, 19, '2018-12-11 13:35:31', '2018-12-11 13:35:31'),
(17, 13, 20, '2018-12-11 13:35:31', '2018-12-11 13:35:31'),
(18, 13, 21, '2018-12-11 13:35:31', '2018-12-11 13:35:31'),
(19, 13, 22, '2018-12-11 13:35:31', '2018-12-11 13:35:31'),
(20, 14, 23, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(21, 14, 24, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(22, 14, 25, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(23, 14, 26, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(24, 14, 27, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(25, 14, 28, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(26, 14, 29, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(27, 14, 30, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(28, 14, 31, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(29, 14, 32, '2018-12-11 15:07:59', '2018-12-11 15:07:59'),
(30, 15, 33, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(31, 15, 34, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(32, 15, 35, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(33, 15, 36, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(34, 15, 37, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(35, 15, 38, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(36, 15, 39, '2018-12-11 15:15:38', '2018-12-11 15:15:38'),
(37, 15, 40, '2018-12-11 15:15:38', '2018-12-11 15:15:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification_details`
--
ALTER TABLE `certification_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certification_details_ibfk_2` (`course_id`),
  ADD KEY `certification_details_ibfk_1` (`certification_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position_details`
--
ALTER TABLE `position_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_details`
--
ALTER TABLE `skill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `training_details`
--
ALTER TABLE `training_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `certification_details`
--
ALTER TABLE `certification_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `position_details`
--
ALTER TABLE `position_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `skill_details`
--
ALTER TABLE `skill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `training_details`
--
ALTER TABLE `training_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certification_details`
--
ALTER TABLE `certification_details`
  ADD CONSTRAINT `certification_details_ibfk_1` FOREIGN KEY (`certification_id`) REFERENCES `certifications` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `certification_details_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `skill_details`
--
ALTER TABLE `skill_details`
  ADD CONSTRAINT `skill_details_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
