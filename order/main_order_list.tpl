@php
// Шаблон страницы Корзина - корзина с покупками
php@
<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs">
			<a href="/">Главная</a> / Ваша корзина 
		</div>

		@orderContentCart@

		<div align="center" style="padding: 10px">
			<a href="phpshop/forms/cart/index.html" title="Печатная форма корзины" target="_blank" class="button button_white">
				<img hspace=5 src="images/shop/action_print.gif" align=absMiddle border="0">
				Распечатать
			</a>
		</div>

	<h2 class="box-shop__title">Личные данные</h2>

	@orderContent@

</div>