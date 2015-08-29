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

		<div class="page-nav page-nav_top">@productPageNav@</div>
		
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
		$('.general').find('a').each(function () {
			console.log($(this).attr('href').indexOf('/gbook/?add_forma=true'));
			if($(this).attr('href').indexOf('/gbook/?add_forma=true') != -1) $(this).addClass('button button_buy button_indent').css('text-decoration', 'none');
		})
	}
</script>