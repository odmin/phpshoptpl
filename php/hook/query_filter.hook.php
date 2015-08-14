<?php
/**
 * ��������� ���������� ������� �� �����
 * @author PHPShop Software
 * @param obj $obj ������ ������
 * @return mixed
 */
function query_filter_skladsort_hook($obj) {
 
    $sort=null;
    $n=$obj->category;

    $v=@$_REQUEST['v'];
    $s=PHPShopSecurity::TotalClean(@$_REQUEST['s'],1);
    $f=PHPShopSecurity::TotalClean(@$_REQUEST['f'],1);

    if($obj->PHPShopNav->isPageAll())
        $p=PHPShopSecurity::TotalClean($p,1);

    if($obj->PHPShopCategory->getParam('num_row')>0)
        $num_row=$obj->PHPShopCategory->getParam('num_row');
    else $num_row=$obj->PHPShopSystem->getValue('num_row');

    // ���������� �� ���������������
    if(is_array($v)) {
        foreach($v as $key=>$value) {
            if(PHPShopSecurity::true_num($key) and PHPShopSecurity::true_num($value)) {
                $hash=$key."-".$value;
                $sort.=" and vendor REGEXP 'i".$hash."i' ";
            }
        }
    }

    // ����������� ��������� �� �������� ��������. ������ ����� ������ � sort.class.php
    if(empty($s))
        switch($obj->PHPShopCategory->getParam('order_to')) {
            case(1): $order_direction="";
                $obj->set('productSortImg',1);
                break;
            case(2): $order_direction=" desc";
            $obj->set('productSortImg',2);
                break;
            default: $order_direction="";
               $obj->set('productSortImg',1);
                break;
        }


    // ���������� �� �������� ��������. ������ ����� ������ � sort.class.php
    if(empty($f))
        switch($obj->PHPShopCategory->getParam('order_by')) {
            case(1): $order=array('order'=>'name'.$order_direction);
                $obj->set('productSortA','sortActiv');
                break;
            case(2): $order=array('order'=>'price'.$order_direction);
                $obj->set('productSortB','sortActiv');
                break;
            case(3): $order=array('order'=>'num'.$order_direction);
                $obj->set('productSortC','sortActiv');
                break;
            default: $order=array('order'=>'num'.$order_direction);
                $obj->set('productSortC','sortActiv');
                break;
        }

    // ���������� �������������� �������������
    if($s or $f) {
        switch($f) {
            case(1): $order_direction="";

                break;
            case(2): $order_direction=" desc";
                break;
            default: $order_direction="";
                break;
        }
        switch($s) {
            case(1): $order=array('order'=>'name'.$order_direction);
                break;
            case(2): $order=array('order'=>'price'.$order_direction);
                break;
            case(3): $order=array('order'=>'num'.$order_direction);
                break;
            default: $order=array('order'=>'num'.$order_direction);
        }
    }

    // ���� ���������� ���������
    $catt='(category='.$n.' OR dop_cat LIKE \'%#'.$n.'#%\')';

    // ����������� ������ ������ ���������� � ������
    foreach($order as $key=>$val)
        $string=$key.' by '.$val;

    // ��� ��������
    if($obj->PHPShopNav->isPageAll()) {
        $sql=" ($catt and enabled='1' and parent_enabled='0') ".$sort." ".$string.' limit '.$obj->max_item;
    }

    // ����� �� ����
    elseif(isset($_POST['priceSearch'])) {

        $priceOT=PHPShopSecurity::TotalClean($_POST['priceOT'],1);
        $priceDO=PHPShopSecurity::TotalClean($_POST['priceDO'],1);

        $percent=$obj->PHPShopSystem->getValue('percent');

        // �������������
        if($priceDO==0) $priceDO=1000000000;

        if(empty($priceOT)) $priceOT=0;

        // ���� � ������ ��������� ������
        $priceOT/=$obj->currency('kurs');
        $priceDO/=$obj->currency('kurs');

        $sql="$catt and enabled='1' and parent_enabled='0' and price >= ".
                ($priceOT/(100+$percent)*100)." AND price <= ".($priceDO/(100+$percent)*100)." ".$sort.$string.' limit 0,'.$obj->max_item;
    }
    elseif(!empty($sort)) {
        return array('sql'=>$catt." and enabled='1' and parent_enabled='0' ".$sort.$string);
    }
    else {
        return array('sql'=>$catt." and enabled='1' and parent_enabled='0' ".$sort.$string);
    }

    // ���������� SQL 
    return $sql;
}
 
$addHandler = array
    (
    'query_filter' => 'query_filter_skladsort_hook'
);
?>