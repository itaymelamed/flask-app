use content_enrichment_development;

CREATE TABLE `embeds` (
  `id` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `property` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `embed_type` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `state` varchar(25) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `author_username` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `teams` (
  `id` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sport` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `league` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `division` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `short_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `logo_url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Seed Embeds Data
INSERT INTO `embeds` (`id`, `property`, `embed_type`, `state`, `created_at`, `updated_at`, `author_name`, `author_username`, `data`)
VALUES
	('01eqe1cg5v4v8dx', '144', 'StoryLink', 'published', '2020-11-18 16:00:47', '2020-11-18 16:00:47', 'Jane Doe', 'janedoe1', '{\"callToAction\":\"Must Read\",\"text\":\"Next: The Chiefs have plenty of help returning soon\",\"theme\":\"dark\",\"url\":\"https://arrowheadaddict.com/2020/10/27/returning-kc-chiefs-players-impact-down-stretch/\"}'),
	('01eqe1p5zawqx1r', '144', 'Score', 'published', '2020-11-18 16:06:04', '2020-11-18 16:06:04', 'Jane Doe', 'janedoe1', '{\"awayScore\":\"28\",\"awayTeam\":{\"division\":\"AL East\",\"id\":\"14\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/boston-red-sox-nZGNH1H5n.png\",\"name\":\"Boston Red Sox\",\"shortName\":\"Red Sox\",\"sport\":\"Baseball\"},\"awayTeamId\":\"14\",\"homeScore\":\"22\",\"homeTeam\":{\"division\":\"AL Central\",\"id\":\"5\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/cleveland-indians-9C8M5SCrqz.png\",\"name\":\"Cleveland Indians\",\"shortName\":\"Indians\",\"sport\":\"Baseball\"},\"homeTeamId\":\"5\",\"scoreType\":\"Final\"}'),
	('01eqe1vzbxcaw81', '144', 'Matchup', 'published', '2020-11-18 16:09:14', '2020-11-18 16:09:14', 'Jane Doe', 'janedoe1', '{\"awayRecord\":\"6-2\",\"awayTeam\":{\"division\":\"AL East\",\"id\":\"14\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/boston-red-sox-nZGNH1H5n.png\",\"name\":\"Boston Red Sox\",\"shortName\":\"Red Sox\",\"sport\":\"Baseball\"},\"awayTeamId\":\"14\",\"channel\":\"Fox Sports\",\"date\":\"Sunday, Sept 27, 1 PM ET\",\"homeRecord\":\"4-4\",\"homeTeam\":{\"division\":\"AL Central\",\"id\":\"5\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/cleveland-indians-9C8M5SCrqz.png\",\"name\":\"Cleveland Indians\",\"shortName\":\"Indians\",\"sport\":\"Baseball\"},\"homeTeamId\":\"5\",\"odds\":\"Vikings -4.5\"}'),
	('01eqe2294x1jyzw', '144', 'Rank', 'published', '2020-11-18 16:12:41', '2020-11-18 16:12:41', 'Jane Doe', 'janedoe1', '{\"innerContent\":\"Kelce had a far more positive impact on the game than a negative one. He led all receivers with eight catches, totaling 108 yards and a touchdown.\",\"linkLabelA\":\"Read More\",\"linkLabelB\":\"Read More\",\"linkUrlA\":\"https://fansided.com/2020/10/11/travis-kelce-takes-blame-chiefs-loss-raiders-passionate-tweet/\",\"linkUrlB\":\"https://fansided.com/2020/10/11/travis-kelce-takes-blame-chiefs-loss-raiders-passionate-tweet/\",\"metaA\":\"Offensive Lineman\",\"metaB\":\"Kansas City Chiefs\",\"name\":\"Creed Humphrey\",\"rank\":\"27\",\"team\":{\"division\":\"AL Central\",\"id\":\"5\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/cleveland-indians-9C8M5SCrqz.png\",\"name\":\"Cleveland Indians\",\"shortName\":\"Indians\",\"sport\":\"Baseball\"},\"teamId\":\"5\"}'),
	('01eqe27d44aj87m', '144', 'Grade', 'published', '2020-11-18 16:15:28', '2020-11-18 16:15:28', 'Jane Doe', 'janedoe1', '{\"grade\":\"B+\",\"innerContent\":\"Kelce had a far more positive impact on the game than a negative one. He led all receivers with eight catches, totaling 108 yards and a touchdown.\",\"metaA\":\"Charmed\",\"metaB\":\"Season 1, Episode 6\",\"metaC\":\"Alyssa Milano\",\"name\":\"Pilot\"}'),
	('01eqe2bvgnrkr8j', '144', 'Trade', 'published', '2020-11-18 16:17:54', '2020-11-18 16:17:54', 'Jane Doe', 'janedoe1', '{\"teamGets\":[[\"Kyle Wright\",\"Kyle Wright\",\"Kyle Wright\",\"Kyle Wright\"],[\"Zac Gallen\",\"Zac Gallen\",\"Zac Gallen\",\"Zac Gallen\"],[\"Walker Buehler\",\"Walker Buehler\",\"Walker Buehler\",\"Walker Buehler\"]],\"teamIds\":[\"5\",\"12\",\"8\"],\"teams\":[{\"division\":\"AL Central\",\"id\":\"5\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/cleveland-indians-9C8M5SCrqz.png\",\"name\":\"Cleveland Indians\",\"shortName\":\"Indians\",\"sport\":\"Baseball\"},{\"division\":\"NHL Atlantic\",\"id\":\"12\",\"league\":\"NHL\",\"logoUrl\":\"https://example.com/buffalo-sabres-YpHcw-MFj.png\",\"name\":\"Buffalo Sabres\",\"shortName\":\"Sabres\",\"sport\":\"Ice Hockey\"},{\"division\":\"NL West\",\"id\":\"8\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/arizona-diamondbacks-QlNXN4YFe.png\",\"name\":\"Arizona Diamondbacks\",\"shortName\":\"Diamondbacks\",\"sport\":\"Baseball\"}]}'),
	('01eqe2dqksec4m9', '144', 'Trade', 'draft', '2020-11-18 16:18:56', '2020-11-18 16:18:56', 'Jane Doe', 'janedoe1', '{\"teamGets\":[[\"Kyle Wright\",\"Kyle Wright\",\"Kyle Wright\",\"Kyle Wright\"],[\"Zac Gallen\",\"Zac Gallen\",\"Zac Gallen\",\"Zac Gallen\"],[\"Walker Buehler\",\"Walker Buehler\",\"Walker Buehler\",\"Walker Buehler\"]],\"teamIds\":[\"5\",\"12\",\"8\"],\"teams\":[{\"division\":\"AL Central\",\"id\":\"5\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/cleveland-indians-9C8M5SCrqz.png\",\"name\":\"Cleveland Indians\",\"shortName\":\"Indians\",\"sport\":\"Baseball\"},{\"division\":\"NHL Atlantic\",\"id\":\"12\",\"league\":\"NHL\",\"logoUrl\":\"https://example.com/buffalo-sabres-YpHcw-MFj.png\",\"name\":\"Buffalo Sabres\",\"shortName\":\"Sabres\",\"sport\":\"Ice Hockey\"},{\"division\":\"NL West\",\"id\":\"8\",\"league\":\"MLB\",\"logoUrl\":\"https://example.com/arizona-diamondbacks-QlNXN4YFe.png\",\"name\":\"Arizona Diamondbacks\",\"shortName\":\"Diamondbacks\",\"sport\":\"Baseball\"}]}');