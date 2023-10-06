#
# TABLE STRUCTURE FOR: items
#

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `hs_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (1, 'Plain Dyed', 'alias', 54, 206, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (2, ' Printed', 'reiciendis', 54, 292, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (3, ' Printed', 'ut', 58, 362, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (4, ' Printed', 'voluptatem', 60, 67, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (5, 'Plain Dyed', 'dolorum', 56, 243, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (6, ' Printed', 'cupiditate', 58, 186, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (7, 'Plain Dyed', 'facilis', 56, 327, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (8, ' Printed', 'perspiciatis', 56, 209, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (9, 'Plain Dyed', 'est', 44, 68, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (10, ' Printed', 'quam', 60, 356, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (11, ' Printed', 'a', 54, 132, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (12, 'Plain Dyed', 'suscipit', 60, 314, 540521);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (13, 'Plain Dyed', 'consequatur', 60, 88, 540521);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (14, 'Plain Dyed', 'nemo', 60, 331, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (15, 'Plain Dyed', 'qui', 54, 198, 580133);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (16, ' Printed', 'ipsum', 60, 84, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (17, ' Printed', 'quo', 56, 226, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (18, ' Printed', 'ex', 56, 307, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (19, ' Printed', 'quod', 56, 294, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (20, ' Printed', 'iusto', 54, 50, 580133);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (21, ' Printed', 'laborum', 58, 226, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (22, ' Printed', 'quidem', 58, 58, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (23, 'Plain Dyed', 'consequuntur', 44, 79, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (24, 'Plain Dyed', 'sunt', 60, 191, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (25, ' Printed', 'temporibus', 58, 282, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (26, 'Plain Dyed', 'aut', 56, 110, 540521);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (27, 'Plain Dyed', 'minus', 60, 223, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (28, 'Plain Dyed', 'voluptas', 54, 359, 580133);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (29, ' Printed', 'officiis', 44, 125, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (30, 'Plain Dyed', 'et', 54, 273, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (31, ' Printed', 'nulla', 60, 226, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (32, 'Plain Dyed', 'hic', 58, 242, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (33, ' Printed', 'dolorem', 54, 169, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (34, ' Printed', 'similique', 56, 65, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (35, 'Plain Dyed', 'nihil', 60, 125, 580133);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (36, ' Printed', 'itaque', 54, 79, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (37, 'Plain Dyed', 'harum', 54, 379, 540521);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (38, 'Plain Dyed', 'eum', 58, 70, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (39, 'Plain Dyed', 'vel', 44, 181, 540521);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (40, 'Plain Dyed', 'amet', 60, 391, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (41, ' Printed', 'perferendis', 56, 388, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (42, 'Plain Dyed', 'incidunt', 58, 342, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (43, 'Plain Dyed', 'quibusdam', 56, 129, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (44, 'Plain Dyed', 'dolores', 60, 88, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (45, ' Printed', 'velit', 56, 121, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (46, ' Printed', 'beatae', 58, 258, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (47, 'Plain Dyed', 'repellendus', 56, 113, 580133);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (48, ' Printed', 'dignissimos', 56, 399, 540521);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (49, ' Printed', 'asperiores', 56, 343, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (50, 'Plain Dyed', 'delectus', 58, 266, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (51, 'Plain Dyed', 'illo', 54, 102, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (52, ' Printed', 'natus', 58, 326, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (53, 'Plain Dyed', 'placeat', 58, 88, 604321);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (54, 'Plain Dyed', 'excepturi', 54, 248, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (55, 'Plain Dyed', 'deserunt', 44, 142, 540769);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (56, 'Plain Dyed', 'debitis', 58, 268, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (57, 'Plain Dyed', 'ducimus', 60, 199, 600142);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (58, ' Printed', 'illum', 56, 341, 540752);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (59, 'Plain Dyed', 'voluptate', 44, 145, 600192);
INSERT INTO `items` (`item_id`, `type`, `name`, `width`, `weight`, `hs_code`) VALUES (60, ' Printed', 'corrupti', 60, 259, 540521);


