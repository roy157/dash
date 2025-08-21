-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: u472469844_est11
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('4c3fb5aa5b06');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carritos`
--

LOCK TABLES `carritos` WRITE;
/*!40000 ALTER TABLE `carritos` DISABLE KEYS */;
/*!40000 ALTER TABLE `carritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carritos_productos`
--

LOCK TABLES `carritos_productos` WRITE;
/*!40000 ALTER TABLE `carritos_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `carritos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Laptop','Portátiles de diferentes marcas y características','fas fa-laptop fa-3x'),(2,'PC','Computadoras de escritorio, armadas o de marca','fas fa-desktop fa-3x'),(3,'Accesorios','Teclados, mouse, auriculares, alfombrillas y más','fas fa-headphones fa-3x'),(4,'Tintas','Cartuchos y botellas de tinta para impresoras','fas fa-tint fa-3x'),(5,'Componentes','Partes internas como RAM, discos duros, placas madre','fas fa-microchip fa-3x'),(6,'Impresoras','Impresoras multifunción, láser o de inyección de tinta','fas fa-print fa-3x'),(7,'Gamer','Equipamiento y accesorios para gamers','fas fa-gamepad fa-3x'),(8,'Cámaras','Cámaras digitales, webcams y de videovigilancia','fas fa-camera fa-3x');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Admin User','admin@example.com','admin','Calle Principal 1','5551111111','2025-05-01 00:00:00'),(2,'Test User','test@example.com','test123','Avenida Secundaria 2','5552222222','2025-05-02 00:00:00'),(3,'Demo Account','demo@example.com','password','Calle Demo 3','5553333333','2025-05-03 00:00:00'),(4,'John Doe','john.doe@example.com','123456','Calle John 4','5554444444','2025-05-04 00:00:00'),(5,'Jane Smith','jane.smith@example.com','qwerty','Avenida Jane 5','5555555555','2025-05-05 00:00:00'),(6,'User One','user1@example.com','user','Calle User 6','5556666666','2025-05-06 00:00:00'),(7,'User Two','user2@example.com','user123','Avenida User 7','5557777777','2025-05-07 00:00:00'),(8,'Guest','guest@example.com','guest','Calle Guest 8','5558888888','2025-05-08 00:00:00'),(9,'Foo Bar','foo.bar@example.com','foobar','Avenida Foo 9','5559999999','2025-05-09 00:00:00'),(10,'Sample User','sample@example.com','sample','Calle Sample 10','5550000000','2025-05-10 00:00:00');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inventarios`
--

LOCK TABLES `inventarios` WRITE;
/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
INSERT INTO `inventarios` VALUES (1,15,'entrada','2025-01-05 00:00:00',3),(2,5,'salida','2025-01-06 00:00:00',3),(3,20,'entrada','2025-01-10 00:00:00',12),(4,8,'salida','2025-01-12 00:00:00',12),(5,30,'entrada','2025-01-15 00:00:00',25),(6,10,'salida','2025-01-18 00:00:00',25),(7,18,'entrada','2025-01-20 00:00:00',33),(8,6,'salida','2025-01-21 00:00:00',33),(9,22,'entrada','2025-01-25 00:00:00',48),(10,9,'salida','2025-01-27 00:00:00',48),(11,14,'entrada','2025-02-01 00:00:00',57),(12,4,'salida','2025-02-03 00:00:00',57),(13,40,'entrada','2025-02-07 00:00:00',61),(14,13,'salida','2025-02-08 00:00:00',61),(15,17,'entrada','2025-02-10 00:00:00',75),(16,7,'salida','2025-02-12 00:00:00',75),(17,11,'entrada','2025-02-14 00:00:00',88),(18,3,'salida','2025-02-15 00:00:00',88),(19,27,'entrada','2025-02-18 00:00:00',101),(20,6,'salida','2025-02-20 00:00:00',101),(21,33,'entrada','2025-02-22 00:00:00',115),(22,9,'salida','2025-02-24 00:00:00',115),(23,19,'entrada','2025-02-26 00:00:00',134),(24,5,'salida','2025-02-28 00:00:00',134),(25,21,'entrada','2025-03-01 00:00:00',147),(26,8,'salida','2025-03-03 00:00:00',147),(27,29,'entrada','2025-03-05 00:00:00',159),(28,12,'salida','2025-03-07 00:00:00',159);
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Av. Principal 123, Ciudad del Sol','pendiente',1010.00,'2025-07-01 10:00:00',1),(2,'Callejón del Gato 45, Pueblo Escondido','enviado',1280.00,'2025-07-01 11:30:00',2),(3,'Plaza Mayor 7, Villa Hermosa','entregado',1256.00,'2025-07-02 09:15:00',3),(4,'Paseo de la Luna 88, Puerto Estrella','pendiente',1400.00,'2025-07-02 14:00:00',4),(5,'Avenida de los Valles 22, Monte Verde','entregado',975.00,'2025-07-03 16:45:00',5),(6,'Ruta del Bosque 5, Aldea del Río','enviado',2350.00,'2025-07-03 10:20:00',6),(7,'Calle del Puente 10, Caserío Antiguo','pendiente',1520.00,'2025-07-04 11:00:00',7),(8,'Bulevar de la Esperanza 33, Nueva Era','entregado',1400.00,'2025-07-04 13:10:00',8),(9,'Camino de la Cima 6, Cumbres Nevadas','enviado',3020.00,'2025-07-05 08:40:00',9),(10,'Avenida del Puerto 15, Bahía Tranquila','pendiente',2880.00,'2025-07-05 17:00:00',10),(11,'Pasaje Secreto 1, Ciudad Misteriosa','entregado',1635.00,'2025-07-06 12:00:00',1),(12,'Calle del Sol Naciente 20, Horizonte Azul','enviado',2400.00,'2025-07-06 14:30:00',2),(13,'Sendero Luminoso 7, Jardín Esmeralda','pendiente',1650.00,'2025-07-07 09:00:00',3),(14,'Plaza del Reloj 18, Tiempo Eterno','entregado',3400.00,'2025-07-07 11:00:00',4),(15,'Avenida de la Montaña 9, Valle Sagrado','enviado',1940.00,'2025-07-08 10:00:00',5),(16,'Calle de los Sueños 50, Tierra Prometida','pendiente',770.00,'2025-07-08 12:00:00',6),(17,'Bulevar de las Flores 25, Campo Florido','entregado',1330.00,'2025-07-08 14:00:00',7),(18,'Camino del Gigante 1, Reino de Fantasía','enviado',2450.00,'2025-07-08 16:00:00',8),(19,'Avenida del Lago 30, Orilla Clara','pendiente',1615.00,'2025-07-08 18:00:00',9),(20,'Pasaje de la Gloria 10, Cima del Mundo','entregado',945.00,'2025-07-08 20:00:00',10);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos_productos`
--

LOCK TABLES `pedidos_productos` WRITE;
/*!40000 ALTER TABLE `pedidos_productos` DISABLE KEYS */;
INSERT INTO `pedidos_productos` VALUES (6,1,700.00,1,1),(7,2,120.00,1,41),(8,1,70.00,1,42),(9,1,1200.00,2,2),(10,1,40.00,2,54),(11,1,40.00,2,44),(12,1,1100.00,3,3),(13,3,22.00,3,61),(14,1,90.00,3,101),(15,1,850.00,4,4),(16,1,380.00,4,81),(17,2,85.00,4,82),(18,1,750.00,5,5),(19,1,55.00,5,121),(20,1,70.00,5,122),(21,1,100.00,5,123),(22,1,1400.00,6,6),(23,1,450.00,6,141),(24,1,500.00,6,144),(25,1,1300.00,7,7),(26,2,45.00,7,68),(27,1,130.00,7,52),(28,1,1100.00,8,8),(29,1,180.00,8,90),(30,1,120.00,8,94),(31,1,1500.00,9,9),(32,1,1300.00,9,21),(33,1,220.00,9,125),(34,1,2500.00,10,10),(35,1,200.00,10,103),(36,1,150.00,10,47),(37,2,15.00,10,50),(38,1,900.00,11,11),(39,1,700.00,11,25),(40,1,35.00,11,48),(41,1,1600.00,12,12),(42,1,800.00,12,129),(43,1,1400.00,13,13),(44,1,220.00,13,105),(45,1,30.00,13,56),(46,1,1800.00,14,14),(47,1,1600.00,14,30),(48,1,1300.00,15,15),(49,1,600.00,15,138),(50,1,40.00,15,140),(51,1,650.00,16,16),(52,1,75.00,16,117),(53,1,45.00,16,57),(54,1,700.00,17,17),(55,1,600.00,17,28),(56,1,30.00,17,43),(57,1,2100.00,18,18),(58,1,350.00,18,135),(59,1,1300.00,19,19),(60,1,300.00,19,119),(61,1,15.00,19,60),(62,1,600.00,20,20),(63,1,280.00,20,120),(64,1,65.00,20,127);
/*!40000 ALTER TABLE `pedidos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop Dell Inspiron 15','Intel i5, 8GB RAM, 256GB SSD',700.00,10,'2025-05-01 00:00:00',1,NULL),(2,'Laptop HP Spectre x360','Intel i7, 16GB RAM, 512GB SSD',1200.00,5,'2025-05-02 00:00:00',1,NULL),(3,'Laptop Asus ZenBook','AMD Ryzen 7, 16GB RAM, 1TB SSD',1100.00,8,'2025-05-03 00:00:00',1,NULL),(4,'Laptop Lenovo ThinkPad','Intel i5, 8GB RAM, 256GB SSD, pantalla 14\"',850.00,12,'2025-05-04 00:00:00',1,NULL),(5,'Laptop Acer Swift 3','AMD Ryzen 5, 8GB RAM, 512GB SSD',750.00,15,'2025-05-05 00:00:00',1,NULL),(6,'Laptop MSI Prestige','Intel i7, 16GB RAM, 1TB SSD, gráfica dedicada',1400.00,4,'2025-05-06 00:00:00',1,NULL),(7,'Laptop Apple MacBook Air','M1, 8GB RAM, 256GB SSD',1300.00,6,'2025-05-07 00:00:00',1,NULL),(8,'Laptop HP Envy','Intel i7, 16GB RAM, 512GB SSD',1100.00,7,'2025-05-08 00:00:00',1,NULL),(9,'Laptop Dell XPS 13','Intel i7, 16GB RAM, 512GB SSD',1500.00,5,'2025-05-09 00:00:00',1,NULL),(10,'Laptop Asus ROG Zephyrus','AMD Ryzen 9, 32GB RAM, 1TB SSD, gráfica RTX 3080',2500.00,3,'2025-05-10 00:00:00',1,NULL),(11,'Laptop Lenovo Yoga','Intel i5, 8GB RAM, 256GB SSD, pantalla táctil',900.00,10,'2025-05-11 00:00:00',1,NULL),(12,'Laptop Acer Predator','Intel i7, 16GB RAM, 1TB SSD, gráfica RTX 3060',1600.00,5,'2025-05-12 00:00:00',1,NULL),(13,'Laptop Microsoft Surface','Intel i7, 16GB RAM, 512GB SSD',1400.00,6,'2025-05-13 00:00:00',1,NULL),(14,'Laptop HP Omen','AMD Ryzen 7, 16GB RAM, 1TB SSD, gráfica RTX 3070',1800.00,7,'2025-05-14 00:00:00',1,NULL),(15,'Laptop Dell G5','Intel i7, 16GB RAM, 512GB SSD, gráfica GTX 1660 Ti',1300.00,8,'2025-05-15 00:00:00',1,NULL),(16,'Laptop Asus VivoBook','Intel i5, 8GB RAM, 256GB SSD',650.00,15,'2025-05-16 00:00:00',1,NULL),(17,'Laptop Samsung Galaxy Book','Intel i5, 8GB RAM, 256GB SSD',700.00,10,'2025-05-17 00:00:00',1,NULL),(18,'Laptop Razer Blade 15','Intel i7, 16GB RAM, 1TB SSD, gráfica RTX 3070',2100.00,4,'2025-05-18 00:00:00',1,NULL),(19,'Laptop LG Gram','Intel i7, 16GB RAM, 512GB SSD, ultraligera',1300.00,7,'2025-05-19 00:00:00',1,NULL),(20,'Laptop Toshiba Dynabook','Intel i5, 8GB RAM, 256GB SSD',600.00,12,'2025-05-20 00:00:00',1,NULL),(21,'PC Gaming Custom RTX 3060','Ryzen 5 5600X, 16GB RAM, 1TB SSD',1300.00,7,'2025-05-21 00:00:00',2,NULL),(22,'PC Oficina Lenovo ThinkCentre','Intel i3, 8GB RAM, 500GB HDD',450.00,15,'2025-05-22 00:00:00',2,NULL),(23,'PC Diseño HP Z4','Intel Xeon, 32GB RAM, 2TB SSD',2500.00,2,'2025-05-23 00:00:00',2,NULL),(24,'PC Gaming Alienware Aurora','Intel i7, 16GB RAM, RTX 3070, 1TB SSD',2200.00,5,'2025-05-24 00:00:00',2,NULL),(25,'PC Mini Intel NUC','Intel i5, 8GB RAM, 256GB SSD, compacto',700.00,10,'2025-05-25 00:00:00',2,NULL),(26,'PC Workstation Dell Precision','Intel Xeon, 64GB RAM, 4TB SSD',4500.00,1,'2025-05-26 00:00:00',2,NULL),(27,'PC Gamer MSI Infinite','Intel i7, 32GB RAM, RTX 3080, 2TB SSD',3000.00,4,'2025-05-27 00:00:00',2,NULL),(28,'PC Oficina HP EliteDesk','Intel i5, 8GB RAM, 1TB HDD',600.00,12,'2025-05-28 00:00:00',2,NULL),(29,'PC Económica Acer Aspire','AMD Ryzen 3, 8GB RAM, 512GB SSD',550.00,18,'2025-05-29 00:00:00',2,NULL),(30,'PC Gaming ASUS ROG Strix','AMD Ryzen 7, 16GB RAM, RTX 3060, 1TB SSD',1600.00,7,'2025-05-30 00:00:00',2,NULL),(31,'PC Multimedia Lenovo IdeaCentre','Intel i5, 12GB RAM, 1TB HDD',750.00,9,'2025-05-31 00:00:00',2,NULL),(32,'PC Compacta Gigabyte Brix','Intel i7, 16GB RAM, 512GB SSD, mini PC',950.00,6,'2025-06-01 00:00:00',2,NULL),(33,'PC Oficina Dell OptiPlex','Intel i5, 8GB RAM, 256GB SSD',700.00,13,'2025-06-02 00:00:00',2,NULL),(34,'PC Gaming HP Pavilion','Intel i5, 16GB RAM, GTX 1660, 512GB SSD',1200.00,8,'2025-06-03 00:00:00',2,NULL),(35,'PC Estación de trabajo Apple Mac Pro','Intel Xeon, 64GB RAM, 8TB SSD',10000.00,1,'2025-06-04 00:00:00',2,NULL),(36,'PC Gaming CyberPower','Intel i7, 16GB RAM, RTX 2070, 1TB SSD',1800.00,6,'2025-06-05 00:00:00',2,NULL),(37,'PC Oficina ASUS ExpertCenter','Intel i3, 8GB RAM, 500GB HDD',500.00,14,'2025-06-06 00:00:00',2,NULL),(38,'PC Gaming Dell G5','Intel i7, 16GB RAM, GTX 1660 Ti, 1TB SSD',1400.00,10,'2025-06-07 00:00:00',2,NULL),(39,'PC Multimedia HP ENVY','Intel i7, 16GB RAM, 2TB HDD, 512GB SSD',1600.00,5,'2025-06-08 00:00:00',2,NULL),(40,'PC Compacta Apple Mac Mini','Apple M1, 16GB RAM, 512GB SSD',1000.00,7,'2025-06-09 00:00:00',2,NULL),(41,'Teclado Mecánico Logitech','Switches Cherry MX Red, retroiluminación RGB',120.00,25,'2025-06-10 00:00:00',3,NULL),(42,'Mouse Gamer Razer DeathAdder','Sensor 16000 DPI, RGB ajustable',70.00,30,'2025-06-11 00:00:00',3,NULL),(43,'Alfombrilla Gaming SteelSeries','Gran tamaño, superficie anti-deslizante',30.00,40,'2025-06-12 00:00:00',3,NULL),(44,'Hub USB 3.0 Anker 7 Puertos','Multipuerto USB para conectar varios dispositivos',40.00,35,'2025-06-13 00:00:00',3,NULL),(45,'Adaptador Bluetooth USB','Bluetooth 5.0 para PC y laptops',20.00,50,'2025-06-14 00:00:00',3,NULL),(46,'Cargador USB-C Rápido 65W','Compatible con laptops y smartphones',45.00,20,'2025-06-15 00:00:00',3,NULL),(47,'Audífonos Inalámbricos Sony','Cancelación activa de ruido, Bluetooth',150.00,15,'2025-06-16 00:00:00',3,NULL),(48,'Soporte para Laptop Ergonomico','Altura ajustable, aluminio',35.00,28,'2025-06-17 00:00:00',3,NULL),(49,'Memoria USB SanDisk 128GB','USB 3.1, alta velocidad',35.00,60,'2025-06-18 00:00:00',3,NULL),(50,'Cable HDMI 2.1','Soporta 4K a 120Hz, 2 metros',15.00,45,'2025-06-19 00:00:00',3,NULL),(51,'Base de Enfriamiento para Laptop','3 ventiladores, USB powered',40.00,20,'2025-06-20 00:00:00',3,NULL),(52,'Micrófono USB Blue Yeti','Alta calidad para streaming y podcast',130.00,10,'2025-06-21 00:00:00',3,NULL),(53,'Lector de Tarjetas SD USB 3.0','Compatible con SD, microSD, TF',25.00,33,'2025-06-22 00:00:00',3,NULL),(54,'Cámara Web Logitech C270','720p HD para videollamadas',40.00,25,'2025-06-23 00:00:00',3,NULL),(55,'Cable de Red Ethernet CAT6','Cable RJ45 3 metros',10.00,50,'2025-06-24 00:00:00',3,NULL),(56,'Soporte VESA para Monitor','Montaje ajustable para pantallas',30.00,15,'2025-06-25 00:00:00',3,NULL),(57,'Teclado Inalámbrico Logitech K380','Compacto, Bluetooth',45.00,40,'2025-06-26 00:00:00',3,NULL),(58,'Mouse Pad RGB Razer','Retroiluminación con efectos',50.00,22,'2025-06-27 00:00:00',3,NULL),(59,'Cable USB-C a Lightning','Carga rápida para dispositivos Apple',20.00,50,'2025-06-28 00:00:00',3,NULL),(60,'Soporte Ajustable para Smartphone','Compatible con todos los modelos',15.00,60,'2025-06-29 00:00:00',3,NULL),(61,'Cartucho HP 664 Negro','Compatible con impresoras HP DeskJet y ENVY',22.00,50,'2025-06-30 00:00:00',4,NULL),(62,'Cartucho Canon PG-245 Color','Cartucho de tinta color para Canon PIXMA',25.00,45,'2025-07-01 00:00:00',4,NULL),(63,'Tinta Epson EcoTank Negra','Botella de tinta para impresoras Epson EcoTank',35.00,40,'2025-07-02 00:00:00',4,NULL),(64,'Cartucho Brother LC-203 Negro','Compatible con impresoras Brother',20.00,35,'2025-07-03 00:00:00',4,NULL),(65,'Tinta HP 950XL Negro','Cartucho de alta capacidad para impresoras HP OfficeJet',40.00,30,'2025-07-04 00:00:00',4,NULL),(66,'Cartucho Canon CL-246 Color','Cartucho de tinta color para Canon PIXMA',28.00,38,'2025-07-05 00:00:00',4,NULL),(67,'Tinta Refill Epson 664 Color','Kit para rellenar tintas Epson 664',30.00,50,'2025-07-06 00:00:00',4,NULL),(68,'Cartucho Samsung MLT-D111S','Cartucho de tóner negro para impresoras Samsung',45.00,20,'2025-07-07 00:00:00',4,NULL),(69,'Tinta HP 61 Negro','Cartucho de tinta para impresoras HP',18.00,40,'2025-07-08 00:00:00',4,NULL),(70,'Cartucho Epson T6641 Negro','Cartucho de tinta para Epson Stylus',25.00,50,'2025-07-09 00:00:00',4,NULL),(71,'Tinta Compatible Canon PGI-280 Negro','Cartucho compatible para impresoras Canon',20.00,45,'2025-07-10 00:00:00',4,NULL),(72,'Cartucho Brother TN-1050 Negro','Cartucho de tóner negro para Brother HL',38.00,25,'2025-07-11 00:00:00',4,NULL),(73,'Tinta HP 951XL Negro','Cartucho de tinta de alta capacidad HP OfficeJet',45.00,30,'2025-07-12 00:00:00',4,NULL),(74,'Cartucho Epson T6642 Cian','Cartucho de tinta cian para Epson Stylus',25.00,40,'2025-07-13 00:00:00',4,NULL),(75,'Tinta Refill HP 61 Color','Kit para rellenar tintas HP 61 color',32.00,45,'2025-07-14 00:00:00',4,NULL),(76,'Cartucho Canon PG-545 Negro','Cartucho de tinta negro para Canon PIXMA',23.00,35,'2025-07-15 00:00:00',4,NULL),(77,'Tinta Epson T6643 Magenta','Cartucho de tinta magenta para Epson Stylus',25.00,40,'2025-07-16 00:00:00',4,NULL),(78,'Cartucho Brother LC-3019 Color','Cartucho de tinta color para Brother',35.00,30,'2025-07-17 00:00:00',4,NULL),(79,'Tinta Compatible HP 63 Negro','Cartucho compatible para impresoras HP',20.00,45,'2025-07-18 00:00:00',4,NULL),(80,'Cartucho Epson T6644 Amarillo','Cartucho de tinta amarillo para Epson Stylus',25.00,40,'2025-07-19 00:00:00',4,NULL),(81,'Procesador Intel Core i7-12700K','12 núcleos, 25MB cache, 3.6 GHz',380.00,15,'2025-07-20 00:00:00',5,NULL),(82,'Memoria RAM Corsair Vengeance 16GB','DDR4 3200MHz, kit de 2x8GB',85.00,30,'2025-07-21 00:00:00',5,NULL),(83,'Placa Base ASUS ROG Strix Z690','Soporte para Intel 12ª gen, DDR5',300.00,10,'2025-07-22 00:00:00',5,NULL),(84,'Disco SSD Samsung 970 EVO 1TB','NVMe M.2, hasta 3500MB/s',120.00,25,'2025-07-23 00:00:00',5,NULL),(85,'Fuente de Poder EVGA 650W','80+ Gold, modular',90.00,20,'2025-07-24 00:00:00',5,NULL),(86,'Tarjeta Gráfica NVIDIA RTX 3060','12GB GDDR6, ideal para gaming 1080p',400.00,8,'2025-07-25 00:00:00',5,NULL),(87,'Ventilador Cooler Master 120mm','Ventilador RGB silencioso',20.00,35,'2025-07-26 00:00:00',5,NULL),(88,'Caja PC NZXT H510','Mid Tower, cristal templado',80.00,12,'2025-07-27 00:00:00',5,NULL),(89,'Procesador AMD Ryzen 5 5600X','6 núcleos, 12 hilos, 3.7 GHz base',220.00,20,'2025-07-28 00:00:00',5,NULL),(90,'Memoria RAM G.Skill Trident Z 32GB','DDR4 3600MHz, kit de 2x16GB',180.00,10,'2025-07-29 00:00:00',5,NULL),(91,'Disco HDD Seagate Barracuda 2TB','7200RPM, SATA 6Gb/s',60.00,25,'2025-07-30 00:00:00',5,NULL),(92,'Placa Base MSI B550 Tomahawk','Soporta Ryzen 3ª gen, DDR4',160.00,15,'2025-07-31 00:00:00',5,NULL),(93,'Tarjeta de Sonido Creative Sound Blaster','7.1 canales, USB',70.00,18,'2025-08-01 00:00:00',5,NULL),(94,'Refrigeración Líquida Corsair H100i','240mm, RGB',120.00,10,'2025-08-02 00:00:00',5,NULL),(95,'Fuente de Poder Corsair RM750x','750W, 80+ Gold, modular',120.00,12,'2025-08-03 00:00:00',5,NULL),(96,'Tarjeta Gráfica AMD Radeon RX 6600','8GB GDDR6, gaming 1080p',350.00,9,'2025-08-04 00:00:00',5,NULL),(97,'Caja PC Cooler Master MasterBox','Mid Tower, buena ventilación',70.00,14,'2025-08-05 00:00:00',5,NULL),(98,'Procesador Intel Core i5-12400F','6 núcleos, 12 hilos, 2.5 GHz base',180.00,20,'2025-08-06 00:00:00',5,NULL),(99,'Memoria RAM Kingston HyperX 8GB','DDR4 2666MHz',40.00,30,'2025-08-07 00:00:00',5,NULL),(100,'Disco SSD Crucial MX500 500GB','SATA III, 560MB/s lectura',55.00,25,'2025-08-08 00:00:00',5,NULL),(101,'Impresora HP DeskJet 3755','Impresora multifunción compacta, Wi-Fi',90.00,18,'2025-08-09 00:00:00',6,NULL),(102,'Impresora Canon PIXMA TS6320','Impresora a color, escáner y copiadora',120.00,15,'2025-08-10 00:00:00',6,NULL),(103,'Impresora Epson EcoTank L3150','Impresora multifunción con tanque de tinta',200.00,12,'2025-08-11 00:00:00',6,NULL),(104,'Impresora Brother HL-L2350DW','Impresora láser monocromo, dúplex automático',150.00,10,'2025-08-12 00:00:00',6,NULL),(105,'Impresora HP OfficeJet Pro 9015','Impresora multifunción para oficina, Wi-Fi',220.00,8,'2025-08-13 00:00:00',6,NULL),(106,'Impresora Canon imageCLASS MF644Cdw','Impresora láser color, dúplex y Wi-Fi',350.00,6,'2025-08-14 00:00:00',6,NULL),(107,'Impresora Epson WorkForce WF-2830','Multifunción con fax y Wi-Fi',130.00,14,'2025-08-15 00:00:00',6,NULL),(108,'Impresora Brother DCP-L2550DW','Multifunción láser monocromo con Wi-Fi',180.00,9,'2025-08-16 00:00:00',6,NULL),(109,'Impresora HP ENVY Photo 7155','Impresora fotográfica a color',160.00,11,'2025-08-17 00:00:00',6,NULL),(110,'Impresora Canon PIXMA TR4520','Multifunción con fax y Wi-Fi',110.00,13,'2025-08-18 00:00:00',6,NULL),(111,'Impresora Epson Expression Home XP-4100','Multifunción compacta para hogar',100.00,15,'2025-08-19 00:00:00',6,NULL),(112,'Impresora Brother HL-L2370DW','Impresora láser monocromo con dúplex',140.00,12,'2025-08-20 00:00:00',6,NULL),(113,'Impresora HP LaserJet Pro M15w','Impresora láser compacta, Wi-Fi',120.00,14,'2025-08-21 00:00:00',6,NULL),(114,'Impresora Canon PIXMA MG3620','Impresora multifunción económica',80.00,20,'2025-08-22 00:00:00',6,NULL),(115,'Impresora Epson EcoTank ET-2720','Impresora multifunción con tanque de tinta',190.00,10,'2025-08-23 00:00:00',6,NULL),(116,'Impresora Brother MFC-J805DW','Multifunción tinta con sistema de tanque',210.00,8,'2025-08-24 00:00:00',6,NULL),(117,'Impresora HP DeskJet 2755e','Impresora básica inalámbrica',75.00,25,'2025-08-25 00:00:00',6,NULL),(118,'Impresora Canon PIXMA G6020','Sistema de tanque de tinta, alta capacidad',250.00,7,'2025-08-26 00:00:00',6,NULL),(119,'Impresora Epson WorkForce Pro WF-4730','Multifunción profesional, dúplex',300.00,5,'2025-08-27 00:00:00',6,NULL),(120,'Impresora Brother HL-L5200DW','Láser monocromo, alta velocidad, dúplex',280.00,6,'2025-08-28 00:00:00',6,NULL),(121,'Teclado Mecánico Redragon K552','Teclado mecánico retroiluminado, switches rojos',55.00,25,'2025-08-29 00:00:00',7,NULL),(122,'Mouse Gamer Logitech G502 HERO','Sensor de alta precisión, 11 botones programables',70.00,20,'2025-08-30 00:00:00',7,NULL),(123,'Auriculares HyperX Cloud II','Auriculares con micrófono, sonido envolvente 7.1',100.00,15,'2025-08-31 00:00:00',7,NULL),(124,'Silla Gamer Cougar Armor One','Ergonómica, ajustable, diseño racing',180.00,10,'2025-09-01 00:00:00',7,NULL),(125,'Monitor ASUS TUF Gaming 27\"','144Hz, 1ms, Full HD',220.00,8,'2025-09-02 00:00:00',7,NULL),(126,'Alfombrilla Gamer SteelSeries QcK','Superficie suave, base antideslizante',20.00,30,'2025-09-03 00:00:00',7,NULL),(127,'Controlador Xbox Series X','Inalámbrico, compatible con PC y consola',65.00,18,'2025-09-04 00:00:00',7,NULL),(128,'Gamepad Logitech F310','Controlador con cable para PC',30.00,25,'2025-09-05 00:00:00',7,NULL),(129,'Tarjeta Gráfica NVIDIA RTX 4070 Ti','12GB GDDR6X, alto rendimiento',800.00,5,'2025-09-06 00:00:00',7,NULL),(130,'Cámara Logitech StreamCam','Ideal para streamers, 1080p 60fps',150.00,12,'2025-09-07 00:00:00',7,NULL),(131,'Micrófono Blue Yeti','USB, grabación profesional, ideal para streaming',130.00,10,'2025-09-08 00:00:00',7,NULL),(132,'Auriculares Razer Kraken X','Ligero, sonido envolvente 7.1, micrófono flexible',60.00,20,'2025-09-09 00:00:00',7,NULL),(133,'Teclado Logitech G213 Prodigy','Teclado gaming con retroiluminación RGB',65.00,22,'2025-09-10 00:00:00',7,NULL),(134,'Mousepad RGB Razer Goliathus','Iluminación RGB, gran superficie',45.00,15,'2025-09-11 00:00:00',7,NULL),(135,'Silla Gamer Razer Iskur','Silla ergonómica con soporte lumbar',350.00,6,'2025-09-12 00:00:00',7,NULL),(136,'Monitor Gamer MSI Optix 32\"','Curvo, 165Hz, 1ms',320.00,7,'2025-09-13 00:00:00',7,NULL),(137,'Consola Xbox Series S','512GB SSD, gaming digital',300.00,10,'2025-09-14 00:00:00',7,NULL),(138,'Consola PlayStation 5','Alta gama, disco y digital, DualSense incluido',600.00,6,'2025-09-15 00:00:00',7,NULL),(139,'Volante Logitech G29 Driving Force','Simulación de conducción realista',290.00,4,'2025-09-16 00:00:00',7,NULL),(140,'Base de carga DualSense PS5','Carga simultánea de dos controles',40.00,20,'2025-09-17 00:00:00',7,NULL),(141,'Cámara Canon EOS Rebel T7','DSLR 24.1MP, lente 18-55mm, video Full HD',450.00,10,'2025-09-18 00:00:00',8,NULL),(142,'Cámara Nikon D3500','DSLR 24.2MP, lente 18-55mm, Bluetooth',500.00,8,'2025-09-19 00:00:00',8,NULL),(143,'Cámara Sony Alpha a6100','Mirrorless 24.2MP, video 4K, lente 16-50mm',700.00,7,'2025-09-20 00:00:00',8,NULL),(144,'GoPro HERO11 Black','Cámara deportiva, video 5.3K, resistente al agua',500.00,12,'2025-09-21 00:00:00',8,NULL),(145,'Cámara Fujifilm Instax Mini 12','Cámara instantánea con película mini',80.00,20,'2025-09-22 00:00:00',8,NULL),(146,'Webcam Logitech C920','Full HD 1080p, micrófono estéreo',100.00,15,'2025-09-23 00:00:00',8,NULL),(147,'Cámara Panasonic Lumix G7','Mirrorless 16MP, video 4K, lente 14-42mm',600.00,6,'2025-09-24 00:00:00',8,NULL),(148,'Cámara Canon PowerShot G7 X Mark II','Compacta, sensor 20.1MP, video Full HD',550.00,5,'2025-09-25 00:00:00',8,NULL),(149,'Cámara Nikon COOLPIX B500','Compacta, 40x zoom óptico, Wi-Fi',300.00,10,'2025-09-26 00:00:00',8,NULL),(150,'Cámara de Seguridad TP-Link Tapo C200','Cámara Wi-Fi rotatoria, visión nocturna',40.00,30,'2025-09-27 00:00:00',8,NULL),(151,'Cámara de Acción AKASO Brave 7 LE','4K, resistente al agua, con control remoto',120.00,18,'2025-09-28 00:00:00',8,NULL),(152,'Webcam Razer Kiyo','Con anillo de luz, 1080p, streaming',130.00,9,'2025-09-29 00:00:00',8,NULL),(153,'Cámara Sony ZV-1','Compacta para vlogging, video 4K, micrófono integrado',750.00,6,'2025-09-30 00:00:00',8,NULL),(154,'Cámara Canon EOS M200','Mirrorless, sensor 24.1MP, video 4K',550.00,8,'2025-10-01 00:00:00',8,NULL),(155,'Kit Canon EOS 2000D','DSLR para principiantes, lente 18-55mm',400.00,10,'2025-10-02 00:00:00',8,NULL),(156,'Cámara Dash Cam Garmin Mini 2','Cámara para coche, video 1080p',130.00,14,'2025-10-03 00:00:00',8,NULL),(157,'Cámara Sony Handycam CX405','Videocámara HD con zoom óptico 30x',250.00,7,'2025-10-04 00:00:00',8,NULL),(158,'Drone DJI Mini 3','Cámara aérea 4K, vuelo estabilizado',600.00,5,'2025-10-05 00:00:00',8,NULL),(159,'Cámara Olympus OM-D E-M10 Mark IV','Mirrorless con estabilización 5 ejes',700.00,4,'2025-10-06 00:00:00',8,NULL),(160,'Kit de Cámara Nikon Z50','Mirrorless con lente 16-50mm y accesorios',950.00,3,'2025-10-07 00:00:00',8,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resenias`
--

LOCK TABLES `resenias` WRITE;
/*!40000 ALTER TABLE `resenias` DISABLE KEYS */;
/*!40000 ALTER TABLE `resenias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'jhonael@gmail.com','jhonael2020','2025-05-27 15:04:24','2025-05-27 15:04:24'),(2,'admin@admin','admin','2025-05-27 15:04:24','2025-05-27 15:04:24');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas_productos`
--

LOCK TABLES `ventas_productos` WRITE;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 12:32:07
