@php
// Шаблон страницы
php@
<div class="general__area">

	<div class="box-shop">

		<div class="breadcrumbs">
			@breadCrumbs@
		</div>


		<h1 class="box-shop__title">@pageTitle@</h1>

		<div class="box-shop__catalog">
			@catContent@
		</div>

		<div class="box-shop__catalog">
			<div class="usercontent">
				@pageContent@
			</div>
		</div>

		<div class="page-nav page-nav_bottom">
			@pageNav@
		</div>
	
	</div>

</div>