<?php
/**
 * ��������� ���� ���������� � ������
 */
function checkStore_hook($obj,$row, $rout) {
    $navi = $GLOBALS['SysValue']['nav']['nav'];

    if($navi=="UID") {
        // ����������� ������� �� ������
        if($row['items']>0) {
            $obj->set('productSklad','<div class="product-info-box-order-box-sklad">���� � �������</div>');
        }

        if($row['sklad']==1) {
            $obj->set('productSklad','<div class="product-info-box-order-box-sklad-no">��� �����</div>');
        }
    }
    elseif($navi=="CID") {
        // ����������� ������� �� ������
        if($row['items']>0) {
            $obj->set('productSklad','<div class="productSklad text-center"><span>���� � �������</span></div>');
            $obj->set('classHover', '');
        }

        if($row['sklad']==1) {
            $obj->set('productSklad','<div class="productSklad-no text-center"><span>��� �����</span></div>');
            $obj->set('classHover', 'product-two_hover');
        }
    }
    else {
        // ����������� ������� �� ������
        if($row['items']>0) {
            $obj->set('productSklad','<div class="productSklad text-center"><span>���� � �������</span></div>');
            $obj->set('classHover', '');
        }

        if($row['sklad']==1) {
            $obj->set('productSklad','<div class="productSklad-no text-center"><span>��� �����</span></div>');
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