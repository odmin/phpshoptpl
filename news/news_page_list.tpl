@php
// Шаблон страницы Новости: список
php@
<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs"> 

			<a href="/">Главная</a> /  Новости 

		</div>

		<h1 class="box-shop__title">Новости</h1>

		<div class="box-shop__catalog">
			@productPageDis@
		</div>

		<div class="page-nav page-nav_bottom">@productPageNav@</div>

	</div>
</div>

<script>
	window.onload = function () {
		var html = document.getElementsByClassName('page-nav')[0];
		html.innerHTML = html.innerHTML.replace(/ \/ /gi, '');
		html = document.getElementsByClassName('page-nav')[1];
		html.innerHTML = html.innerHTML.replace(/ \/ /gi, '');
	}
</script>