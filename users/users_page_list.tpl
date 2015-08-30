@php
// Шаблон страниц личного кабинета
php@
<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs">

			<a href="/">Главная</a> / <span title="Для доступа нужно войти или зарегистрироваться">Личный кабинет</span> / @formaTitle@ 

		</div>
	
		<h1 class="box-shop__title">@formaTitle@</h1>
		<div class="box-shop__content">
			<div class="user-page user-page_registration">
				@formaContent@
			</div>
		</div>
	
	</div>

</div>