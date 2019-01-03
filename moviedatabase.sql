-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2018 at 04:54 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `moviedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `genre` varchar(200) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `overview` varchar(500) DEFAULT NULL,
  `poster` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `runtime` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `genre`, `link`, `overview`, `poster`, `year`, `runtime`) VALUES
(2, 'Pirates of the Caribbean: At World\'s End ', 'Action|Adventure|Fantasy', 'http://www.imdb.com/title/tt0449088/?ref_=fn_tt_tt_1', 'Captain Barbossa, long believed to be dead, has come back to life and is headed to the edge of the Earth with Will Turner and Elizabeth Swann. But nothing is quite as it seems.', '/bXb00CkHqx7TPchTGG131sWV59y.jpg', '2007', '110'),
(3, 'Batman v Superman: Dawn of Justice ', 'Action|Adventure|Sci-Fi', 'http://www.imdb.com/title/tt2975590/?ref_=fn_tt_tt_1', 'Fearing the actions of a god-like Super Hero left unchecked, Gotham City’s own formidable, forceful vigilante takes on Metropolis’s most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it’s ever known before.', '/cGOPbv9wA5gEejkUN892JrveARt.jpg', '2016', '125'),
(4, 'The Fast and the Furious ', 'Action|Crime|Thriller', 'http://www.imdb.com/title/tt0232500/?ref_=fn_tt_tt_1', 'Domenic Toretto is a Los Angeles street racer suspected of masterminding a series of big-rig hijackings. When undercover cop Brian O\\\'Conner infiltrates Toretto\\\'s iconoclastic crew, he falls for Toretto\\\'s sister and must choose a side: the gang or the LAPD.', '/x4So4OkqnjfOSBCCNd5uosMmQiB.jpg', '2001', '130'),
(5, 'Hannibal Rising ', 'Crime|Drama|Thriller', 'http://www.imdb.com/title/tt0367959/?ref_=fn_tt_tt_1', 'The story of the early, murderous roots of the cannibalistic killer, Hannibal Lecter – from his hard-scrabble Lithuanian childhood, where he witnesses the repulsive lengths to which hungry soldiers will go to satiate themselves, through his sojourn in France, where as a med student he hones his appetite for the kill.', '/k1QRG9qZzuuJe4JTTpe4jlnQ5tt.jpg', '2007', '125'),
(6, 'The Story of Us ', 'Comedy|Drama|Romance', 'http://www.imdb.com/title/tt0160916/?ref_=fn_tt_tt_1', 'Every year the citizens of Fura City celebrate a Wind Festival. Where people live together with the wind. Long Ago, on the final day of the festival the Legendary Pokemon Lugia and bestow the blessings of the wind upon the people. This Film Focuses on Everyone\\\'s Story. from Lisa, a high school girl who is just starting out as a Pokemon trainer, to Karachi, a guy who can\\\'t stop lying to Torito', '/cDOzFNpRr4Jp35Ihaou7xzRVYS1.jpg', '1999', '120'),
(7, 'The Host ', 'Action|Adventure|Romance|Sci-Fi|Thriller', 'http://www.imdb.com/title/tt1517260/?ref_=fn_tt_tt_1', 'A parasitic alien soul is injected into the body of Melanie Stryder. Instead of carrying out her race\\\'s mission of taking over the Earth, \"Wanda\" (as she comes to be called) forms a bond with her host and sets out to aid other free humans.', '/jnPOLAPQLhqMeDLV2BsQfrd6R11.jpg', '2013', '110'),
(8, 'Basic ', 'Action|Crime|Drama|Mystery|Thriller', 'http://www.imdb.com/title/tt0264395/?ref_=fn_tt_tt_1', 'A DEA agent investigates the disappearance of a legendary Army ranger drill sergeant and several of his cadets during a training exercise gone severely awry.', '/9Q2SBtfA3pceh5rjB8CfQImY78H.jpg', '2003', '143'),
(10, 'The International ', 'Action|Crime|Drama|Mystery|Thriller', 'http://www.imdb.com/title/tt0963178/?ref_=fn_tt_tt_1', 'An interpol agent and an attorney are determined to bring one of the world\\\'s most powerful banks to justice. Uncovering money laundering, arms trading, and conspiracy to destabilize world governments, their investigation takes them from Berlin, Milan, New York and Istanbul. Finding themselves in a chase across the globe, their relentless tenacity puts their own lives at risk.', '/xwH65cbBMAoZ01kcRpQw2dCRsw0.jpg', '2009', '145'),
(11, 'Escape from L.A. ', 'Action|Adventure|Sci-Fi|Thriller', 'http://www.imdb.com/title/tt0116225/?ref_=fn_tt_tt_1', 'This time, a cataclysmic temblor hits Los Angeles, turning it into an island. The president views the quake as a sign from above, expels Los Angeles from the country and makes it a penal colony for those found guilty of moral crimes. When his daughter, part of a resistance movement, steals the control unit for a doomsday weapon, Snake again gets tapped to save the day.', '/kyps85aHua0TLbfLC9U1hfxlH4K.jpg', '1996', '150'),
(12, 'Twisted ', 'Drama|Mystery|Thriller', 'http://www.imdb.com/title/tt2355844/?ref_=fn_tt_tt_1', 'Recently promoted and transferred to the homicide division, Inspector Jessica Shepard feels pressure to prove herself -- and what better way than by solving San Francisco\\\'s latest murder? However, as Shepard and her partner, Mike Delmarco, soon discover, the victim shared a romantic connection to her. As more of Shepard\\\'s ex-lovers turn up dead, her mind starts to become unstable, and she begins to wonder if she could be the very killer she\\\'s trying to track down.', '/yw9yXOPNbCfGf7V4tg3AASjAPPN.jpg', '2004', '120'),
(13, 'The Iron Giant ', 'Action|Sci-Fi', 'http://www.imdb.com/title/tt0129167/?ref_=fn_tt_tt_1', 'In the small town of Rockwell, Maine in October 1957, a giant metal machine befriends a nine-year-old boy and ultimately finds its humanity by unselfishly saving people from their own fears and prejudices.', '/rdN6IjV4xlDDhrT8ewkkJfPvp2e.jpg', '1999', '110'),
(14, 'The Life Aquatic with Steve Zissou ', 'Adventure|Comedy|Drama', 'http://www.imdb.com/title/tt0362270/?ref_=fn_tt_tt_1', 'Renowned oceanographer Steve Zissou has sworn vengeance upon the rare shark that devoured a member of his crew. In addition to his regular team, he is joined on his boat by Ned, a man who believes Zissou to be his father, and Jane, a journalist pregnant by a married man. They travel the sea, all too often running into pirates and, perhaps more traumatically, various figures from Zissou\\\'s past, including his estranged wife, Eleanor.', '/kKwNRePEqTfC6DnNlJzz1yX44iR.jpg', '2004', '110'),
(15, 'The Curious Case of Benjamin Button ', 'Drama|Fantasy|Romance', 'http://www.imdb.com/title/tt0421715/?ref_=fn_tt_tt_1', 'Tells the story of Benjamin Button, a man who starts aging backwards with bizarre consequences.', '/gjMR102u5hPdIAWX7O2rim8ZWgA.jpg', '2008', '120'),
(16, 'Free State of Jones ', 'Action|Biography|Drama|History|War', 'http://www.imdb.com/title/tt1124037/?ref_=fn_tt_tt_1', 'In 1863, Mississippi farmer Newt Knight serves as a medic for the Confederate Army. Opposed to slavery, Knight would rather help the wounded than fight the Union. After his nephew dies in battle, Newt returns home to Jones County to safeguard his family but is soon branded an outlaw deserter. Forced to flee, he finds refuge with a group of runaway slaves hiding out in the swamps. Forging an alliance with the slaves and other farmers, Knight leads a rebellion that would forever change history', '/tQcwB5nXpN4vH5ewP79tyXJcA1I.jpg', '2016', '123'),
(17, 'The Life of David Gale ', 'Crime|Drama|Thriller', 'http://www.imdb.com/title/tt0289992/?ref_=fn_tt_tt_1', 'A man against capital punishment is accused of murdering a fellow activist and is sent to death row.', '/pwwDzbmTErcUFUPCV2fGSlHm4WP.jpg', '2003', '144'),
(18, 'Man of the House ', 'Action|Comedy', 'http://www.imdb.com/title/tt0331933/?ref_=fn_tt_tt_1', 'Texas Ranger Roland Sharp is assigned to protect the only witnesses to the murder of a key figure in the prosecution of a drug kingpin -- a group of University of Texas cheerleaders. Sharp must now go undercover as an assistant cheerleading coach and move in with the young women.', '/dYdSEfhfJY3OmFkdYT1cwiOmfbh.jpg', '2005', '130'),
(19, 'Run All Night ', 'Action|Crime|Drama|Thriller', 'http://www.imdb.com/title/tt2199571/?ref_=fn_tt_tt_1', 'Brooklyn mobster and prolific hit man Jimmy Conlon has seen better days. Longtime best friend of a mob boss, Jimmy is haunted by the sins of his past—as well as a dogged police detective', '/aqNJrAxudMRNo8jg3HOUQqdl2xr.jpg', '2015', '125'),
(51, 'Up ', 'Adventure|Animation', 'http://www.imdb.com/title/tt1049413/?ref_=fn_tt_tt_1', 'Carl Fredricksen spent his entire life dreaming of exploring the globe and experiencing life to its fullest. But at age 78, life seems to have passed him by, until a twist of fate (and a persistent 8-year old Wilderness Explorer named Russell) gives him a new lease on life.', '/nk11pvocdb5zbFhX5oq5YiLPYMo.jpg', '2009', '144'),
(47, 'Saving Private Ryan ', 'Action|War', 'http://www.imdb.com/title/tt0120815/?ref_=fn_tt_tt_1', 'As U.S. troops storm the beaches of Normandy, three brothers lie dead on the battlefield, with a fourth trapped behind enemy lines. Ranger captain John Miller and seven men are tasked with penetrating German-held territory and bringing the boy home.', '/miDoEMlYDJhOCvxlzI0wZqBs9Yt.jpg', '1998', '144'),
(44, 'Apollo 13 ', 'Adventure|Drama|History', 'http://www.imdb.com/title/tt0112384/?ref_=fn_tt_tt_1', 'The true story of technical troubles that scuttle the Apollo 13 lunar mission in 1971, risking the lives of astronaut Jim Lovell and his crew, with the failed journey turning into a thrilling saga of heroism. Drifting more than 200,000 miles from Earth, the astronauts work furiously with the ground crew to avert tragedy.', '/7ksHQG9qbEyPBBTAe8NfJVAipmJ.jpg', '1995', '144'),
(46, 'Ice Age ', 'Adventure|Animation', 'http://www.imdb.com/title/tt0268380/?ref_=fn_tt_tt_1', 'With the impending ice age almost upon them, a mismatched trio of prehistoric critters – Manny the woolly mammoth, Diego the saber-toothed tiger and Sid the giant sloth – find an orphaned infant and decide to return it to its human parents. Along the way, the unlikely allies become friends but, when enemies attack, their quest takes on far nobler aims.', '/zpaQwR0YViPd83bx1e559QyZ35i.jpg', '2002', '144'),
(56, 'Spider-Man ', 'Action|Adventure', 'http://www.imdb.com/title/tt0145487/?ref_=fn_tt_tt_1', 'Miles Morales is juggling his life between being a high school student and being Spider-Man. However, when Wilson \"Kingpin\" Fisk uses a super collider, another Spider-Man from another dimension, Peter Parker, accidentally winds up in Miles dimension. As Peter trains Miles to become a better Spider-Man, they are soon joined by four other Spider-Men from across the \"Spider-Verse\".', '/laMM4lpQSh5z6KIBPwWogkjzBVQ.jpg', '2018', '144'),
(55, 'Fury ', 'Action|Drama|War', 'http://www.imdb.com/title/tt2713180/?ref_=fn_tt_tt_1', 'Last months of World War II in April 1945. As the Allies make their final push in the European Theater, a battle-hardened U.S. Army sergeant in the 2nd Armored Division named Wardaddy commands a Sherman tank called \"Fury\" and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.', '/pfte7wdMobMF4CVHuOxyu6oqeeA.jpg', '2014', '144'),
(54, 'Jaws ', 'Adventure|Drama', 'http://www.imdb.com/title/tt0073195/?ref_=fn_tt_tt_1', 'An insatiable great white shark terrorizes the townspeople of Amity Island, The police chief, an oceanographer and a grizzled shark hunter seek to destroy the bloodthirsty beast.', '/l1yltvzILaZcx2jYvc5sEMkM7Eh.jpg', '1975', '144'),
(52, 'Deadpool ', 'Action|Adventure', 'http://www.imdb.com/title/tt1431045/?ref_=fn_tt_tt_1', 'Deadpool tells the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.', '/inVq3FRqcYIRl2la8iZikYYxFNR.jpg', '2016', '144'),
(45, 'Captain America: The Winter Soldier ', 'Action|Adventure|Sci-Fi', 'http://www.imdb.com/title/tt1843866/?ref_=fn_tt_tt_1', 'After the cataclysmic events in New York with The Avengers, Steve Rogers, aka Captain America is living quietly in Washington, D.C. and trying to adjust to the modern world. Captain America and the Black Widow enlist the help of a new ally, the Falcon. However, they soon find themselves up against an unexpected and formidable enemy—the Winter Soldier.', '/5TQ6YDmymBpnF005OyoB7ohZps9.jpg', '2014', '144'),
(57, 'Kill Bill: Vol. 1 ', 'Action', 'http://www.imdb.com/title/tt0266697/?ref_=fn_tt_tt_1', 'An assassin is shot by her ruthless employer, Bill, and other members of their assassination circle – but she lives to plot her vengeance.', '/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg', '2003', '144'),
(49, 'What Women Want ', 'Comedy|Fantasy|Romance\'', 'http://www.imdb.com/title/tt0207201/?ref_=fn_tt_tt_1', 'Advertising executive Nick Marshall is as cocky as they come, but what happens to a chauvinistic guy when he can suddenly hear what women are thinking? Nick gets passed over for a promotion, but after an accident enables him to hear womens thoughts, he puts his newfound talent to work against Darcy, his new boss, who seems to be infatuated with him.', '/xiL4PMdL2b5RRdsfEkGmaol2ScW.jpg', '2000', '144');


-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `movieid` int(30) NOT NULL,
  `userid` int(30) NOT NULL,
  `rate` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`movieid`, `userid`, `rate`) VALUES
(12, 1, 8.5),
(15, 1, 3.5),
(14, 1, 6.5),
(2, 1, 6),
(4, 1, 7),
(7, 1, 7.5),
(3, 1, 9),
(12, 2, 8),
(18, 1, 9),
(16, 1, 8.5),
(6, 1, 9),
(13, 1, 9),
(5, 1, 8.5);

-- --------------------------------------------------------


--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'muhammedcy@gmail.com', 'sha256$7mp9F6DF$84d758b48ef57eaca17bd96a3deeb8e767ea60b165952c68adbb379e9d5123a6'),
(2, 'muhammed3@gg.com', 'sha256$L8aqI6C1$53448f33ad2f8315eef6b0dddeb93a281461e52823c709eadd9af3e80c1bdc66'),
(3, 'muhammdsfedcy@gmail.com', 'sha256$L38nIqXW$cdff75a3484be8c3e9c4260e7e06f9a9f1cdb32c37693240e420b49f19ef940b'),
(7, 'muhammedcy6@gmail.com', 'sha256$UxINKmV1$6e315e19ede7a5bd3022916202ba535153fa01eea5626220da756f90c185593e');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`movieid`,`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
