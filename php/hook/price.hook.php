<?php

/**
 * ���������� ���� ���-�� ������ � ������� ��� �����-�����
 * @param array $obj ������
 * @param array $data ������ ������
 * @param string $rout ������ ����� ������ ������ [START|MIDDLE|END]
 */
function product_pricecore_hook($obj,$data,$rout) {
    if($rout == 'END') {
        $dis=null;
        // ��������� � ������ ������ � ��������
        if(is_array($data))
            foreach($data as $row) {
                $name=PHPShopText::a($obj->seourl($row),$row['name']);
                $idn='n'.$row['id'];
                $cart=PHPShopText::a('javascript:AddToCartNum('.$row['id'].',\''.$idn.'\')',PHPShopText::img('images/shop/basket_put.gif',false,'absMiddle'),$obj->lang('product_sale'));

                $num=PHPShopText::setInputText(null,"$idn",1,30);
                $dis.=$obj->tr('#ffffff',$name,$obj->price($row).' '.$obj->currency(),$num,$cart);
            }
    return $dis;
    }
}


$addHandler=array
        (
        'product'=>'product_pricecore_hook',
);
?>