<?php

function order_first_order_check($obj, $data, $rout) {

    if ($rout == 'END') {
        $cart_min = $obj->PHPShopSystem->getSerilizeParam('admoption.cart_minimum');

        // Сообщение о регистрации
        $mes = $obj->lang('order_registration');
        if (empty($mes))
            $mes = 'Требуется обязательная регистрация пользователя';

        if (!empty($_SESSION['UsersId'])) {
            $PHPShopOrm = new PHPShopOrm($obj->objBase);

            $data = $PHPShopOrm->select(array('id'), array('user' => '=' . $_SESSION['UsersId']), false, array('limit' => 1));

            if (empty($data['id']) and $cart_min > $obj->PHPShopCart->getSum(false)) {
                $obj->set('orderContent', $obj->message($obj->lang('cart_minimum') . ' ' . $cart_min, $obj->lang('bad_order_mesage_2')));
            } else {
                $obj->set('orderContent', parseTemplateReturn($obj->template_order_forma));
            }
        } else {
            $obj->set('orderContent', PHPShopText::notice($mes));
        }
    }
}

function productcartforma_hook($obj,$var,$rout) {
    global $PHPShopOrder;
    if($rout == 'START') {
 
        //пересчет суммы для скидки
        foreach ($obj->PHPShopCart->_CART as $valuecart) {
            $PHPShopOrm = new PHPShopOrm($GLOBALS['SysValue']['base']['table_name2']);
            $row = $PHPShopOrm->select(array('price_n'), array('id' => '='.$valuecart['id']), array('order' => 'id desc'), array('limit' => 1));

            if($row['price_n']==0):
                $sumnew += $valuecart['price']*$valuecart['num'];
            else:
                $sumoldi += $valuecart['price']*$valuecart['num'];
            endif;
        }
        
        $obj->set('currency',$PHPShopOrder->default_valuta_code);
        $cart=$obj->PHPShopCart->display('ordercartforma');
        $obj->set('display_cart',$cart);
        $obj->set('cart_num',$obj->PHPShopCart->getNum());
        $obj->set('cart_sum',$obj->PHPShopCart->getSum(false));
        if($sumnew>0)
            $obj->set('discount',$PHPShopOrder->ChekDiscount($sumnew+$sumoldi));
        else
            $obj->set('discount','0');
        $obj->set('cart_weight',$obj->PHPShopCart->getWeight());
 
        // Стоимость доставки
        PHPShopObj::loadClass('delivery');
        $obj->set('delivery_price',PHPShopDelivery::getPriceDefault());
 
        // Итоговая стоимость
        $obj->set('total',$sumoldi+$obj->get('delivery_price')+$PHPShopOrder->returnSumma($sumnew,$obj->get('discount')) );
 
        return ParseTemplateReturn('./phpshop/templates/'.$_SESSION['skin'].'/order/cart.tpl',true);
    }
}

$addHandler = array
    (
    '#order' => 'order_first_order_check',
    'product'=>'productcartforma_hook'
);
?>