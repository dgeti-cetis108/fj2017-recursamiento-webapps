-- modelo de usuarios

create schema recursamiento;
use recursamiento;

/* tabla usuarios: users
 *
 * nombre completo de persona:
 *  firstname vc50 nn 
 *  lastname vc50 nn
 * telefono: phone vc30 nn df'Sin teléfono'
 * correo electronico: email vc200 nn
 * contraseña: passwd vc300 nn
 * nombre de usuario: name vc16 nn
 * edad: age int nn
 * genero: gender en'M','F' nn
 * nacionalidad: country_id int nn
 * identificador: id int pk ai
 *
 */
 create table users (
    id int auto_increment,
    name varchar(16) not null,
    passwd varchar(300) not null,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    age int not null,
    gender enum('M','F') not null,
    email varchar(200) not null,
    phone varchar(30) not null default 'Sin Teléfono',
    country_id int not null,
    primary key (id)
 ) engine=InnoDB charset=utf8;


CREATE TABLE `countries` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`iso` char(2) DEFAULT NULL,
`name` varchar(80) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

alter table users
    add constraint fk_users_country_id
        foreign key (country_id)
        references countries (id)
            on delete restrict
            on update cascade;
 
INSERT INTO `countries` VALUES(1, 'AF', 'Afganistán');
INSERT INTO `countries` VALUES(2, 'AX', 'Islas Gland');
INSERT INTO `countries` VALUES(3, 'AL', 'Albania');
INSERT INTO `countries` VALUES(4, 'DE', 'Alemania');
INSERT INTO `countries` VALUES(5, 'AD', 'Andorra');
INSERT INTO `countries` VALUES(6, 'AO', 'Angola');
INSERT INTO `countries` VALUES(7, 'AI', 'Anguilla');
INSERT INTO `countries` VALUES(8, 'AQ', 'Antártida');
INSERT INTO `countries` VALUES(9, 'AG', 'Antigua y Barbuda');
INSERT INTO `countries` VALUES(10, 'AN', 'Antillas Holandesas');
INSERT INTO `countries` VALUES(11, 'SA', 'Arabia Saudí');
INSERT INTO `countries` VALUES(12, 'DZ', 'Argelia');
INSERT INTO `countries` VALUES(13, 'AR', 'Argentina');
INSERT INTO `countries` VALUES(14, 'AM', 'Armenia');
INSERT INTO `countries` VALUES(15, 'AW', 'Aruba');
INSERT INTO `countries` VALUES(16, 'AU', 'Australia');
INSERT INTO `countries` VALUES(17, 'AT', 'Austria');
INSERT INTO `countries` VALUES(18, 'AZ', 'Azerbaiyán');
INSERT INTO `countries` VALUES(19, 'BS', 'Bahamas');
INSERT INTO `countries` VALUES(20, 'BH', 'Bahréin');
INSERT INTO `countries` VALUES(21, 'BD', 'Bangladesh');
INSERT INTO `countries` VALUES(22, 'BB', 'Barbados');
INSERT INTO `countries` VALUES(23, 'BY', 'Bielorrusia');
INSERT INTO `countries` VALUES(24, 'BE', 'Bélgica');
INSERT INTO `countries` VALUES(25, 'BZ', 'Belice');
INSERT INTO `countries` VALUES(26, 'BJ', 'Benin');
INSERT INTO `countries` VALUES(27, 'BM', 'Bermudas');
INSERT INTO `countries` VALUES(28, 'BT', 'Bhután');
INSERT INTO `countries` VALUES(29, 'BO', 'Bolivia');
INSERT INTO `countries` VALUES(30, 'BA', 'Bosnia y Herzegovina');
INSERT INTO `countries` VALUES(31, 'BW', 'Botsuana');
INSERT INTO `countries` VALUES(32, 'BV', 'Isla Bouvet');
INSERT INTO `countries` VALUES(33, 'BR', 'Brasil');
INSERT INTO `countries` VALUES(34, 'BN', 'Brunéi');
INSERT INTO `countries` VALUES(35, 'BG', 'Bulgaria');
INSERT INTO `countries` VALUES(36, 'BF', 'Burkina Faso');
INSERT INTO `countries` VALUES(37, 'BI', 'Burundi');
INSERT INTO `countries` VALUES(38, 'CV', 'Cabo Verde');
INSERT INTO `countries` VALUES(39, 'KY', 'Islas Caimán');
INSERT INTO `countries` VALUES(40, 'KH', 'Camboya');
INSERT INTO `countries` VALUES(41, 'CM', 'Camerún');
INSERT INTO `countries` VALUES(42, 'CA', 'Canadá');
INSERT INTO `countries` VALUES(43, 'CF', 'República Centroafricana');
INSERT INTO `countries` VALUES(44, 'TD', 'Chad');
INSERT INTO `countries` VALUES(45, 'CZ', 'República Checa');
INSERT INTO `countries` VALUES(46, 'CL', 'Chile');
INSERT INTO `countries` VALUES(47, 'CN', 'China');
INSERT INTO `countries` VALUES(48, 'CY', 'Chipre');
INSERT INTO `countries` VALUES(49, 'CX', 'Isla de Navidad');
INSERT INTO `countries` VALUES(50, 'VA', 'Ciudad del Vaticano');
INSERT INTO `countries` VALUES(51, 'CC', 'Islas Cocos');
INSERT INTO `countries` VALUES(52, 'CO', 'Colombia');
INSERT INTO `countries` VALUES(53, 'KM', 'Comoras');
INSERT INTO `countries` VALUES(54, 'CD', 'República Democrática del Congo');
INSERT INTO `countries` VALUES(55, 'CG', 'Congo');
INSERT INTO `countries` VALUES(56, 'CK', 'Islas Cook');
INSERT INTO `countries` VALUES(57, 'KP', 'Corea del Norte');
INSERT INTO `countries` VALUES(58, 'KR', 'Corea del Sur');
INSERT INTO `countries` VALUES(59, 'CI', 'Costa de Marfil');
INSERT INTO `countries` VALUES(60, 'CR', 'Costa Rica');
INSERT INTO `countries` VALUES(61, 'HR', 'Croacia');
INSERT INTO `countries` VALUES(62, 'CU', 'Cuba');
INSERT INTO `countries` VALUES(63, 'DK', 'Dinamarca');
INSERT INTO `countries` VALUES(64, 'DM', 'Dominica');
INSERT INTO `countries` VALUES(65, 'DO', 'República Dominicana');
INSERT INTO `countries` VALUES(66, 'EC', 'Ecuador');
INSERT INTO `countries` VALUES(67, 'EG', 'Egipto');
INSERT INTO `countries` VALUES(68, 'SV', 'El Salvador');
INSERT INTO `countries` VALUES(69, 'AE', 'Emiratos Árabes Unidos');
INSERT INTO `countries` VALUES(70, 'ER', 'Eritrea');
INSERT INTO `countries` VALUES(71, 'SK', 'Eslovaquia');
INSERT INTO `countries` VALUES(72, 'SI', 'Eslovenia');
INSERT INTO `countries` VALUES(73, 'ES', 'España');
INSERT INTO `countries` VALUES(74, 'UM', 'Islas ultramarinas de Estados Unidos');
INSERT INTO `countries` VALUES(75, 'US', 'Estados Unidos');
INSERT INTO `countries` VALUES(76, 'EE', 'Estonia');
INSERT INTO `countries` VALUES(77, 'ET', 'Etiopía');
INSERT INTO `countries` VALUES(78, 'FO', 'Islas Feroe');
INSERT INTO `countries` VALUES(79, 'PH', 'Filipinas');
INSERT INTO `countries` VALUES(80, 'FI', 'Finlandia');
INSERT INTO `countries` VALUES(81, 'FJ', 'Fiyi');
INSERT INTO `countries` VALUES(82, 'FR', 'Francia');
INSERT INTO `countries` VALUES(83, 'GA', 'Gabón');
INSERT INTO `countries` VALUES(84, 'GM', 'Gambia');
INSERT INTO `countries` VALUES(85, 'GE', 'Georgia');
INSERT INTO `countries` VALUES(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO `countries` VALUES(87, 'GH', 'Ghana');
INSERT INTO `countries` VALUES(88, 'GI', 'Gibraltar');
INSERT INTO `countries` VALUES(89, 'GD', 'Granada');
INSERT INTO `countries` VALUES(90, 'GR', 'Grecia');
INSERT INTO `countries` VALUES(91, 'GL', 'Groenlandia');
INSERT INTO `countries` VALUES(92, 'GP', 'Guadalupe');
INSERT INTO `countries` VALUES(93, 'GU', 'Guam');
INSERT INTO `countries` VALUES(94, 'GT', 'Guatemala');
INSERT INTO `countries` VALUES(95, 'GF', 'Guayana Francesa');
INSERT INTO `countries` VALUES(96, 'GN', 'Guinea');
INSERT INTO `countries` VALUES(97, 'GQ', 'Guinea Ecuatorial');
INSERT INTO `countries` VALUES(98, 'GW', 'Guinea-Bissau');
INSERT INTO `countries` VALUES(99, 'GY', 'Guyana');
INSERT INTO `countries` VALUES(100, 'HT', 'Haití');
INSERT INTO `countries` VALUES(101, 'HM', 'Islas Heard y McDonald');
INSERT INTO `countries` VALUES(102, 'HN', 'Honduras');
INSERT INTO `countries` VALUES(103, 'HK', 'Hong Kong');
INSERT INTO `countries` VALUES(104, 'HU', 'Hungría');
INSERT INTO `countries` VALUES(105, 'IN', 'India');
INSERT INTO `countries` VALUES(106, 'ID', 'Indonesia');
INSERT INTO `countries` VALUES(107, 'IR', 'Irán');
INSERT INTO `countries` VALUES(108, 'IQ', 'Iraq');
INSERT INTO `countries` VALUES(109, 'IE', 'Irlanda');
INSERT INTO `countries` VALUES(110, 'IS', 'Islandia');
INSERT INTO `countries` VALUES(111, 'IL', 'Israel');
INSERT INTO `countries` VALUES(112, 'IT', 'Italia');
INSERT INTO `countries` VALUES(113, 'JM', 'Jamaica');
INSERT INTO `countries` VALUES(114, 'JP', 'Japón');
INSERT INTO `countries` VALUES(115, 'JO', 'Jordania');
INSERT INTO `countries` VALUES(116, 'KZ', 'Kazajstán');
INSERT INTO `countries` VALUES(117, 'KE', 'Kenia');
INSERT INTO `countries` VALUES(118, 'KG', 'Kirguistán');
INSERT INTO `countries` VALUES(119, 'KI', 'Kiribati');
INSERT INTO `countries` VALUES(120, 'KW', 'Kuwait');
INSERT INTO `countries` VALUES(121, 'LA', 'Laos');
INSERT INTO `countries` VALUES(122, 'LS', 'Lesotho');
INSERT INTO `countries` VALUES(123, 'LV', 'Letonia');
INSERT INTO `countries` VALUES(124, 'LB', 'Líbano');
INSERT INTO `countries` VALUES(125, 'LR', 'Liberia');
INSERT INTO `countries` VALUES(126, 'LY', 'Libia');
INSERT INTO `countries` VALUES(127, 'LI', 'Liechtenstein');
INSERT INTO `countries` VALUES(128, 'LT', 'Lituania');
INSERT INTO `countries` VALUES(129, 'LU', 'Luxemburgo');
INSERT INTO `countries` VALUES(130, 'MO', 'Macao');
INSERT INTO `countries` VALUES(131, 'MK', 'ARY Macedonia');
INSERT INTO `countries` VALUES(132, 'MG', 'Madagascar');
INSERT INTO `countries` VALUES(133, 'MY', 'Malasia');
INSERT INTO `countries` VALUES(134, 'MW', 'Malawi');
INSERT INTO `countries` VALUES(135, 'MV', 'Maldivas');
INSERT INTO `countries` VALUES(136, 'ML', 'Malí');
INSERT INTO `countries` VALUES(137, 'MT', 'Malta');
INSERT INTO `countries` VALUES(138, 'FK', 'Islas Malvinas');
INSERT INTO `countries` VALUES(139, 'MP', 'Islas Marianas del Norte');
INSERT INTO `countries` VALUES(140, 'MA', 'Marruecos');
INSERT INTO `countries` VALUES(141, 'MH', 'Islas Marshall');
INSERT INTO `countries` VALUES(142, 'MQ', 'Martinica');
INSERT INTO `countries` VALUES(143, 'MU', 'Mauricio');
INSERT INTO `countries` VALUES(144, 'MR', 'Mauritania');
INSERT INTO `countries` VALUES(145, 'YT', 'Mayotte');
INSERT INTO `countries` VALUES(146, 'MX', 'México');
INSERT INTO `countries` VALUES(147, 'FM', 'Micronesia');
INSERT INTO `countries` VALUES(148, 'MD', 'Moldavia');
INSERT INTO `countries` VALUES(149, 'MC', 'Mónaco');
INSERT INTO `countries` VALUES(150, 'MN', 'Mongolia');
INSERT INTO `countries` VALUES(151, 'MS', 'Montserrat');
INSERT INTO `countries` VALUES(152, 'MZ', 'Mozambique');
INSERT INTO `countries` VALUES(153, 'MM', 'Myanmar');
INSERT INTO `countries` VALUES(154, 'NA', 'Namibia');
INSERT INTO `countries` VALUES(155, 'NR', 'Nauru');
INSERT INTO `countries` VALUES(156, 'NP', 'Nepal');
INSERT INTO `countries` VALUES(157, 'NI', 'Nicaragua');
INSERT INTO `countries` VALUES(158, 'NE', 'Níger');
INSERT INTO `countries` VALUES(159, 'NG', 'Nigeria');
INSERT INTO `countries` VALUES(160, 'NU', 'Niue');
INSERT INTO `countries` VALUES(161, 'NF', 'Isla Norfolk');
INSERT INTO `countries` VALUES(162, 'NO', 'Noruega');
INSERT INTO `countries` VALUES(163, 'NC', 'Nueva Caledonia');
INSERT INTO `countries` VALUES(164, 'NZ', 'Nueva Zelanda');
INSERT INTO `countries` VALUES(165, 'OM', 'Omán');
INSERT INTO `countries` VALUES(166, 'NL', 'Países Bajos');
INSERT INTO `countries` VALUES(167, 'PK', 'Pakistán');
INSERT INTO `countries` VALUES(168, 'PW', 'Palau');
INSERT INTO `countries` VALUES(169, 'PS', 'Palestina');
INSERT INTO `countries` VALUES(170, 'PA', 'Panamá');
INSERT INTO `countries` VALUES(171, 'PG', 'Papúa Nueva Guinea');
INSERT INTO `countries` VALUES(172, 'PY', 'Paraguay');
INSERT INTO `countries` VALUES(173, 'PE', 'Perú');
INSERT INTO `countries` VALUES(174, 'PN', 'Islas Pitcairn');
INSERT INTO `countries` VALUES(175, 'PF', 'Polinesia Francesa');
INSERT INTO `countries` VALUES(176, 'PL', 'Polonia');
INSERT INTO `countries` VALUES(177, 'PT', 'Portugal');
INSERT INTO `countries` VALUES(178, 'PR', 'Puerto Rico');
INSERT INTO `countries` VALUES(179, 'QA', 'Qatar');
INSERT INTO `countries` VALUES(180, 'GB', 'Reino Unido');
INSERT INTO `countries` VALUES(181, 'RE', 'Reunión');
INSERT INTO `countries` VALUES(182, 'RW', 'Ruanda');
INSERT INTO `countries` VALUES(183, 'RO', 'Rumania');
INSERT INTO `countries` VALUES(184, 'RU', 'Rusia');
INSERT INTO `countries` VALUES(185, 'EH', 'Sahara Occidental');
INSERT INTO `countries` VALUES(186, 'SB', 'Islas Salomón');
INSERT INTO `countries` VALUES(187, 'WS', 'Samoa');
INSERT INTO `countries` VALUES(188, 'AS', 'Samoa Americana');
INSERT INTO `countries` VALUES(189, 'KN', 'San Cristóbal y Nevis');
INSERT INTO `countries` VALUES(190, 'SM', 'San Marino');
INSERT INTO `countries` VALUES(191, 'PM', 'San Pedro y Miquelón');
INSERT INTO `countries` VALUES(192, 'VC', 'San Vicente y las Granadinas');
INSERT INTO `countries` VALUES(193, 'SH', 'Santa Helena');
INSERT INTO `countries` VALUES(194, 'LC', 'Santa Lucía');
INSERT INTO `countries` VALUES(195, 'ST', 'Santo Tomé y Príncipe');
INSERT INTO `countries` VALUES(196, 'SN', 'Senegal');
INSERT INTO `countries` VALUES(197, 'CS', 'Serbia y Montenegro');
INSERT INTO `countries` VALUES(198, 'SC', 'Seychelles');
INSERT INTO `countries` VALUES(199, 'SL', 'Sierra Leona');
INSERT INTO `countries` VALUES(200, 'SG', 'Singapur');
INSERT INTO `countries` VALUES(201, 'SY', 'Siria');
INSERT INTO `countries` VALUES(202, 'SO', 'Somalia');
INSERT INTO `countries` VALUES(203, 'LK', 'Sri Lanka');
INSERT INTO `countries` VALUES(204, 'SZ', 'Suazilandia');
INSERT INTO `countries` VALUES(205, 'ZA', 'Sudáfrica');
INSERT INTO `countries` VALUES(206, 'SD', 'Sudán');
INSERT INTO `countries` VALUES(207, 'SE', 'Suecia');
INSERT INTO `countries` VALUES(208, 'CH', 'Suiza');
INSERT INTO `countries` VALUES(209, 'SR', 'Surinam');
INSERT INTO `countries` VALUES(210, 'SJ', 'Svalbard y Jan Mayen');
INSERT INTO `countries` VALUES(211, 'TH', 'Tailandia');
INSERT INTO `countries` VALUES(212, 'TW', 'Taiwán');
INSERT INTO `countries` VALUES(213, 'TZ', 'Tanzania');
INSERT INTO `countries` VALUES(214, 'TJ', 'Tayikistán');
INSERT INTO `countries` VALUES(215, 'IO', 'Territorio Británico del Océano Índico');
INSERT INTO `countries` VALUES(216, 'TF', 'Territorios Australes Franceses');
INSERT INTO `countries` VALUES(217, 'TL', 'Timor Oriental');
INSERT INTO `countries` VALUES(218, 'TG', 'Togo');
INSERT INTO `countries` VALUES(219, 'TK', 'Tokelau');
INSERT INTO `countries` VALUES(220, 'TO', 'Tonga');
INSERT INTO `countries` VALUES(221, 'TT', 'Trinidad y Tobago');
INSERT INTO `countries` VALUES(222, 'TN', 'Túnez');
INSERT INTO `countries` VALUES(223, 'TC', 'Islas Turcas y Caicos');
INSERT INTO `countries` VALUES(224, 'TM', 'Turkmenistán');
INSERT INTO `countries` VALUES(225, 'TR', 'Turquía');
INSERT INTO `countries` VALUES(226, 'TV', 'Tuvalu');
INSERT INTO `countries` VALUES(227, 'UA', 'Ucrania');
INSERT INTO `countries` VALUES(228, 'UG', 'Uganda');
INSERT INTO `countries` VALUES(229, 'UY', 'Uruguay');
INSERT INTO `countries` VALUES(230, 'UZ', 'Uzbekistán');
INSERT INTO `countries` VALUES(231, 'VU', 'Vanuatu');
INSERT INTO `countries` VALUES(232, 'VE', 'Venezuela');
INSERT INTO `countries` VALUES(233, 'VN', 'Vietnam');
INSERT INTO `countries` VALUES(234, 'VG', 'Islas Vírgenes Británicas');
INSERT INTO `countries` VALUES(235, 'VI', 'Islas Vírgenes de los Estados Unidos');
INSERT INTO `countries` VALUES(236, 'WF', 'Wallis y Futuna');
INSERT INTO `countries` VALUES(237, 'YE', 'Yemen');
INSERT INTO `countries` VALUES(238, 'DJ', 'Yibuti');
INSERT INTO `countries` VALUES(239, 'ZM', 'Zambia');
INSERT INTO `countries` VALUES(240, 'ZW', 'Zimbabue');