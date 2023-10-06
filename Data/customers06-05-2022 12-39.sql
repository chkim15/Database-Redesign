#
# TABLE STRUCTURE FOR: customers
#

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (1, 'corporis', '985 Dorothea Ranch', 'West Demarcus', 'Bahrain', '709-287-8846x06055', 'rolando90@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (2, 'alias', '3627 Pfannerstill Station Apt. 678', 'North Lavernborough', 'Indonesia', '(893)066-9270x81153', 'nolan.name@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (3, 'quod', '46398 Eulalia Hollow', 'Altenwerthbury', 'Aruba', '(120)916-9240x8425', 'carrie.cremin@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (4, 'officiis', '855 Kamron Parks', 'Kianburgh', 'Kiribati', '020-266-1098x286', 'sharvey@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (5, 'tempore', '0019 Pouros Branch Suite 336', 'Deckowland', 'Montenegro', '07356618283', 'gquigley@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (6, 'libero', '5424 Alden Mission Suite 360', 'Murrayshire', 'Dominican Republic', '968-041-8470x5379', 'bertram11@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (7, 'soluta', '782 Clara Road', 'Stokesland', 'Nigeria', '(742)162-3870x6801', 'sandrine.gutmann@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (8, 'adipisci', '8204 Boyle Crossing', 'Shieldsburgh', 'Solomon Islands', '09306860093', 'hoyt92@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (9, 'dolor', '390 Alexandrea Ways', 'Onafurt', 'Faroe Islands', '214-610-0997', 'albin03@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (10, 'deserunt', '47316 Adolphus Light Apt. 325', 'South Lowellshire', 'Barbados', '722.739.2950x222', 'o\'hara.claudia@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (11, 'in', '1561 Hyatt Landing', 'East Austinview', 'Antigua and Barbuda', '457-179-8561', 'lindgren.schuyler@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (12, 'quisquam', '0248 Jacobi Shoal', 'Otiliaview', 'Liechtenstein', '988-798-2215x53224', 'judson76@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (13, 'aut', '785 Simonis Greens Apt. 433', 'Greenholtfort', 'Belarus', '(605)037-4493', 'eichmann.emmy@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (14, 'velit', '45239 Runte Oval', 'Jettside', 'Saint Kitts and Nevis', '1-057-480-4835', 'jayde12@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (15, 'enim', '216 Kutch Street Apt. 606', 'North Moseshaven', 'Togo', '+18(0)6643001085', 'katherine.kunze@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (16, 'est', '378 Bernhard Lodge', 'South Cliftonton', 'Kiribati', '673.181.8180x6294', 'marc.roob@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (17, 'incidunt', '61175 Shanel Run Apt. 446', 'East Irwin', 'Taiwan', '1-420-685-3758x57392', 'bahringer.leatha@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (18, 'voluptatem', '086 Mae Park Apt. 454', 'Fritschtown', 'Ghana', '1-646-677-5688x7428', 'nfarrell@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (19, 'numquam', '58212 Scot Canyon Suite 914', 'Sonyaview', 'Uganda', '1-485-799-8353x40896', 'mcglynn.fletcher@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (20, 'recusandae', '8415 Scot Radial Apt. 914', 'East Irma', 'Benin', '1-091-428-9932x6400', 'bkessler@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (21, 'dicta', '4976 Anthony Burg Apt. 503', 'Rosarioburgh', 'Ethiopia', '626-958-8886x713', 'okoepp@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (22, 'eaque', '291 Callie Courts Suite 785', 'Joycebury', 'Philippines', '104-137-9701x9288', 'macejkovic.paige@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (23, 'quis', '101 Corwin Cliff', 'Port Aldabury', 'Lebanon', '+13(0)0191124607', 'xwalsh@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (24, 'laudantium', '77692 Bartoletti Inlet', 'South Nat', 'Syrian Arab Republic', '719.579.0981', 'croberts@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (25, 'et', '8277 Steuber Garden Apt. 605', 'Melynatown', 'Mauritania', '05326999980', 'emmett29@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (26, 'voluptate', '89963 Wallace Pass Apt. 500', 'New Enoschester', 'Chad', '1-978-517-5047', 'leslie.roob@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (27, 'sed', '6516 Champlin Mount', 'Grimeschester', 'Bahrain', '905.691.9691x25436', 'mharber@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (28, 'dolorum', '249 Alivia Parkways Suite 958', 'Albachester', 'Madagascar', '320-470-4107x52828', 'bernie78@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (29, 'labore', '809 Sipes Causeway', 'Romagueraberg', 'Afghanistan', '(392)508-4819', 'roslyn85@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (30, 'id', '416 Tyree Mountain', 'East Lynn', 'Senegal', '616.920.3745x87797', 'ckessler@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (31, 'reiciendis', '8453 Martin Rue', 'West Dennis', 'Guernsey', '+18(3)8969469120', 'maximus05@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (32, 'quo', '35154 Douglas Pike Apt. 840', 'South Blaisestad', 'Switzerland', '(913)156-0467', 'crooks.cyril@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (33, 'totam', '7621 Sophie Ports Apt. 096', 'Handstad', 'Bhutan', '278.639.5931x887', 'delores27@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (34, 'accusamus', '555 Karl Turnpike Apt. 149', 'North Adolph', 'Liberia', '847.237.1632', 'zhahn@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (35, 'architecto', '59047 Altenwerth Camp Suite 622', 'South Katrina', 'New Zealand', '837-944-7647', 'jsauer@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (36, 'ad', '466 Kulas Flat Suite 510', 'Valentinside', 'Pitcairn Islands', '02192565914', 'gregg.christiansen@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (37, 'praesentium', '81274 Reinger Isle', 'Hillsfort', 'Iran', '(416)288-7178', 'eichmann.maryam@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (38, 'neque', '449 Kessler Island Apt. 157', 'Hughfurt', 'Paraguay', '+72(5)0494827402', 'luther80@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (39, 'iure', '2747 Klein Mission', 'Kertzmannmouth', 'Cook Islands', '01229082468', 'dklein@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (40, 'ullam', '40664 Bednar Loaf Suite 342', 'New Trevamouth', 'Somalia', '106-287-6719', 'fahey.freddy@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (41, 'a', '19508 Mohr Hills', 'Hollyfort', 'Cuba', '1-885-629-2146x341', 'nward@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (42, 'nihil', '30818 Schinner Tunnel', 'Emeraldborough', 'Mauritius', '(998)719-3883x261', 'antone64@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (43, 'earum', '4768 Schiller Lakes', 'East Levishire', 'Burundi', '484-222-3915x30618', 'awillms@gmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (44, 'expedita', '77541 Deborah Circle Apt. 355', 'Tadburgh', 'Samoa', '104.132.4737x3777', 'rex.schroeder@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (45, 'vel', '94059 Schroeder Station', 'Kayliberg', 'Saudi Arabia', '017-770-4071', 'bartoletti.keara@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (46, 'mollitia', '9819 Ardella Plains', 'Port Olinville', 'Lesotho', '(925)170-5729x983', 'rogelio75@hotmail.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (47, 'culpa', '291 Sawayn Square', 'East Garth', 'Tajikistan', '324-947-0743x785', 'pnicolas@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (48, 'qui', '0623 Kane Lane Suite 731', 'North Mohamed', 'Korea', '1-034-850-7438x496', 'cwilderman@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (49, 'aperiam', '931 Erdman Inlet', 'Port Gersonfurt', 'Christmas Island', '164.347.1799x0902', 'stark.allie@yahoo.com');
INSERT INTO `customers` (`customer_id`, `name`, `address`, `city`, `country`, `phone`, `email`) VALUES (50, 'inventore', '991 Fahey Estate Apt. 284', 'East Shannaborough', 'Falkland Islands (Malvinas)', '165-462-4906x694', 'emiliano83@hotmail.com');


