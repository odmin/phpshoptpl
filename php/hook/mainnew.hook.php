<?php
/**
 * ��������� ����� ������� � "��������"
 * @param array $obj ������
 */
function specMainIcon_hook($obj) {
    $obj->cell=5; // ������ �����, ����� � 5 ������ ������
    $obj->limitspec=5; // ���������� ��������� �������
 
}
 
$addHandler = array
    (
    'specMainIcon' => 'specMainIcon_hook',
);
?>