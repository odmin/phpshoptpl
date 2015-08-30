@php
// Шаблон страницы Отзывы
php@
<div class="general__area">
	<div class="box-shop">
		<div class="breadcrumbs">
			<a href="/">Главная</a> / Прайс-лист
		</div>
		<h1 class="box-shop__title">Прайс-лист</h1>
		<form>
			@searchPageCategory@
			<input type="button" value="Показать" onclick="DoPriceSort();" class="button button_buy ok">
		</form>
		<div class="pricepage">
			<div class="pricepage__links">
				<a class="pricepage__link" href="/price/CAT_ALL.html" title="Вывести все позиции">Вывести все позиции</a>
				<a class="pricepage__link" href="javascript:GetAllForma('@PageCategory@')" title="Форма с описанием">Форма с описанием</a>
				<a class="pricepage__link" href="#" onclick="window.open('phpshop/forms/priceprint/print.html?catId=@PageCategory@')" title="Печатная форма">Печатная форма</a>
				<a class="pricepage__link" href="#" onclick="window.open('/files/priceSave.php?catId=@PageCategory@')" title="Excel Форма">Excel Форма</a>
				<a class="pricepage__link" href="#" onclick="window.open('/files/priceSave.php?catId=@PageCategory@&gzip=true')" title="Excel Форма GZIP">Excel Форма GZIP</a>
				<a class="pricepage__link" href="/files/onlineprice/" target="_blank" title="Интерактивная форма">Интерактивная форма</a>
			</div>
		</div>
		<div id="pri" class="box-shop__catalog pricepage-table">
			@productPageDis@
		</div>
	</div>
</div>
