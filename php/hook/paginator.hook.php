<?php 
function setPaginator_hook($obj, $old_paginator, $rout) {
    if ($rout == 'END') {
 
      // Какие фразы менять
      $old=array('/');
 
      // На что менять
      $new=array(' ');
 
      $obj->set('productPageNav', str_replace($old, $new, $old_paginator));
    }
}
 
$addHandler = array
    (
    'setPaginator' => 'setPaginator_hook'
);
?>