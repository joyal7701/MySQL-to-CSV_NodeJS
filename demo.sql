CREATE TABLE `demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `name`, `Email`, `Time`, `Date`) VALUES
(1, 'Joyal', 'joyal@gmail.com', '07:00:00', '2022-01-21'),
(2, 'Sam', 'sam@gmail.com', '12:30:00', '2019-05-16'),
(3, 'IT Buddies', 'itbuddies@gmail.com', '20:47:19', '2019-10-31'),
(4, 'Millie', 'millie@gmail.com', '15:24:44', '2022-05-25');
