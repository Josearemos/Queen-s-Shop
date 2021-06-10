
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `cart` (
                        `cart_id` int(11) NOT NULL,
                        `user_id` int(11) NOT NULL,
                        `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `product` (
                           `item_id` int(11) NOT NULL,
                           `item_brand` varchar(200) NOT NULL,
                           `item_name` varchar(255) NOT NULL,
                           `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Consolas', 'Play Station 5', 500.00, './assets/productos/1.png', '2021-06-08 13:54:22'),
(2, 'Smartphones & Tablets', 'Xiaomi Redmi Note 10', 200.00, './assets/productos/2.png', '2021-06-08 13:54:22'),
(3, 'martphones & Tablets', 'Samsung Galaxy S10', 730.00, './assets/productos/3.png', '2021-06-08 13:54:22'),
(4, 'TVs & PCs', 'Razer Blade 15 Model FHD', 1800.00, './assets/productos/4.png', '2021-06-08 13:54:22'),
(5, 'TVs & PCs', 'TV LED LG 43UN73906LE', 400.00, './assets/productos/5.png', '2021-06-08 13:54:22'),
(6, 'Consolas', 'Nintendo Switch Negra', 370.00, './assets/productos/6.png', '2021-06-08 13:54:22'),
(7, 'Smartphones & Tablets', 'Apple iPad Pro 2020', 830.00, './assets/productos/7.png', '2021-06-08 13:54:22'),
(8, 'Consolas', 'Play Station 4', 300.00, './assets/productos/8.png', '2021-06-08 13:54:22'),
(9, 'Consolas', 'XBox One X', 265.00, './assets/productos/9.png', '2021-06-08 13:54:22'),
(10, 'TVs & PCs', 'Samsung TV QLED 4K 2017', 500.00, './assets/productos/10.png', '2021-06-08 13:54:22'),
(11, 'TVs & PCs', 'Mi LED TV 4S', 400.00, './assets/productos/11.png', '2021-06-08 13:54:22'),
(12, 'TVs & PCs', 'MSI GT75 Titan', 3750.00, './assets/productos/12.png', '2021-06-08 13:54:22'),
(13, 'TVs & PCs', 'Wipoid PC Gaming Wizard', 800.00, './assets/productos/13.png', '2021-06-08 13:54:22'),
(14, 'Smartphones & Tablets', 'Huawei MediaPad T3', 200.00, './assets/productos/14.png', '2021-06-08 13:54:22'),
(15, 'Smartphones & Tablets', 'Samsung Galaxy Tab S3', 300.00, './assets/productos/15.png', '2021-06-08 13:54:22'),
(16, 'Consolas', 'Nintendo Switch Colores', 400.00, './assets/productos/16.png', '2021-06-08 13:54:22'),
(17, 'Smartphones & Tablets', 'iPhone 12', 850.00, './assets/productos/17.png', '2021-06-08 13:54:22'),
(18, 'Smartphones & Tablets', 'Samsung Galaxy S20', 760.00, './assets/productos/18.png', '2021-06-08 13:54:22'),
(19, 'TVs & PCs', 'Hades I7', 1600.00, './assets/productos/19.png', '2021-06-08 13:54:22'),
(20, 'TVs & PCs', 'Sony Bravia X3830C', 700.00, './assets/productos/20.png', '2021-06-08 13:54:22');


CREATE TABLE `user` (
                        `user_id` int(11) NOT NULL,
                        `first_name` varchar(100) NOT NULL,
                        `last_name` varchar(100) NOT NULL,
                        `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'JoseAntonio', 'Reina', '2021-06-08 14:08:36'),
(2, 'Limon', 'Xello', '2021-06-08 14:08:36');



CREATE TABLE `wishlist` (
                            `cart_id` int(11) NOT NULL,
                            `user_id` int(11) NOT NULL,
                            `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `cart`
    ADD PRIMARY KEY (`cart_id`);


ALTER TABLE `product`
    ADD PRIMARY KEY (`item_id`);


ALTER TABLE `user`
    ADD PRIMARY KEY (`user_id`);



ALTER TABLE `cart`
    MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `product`
    MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `user`
    MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;