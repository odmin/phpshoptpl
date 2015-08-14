<?php
/**
 * Изменение сетки товаров в "Новинках"
 * @param array $obj объект
 */
function specMainIcon_hook($obj) {
    $obj->cell=5; // Размер сетки, вывод в 5 товара длиной
    $obj->limitspec=5; // Количество выводимых товаров
 
}
 
$addHandler = array
    (
    'specMainIcon' => 'specMainIcon_hook',
);
?>