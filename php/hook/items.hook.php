<?php
/**
 * Изменение вида информации о складе
 */
function checkStore_hook($obj,$row, $rout) {
    $navi = $GLOBALS['SysValue']['nav']['nav'];

    if($navi=="UID") {
        // Изображение наличие на складе
        if($row['items']>0) {
            $obj->set('productSklad','<div class="product-info-box-order-box-sklad">Есть в наличии</div>');
        }

        if($row['sklad']==1) {
            $obj->set('productSklad','<div class="product-info-box-order-box-sklad-no">Под заказ</div>');
        }
    }
    elseif($navi=="CID") {
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
    else {
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

    return true;
}
 
$addHandler=array
        (
        'checkStore'=>'checkStore_hook'
);

?>