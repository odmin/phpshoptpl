@php
// Шаблон страницы Отзывы
php@
<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs">
			<a href="/">Главная</a> / Отзывы
		</div>

		<h1 class="box-shop__title">Отзывы</h1>

		<div align="center" style="padding-bottom:10px;"> <strong style="font-size:14px; color:#FF0000">@Error@</strong></div>

		<div class="gbook-add">

			<a href="/gbook/?add_forma=true" class="button button_buy">+ новый отзыв</a>

		</div>

		<div class="page_nav_top">@productPageNav@</div>

		@productPageDis@

		<div class="page_nav_bot">@productPageNav@</div>

</div>