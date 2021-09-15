-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2018 at 01:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` int(5) NOT NULL,
  `Category_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Sports'),
(4, 'Puzzle'),
(5, 'Racing'),
(6, 'Strategy');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(32) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(32) NOT NULL,
  `State` varchar(32) NOT NULL,
  `Zip` int(5) NOT NULL,
  `NameOnCard` varchar(32) NOT NULL,
  `CreditNumber` int(10) NOT NULL,
  `ExpiryMonth` varchar(10) NOT NULL,
  `ExpiryYear` year(4) NOT NULL,
  `CVV` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`ID`, `FullName`, `Email`, `Address`, `City`, `State`, `Zip`, `NameOnCard`, `CreditNumber`, `ExpiryMonth`, `ExpiryYear`, `CVV`) VALUES
(0, 'Sumit Kumar Shah', 'shahsumit98.ss@gmail.com', '68A Power Street', 'Saint Albans', 'VIC', 3021, '', 0, '0000-00-00', 0000, 0),
(0, 'Sumit Kumar Shah', 'shahsumit98.ss@gmail.com', '68A Power Street', 'Saint Albans', 'VIC', 3021, '', 0, '', 0000, 0),
(0, '', '', '', '', '', 0, '', 0, '', 0000, 0),
(0, '', '', '', '', '', 0, '', 0, '', 0000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(5) NOT NULL,
  `Product_ID` varchar(5) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Description` varchar(1000) NOT NULL,
  `Product_Price` int(11) NOT NULL,
  `Image_Name` varchar(255) NOT NULL,
  `Image_Alt` varchar(255) NOT NULL,
  `Category_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Product_ID`, `Product_Name`, `Product_Description`, `Product_Price`, `Image_Name`, `Image_Alt`, `Category_ID`) VALUES
(1, 'P1', 'Fortnite', 'Fortnite is an online video game first released in 2017 and developed by Epic Games. It is available as separate software packages having different game modes that otherwise share the same general gameplay and game engine. \r\nIt is the living, action building game using Unreal Engine 4 from Epic Games. You and your friends will lead a group of Heroes to reclaim and rebuild a homeland that has been left empty by mysterious darkness only known as \"The Storm\".\r\nBand together online to build extravagant forts, find or build insane weapons and traps and protect your towns from the strange Monsters that emerge during the Storm.', 50, 'fortnight.jpg', 'Fortnight Wallpaper', 1),
(2, 'P2', 'GTA', 'Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world. Composed of the San Andreas open countryside area, including the fictional Blaine County, and the fictional city of Los Santos, the world is much larger in area than earlier entries in the series. It may be fully explored after the game\'s beginning without restriction, although story progress unlocks more gameplay content.\r\nThe single-player mode lets players control three characters: Michael De Santa, Trevor Philips and Franklin Clinton—criminals whose stories interconnect as they complete missions. Some missions are completed with only one character and others feature two or three.', 100, 'gta.jpg', 'GTA', 2),
(3, 'P3', 'Minecraft', 'Minecraft is a 3D sandbox game that has no specific goals to accomplish, allowing players a large amount of freedom in choosing how to play the game. However, there is an achievement system. Gameplay is in the first-person perspective by default, but players have the option for third-person perspective. The game world is composed of rough 3D objects—mainly cubes and fluids, and commonly called \"blocks\"—representing various materials, such as dirt, stone, ores, tree trunks, water, and lava. The core gameplay revolves around picking up and placing these objects. These blocks are arranged in a 3D grid, while players can move freely around the world. Players can \"mine\" blocks and then place them elsewhere, enabling them to build things.', 150, 'minecraft.jpg', 'Mine Craft Game', 3),
(4, 'P4', 'OverWatch', 'Overwatch is set sixty years into the future of a fictionalized Earth, thirty years after the resolution of the \"Omnic Crisis\". Prior to the Omnic Crisis, humanity had been in a golden age of prosperity and technology development. Humans developed robots with artificial intelligence called \"Omnics\", which were produced worldwide in automated \"omnium\" facilities and put to use to achieve economic equality, and began to be treated as people in their own right. The Omnic Crisis began when the omniums started producing a series of lethal, hostile robots, which turned against humankind. The United Nations quickly formed Overwatch, an international task force to combat the omnic threat and restore order.\r\n\r\nTwo veteran soldiers were put in charge of Overwatch: Gabriel Reyes and Jack Morrison. ', 200, 'overwatch.jpg', 'Game Game Game', 1),
(5, 'P5', 'PUBG', 'Battlegrounds is a player versus player action game in which up to one hundred players fight in a battle royale, a type of large-scale last man standing deathmatch where players fight to remain the last alive. Players can choose to enter the match solo, or with a small team of up to four people. In either case, the last person or team left alive wins the match.\r\nEach match starts with players parachuting from a plane onto a map area approximately 8 × 8 kilometres (5.0 × 5.0 mi) in size. The plane\'s flight path across the map varies with each round, requiring players to quickly determine the best time to eject and parachute to the ground. Players start with no gear beyond customized clothing selections which do not affect gameplay. Once they land, players can search buildings, ghost towns and other sites to find weapons, vehicles, armor, and other equipment.', 20, 'pubg.jpg', 'PUBG game', 1),
(6, 'P6', 'War Craft', 'World of Warcraft (WoW) is a massively multiplayer online role-playing game (MMORPG) released in 2004 by Blizzard Entertainment. It is the fourth released game set in the Warcraft fantasy universe.\r\n\r\nAs characters become more developed, they gain various talents and skills, requiring the player to further define the abilities of that character. Characters can choose two primary professions that can focus on producing items, such as tailoring, blacksmithing or jewelcrafting or on gathering from resource nodes, such as skinning or mining. Characters can learn all four secondary skills: archeology, cooking, fishing and first aid. Characters may form and join guilds, allowing characters within the guild access to the guild\'s chat channel, the guild name and optionally allowing other features, including a guild tabard, guild bank, guild repairs, and dues.', 160, 'warcraft.jpg', 'Warcraft', 2),
(7, 'P7', 'The Witcher', 'The stories are set on the Continent,[7] which was settled several thousand years earlier by elves from overseas. When they arrived, the elves encountered gnomes and dwarves. \r\nThere are three camera styles available in The Witcher: two top-down perspectives, where the mouse is used to control most functions, and an over-the-shoulder view, which brings the player closer to the in-game combat, but limits visibility. \r\n\r\nThe combat system in The Witcher represents a different gaming experience from most RPGs. Players can choose one of three fighting styles to use in different situations and against different foes. The fast style allows for faster, less-damaging attacks with a greater chance of hitting faster enemies; the strong style deals more damage in exchange for a slow attack speed, and a lower chance to hit faster enemies; and the group style features sweeping attacks best used if Geralt is surrounded.', 100, 'witcher.jpg', 'Witcher', 2),
(8, 'P8', 'Portal', 'Portal consists primarily of a series of puzzles that must be solved by teleporting the player\'s character and simple objects using \"the Aperture Science Handheld Portal Device\", a device that can create inter-spatial portals between two flat planes.\r\nIn Portal, the player controls the protagonist, Chell, from a first-person perspective as she is challenged to navigate through a series of rooms using the Aperture Science Handheld Portal Device, or portal gun, under the watchful supervision of the artificial intelligence GLaDOS. The portal gun can create two distinct portal ends, orange and blue. The portals create a visual and physical connection between two different locations in three-dimensional space. Neither end is specifically an entrance or exit; all objects that travel through one portal will exit through the other. An important aspect of the game\'s physics is momentum redirection.', 50, 'portal.jpg', 'Portal', 3),
(9, 'P9', 'Half Life', 'Half-Life is a first-person shooter that requires the player to perform combat tasks and puzzle solving to advance through the game. Unlike most of its peers at the time, Half-Life used scripted sequences, such as a Vortigaunt ramming down a door.\r\nThe game regularly integrates puzzles, such as navigating a maze of conveyor belts or using nearby boxes to build a small staircase to the next area the player must travel to. Some puzzles involve using the environment to kill an enemy, like turning on a steam valve to spray hot steam at their enemies. There are few \"bosses\" in the conventional sense, where the player defeats a superior opponent by direct confrontation. Instead, such organisms occasionally define chapters, and the player is generally expected to use the terrain, rather than firepower, to kill the \"boss\". ', 80, 'half-life.jpg', 'Half Life', 3),
(10, 'P10', 'Fallout', 'Fallout deviates from most role-playing video games in that it often allows the player to complete tasks in multiple ways, allowing solutions that are unconventional or contrary to the original task, in which case the player may still be rewarded.\r\nHaving foreseen this outcome decades earlier, the U.S. government began a nationwide project in 2054 to build fallout shelters known as \"Vaults\". The Vaults were ostensibly designed by the government contractor Vault-Tec as public shelters, financed by junk bonds and each able to support up to a thousand people.', 150, 'fallout.jpg', 'Fallout', 1),
(11, 'P11', 'Destiny', 'Destiny\'s style has been described as a first-person shooter that incorporates role-playing and MMO elements, but Bungie has avoided describing Destiny as a traditional MMO game. Instead, the game has been referred to as a \"shared-world shooter\".\r\nPlayers take on the role of a Guardian, protectors of Earth\'s last safe city as they wield a power called Light to protect the City from different alien races. Guardians are tasked with reviving a celestial being called the Traveler, while journeying to different planets to investigate and destroy the alien threats before humanity is completely wiped out. Bungie released four expansion packs, furthering the story, and adding new content, missions, and new PvP modes.', 200, 'destiny.jpg', 'Image', 2),
(12, 'P12', 'Gems Of War', 'From the creators of Puzzle Quest, play the new Puzzle/RPG/Strategy mash-up, GEMS OF WAR! Match gems to power your spells, and match skulls to smite your enemies! It’s easy to learn yet has tons of depth.\r\n', 100, 'gems.jpg', 'puzzle', 4),
(13, 'P13', 'Puzzle Master', 'Build jigsaw puzzles on your PC', 50, 'master.jpg', 'puzzle', 4),
(14, 'P14', 'Riddles of Egypt', 'A terrible Darkness awakens in Egypt! Can you unlock ancient puzzles and solve devious riddles to defeat this evil? Riddles of Egypt, a puzzle adventure game for PC, Mac, iOS and Android.', 50, 'Riddles.jpg', 'riddles', 4),
(15, 'P15', 'Rooms', 'Rooms: The Unsolvable Puzzle is a unique puzzle game inspired by sliding puzzles and platformer games. In a twisted mansion made of rooms that slide like sliding puzzle, player should find a way to the exit by moving rooms and using what\'s inside them.', 50, 'rooms.jpg', 'rooms', 4),
(16, 'P16', 'Forza 6', 'Forza Motorsport 6 features new gameplay elements, such as rain and night racing returned from first title. Also featured, is a new story mode called \"Stories of Motorsport\", which offers approximately 70 hours of gameplay.\r\nForza Motorsport 6 is a racing video game which allows the player to race many vehicles across different racing disciplines and courses. Vehicle handling is simulation-based, meaning that each vehicle behaves as closely to its real-world counterpart as possible. Courses are primarily digital representations of real tracks, with 22 tracks based on real locations, and four being fictional. Races consist of up to 24 vehicles competing, and weather elements such as rain can affect vehicle handling.', 250, 'forza.jpg', 'forza', 5),
(17, 'P17', 'Dirt 3', 'Dirt 3 (stylised as DiRT 3) is a racing video game developed and published by Codemasters[3] for Microsoft Windows, PlayStation 3 and Xbox 360. It is the eighth game in the Colin McRae Rally series.\r\nThe main mode sees players earn reputation points in various events to gain the interest of sponsors who provide them with new vehicles. Flashbacks return from Colin McRae: Dirt 2, which can be used up to five times in any difficulty, but cost reputation points to use. A new gymkhana mode puts players in obstacle courses, challenging them to perform various tricks to earn points. Featured in the game are various party modes, involving events such as smashing wooden targets (\"Invasion\"), spreading a zombie infection (\"Outbreak\"), and a capture the flag-like game mode (\"Transporter\"). ', 150, 'dirt.jpg', 'dirt3', 5),
(18, 'P18', 'Trackmania Turbo', 'TrackMania Turbo is a racing video game developed by Nadeo and published by Ubisoft. Announced at E3 2015, the title is the first TrackMania game that is to be released on consoles since 2009\'s TrackMania Wii. The game features support for virtual reality.\r\nVarious modes are set to appear in the game, including a campaign and a mode called Double Driver, which is a cooperative multiplayer mode, in which two players are controlling the same car. TrackMania Turbo will also have a split screen multiplayer mode for up to 4 players which makes it the first racing game with such gameplay for the consoles PlayStation 4 and Xbox One.', 150, 'trackmania.jpg', 'track', 5),
(19, 'P19', 'Need For Speed', 'Need for Speed has a redesigned \'Wrap Editor\', and body modifications return to the series after nearly five years. The game features real-life tuning companies including RAUH-Welt Begriff, SEIBON, and RTR Mustang.Although the games share the same name, their tone and focus can vary significantly. For example, in some games the cars can suffer mechanical and visual damage, while in other games the cars cannot be damaged at all; in some games, the software simulates real-car behavior (physics), while in others there are more forgiving physics.\r\n\r\nWith the release of Need for Speed: Underground, the series shifted from racing sports cars on scenic point-to-point tracks to an import/tuner subculture involving street racing in an urban setting. To date, this theme has remained prevalent in most of the following games.', 250, 'needforspeed.jpeg', 'needforspeed', 5),
(20, 'P20', 'XCOM 2', 'The game is set in 2035, 20 years after the events of XCOM: Enemy Unknown and its expansion, in a scenario in which humanity was defeated by aliens.\r\nXCOM 2 casts the player as the commander of the eponymous military organization, now reduced to a resistance force opposing the ongoing alien occupation of the planet. Players take control of the Avenger, the new mobile base for XCOM. Players are tasked to give commands to squad members in battles against aliens during missions, while commanding the engineering and research department of the base between missions to create and research improved and new gadgets, weapons and technologies to assist players in battle.', 100, 'xcom2.jpg', 'xcom2', 6),
(21, 'P21', 'Stellaris', 'Stellaris is a sci-fi grand strategy game set 200 years into the future. It is developed by Paradox Development Studio and published by Paradox Interactive.\r\nThe game begins either by picking one of the premade empires, using a random one determined by the game and only revealed when the game starts or by creating a species, picking its traits. The traits can include, for example, originating from a world ravaged by nuclear warfare, or starting with robots already researched. Optionally, if the player chose to start with a stronger, but less intelligent secondary species, they create it in a similar process as previously mentioned, albeit they are unable to change the traits of the aforementioned secondary species.', 180, 'Stellaris.jpg', 'stella', 6),
(22, 'P22', 'Civilization 6 ', 'Civilization VI is a turn-based strategy video game in which one or more players compete alongside computer-controlled AI opponents to grow their individual civilization from a small tribe to control of the entire planet across several periods of development.\r\nPast iterations of the game were found to be difficult to win if one chose to follow a Cultural victory route. To help balance the game towards Cultural victories, a new Civics tree has been introduced. The Civics tree brings in the cultural improvements that were previously part of the technology tree in earlier Civilization games, such as Drama and Philosophy, into a separate mechanic. Culture gained from cities is used to build on the Civics tree in the same manner Science from cities builds up the Technology tree.', 200, 'civilization6.jpg', 'civi', 6),
(23, 'P23', 'WarHammer', 'Total War: Warhammer is part of Creative Assembly\'s grand strategy Total War series. Set in the grim, high fantasy world of Warhammer Fantasy, Total War: Warhammer pits many unique races in a struggle for domination of the Old World.\r\nTotal War: Warhammer II takes the battle to new lands across the seas, where new races fight to enact rituals and control the Great Vortex. Total War: Warhammer II is a standalone game, fully playable on it\'s own. However, players who own the first game or DLC will find that it carries over and can be combined with the second game, for one epic experience in campaign and multiplayer.', 200, 'warhammer.jpg', 'war', 6),
(24, 'P24', 'Supreme Commander', 'Supreme Commander, like its spiritual predecessor, begins with the player solely possessing a single, irreplaceable construction unit called the \"Armored Command Unit,\" or ACU, the titular Supreme Commander.\r\nAll units and structures belong to one of four technology tiers, or \"Tech\" levels, each tier being stronger and/or more efficient than the previous. Certain lower-tier structures can be upgraded into higher ones without having to rebuild them. The first tier is available at the start of the game and consists of small, relatively weak units and structures. The second tier expands the player\'s abilities greatly, especially in terms of stationary weapons and shielding, and introduces upgraded versions of tier one units.', 200, 'supreme.jpg', 'supreme', 6),
(25, 'P25', 'Fifa 19', 'FIFA 19 is a football simulation video game developed by EA Vancouver and EA Bucharest, as part of Electronic Arts\' FIFA series.\r\nGameplay changes on FIFA 19 include the new \"Active Touch System\"— an overhaul of player control, \"timed finishing\"— where the kick button may be pressed a second time to determine the exact moment the ball is actually kicked, \"50/50 battles\"— a system for determining how likely a player will win loose balls, and \"Dynamic Tactics\"— which allows players to configure strategies, and switch between them in real-time during a match.', 250, 'fifa.jpg', 'fifa', 3),
(26, 'P26', 'PES 19', 'PES 2019 is a sports game that simulates football. PES 2019\'s Magic Moments feature is set to be the forefront of PES 2019\'s superior gameplay. Konami announced that the International Champions Cup before the season begins has been added.\r\nAdded a re-sell and clean sheet options so that strategy is needed not only on the pitch but also with club management. 11 new skill traits have been introduced that will help enhance player uniqueness, including edge turn, no look pass, control loop, dipping shot and rising shot. They also announced that player individuality has also been taken to the next level, where skills and strengths are more prominent in impact and motion during gameplay.\r\n\r\nFull body touch introduced last year has been further enhanced. How the ball is controlled depends more on the surrounding situation, allowing for smoother and contexual trapping of the ball.', 200, 'PES.jpg', 'PES', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Contact` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ConfirmPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Username`, `FirstName`, `LastName`, `Email`, `Gender`, `Address`, `DOB`, `Contact`, `Password`, `ConfirmPassword`) VALUES
(1, 'gtmaashish11', 'Aashish', 'Gautam', 'gtmaashish11@gmail.com', 'Male', '68A Power Street', '1999-12-01', 1312312312, 'asdf', 'asdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
