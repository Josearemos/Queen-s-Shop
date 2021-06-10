<!-- Productos -->
<?php
$db = new DBController();
$Cart = new Cart($db);
$product = new Product($db);
$product_shuffle = $product->getData();

if($_SERVER['REQUEST_METHOD'] == "POST"){
    if (isset($_POST['top_sale_submit'])){
        // call method addToCart
        $Cart->addToCart($_POST['user_id'], $_POST['item_id']);
    }
}
?>


<a name="productos"></a>
<section id="special-price">
    <div class="container">
        <h4 class="font-rubik font-size-20">Productos</h4>
        <div id="filters" class="button-group text-right font-baloo font-size-16">
            <button class="btn is-checked" data-filter="*">Todos</button>
            <button class="btn" data-filter=".Smartphones">Smartphones & Tablets</button>
            <button class="btn" data-filter=".Consolas">Consolas</button>
            <button class="btn" data-filter=".TVs">TVs & PCs </button>
        </div>
        <div class="grid">
            <?php array_map(function ($item) use ($product, $Cart) { ?>
                <div class="grid-item border <?php echo isset($item['item_brand']) ? $item['item_brand'] : "Brand"; ?>">
                <div class="item py-2" style="width: 200px;">
                    <div class="product font-rale">
                        <a href="<?php printf('%s?item_id=%s', 'product.php',  $item['item_id']); ?>"><img src="<?php echo isset($item['item_image']) ? $item['item_image'] : "./assets/products/13.png"; ?>" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6><?php echo isset($item['item_name']) ? $item['item_name'] : "Unknown"; ?></h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span><?php echo isset($item['item_price']) ? $item['item_price'] : 0 ?>€</span>
                            </div>
                            <form method="post">
                                <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?? '1'; ?>">
                                <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                                <?php
                                if (in_array($item['item_id'], $Cart->getCartId($product->getData('cart')) ?? [])){
                                    echo '<button type="submit" disabled class="btn btn-success font-size-12">En el carrito</button>';
                                }else{
                                    echo '<button type="submit" name="top_sale_submit" class="btn btn-warning font-size-12">Añadir al carrito</button>';
                                }
                                ?>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <?php },$product_shuffle) ?>
        </div>
    </div>
</section>