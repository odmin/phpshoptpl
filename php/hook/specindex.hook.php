<?php
/**
 * Уменьшение описания
 */
function product_grid_hook($obj,$row){
    // Изображение наличие на складе
        if($row['items']>0) {
            $obj->set('productSklad','<div class="productSklad text-center"><span>Есть в наличии</span></div>');
            $obj->set('classHover', '');
        }

        if($row['sklad']==1) {
            $obj->set('productSklad','<div class="productSklad-no text-center"><span>Под заказ</span></div>');
            $obj->set('classHover', 'product-two_hover');
        }
}
 
$addHandler=array
        (
        'product_grid'=>'product_grid_hook'
);
 
?>