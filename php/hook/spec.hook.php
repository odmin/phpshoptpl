<?php

/**
 * ��������� ����� ������� � ����������������
 * @param array $obj ������
 * @param array $row ������ ������
 * @param string $rout ������ ����� ������ ������ [START|MIDDLE|END]
 */
function index_speccore_hook($obj,$row,$rout) {

    if($rout == 'START')
    $obj->cell=5;

  
}



$addHandler=array
        (
        'index'=>'index_speccore_hook',
);

?>