SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";





CREATE TABLE `admin` (
  `FullName` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `admin` (`FullName`, `Username`, `Password`) VALUES




CREATE TABLE `nominee` (
  `FullName` varchar(40) NOT NULL,
  `PartyName` varchar(30) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Votes` int(100) NOT NULL,
  `Status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `nominee` (`FullName`, `PartyName`, `Image`, `Votes`, `Status`) VALUES
('Apple', 'SWIFT', 'ios.png', 1, 'ON'),
('C', 'microsoft', 'microsoft.jpg', 0, 'OFF'),
('C/C++', 'linux', 'linux.jpg', 0, 'OFF'),
('JAVA', 'android', 'android1.png', 0, 'OFF');

-- --------------------------------------------------------



CREATE TABLE `register` (
  `FullName` varchar(40) NOT NULL,
  `MobileNo` bigint(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Status` varchar(11) NOT NULL,
  `Voted` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `register` (`FullName`, `MobileNo`, `Email`, `DOB`, `Password`, `Status`, `Voted`) VALUES



ALTER TABLE `admin`
  ADD UNIQUE KEY `Username` (`Username`);


ALTER TABLE `nominee`
  ADD UNIQUE KEY `FullName` (`FullName`),
  ADD UNIQUE KEY `PartyName` (`PartyName`);


ALTER TABLE `register`
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `FullName` (`FullName`);
COMMIT;

