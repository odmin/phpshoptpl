<?php

/**
 * ��������� ����� ������� � ������
 * @param array $obj ������
 * @param array $row ������ ������
 * @param string $rout ������ ����� ������ ������ [START|MIDDLE|END]
 */
function words_searchcore_hook($obj,$row,$rout) {

    if($rout == 'START'){
    $obj->cell=5;
    $obj->line=true;
    $obj->grid=true;
    }
}



$addHandler=array
        (
        'words'=>'words_searchcore_hook',
);

?>
