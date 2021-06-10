<!--   producto carrito  -->
<?php
$db = new DBController();
$product = new Product($db);
$Cart = new Cart($db);

if($_SERVER['REQUEST_METHOD'] == "POST"){
    if (isset($_POST['top_sale_submit'])){
        $Cart->addToCart($_POST['user_id'], $_POST['item_id']);
    }
}

$item_id = isset($_GET['item_id']) ? $_GET['item_id'] : 1;
foreach ($product->getData() as $item):
if ($item['item_id'] == $item_id):
?>

<section id="product" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <img src="<?php echo isset($item['item_image']) ? $item['item_image'] : "./assets/products/1.png" ?>" alt="product" class="img-fluid">
                <div class="form-row pt-4 font-size-16 font-baloo">
                    <div class="col">
                        <button type="submit" class="btn btn-danger form-control">Comprar</button>
                    </div>
                    <div class="col">
                        <form method="post">
                            <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?? '1'; ?>">
                            <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                            <?php
                            if (in_array($item['item_id'], $Cart->getCartId($product->getData('cart')) ?? [])){
                                echo '<button type="submit" disabled class="btn btn-warning form-control">En el carrito</button>';
                            }else{
                                echo '<button type="submit" name="top_sale_submit" class="btn btn-success form-control">Añadir al carrito</button>';
                            }
                            ?>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 py-5">
                <h5 class="font-baloo font-size-20"><?php echo isset($item['item_name']) ? $item['item_name'] : "Unknown"; ?></h5>
                <small>by <?php echo isset($item['item_brand']) ? $item['item_brand'] : "Brand"; ?></small>
                <div class="d-flex">
                    <div class="rating text-warning font-size-12">
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="far fa-star"></i></span>
                    </div>
                </div>
                <hr class="m-0">
                <table class="my-3">
                    <tr class="font-rale font-size-14">
                        <td>Antes:</td>
                        <td><strike><?php echo isset($item['item_last_price']) ? $item['item_last_price'] : 0; ?>€</strike></td>
                    </tr>
                    <tr class="font-rale font-size-14">
                        <td>Final:</td>
                        <<td class="font-size-20 text-danger"><span><?php echo isset($item['item_price']) ? $item['item_price'] : 0; ?>€</span><small class="text-dark font-size-12">&nbsp;&nbsp;Incluye IVA</small></td>
                    </tr>
                </table>
                <div id="policy">
                    <div class="d-flex">
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-retweet border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">10 Días <br> Descambio</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-truck  border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">Envío <br>Entrega</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-check-double border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">1 Año De <br> Garantía</a>
                        </div>
                    </div>
                </div>
                <hr>
                <div id="order-details" class="font-rale d-flex flex-column text-dark">
                    <small>Entrega: Jun 1  - Ago 1</small>
                    <small>Vendedor y Distribuidor: <a href="./index.php">Queen's Shop</a></small>
                    <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp;Sevilla - 41020</small>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-6">
                        <div class="qty d-flex">
                            <h6 class="font-baloo">Cant:</h6>
                            <div class="px-4 d-flex font-rale">
                                <button class="qty-up border bg-light" data-id="<?php echo $item['item_id'] ?? '0'; ?>"><i class="fas fa-angle-up"></i></button>
                                <input type="text" data-id="<?php echo $item['item_id'] ?? '0'; ?>" class="qty_input border px-2 w-100 bg-light" disabled value="1" placeholder="1">
                                <button data-id="<?php echo $item['item_id'] ?? '0'; ?>" class="qty-down border bg-light"><i class="fas fa-angle-down"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12">
                <br><br>
                <h6 class="font-rubik">Descripción</h6>
                <hr>
                <p class="font-rale font-size-14"><?php echo isset($item['description']) ? $item['description'] : 0; ?></p>
                </div>
        </div>
    </div>
</section>

<?php
endif;
endforeach;
?>