<?php

/**
 * Изменение формата решетки между товарами c <td> на <li>
 * @param array $obj объект
 * @param array $arg массив данных
 * @return string
 */
function setcell_hook($obj,$arg) {

    $li=null;
    $panel=array('panel_l','panel_r','panel_l','panel_r');

    foreach($arg as $key=>$val) {
        if(!empty($val)) {
            $li.='<li class="'.$panel[$key].'">'.$val.'</li>';
        }
    }

    return $li;
}

/**
 * Изменение формата решетки между товарами c <td> на <li>, компиляция списка в <ul>
 * @return string
 */
function compile_hook($obj) {
    $ul='<ul>'.$obj->product_grid.'</ul>';
    $obj->product_grid=null;
    return $ul;
}

/**
 * Изменение сетки сопутствующих товаров, сетка товаров = 3
 */
function odnotip_hook($obj,$row,$rout) {
    if($rout=='START') {
        $obj->odnotip_setka_num=5;
        $obj->template_odnotip='main_product_forma_5';


        
        $obj->line=true;
    }
}

/**
 * Изменение списка подкаталогов в каталоге с <li> на <div> + описание
 */
function cid_category_hook($obj,$dataArray,$rout) {

    $dis=null;
    if($rout=='END') {
        if(is_array($dataArray))
            foreach($dataArray as $row) {
                $content=PHPShopText::a($obj->path.'/CID_'.$row['id'].'.html',$row['name']);
                $content.=PHPShopText::p($row['content']);
                $dis.=PHPShopText::div($content,$align="left",$style='float:left;padding:10px');
            }

        // Переназначем переменную списка категорий
        $obj->set('catalogList',$dis);

        // Cпецпредложения товаров
        cid_category_add_spec_hook($obj,$dataArray);
    }
}

/**
 * Добавление в список каталогов спецпредложения товаров в 3 ячейки, лимит 3
 */
function cid_category_add_spec_hook($obj,$row) {
    global $PHPShopProductIconElements;

    // Случайный выбор каталога
    if(is_array($row))
        foreach($row as $val)
            $cat[]=$val['id'];
    $rand=rand(0,count($cat)-1);

    // Используем элемент вывода спецпредложений
    $PHPShopProductIconElements->template='main_product_forma_3';
    $spec=$PHPShopProductIconElements->specMainIcon(false,$cat[$rand],3,3,true);
   // $spec=PHPShopText::div(PHPShopText::p($spec),$align="left",$style='float:none;padding:10px');
    $spec=PHPShopText::div(PHPShopText::p($spec),$align="",$style='');

    // Добавляем в переменную списка категорий вывод спецпредложений
    $obj->set('catalogList',$spec,true);
}
function CID_Product_hook($obj,$row,$rout) {
 
    if($rout == 'START'){
    $obj->SysValue['templates']['main_product_forma_5']="product/main_product_forma_5.tpl";
    $obj->PHPShopCategory->setParam('num_row', 5);
    } 
	
	if($rout == 'END'){
			// Фильтр сортировки
			$order = $obj->query_filter();

			// Пагинатор
			// определяем количество страниц в выборке
			if(is_array($order)){
				$sql = "SELECT count(id) as count FROM ".$GLOBALS['SysValue']['base']['table_name2']." WHERE ".$order['sql'];
			}else{
				$sql = "SELECT count(id) as count FROM ".$GLOBALS['SysValue']['base']['table_name2']." WHERE ".$order;
			}
			$count = mysql_fetch_array(mysql_query($sql));
			$page_max = ceil($count['count']/$obj->num_row);
			
			$PHPShopString = new PHPShopString();
			$free_url = $PHPShopString->toLatin($obj->PHPShopCategory->getName());
			
			$disp = w4a_setPaginator($page_max,$free_url);
		
		$obj->set('productPageNav',$disp);
	
	}
}

 	
	// пагинатор
	// n - кол страниц
	function w4a_setPaginator($n,$free_url){
	
		if($n>1){
		
		// добавляем к пагинатору GET-параметры (сортировки по Цене/Наименованию)
		if($GLOBALS['SysValue']['nav']['querystring']){	
			$q_str = '?'.$GLOBALS['SysValue']['nav']['querystring'];
		}else{
			$q_str = '';
		}
		
			// текущая страница
			$p = $GLOBALS['SysValue']['nav']['page'];
			
			for($i=1;$i<=$n;$i++){
				if($i==1){
					if(($p<=$i or empty($p)) and $p!='ALL'){
						$dis='<li class="pagination__item active"><span class="pagination__nolink">'.($i).'</span></li>';				
					}else{
						$dis='<li><a class="pagination__link" href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].'_'.$free_url.'.html'.$q_str.'">'.($i).'</a></li>';				
					}

				}else{
					if($i==$p){
						$dis.='<li class="pagination__item active"><span class="pagination__nolink">'.($i).'</span></li>';				
					}else{
						$dis.='<li class="pagination__item"><a class="pagination__link" href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].'_'.($i).'_'.$free_url.'.html'.$q_str.'">'.($i).'</a></li>';				
					}

				}
			}
			
			if($p==$n){
				$next = '_'.$p;
			}elseif($p<=1 or empty($p)){
				$next = '_2';
			}else{
				$next = '_'.($p+1);
			}
			
			if($p<=2 or empty($p)){
				$prev = '';
			}else{
				$prev = '_'.($p-1);
			}
			if($p=='ALL') $btn_all = ' active';
			else $btn_all = '';
			
			
			if($p==$n){
			$disp = '
			<ul class="pagination">
				<li class="pagination__item prev"><a class="pagination__link" href="./'
				.'CID_'.$GLOBALS['SysValue']['nav']['id'].''.($prev).'_'.$free_url.'.html'.$q_str.'">Назад</a></li>'
				.$dis.'<li class="pagination__item next"><span>Вперед</span></li><li class="pagination__item next '
				.$btn_all.'"><a class="pagination__link" href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].'_ALL_'.$free_url.'.html'.$q_str.'">Показать все</a></li>
			</ul>
			';			
			}elseif($p<=1 or empty($p)){
			$disp = '
			<ul class="pagination">
				<li class="pagination__item prev"><span class="pagination__nolink">Назад</span></li>'
				.$dis.'<li class="pagination__item next"><a class="pagination__link" href="./'.'CID_'
				.$GLOBALS['SysValue']['nav']['id'].''.($next).'_'.$free_url.'.html'.$q_str
				.'">Вперед</a></li><li class="pagination__item next '.$btn_all.'"><a class="pagination__link" href="./'.'CID_'
				.$GLOBALS['SysValue']['nav']['id'].'_ALL_'.$free_url.'.html'.$q_str.'">Показать все</a></li>
			</ul>
			';			
			}else{
			$disp = '
			<ul class="pagination">
				<li class="pagination__item prev"><a class="pagination__link" href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].''.($prev).'_'.$free_url.'.html'.$q_str.'">Назад</a></li>'.$dis.'<li class="next"><a href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].''.($next).'_'.$free_url.'.html'.$q_str.'">Вперед</a></li><li class="next '.$btn_all.'"><a href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].'_ALL_'.$free_url.'.html'.$q_str.'">Показать все</a></li>
			</ul>
			';	
			}
			
			if($p=='ALL'){
			$disp = '
			<ul class="pagination">
				<li class="pagination__item prev"><a class="pagination__link" href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].''.($prev).'_'.$free_url.'.html'.$q_str.'">Назад</a></li>'.$dis.'<li class="next"><a href="./'.'CID_'.$GLOBALS['SysValue']['nav']['id'].''.($next).'_'.$free_url.'.html'.$q_str.'">Вперед</a></li><li class="next '.$btn_all.'"><span>Показать все</span></li>
			</ul>
			';				
			}
			
		}else{
			$disp ='';
		}

		return $disp;
	
	}

	/**
	 * Изменение места вывода сопутствующих товаров
	 */
	function UID_odnotip_hook($obj,$row,$rout){
		$sql = 'SELECT * FROM phpshop_gbook ORDER BY RAND() ';
		$query = mysql_query($sql);
		$row = mysql_fetch_array($query);
		do {
		$slideGbook .= '<li>
					<div>
					  <div>
					    <div class="news_date">'.PHPShopDate::dataV($row['datas']).'</div>
					    <div class="news_tema" style="color:494949">'.$row['tema'].'</div>
					  </div>
					  <div style="padding-top:10px"><img src="images/shop/icon-client.gif" alt="" width="16" height="16" border="0" align="absmiddle"><b>'.$row['name'].'</b>: '.$row['otsiv'].'</div>
					</div>
				</li>';
		}
		while ($row = mysql_fetch_array($query));

		$obj->set('slideGbookUid', $slideGbook);

	}


$addHandler=array
        (
        'odnotip'=>'odnotip_hook',
        '#setCell'=>'setcell_hook',
        '#compile'=>'compile_hook',
        '#CID_Category'=>'cid_category_add_spec_hook',
        'CID_Product' => 'CID_Product_hook',
        'UID'=>'UID_odnotip_hook'
);

?>