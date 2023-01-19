-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectoterminal
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `numero_economico` varchar(7) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`numero_economico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES ('10341','Rodriguez Diaz Jaime '),('10344','Aragon Lezama Jose Arturo '),('10345','Huerta Flores Jose Luis '),('1038','Ferreira Dimentstein Hector Raul '),('10494','Guzman Gomez Marisela '),('10557','Myszkowski Podkowka Andrzej '),('10587','Turpin Marion Sylvie Jeanne '),('10784','Henaine Abed Maria Guadalupe '),('10906','Mejia Huguet Virgilio Janitzio '),('10996','Benitez Marquez Elia '),('11087','Quintana Diaz Maria Berenice Guadalup '),('11101','Avila Jimenez Miguel '),('11294','Bastien Montoya Gustavo Mauricio '),('11296','Romero Romo Mario Alberto '),('11423','Ortiz Romero Vargas Maria Elba '),('11527','Hernandez Muñoz Antonio '),('11582','Omaña Pulido Maria Judith '),('11651','Del Valle Diaz Muñoz Luisa Gabriela '),('11773','Carbajal Arenas Lilia '),('11903','Portilla Pineda Margarita '),('11948','Zekkour Zekkour Ahmed '),('12035','Pereyra Ramos Carlos Jesus '),('12143','Aguilar Pliego Julia '),('12407','Rivera Valladares Irene Leonor '),('12535','Salas Brito Alvaro Lorenzo '),('12583','Coxtinica Aguilar Lucia '),('12710','Lira Cortes Jose Raymundo '),('12858','Martinez Melendez Angel '),('13047','Mercado Reyes Santos '),('13048','Ruiz Pantoja Abel '),('13094','Castillo Tapia Guillermo '),('13099','Monroy Perez Rafael Felipe '),('1312','Soto Tellez Maria de la Luz '),('1313','Flores Valverde Erasmo '),('13213','Juarez Najera Margarita '),('13378','Melendez Lira Miguel Angel '),('13390','Zanabria Salcedo Luis Edmundo '),('13398','Elizarraraz Martinez David '),('13487','Garcia Martinez Cesareo '),('13583','Alarcon Martinez Hernan '),('1360','Ulin Jimenez Carlos Antonio '),('1363','Aragon Gonzalez Gerardo '),('13665','Portillo Diaz Pedro '),('13870','Arellano Peraza Juan Salvador '),('14079','Zamorano Flores Jose Luis '),('14165','Vega Luna Jose Ignacio '),('14177','Martinez Hernandez Guadalupe '),('14233','Garcia Galvan Maria Antonieta '),('14347','Zambrano Valencia Lucila '),('14378','Elorza Guerrero Maria Eugenia '),('14412','Olvera Amador Maria de la Luz '),('14416','Paez Hernandez Ricardo Teodoro '),('14435','Dominguez Peña Rene '),('14436','Guaycochea Guglielmi Dario Eduardo '),('14541','Salazar Antunez Marina '),('14562','Hernandez Perez Isaias '),('14566','Teran Gilmore Amador '),('14612','Cervantes de la Torre Francisco '),('14717','Ramirez Rojas Alejandro '),('14720','Estrada Guerrero Jose Maria Daniel '),('14721','Chavez Martinez Margarita '),('14877','Vargas  Carlos Alejandro '),('14937','Gutierrez Villegas Marco Antonio '),('14966','Juarez Garcia Hugon '),('15138','Plata Garnica Vicente Yuri '),('15139','Espinosa Valdemar Rosa Maria '),('15177','Sanchez Guerrero Margarita Maria de '),('15297','Barrales Guadarrama Victor Rogelio '),('15305','Magos Rivera Miguel '),('15307','Cid Reborido Alicia '),('1542','Carrera Garcia Constantino '),('15509','Garcia Martinez Cirilo '),('15560','Olivares Almanza Enrique '),('15606','Ramirez Fonseca Miguel Guadalupe '),('15682','Viveros Talavera Jose Guadalupe '),('15754','Hernandez Rodriguez Jose Angel '),('15786','Sanchez Rangel Francisco Javier '),('15898','Aduna Espinosa Enrique '),('16039','Santillan Ramirez Iris Rocio '),('16120','Castro Lopez Fidel '),('16148','Jaimes Ponce Jorge Miguel '),('16150','Siller Alcala Irma Irasema '),('16153','Laureano Cruces Ana Lilia Concepcion '),('162','Perez Ricardez Alejandro Raymundo '),('16283','Resendis Ocampo Lino Feliciano '),('16352','Beltran Villavicencio Margarita '),('16353','Alvear Leyva Victor Manuel '),('16524','Gomez Bernal Alonso '),('16525','Guerrero Correa Jose Juan '),('16619','Abreu Hernandez Miguel Angel '),('16930','Guillaumin España Elisa '),('16966','Barron Romero Carlos '),('17060','Pablo Leyva Hugo '),('17141','Muñoz Andrade Juan Daniel '),('17204','Gonzalez Brambila Silvia Beatriz '),('17421','Damian Noriega Zeferino '),('17755','Cruz Galindo Hilarion Simon '),('17756','Tapia Medina Carlos Rogelio '),('18013','Soto Del Angel Tito Doroteo '),('18139','Tellez Castillo German '),('18140','Gonzalez Cortes Maria Del Carmen '),('1819','Rebora Togno Enrique '),('18248','Peña Gil Jose Juan '),('18425','Hoyos Reyes Luis Fernando '),('18480','Larque Saavedra Mario Ulises '),('18493','Quiroz Avila Teresita '),('18618','Ortega Rodriguez Maria Antonieta '),('18677','Gonzalez Velez Virginia '),('18681','Cueto Hernandez Arturo '),('1895','Negron Silva Guillermo Enrique '),('19167','Rivera Salamanca Carlos Alberto '),('19398','Padilla Aguilar Felipe de Jesus '),('19436','Salgado Guzman Gerardo '),('19484','Rodriguez Tapia Victor Gonzalo '),('19557','Loyo Quijada Jesus '),('19560','Roa Neri Jose Antonio Eduardo '),('19662','Loreto Gomez Carmen Estela '),('19733','Palomar Pardave Manuel Eduardo '),('19779','Calzadilla Garcia Bari Javier '),('19797','Hernandez Avila Jose Luis '),('19803','Hernandez Galvan Miguel Angel '),('19834','Diaz Leal Guzman Hector '),('2011','Vargas Rubio Juan Gaspar '),('20197','Zaragoza Martinez Francisco Javier '),('20220','Cortes Suarez Victor Jorge '),('20272','Alarcon Jimenez Enrique '),('20427','Baez Juarez Maria Gabriela '),('2062','Romero Ibarra Luz Mercedes '),('20622','Olmos Ramirez Hector Bolivar '),('20624','Espinoza Johnson Marco Antonio '),('20838','de la Merced Sanchez Bernardo Isidro '),('20889','Basurto Uribe Eduardo '),('20900','Gutierrez Limon Miguel Angel '),('21065','Ramirez Calderon Omar Gabriel '),('21091','Escarela Perez Rafael '),('21190','Barron Meza Miguel Angel '),('21234','Montes Estrada Ernesto '),('21311','Ardon Pulido Irma Fernanda '),('21426','Serrano Moya Gloria Francisca '),('21499','Ruiz Sandoval Hernandez Manuel Euripi '),('21565','Kunold Bello Alejandro '),('21569','Hernandez Saldaña Hugo '),('21628','Oviedo Collins Antonio '),('21638','Dominguez Esquivel Jose Manuel '),('21735','Cardoso Cortes Jose Luis '),('21922','Jimenez Arguelles Victor '),('22003','Estrada Soto Jose Alfredo '),('2201','Sanchez Posadas Hector Fernando '),('22229','Lagos Acosta Mario Alberto '),('22545','Rodriguez Rodriguez Meliton Ezequiel '),('22644','Soto Portas Maria Lidice '),('22664','Khatchatourov  Gueorgi '),('22668','Flores Moreno Jorge Luis '),('22675','Alonso Navarrete Armando '),('22762','Vazquez Gonzalez Benjamin '),('23041','Navarro Fuentes Jaime '),('23066','Lopez Ontiveros Miguel Angel '),('23069','Martinez Delgadillo Sergio Alejandro '),('23095','Montelongo Buenavista Ivett '),('23123','Suarez Rivera Erick Eduardo '),('23160','Garcia Albortante Julisa '),('23167','Cosme Aceves Jose Francisco '),('23309','Jasso Lopez Jaime '),('23369','Garfias Garcia Elizabeth '),('23417','Villegas Cortez Juan '),('2346','Becerril Hernandez Hugo Sergio '),('23462','Lopez Bautista Pedro Ricardo '),('23640','Almanza Hernandez Fernando '),('23651','Monroy Mendieta Maria Magdalena '),('23776','Martinez Riofrio Bellarmino '),('23812','Perez Moreno Romy '),('23998','Vazquez Morillas Alethia '),('24015','Mendoza Escamilla Victor Xiunel '),('2414','Luna Garcia Hector Martin '),('24218','Morales Lopez Leopoldo '),('24219','Gonzalez Cardoso Griselda '),('24307','Barrales Guadarrama Raymundo '),('24319','Ferreyra Ramirez Andres '),('24351','Lopez Perez Lidia '),('24420','Hernandez Valdez Genaro '),('2470','Fernandez Sanchez Lilia '),('24709','Herrera Alcantara Oscar '),('24865','Angeles Beltran Deyanira '),('24888','Pascual Arellano Rodrigo '),('24903','Luna Argudin Maria Leonila Matilde '),('24941','Guzman Serrano Eusebio '),('2497','Torres Rodriguez Miguel '),('24990','Terres Peña Hilario '),('25076','Chavez Lomeli Laura Elena '),('25206','Aguilar Sanchez Miriam '),('25224','Cruz Sandoval Alejandro '),('25237','Godinez Bravo Ricardo '),('25253','Lizardi Ramos Arturo '),('25485','Noreña Franco Luis Enrique '),('25501','Gonzalez Diaz Francisco '),('25580','Alvarez Miranda Gilberto Domingo '),('25716','Refugio Garcia Maria Elizabeth '),('25837','Morales Guzman Jacinto Dionisio '),('25901','Luna Sanchez Rosa Maria '),('25979','Olvera Neria Oscar '),('26155','May Lozano Marcos '),('26178','Barragan Santiago Israel '),('26221','Tena Colunga Arturo '),('26228','Vazquez Alvarez Ivan '),('26246','Zavala Osorio Yadira '),('2635','Gutierrez y Herrera Jose Lucino '),('2637','Mejia Tellez Juan de la Cruz '),('2639','Vazquez Rojas Jorge Hector '),('26425','Arellano Mendez Eduardo '),('26524','Archundia Aranda Hans Isrrael '),('26539','Rangel Torres Gilberto '),('26615','Ramirez Cruz Jose Luis '),('26730','Andrade Gonzalez Edgar Alejandro '),('26731','Reyes Ayala Mario '),('27034','Gutierrez Arzaluz Mirella '),('27102','Poulain Garcia Enrique Gabriel '),('27233','Reyna Obregon Gerardo Marcel '),('27339','Perea Olvera Tiziano '),('27609','Martinez Jimenez Anatolio '),('27694','Vazquez Ceron Ernesto Rodrigo '),('27699','Ramirez Quiros Yara '),('27820','Castillo Fernandez David '),('27821','Gavito Ticozzi Silvia Claudia '),('27847','Sandoval Perez Francisco '),('27849','Altamirano Torres Alejandro '),('28304','Lopez Garcia Irvin '),('28343','Lopez Medina Ricardo '),('28344','Palacios Grijalva Laura Nadxieli '),('28431','Hernandez Anaya Octavio '),('28447','Gomez Vieyra Armando '),('28466','Puebla Nuñez Hector Fernando '),('28471','Ortiz Bulle Goyri Alejandro Gerardo '),('28610','Monter Espinosa Oscar Isidro '),('28650','Aguilar Zavoznik Alejandro '),('28704','Rangel Nuñez Jose Luis '),('28714','Arroyo Espinoza Danny '),('28779','Zuñiga Lopez Arturo '),('29040','Navarrete Lopez Alejandra Montserrat '),('29356','Gomez Soberon Maria de la Consolacion '),('29366','Dominguez Soria Victor Daniel '),('29437','Rodriguez Martinez Eduardo '),('29462','Cruz Barriguete Victor Alberto '),('29684','Montes de Oca Yemha Maria Guadalupe '),('29727','Ramirez Muñoz Jorge '),('29740','Castillo Lara Clara '),('29966','Gonzalez Gomez Efren '),('30119','Medina Velazquez Dulce Yolotzin '),('30199','Padilla Ramirez Amando Jose '),('30246','Gonzalez Beltran Beatriz Adriana '),('30276','Collantes Vazquez Victor Manuel '),('30352','Dominguez Vergara Nicolas '),('30362','Ocampo Hidalgo Juan Jesus '),('30440','Gomez Nuñez Jersain '),('30543','Panama Armendariz Mauricio Ivan '),('30711','Alvarez Garcia Cain '),('30761','Gallardo Lopez Maria Lizbeth '),('310','Holguin Quiñones Saul '),('31022','Corona Avendaño Silvia '),('31154','Magaña Zapata Janeth Anabelle '),('31193','Pineda Calderon Inti '),('31449','Beltran Conde Hiram Isaac '),('31456','Aldana Gonzalez Jorge Ivan '),('31478','Tapia Hernandez Edgar '),('3155','de la Garza Vizcaya Eduardo Luis '),('31701','Hernandez Gonzalez Mariana '),('31714','Garcia Segura Pedro '),('31749','Figueroa Gonzalez Josue '),('31914','Velasco Quiroz Alejandra Yumuri '),('31982','Ruiz Meza Alfredo '),('32225','Alducin Castillo Javier '),('32282','Olivares Galvan Juan Carlos '),('32411','Hernandez Riwes Cruz Jose '),('32420','Flores Olmedo Enrique '),('32442','Cortes Leon Hector '),('32565','Velez Perez Jose Antonio '),('32735','Gonzalez Montañez Felipe de Jesus '),('32858','Chaparro Vega Francisco Javier '),('32885','Gonzalez Brambila Margarita Mercedes '),('33','Gonzalez Cuevas Oscar Manuel '),('33518','Jimenez Mondragon Victor Manuel '),('33748','Villagarcia Chavez Ezequiel '),('341','Schnadower Baran Isaac '),('34178','Juarez Luna Gelacio '),('34214','Loera Serna Sandra '),('3423','Campero Littlewood Eduardo '),('34327','Rodriguez Benavides Domingo '),('34354','Mora Torres Martha '),('34355','Garcia Hernandez Victor Cuauhtemoc '),('3437','Sandoval Cardoso David '),('34398','Quevedo Martinez Alfonso Jorge '),('34504','Colin Garcia Eduardo '),('34592','Santana Cruz Alejandra '),('34651','Chavez Sanchez Sandra '),('34786','Haro Perez Catalina Ester '),('35032','Hidalgo Gonzalez Julio Cesar '),('35464','Gonzalez Reyes Leonardo '),('35523','Carrillo Arellano Carlos Ernesto '),('35548','Cano Blanco Mauricio '),('35690','Fernandez Sola Luciano Roberto '),('35691','Bravo Contreras Maricela Claudia '),('35692','Castro Campos Rodrigo Alexander '),('35693','Mora Gutierrez Roman Anselmo '),('35694','Beltran Carbajal Francisco '),('35750','Alvarez Zeferino Juan Carlos '),('35758','Bravo Acosta Adrian Gustavo '),('36022','Vazquez Huerta Gerardo '),('36082','Chavez Esquivel Gerardo '),('3641','Zubieta Badillo Carlos '),('36569','Perez Sanchez Grethell Georgina '),('36916','Labastida Nuñez Israel '),('36992','Salazar Pelaez Monica Liliana '),('37110','Uribe Hernandez Alvaro Ernesto '),('3737','Pantoja Gallegos Jose Luis '),('37454','Arango Escorcia Gabriela '),('37848','Heredia Velasco Marco Antonio '),('38216','Garcia Govea Coral '),('38228','Climent Hernandez Jose Antonio '),('38263','Fernandez Torres Gustavo '),('3830','Vazquez  Hector Javier '),('38404','Hernandez Moreno Adolfo '),('3843','Ramirez Cortina Clementina Rita '),('3845','Goñi Cedeño Hermilo Benito '),('38470','Cruz Peregrino Fidel '),('38832','Sigalotti Diaz Leonardo di Girolamo '),('38932','Castellanos Lopez Sandra Lirio '),('38956','Espinoza Castañeda Marisol '),('39227','Padilla Cuevas Josue '),('39281','Reyes Miranda Joan '),('39285','Mora Vazquez Alejandro '),('39338','Rodriguez Alvarado Lisaura Walkiria '),('39375','Odriozola Prego Gerardo Miguel '),('39768','Sanchez Martinez Leonardo Daniel '),('40094','Lara Chavez Jose Antonio '),('40124','Leon Santiesteban Hector Hugo '),('40158','Garcia Villarreal Luis Angel '),('4037','Molnar de la Parra Rene '),('4038','Plata Perez Erasmo Netzahualcoyotl '),('40456','Garcia Robledo Gabriela Alejandra '),('40936','Priego Sanchez Angeles Belem '),('41035','Carmona Lomeli Luis Javier '),('41236','Luviano Flores Johana '),('41278','Rosas Quiterio Pedro '),('41339','Baison Olmo Antonio Luis '),('41581','Garcia Cruz Raul '),('41805','Gonzalez Sosa Jesus Vicente '),('41806','Gabbasov  Ruslan '),('41864','Urban Rivero Luis Eduardo '),('41896','Rojas Zamora Ulises '),('41930','Arreola Lucas Arturo '),('42026','Valle Hernandez Brenda Liz '),('42095','Gonzalez Uribe Ivan '),('42429','Ramirez Reyna Mario Alberto '),('42466','Gonzalez Torres Julio Cesar '),('42569','Tolentino Lopez Dante '),('42591','Mompremier  Rojacques '),('42720','Sanchez Eleuterio Alma '),('42742','Suarez Rosales Miguel Angel '),('42750','Reyes Leon Arturo '),('4329','Fuentes Villaseñor Ramon '),('43332','Ramirez Dominguez Elsie '),('43433','Avila Soler Enrique '),('43448','Martinez Salcedo Jeremias '),('43469','Garcia Carranco Sergio Miguel '),('43700','Hernandez Teran Maria Eugenia '),('43769','Benavides Alvarez Cesar '),('4377','Grabinsky y Steider Jaime '),('44042','Silva Rivera Usiel Sandino '),('44189','Cuadros Hipolito Edgar Omar '),('44197','Bueno Contreras Jose Jorge '),('44198','Pacheco Paez Juan Carlos '),('44199','Guzman Rangel Georgina '),('44202','Palacios Muñoz Alfonso '),('44203','Riera Ortiz Jaime Alfonso '),('44206','Montes Orozco Edwin '),('44493','Martinez Perez Jose Armando '),('446','Alcantara Montes Samuel '),('4681','Vargas Estrada Maria Del Carmen '),('4684','Castañeda Briones Maria Teresa '),('4686','Davila Gomez Jose Angel '),('475','Cervantes Cuevas Humberto '),('476','de Ita de la Torre Antonio Silvio '),('4796','Arenas Enriquez Luis '),('4808','Herrera Aguirre Rogelio '),('4818','Pulido Rodriguez Georgina Maria '),('4828','Alvarez Garcia Arturo '),('5438','de la Portilla Maldonado Leandro Cesa '),('553','Solis Correa Hugo Eduardo de Jesus '),('5735','Dorantes Rodriguez Ruben Jose '),('5740','Vaca Mier Mabel '),('5741','Leon Galicia Alejandro '),('5845','Hernandez Lopez Roberto Tito '),('6098','Velazquez Galindo Cruz '),('6240','Arce Del Campo Carlos Eduardo '),('632','Mondragon Rubiano Miguel Angel '),('6362','Velazquez Arcos Juan Manuel '),('6370','Ovando Zuñiga Gerardo Antonio '),('6539','Serrano Dominguez Victor Gerardo '),('6609','Hilerio Cruz Isaias '),('6864','Arellano Balderas Salvador '),('6865','Becerril Espinosa Jose Ventura '),('6880','Aguilar Rodriguez Enrique '),('6884','Lara Valdivia Araceli '),('7295','Garcia Cruz Luz Maria '),('7300','Ramirez Rojas Fernando Jose de Jesus '),('7338','Buelna Serrano Maria Elvira '),('7487','Valladares Rodriguez Maria Rita '),('7535','Jimenez Rabiela Homero '),('7536','Contreras Larios Jose Luis '),('7689','Morales Rivas Jesus '),('7782','Velasco Arregui Edur '),('8083','Granados Samaniego Jaime Alejandro '),('8181','Roa Limas Jose Carlos Federico '),('8339','Espitia Cabrera Alfonso '),('8413','Rodriguez Guerrero Maria de Jesus '),('8604','Toledo Toledo Fernando '),('8617','Chacalo Hilu Alicia '),('8789','Rocha Chiu Luis Antonio '),('9001','Luna Paz Ricardo '),('9055','Ramirez Rodriguez Javier '),('940','Maubert Franco Ana Marisela '),('9422','Enriquez Escallon Carlos '),('9434','Romero Melendez Cutberto Salvador '),('9464','Figueroa Lara Jose de Jesus '),('9607','Tapia Vargas Victor Noe '),('9608','Hernandez Martinez Leonardo '),('9693','Guerra Garzon Emilio '),('9912','Lopez Callejas Raymundo ');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 22:18:05