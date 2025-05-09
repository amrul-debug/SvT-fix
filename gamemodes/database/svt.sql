-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 09:17 AM
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
-- Database: `svt`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `pID` int(11) UNSIGNED NOT NULL,
  `A1` tinyint(2) NOT NULL DEFAULT 0,
  `A2` tinyint(2) NOT NULL DEFAULT 0,
  `A3` tinyint(2) NOT NULL DEFAULT 0,
  `A4` tinyint(2) NOT NULL DEFAULT 0,
  `A5` tinyint(2) NOT NULL DEFAULT 0,
  `A6` tinyint(2) NOT NULL DEFAULT 0,
  `A7` tinyint(2) NOT NULL DEFAULT 0,
  `A8` tinyint(2) NOT NULL DEFAULT 0,
  `A9` tinyint(2) NOT NULL DEFAULT 0,
  `A10` tinyint(2) NOT NULL DEFAULT 0,
  `A11` tinyint(2) NOT NULL DEFAULT 0,
  `A12` tinyint(2) NOT NULL DEFAULT 0,
  `A13` tinyint(2) NOT NULL DEFAULT 0,
  `A14` tinyint(2) NOT NULL DEFAULT 0,
  `A15` tinyint(2) NOT NULL DEFAULT 0,
  `A16` tinyint(2) NOT NULL DEFAULT 0,
  `A17` tinyint(2) NOT NULL DEFAULT 0,
  `A18` tinyint(2) NOT NULL DEFAULT 0,
  `A19` tinyint(2) NOT NULL DEFAULT 0,
  `A20` tinyint(2) NOT NULL DEFAULT 0,
  `A21` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminsauditlog`
--

CREATE TABLE `adminsauditlog` (
  `AuditId` int(11) NOT NULL,
  `AdminName` varchar(24) NOT NULL,
  `ActionDescription` varchar(128) NOT NULL,
  `IssuedDate` int(16) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bansdata`
--

CREATE TABLE `bansdata` (
  `BanId` int(11) NOT NULL,
  `BannedName` varchar(24) NOT NULL,
  `AdminName` varchar(24) NOT NULL,
  `BanReason` varchar(25) NOT NULL,
  `ExpiryDate` int(16) NOT NULL,
  `BanDate` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banshistorydata`
--

CREATE TABLE `banshistorydata` (
  `BanId` int(11) NOT NULL,
  `BannedName` varchar(24) NOT NULL,
  `AdminName` varchar(24) NOT NULL,
  `BanReason` varchar(25) NOT NULL,
  `ExpiryDate` int(16) NOT NULL,
  `BanDate` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clanlog`
--

CREATE TABLE `clanlog` (
  `ID` int(11) NOT NULL,
  `cID` int(11) NOT NULL DEFAULT -1,
  `Member` varchar(24) NOT NULL,
  `Rank` tinyint(4) NOT NULL,
  `Action` text NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clansdata`
--

CREATE TABLE `clansdata` (
  `ClanId` int(10) UNSIGNED NOT NULL,
  `ClanName` varchar(35) NOT NULL,
  `ClanTag` varchar(7) NOT NULL,
  `ClanMotd` varchar(60) NOT NULL DEFAULT 'New Message',
  `ClanWeap` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClanWallet` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ClanKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ClanDeaths` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ClanPoints` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `Rank1` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank2` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank3` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank4` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank5` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank6` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank7` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank8` varchar(20) NOT NULL DEFAULT 'Member',
  `Rank9` varchar(20) NOT NULL DEFAULT 'Co-Leader',
  `Rank10` varchar(20) NOT NULL DEFAULT 'Leader',
  `ClanLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClanSkin` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BasePurchaseTime` int(11) NOT NULL DEFAULT 0,
  `InviteClanLevel` tinyint(4) NOT NULL DEFAULT 10,
  `ClanWarLevel` tinyint(4) NOT NULL DEFAULT 10,
  `ClanPermsLevel` tinyint(4) NOT NULL DEFAULT 10,
  `PreferredTeam` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forbiddenlist`
--

CREATE TABLE `forbiddenlist` (
  `ForbidId` int(11) NOT NULL,
  `Type` varchar(12) NOT NULL,
  `Text` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ignorelist`
--

CREATE TABLE `ignorelist` (
  `Id` int(11) NOT NULL,
  `BlockerId` int(10) UNSIGNED NOT NULL,
  `BlockedId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `namechangeslog`
--

CREATE TABLE `namechangeslog` (
  `ActionId` int(11) NOT NULL,
  `OldName` varchar(24) NOT NULL,
  `NewName` varchar(24) NOT NULL,
  `Admin` varchar(24) NOT NULL,
  `ActionDate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `ID` int(16) NOT NULL,
  `Username` varchar(24) NOT NULL,
  `EmailAddress` varchar(65) DEFAULT NULL,
  `EmailVerified` tinyint(1) NOT NULL DEFAULT 0,
  `EmailAttempts` tinyint(2) NOT NULL DEFAULT 0,
  `Password` varchar(65) NOT NULL,
  `Salt` varchar(11) NOT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `GPCI` varchar(41) DEFAULT NULL,
  `TFAKey` tinytext NOT NULL,
  `SupportKey` tinytext DEFAULT NULL,
  `Coins` float NOT NULL DEFAULT 0,
  `RegDate` int(16) NOT NULL DEFAULT 0,
  `LastVisit` int(16) NOT NULL DEFAULT 0,
  `PlayTime` int(16) NOT NULL DEFAULT 0,
  `ClanId` mediumint(5) NOT NULL DEFAULT -1,
  `ClanRank` tinyint(2) NOT NULL DEFAULT 0,
  `IsBanned` tinyint(2) NOT NULL DEFAULT 0,
  `Warnings` tinyint(2) NOT NULL DEFAULT 0,
  `IsModerator` tinyint(2) NOT NULL DEFAULT 0,
  `AdminLevel` tinyint(2) NOT NULL DEFAULT 0,
  `TimesLoggedIn` int(16) NOT NULL DEFAULT 0,
  `AntiCheatWarnings` int(16) NOT NULL DEFAULT 0,
  `PlayerReports` int(16) NOT NULL DEFAULT 0,
  `SpamAttempts` int(16) NOT NULL DEFAULT 0,
  `AdvAttempts` int(16) NOT NULL DEFAULT 0,
  `AntiSwearBlocks` int(16) NOT NULL DEFAULT 0,
  `TagPermitted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ReportAttempts` int(16) NOT NULL DEFAULT 0,
  `BannedTimes` tinyint(5) NOT NULL DEFAULT 0,
  `DonorLevel` tinyint(6) NOT NULL DEFAULT 0,
  `TFA` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playersconf`
--

CREATE TABLE `playersconf` (
  `pID` int(11) UNSIGNED NOT NULL,
  `DoNotDisturb` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `NoDuel` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `HitIndicator` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `GUIEnabled` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `WeaponLaser` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `LaserColor` smallint(6) UNSIGNED NOT NULL DEFAULT 19082,
  `WeaponBodyToys` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `SpawnKillTime` smallint(4) NOT NULL DEFAULT 7,
  `UseHelmet` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `UseGasMask` tinyint(2) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playersdata`
--

CREATE TABLE `playersdata` (
  `pID` int(16) UNSIGNED NOT NULL,
  `Score` bigint(16) NOT NULL DEFAULT 0,
  `Cash` bigint(16) NOT NULL DEFAULT 0,
  `Kills` int(11) NOT NULL DEFAULT 0,
  `Deaths` int(11) NOT NULL DEFAULT 0,
  `GunFires` int(10) NOT NULL DEFAULT 0,
  `IsJailed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `Headshots` int(11) NOT NULL DEFAULT 0,
  `Nutshots` mediumint(8) NOT NULL DEFAULT 0,
  `KnifeKills` int(11) NOT NULL DEFAULT 0,
  `RevengeTakes` int(11) NOT NULL DEFAULT 0,
  `JackpotsFound` mediumint(5) NOT NULL DEFAULT 0,
  `DeathmatchKills` int(11) NOT NULL DEFAULT 0,
  `RustlerRockets` int(8) NOT NULL DEFAULT 0,
  `RustlerRocketsHit` int(8) NOT NULL DEFAULT 0,
  `DuelsWon` mediumint(8) NOT NULL DEFAULT 0,
  `DuelsLost` mediumint(8) NOT NULL DEFAULT 0,
  `MedkitsUsed` mediumint(8) NOT NULL DEFAULT 0,
  `ArmourkitsUsed` mediumint(8) NOT NULL DEFAULT 0,
  `SupportAttempts` mediumint(8) NOT NULL DEFAULT 0,
  `EXP` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `KillAssists` int(11) NOT NULL DEFAULT 0,
  `CaptureAssists` int(11) NOT NULL DEFAULT 0,
  `HighestKillStreak` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SawedKills` int(11) NOT NULL DEFAULT 0,
  `AirRocketsFired` int(11) NOT NULL DEFAULT 0,
  `AntiAirRocketsFired` int(11) NOT NULL DEFAULT 0,
  `CarePackagesDropped` int(11) NOT NULL DEFAULT 0,
  `FavWeap` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FavWeap2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FavWeap3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DamageRate` float NOT NULL DEFAULT 0,
  `HealthLost` float NOT NULL DEFAULT 0,
  `SMGKills` int(11) NOT NULL DEFAULT 0,
  `ShotgunKills` int(11) NOT NULL DEFAULT 0,
  `HeavyKills` int(11) NOT NULL DEFAULT 0,
  `MeleeKills` int(11) NOT NULL DEFAULT 0,
  `PistolKills` int(11) NOT NULL DEFAULT 0,
  `FistKills` int(11) NOT NULL DEFAULT 0,
  `CloseKills` int(11) NOT NULL DEFAULT 0,
  `DriversStabbed` int(11) NOT NULL DEFAULT 0,
  `SpiesEliminated` int(11) NOT NULL DEFAULT 0,
  `KillsAsSpy` int(11) NOT NULL DEFAULT 0,
  `LongDistanceKills` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponsDropped` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponsPicked` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `EventsWon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `RacesWon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ItemsUsed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `FavSkin` smallint(6) NOT NULL DEFAULT 0,
  `FavTeam` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SuicideAttempts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `PlayersHealed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CommandsUsed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CommandsFailed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `UnauthorizedActions` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `RCONLogins` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `RCONFailedAttempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassAbilitiesUsed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `DronesExploded` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `HealthGained` float NOT NULL DEFAULT 0,
  `ZonesCaptured` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `InteriorsEntered` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `InteriorsExitted` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `PickupsPicked` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `QuestionsAsked` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `QuestionsAnswered` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CrashTimes` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `SAMPClient` varchar(10) DEFAULT NULL,
  `BackupAttempts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `BackupsResponded` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `BaseRapeAttempts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CBugAttempts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ChatMessagesSent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `MoneySent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `MoneyReceived` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `HighestBet` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `DuelRequests` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsAccepted` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsRefusedByPlayer` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsRefusedByOthers` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `BountyAmount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `BountyCashSpent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CoinsSpent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `PaymentsAccepted` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ClanKills` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ClanDeaths` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `AchsUnlocked` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `HighestCaptures` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `KicksByAdmin` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `LongestKillDistance` float NOT NULL DEFAULT 0,
  `NearestKillDistance` float NOT NULL DEFAULT 0,
  `HighestCaptureAssists` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HighestKillAssists` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BountyPlayersKilled` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ChallengesWon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `MissionsCompleted` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `PrototypesStolen` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `AntennasDestroyed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `CratesOpened` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `LastPing` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `LastPacketLoss` float NOT NULL DEFAULT 0,
  `HighestPing` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `LowestPing` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `NukesLaunched` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `AirstrikesCalled` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `FlashBangedPlayers` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `AnthraxIntoxications` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `PUBGEventsWon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `RopeRappels` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `AreasEntered` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `LastAreaId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LastPosX` float NOT NULL DEFAULT 0,
  `LastPosY` float NOT NULL DEFAULT 0,
  `LastPosZ` float NOT NULL DEFAULT 0,
  `LastHealth` float NOT NULL DEFAULT 0,
  `LastArmour` float NOT NULL DEFAULT 0,
  `TimeSpentOnFoot` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentInCar` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentAsPassenger` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentInSelection` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentAFK` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `DriveByKills` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `CashAdded` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `CashReduced` bigint(20) NOT NULL DEFAULT 0,
  `LastInterior` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `LastVirtualWorld` smallint(6) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playersmissions`
--

CREATE TABLE `playersmissions` (
  `pID` int(11) UNSIGNED NOT NULL,
  `Mission1` tinyint(2) NOT NULL DEFAULT 0,
  `Mission2` tinyint(2) NOT NULL DEFAULT 0,
  `Mission3` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playersreports`
--

CREATE TABLE `playersreports` (
  `Id` int(11) NOT NULL,
  `Reporter` varchar(24) NOT NULL,
  `ReportedPlayer` varchar(24) NOT NULL,
  `Reason` varchar(45) NOT NULL,
  `DateIssued` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE `punishments` (
  `ActionId` int(11) NOT NULL,
  `PunishedPlayer` varchar(24) NOT NULL,
  `Punisher` varchar(24) NOT NULL,
  `Action` varchar(24) NOT NULL,
  `ActionReason` varchar(128) DEFAULT NULL,
  `PunishmentTime` varchar(24) DEFAULT NULL,
  `ActionDate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `racescheckpoints`
--

CREATE TABLE `racescheckpoints` (
  `RaceId` int(16) NOT NULL,
  `RX` float NOT NULL,
  `RY` float NOT NULL,
  `RZ` float NOT NULL,
  `RType` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `racesdata`
--

CREATE TABLE `racesdata` (
  `RaceId` int(16) NOT NULL,
  `RaceName` varchar(24) NOT NULL,
  `RaceMaker` varchar(24) DEFAULT NULL,
  `RaceVehicle` smallint(5) NOT NULL DEFAULT -1,
  `RaceInt` smallint(6) NOT NULL DEFAULT 0,
  `RaceWorld` smallint(6) NOT NULL DEFAULT 0,
  `RaceDate` int(16) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `racesspawnpoints`
--

CREATE TABLE `racesspawnpoints` (
  `RaceId` int(16) NOT NULL,
  `RX` float NOT NULL,
  `RY` float NOT NULL,
  `RZ` float NOT NULL,
  `RRot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serverconfig`
--

CREATE TABLE `serverconfig` (
  `ConfId` int(11) NOT NULL,
  `ConfName` varchar(15) NOT NULL,
  `ConfValue` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slaveplayersdata`
--

CREATE TABLE `slaveplayersdata` (
  `sID` int(16) NOT NULL,
  `pID` int(16) UNSIGNED NOT NULL,
  `Score` mediumint(10) UNSIGNED NOT NULL DEFAULT 0,
  `Cash` int(11) NOT NULL DEFAULT 0,
  `Kills` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Deaths` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `GunFires` int(10) NOT NULL DEFAULT 0,
  `IsJailed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `JailTime` mediumint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Headshots` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `Nutshots` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `KnifeKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RevengeTakes` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `JackpotsFound` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DeathmatchKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RustlerRockets` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RustlerRocketsHit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsWon` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsLost` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `MedkitsUsed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ArmourkitsUsed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `SupportAttempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `EXP` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `KillAssists` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CaptureAssists` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HighestKillStreak` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SawedKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `AirRocketsFired` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `AntiAirRocketsFired` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CarePackagesDropped` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `FavWeap` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FavWeap2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FavWeap3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DamageRate` float UNSIGNED NOT NULL DEFAULT 0,
  `HealthLost` float UNSIGNED NOT NULL DEFAULT 0,
  `SMGKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ShotgunKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HeavyKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `MeleeKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PistolKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `FistKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CloseKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DriversStabbed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `SpiesEliminated` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `KillsAsSpy` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `LongDistanceKills` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponsDropped` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponsPicked` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `EventsWon` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RacesWon` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ItemsUsed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `FavSkin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FavTeam` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SuicideAttempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PlayersHealed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CommandsUsed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CommandsFailed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `UnauthorizedActions` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RCONLogins` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RCONFailedAttempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassAbilitiesUsed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DronesExploded` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HealthGained` float NOT NULL DEFAULT 0,
  `ZonesCaptured` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `InteriorsEntered` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `InteriorsExitted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PickupsPicked` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HousesPurchased` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `QuestionsAsked` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `QuestionsAnswered` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CrashTimes` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `SAMPClient` varchar(10) DEFAULT NULL,
  `BackupAttempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BackupsResponded` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BaseRapeAttempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CBugAttempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ChatMessagesSent` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `MoneySent` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `MoneyReceived` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HighestBet` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DuelRequests` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsAccepted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsRefusedByPlayer` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `DuelsRefusedByOthers` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BountyAmount` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BountyCashSpent` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CoinsSpent` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PaymentsAccepted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ClanKills` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ClanDeaths` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AchsUnlocked` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HighestCaptures` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `KicksByAdmin` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `LongestKillDistance` float NOT NULL DEFAULT 0,
  `NearestKillDistance` float NOT NULL DEFAULT 0,
  `HighestCaptureAssists` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `HighestKillAssists` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BountyPlayersKilled` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ChallengesWon` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `MissionsCompleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PrototypesStolen` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `AntennasDestroyed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `CratesOpened` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `LastPing` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `LastPacketLoss` float NOT NULL DEFAULT 0,
  `HighestPing` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `LowestPing` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `NukesLaunched` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `AirstrikesCalled` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `FlashBangedPlayers` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `AnthraxIntoxications` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PUBGEventsWon` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `SafesRobbed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `RopeRappels` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `AreasEntered` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `LastAreaId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LastPosX` float NOT NULL DEFAULT 0,
  `LastPosY` float NOT NULL DEFAULT 0,
  `LastPosZ` float NOT NULL DEFAULT 0,
  `LastHealth` float NOT NULL DEFAULT 0,
  `LastArmour` float NOT NULL DEFAULT 0,
  `TimeSpentOnFoot` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentInCar` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentAsPassenger` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentInSelection` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `TimeSpentAFK` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `DriveByKills` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `MathCalculations` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `CashAdded` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `CashReduced` int(16) UNSIGNED NOT NULL DEFAULT 0,
  `LastInterior` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `LastVirtualWorld` smallint(6) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclespawns`
--

CREATE TABLE `vehiclespawns` (
  `LogId` int(11) NOT NULL,
  `Player` varchar(24) NOT NULL,
  `VehId` smallint(5) NOT NULL DEFAULT 0,
  `VehModel` smallint(5) NOT NULL DEFAULT 0,
  `ActionDate` int(16) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD UNIQUE KEY `pID` (`pID`);

--
-- Indexes for table `adminsauditlog`
--
ALTER TABLE `adminsauditlog`
  ADD PRIMARY KEY (`AuditId`);

--
-- Indexes for table `bansdata`
--
ALTER TABLE `bansdata`
  ADD PRIMARY KEY (`BanId`),
  ADD UNIQUE KEY `BannedName` (`BannedName`);

--
-- Indexes for table `banshistorydata`
--
ALTER TABLE `banshistorydata`
  ADD PRIMARY KEY (`BanId`);

--
-- Indexes for table `clanlog`
--
ALTER TABLE `clanlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `clansdata`
--
ALTER TABLE `clansdata`
  ADD PRIMARY KEY (`ClanId`),
  ADD UNIQUE KEY `ClanName` (`ClanName`),
  ADD UNIQUE KEY `ClanTag` (`ClanTag`);

--
-- Indexes for table `forbiddenlist`
--
ALTER TABLE `forbiddenlist`
  ADD PRIMARY KEY (`ForbidId`);

--
-- Indexes for table `ignorelist`
--
ALTER TABLE `ignorelist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `namechangeslog`
--
ALTER TABLE `namechangeslog`
  ADD PRIMARY KEY (`ActionId`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `playersconf`
--
ALTER TABLE `playersconf`
  ADD UNIQUE KEY `pID` (`pID`);

--
-- Indexes for table `playersdata`
--
ALTER TABLE `playersdata`
  ADD UNIQUE KEY `pID` (`pID`);

--
-- Indexes for table `playersmissions`
--
ALTER TABLE `playersmissions`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `playersreports`
--
ALTER TABLE `playersreports`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `punishments`
--
ALTER TABLE `punishments`
  ADD PRIMARY KEY (`ActionId`);

--
-- Indexes for table `racesdata`
--
ALTER TABLE `racesdata`
  ADD PRIMARY KEY (`RaceId`),
  ADD UNIQUE KEY `RaceName` (`RaceName`);

--
-- Indexes for table `serverconfig`
--
ALTER TABLE `serverconfig`
  ADD PRIMARY KEY (`ConfId`);

--
-- Indexes for table `slaveplayersdata`
--
ALTER TABLE `slaveplayersdata`
  ADD PRIMARY KEY (`sID`);

--
-- Indexes for table `vehiclespawns`
--
ALTER TABLE `vehiclespawns`
  ADD PRIMARY KEY (`LogId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminsauditlog`
--
ALTER TABLE `adminsauditlog`
  MODIFY `AuditId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bansdata`
--
ALTER TABLE `bansdata`
  MODIFY `BanId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banshistorydata`
--
ALTER TABLE `banshistorydata`
  MODIFY `BanId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clanlog`
--
ALTER TABLE `clanlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clansdata`
--
ALTER TABLE `clansdata`
  MODIFY `ClanId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forbiddenlist`
--
ALTER TABLE `forbiddenlist`
  MODIFY `ForbidId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ignorelist`
--
ALTER TABLE `ignorelist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `namechangeslog`
--
ALTER TABLE `namechangeslog`
  MODIFY `ActionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `ID` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playersreports`
--
ALTER TABLE `playersreports`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `ActionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `racesdata`
--
ALTER TABLE `racesdata`
  MODIFY `RaceId` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serverconfig`
--
ALTER TABLE `serverconfig`
  MODIFY `ConfId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slaveplayersdata`
--
ALTER TABLE `slaveplayersdata`
  MODIFY `sID` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehiclespawns`
--
ALTER TABLE `vehiclespawns`
  MODIFY `LogId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
