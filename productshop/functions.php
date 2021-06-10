<?php

//MySQL Connection
require("database/DBController.php");

// Clase carrito
require ('database/Cart.php');

//MySQL Product
require("database/Product.php");

//DBControlador
$db = new DBController();
$product = new Product($db);

// objeto carrito
$Cart = new Cart($db);