-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2021 a las 11:46:50
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `queen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
                        `cart_id` int(11) NOT NULL,
                        `user_id` int(11) NOT NULL,
                        `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
                           `item_id` int(11) NOT NULL,
                           `item_brand` varchar(200) NOT NULL,
                           `item_name` varchar(255) NOT NULL,
                           `description` text NOT NULL,
                           `item_last_price` double(10,2) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `description`, `item_last_price`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Consolas', 'Play Station 5', 'Experimenta cargas superrápidas gracias a una unidad de estado sólido (SSD) de alta velocidad, una inmersión más profunda con retroalimentación háptica, gatillos adaptivos y el nuevo audio 3D, además de una nueva generación de increíbles juegosde PlayStation®.\r\n\r\nA la velocidad de la luz\r\nAprovecha la potencia de una unidad de estado sólido con E/S integradas, una CPU y una GPU personalizadas que reinventan las reglas de lo que una consola PlayStation® es capaz de hacer.\r\n\r\nJuegos alucinantes\r\nDéjate sorprender por unos gráficos increíbles y experimenta nuevas funciones de PS5™.\r\n\r\nUna inmersión que te dejará sin aliento\r\nDescubre una experiencia de juego más intensa mediante tecnología háptica, gatillos adaptables y audio 3D.', 650.00, 500.00, './assets/productos/1.png', '2021-06-08 13:54:22'),
(2, 'Smartphones & Tablets', 'Xiaomi Redmi Note 10', 'El Xiaomi Redmi Note 10 5G está listo para desafiar los límites del rendimiento de los juegos. Su tecnología de procesamiento de 7 nm y su módem integrado ofrecen un mayor rendimiento con un menor consumo de energía para que los usuarios puedan disfrutar de un uso prolongado de su dispositivo sin preocuparse por el consumo de energía. Con soporte para 5G dual SIM, Redmi Note 10 es una bestia de productividad.', 310.00, 200.00, './assets/productos/2.png', '2021-06-08 13:54:22'),
(3, 'martphones & Tablets', 'Samsung Galaxy S10', 'Como viene siendo normal en la compañía, nos encontramos ante uno de los máximos exponentes de la gama alta Android para 2019. Como gama alta que es, el Galaxy S10 incorpora el último procesador Exynos, 8 GB de memoria RAM y una pantalla AMOLED Infinity-O con resolución 2K+, así como una triple cámara trasera.', 950.00, 730.00, './assets/productos/3.png', '2021-06-08 13:54:22'),
(4, 'TVs & PCs', 'Razer Blade 15 Model FHD', 'Portátil Gaming Razer Blade 15 Base Model D6NT, i7, 16GB, 512GB SSD, GeForce RTX 3060 8GB\r\nAceleración por IA de DLSS; DLSS de NVIDIA es la óptima tecnología de renderizado de IA que lleva la frecuencia de fotogramas a un nuevo nivel sin poner en riesgo la calidad de la imagen utilizando procesadores de IA de núcleos Tensor dedicados en las GPU GeForce RTX; esto te proporciona el margen de rendimiento necesario para maximizar la configuración y las resoluciones y ofrecer así una experiencia visual adecuada.\r\n\r\nRendimiento definitivo. Estés donde estés, el procesador de 10a generación Intel Core i7-10750H de 6 núcleos proporciona el rendimiento definitivo con 2.6 GHz, 5 GHz Base, Max Turbo; Intel Wi-Fi 6 AX201, Gig+ofrece el adecuado rendimiento inalámbrico para juegos.', 2050.00, 1800.00, './assets/productos/4.png', '2021-06-08 13:54:22'),
(5, 'TVs & PCs', 'TV LED LG 43UN73906LE', 'Disfruta del mejor contenido en el Smart TV 4K con Inteligencia Artificial y con panel IPS con hasta 178º de ángulo de visión\r\nCompatible con HDR10 Pro y HLG: Disfruta de la auténtica experiencia cinematográfica en tu casa\r\nSonido Ultra Surround con experiencia envolvente de 20W de potencia.', 650.00, 400.00, './assets/productos/5.png', '2021-06-08 13:54:22'),
(6, 'Consolas', 'Nintendo Switch Negra', 'Nintendo Switch se transforma para adaptarse a tu situación y te permite jugar a los títulos que quieras aunque no tengas mucho tiempo.\r\n\r\nEs una nueva era en la que no tienes que adaptar tu vida a los videojuegos: ahora es la consola la que se adapta a tu vida.\r\n\r\n¡Disfruta de tus juegos cuando quieras, donde quieras y como quieras!', 435.00, 370.00, './assets/productos/6.png', '2021-06-08 13:54:22'),
(7, 'Smartphones & Tablets', 'Apple iPad Pro 2020', 'Tu próximo ordenador no es un ordenador. Un diseño deslumbrante a toda pantalla. Una velocidad que ya quisieran la mayoría de portátiles PC. Unas cámaras que transforman la realidad. Y puedes usarlo con el dedo, un lápiz, un teclado y ahora también un trackpad. Es el iPad Pro.', 1100.00, 830.00, './assets/productos/7.png', '2021-06-08 13:54:22'),
(8, 'Consolas', 'Play Station 4', 'PS4 es un sistema de entretenimiento digital y la cuarta consola de sobremesa desarrollada por Sony Computer Entertainment. Cuenta con un procesador APU de ocho núcleos x86-64 Jaguar desarrollado por AMD. La GPU también fabricada por AMD Radeon tiene una potencia de procesamiento de 1,84 Teraflops.', 590.00, 300.00, './assets/productos/8.png', '2021-06-08 13:54:22'),
(9, 'Consolas', 'XBox One X', 'Xbox One X es la consola de sobremesa más potente hasta ahora, no es por capricho. Su ficha técnica es toda una declaración de intenciones a nivel de fuerza bruta para alcanzar el objetivo principal marcado por Microsoft: juego nativo a 4K', 450.00, 265.00, './assets/productos/9.png', '2021-06-08 13:54:22'),
(10, 'TVs & PCs', 'Samsung TV QLED 4K', 'Los nuevos televisores no sólo mejora su rendimiento en temas de imagen y sonido, también en otros apartados que irán ajustando con nuevas actualizaciones convirtiéndolo también en un pilar importante para el futuro del internet de las cosas.', 650.00, 500.00, './assets/productos/10.png', '2021-06-08 13:54:22'),
(11, 'TVs & PCs', 'Mi LED TV 4S', 'El panel que monta la televisión de Xiaomi es del tipo IPS con una diagonal de 55 pulgadas. La resolución es 3840 x 2160 pixeles o lo que es lo mismo Ultra HD (UHD) / 4K / 2160p con tecnología de iluminación Edge LED, profundidad de color 10 bits (8 bits + FRC), brillo de 330 nits y tasa de refresco de 60 Hz.', 480.00, 400.00, './assets/productos/11.png', '2021-06-08 13:54:22'),
(12, 'TVs & PCs', 'MSI GT75 Titan', 'MSI es la primera marca de portátiles gaming en el mundo de tener la última generación de gráficas NVIDIA incluidas. El rendimiento de la nueva generación de gráficas GeForce® GTX 1080 es un 40% superior a la serie GeForce® GTX 900M Series. Con la innovadora solución Cooler Boost y las características especiales para gamers, la gráfica GeForce® GTX 1080 está preparada para liberar toda su potencia en los portátiles gaming MSI.', 6650.00, 3750.00, './assets/productos/12.png', '2021-06-08 13:54:22'),
(13, 'TVs & PCs', 'Wipoid PC Gaming Wizard', 'Prepárate para entrar en mundos desconocidos como disfrutar de películas o juegos 4K, o bien, adéntrate en el mundo de la realidad virtual.Este modelo esta pensado para que obtengas un rendimiento notable y para ello hemos diseñado su configuración incluyendo procesadores Intel ryzen.Adelántate con las Gráficas GeForce RTX. Saca el mayor rendimiento en los útimos juegos con Ray Tracing.', 970.00, 800.00, './assets/productos/13.png', '2021-06-08 13:54:22'),
(14, 'Smartphones & Tablets', 'Huawei MediaPad T3', 'Cuenta con un procesador de 4 núcleos reforzado por 2 GB de RAM. La memoria interna es de 32 GB. Para que disfrutes de tu tablet Huawei al máximo, la MediaPad T3 10 viene con pantalla de 9,6 pulgadas y batería de larga duración. Cuenta con una cámara trasera de 5 megapíxeles, mientras que la frontal es de 2 mpx.', 650.00, 200.00, './assets/productos/14.png', '2021-06-08 13:54:22'),
(15, 'Smartphones & Tablets', 'Samsung Galaxy Tab S3', 'El Samsung Galaxy Tab S3 9.7 es el nuevo tablet que Samsung con una pantalla Super AMOLED a 1536 x 2048 pixels de resolución, procesador quad-core Snapdragon 820, 4GB de RAM, 32GB de almacenamiento interno, cámara principal de 13 megapixels con flash LED, cámara frontal de 5 megapixels, lector de huellas dactilares, puerto USB-C, batería de 6000 mAh y Android Nougat, con variantes solo Wi-Fi y LTE.', 420.00, 300.00, './assets/productos/15.png', '2021-06-08 13:54:22'),
(16, 'Consolas', 'Nintendo Switch Colores', 'Nintendo Switch se transforma para adaptarse a tu situación y te permite jugar a los títulos que quieras aunque no tengas mucho tiempo.\r\n\r\nEs una nueva era en la que no tienes que adaptar tu vida a los videojuegos: ahora es la consola la que se adapta a tu vida.\r\n\r\n¡Disfruta de tus juegos cuando quieras, donde quieras y como quieras!', 750.00, 400.00, './assets/productos/16.png', '2021-06-08 13:54:22'),
(17, 'Smartphones & Tablets', 'iPhone 12', 'El Apple iPhone 12 es parte de la serie 12 del iPhone de Apple, llegando en el 2020 con un diseño que recuerda al iPhone 4 y conectividad 5G. El iPhone 12 cuenta con una pantalla Super Retina XDR de 6.1 pulgadas de tecnología OLED y está potenciado por el nuevo procesador A14 Bionic, con opciones de 64GB, 128GB o 256GB de almacenamiento interno.', 930.00, 850.00, './assets/productos/17.png', '2021-06-08 13:54:22'),
(18, 'Smartphones & Tablets', 'Samsung Galaxy S20', 'El Galaxy S20 de Samsung es la nueva generación de la compañía surcoreana, un terminal que hace gala de la última tecnología de pantalla con un panel QHD+ con 120 Hz de refresco y 240 Hz de muestreo que monta una triple cámara y el Exynos 990 de ocho núcleos.', 790.00, 760.00, './assets/productos/18.png', '2021-06-08 13:54:22'),
(19, 'TVs & PCs', 'Hades I7', 'Intel® Core™ i7-10700K\r\nASUS® PRIME Z490-P\r\n16 GB Corsair VENGEANCE 3000 MHz\r\n12 GB GEFORCE RTX 3060\r\nWindows 10 Home', 1750.00, 1600.00, './assets/productos/19.png', '2021-06-08 13:54:22'),
(20, 'TVs & PCs', 'Sony Bravia X3830C', 'Televisor Digital a Color con Pantalla de Cristal Líquido...\r\nEl TV LCD Sony Bravia KDL32BX300 es perfecto para las salas, dormitorios y cocinas para disfrutar de imágenes de alta definición.', 850.00, 700.00, './assets/productos/20.png', '2021-06-08 13:54:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
                        `user_id` int(11) NOT NULL,
                        `first_name` varchar(100) NOT NULL,
                        `last_name` varchar(100) NOT NULL,
                        `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'JoseAntonio', 'Reina', '2021-06-08 14:08:36'),
(2, 'Limon', 'Xello', '2021-06-08 14:08:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
                            `cart_id` int(11) NOT NULL,
                            `user_id` int(11) NOT NULL,
                            `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`cart_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`item_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
    MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
    MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
    MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
