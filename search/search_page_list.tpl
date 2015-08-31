<div class="general__area">
		
	<div class="box-shop">

		<div class="breadcrumbs">

			<a href="/">Главная</a> / Расширенный поиск 

		</div>
		<h1 class="box-shop__title">Расширенный поиск</h1>
	<form method="post" name="forma_search" class="form">
		<label for="words" class="form__label">Введите слово:</label>
		<input type="text" maxLength="100" name="words" value="@searchString@" id="words" class="form__input form__input_sm">
		<input type="submit" value="Искать" class="ok button button_buy">
		<div class="cb"></div>
		<span class="form__label">Выберите каталог:</span>
		<span class="form__select">
			@searchPageCategory@
		</span>
		<div class="form__message">
			<strong>Логика поиска:</strong>
			<label><input type="Radio" value="1" name="set" @searchSetA@>
			и</label>&nbsp;
			<label><input type="Radio" value="2" name="set" @searchSetB@ >
			или</label>
			<span class="form__helper"> | </span>
			<strong>Где искать:</strong>
			<label><input type="Radio" value="1" name="pole" @searchSetC@>&nbsp;
			Наименование&nbsp;</label>
			<label><input type="Radio" value="2" name="pole" @searchSetD@ >
			Учитывать все </label>
		</div>
	
	</form>
	<div class="box-shop__catalog">
		<table cellpadding="0" cellspacing="0" border="0" >
			@productPageDis@
		</table>
	</div>
	</div>
	<div class="page-nav page-nav_bottom">@searchPageNav@</div>
</div>
<script>
	window.onload = function () {
		var html = document.getElementsByClassName('page-nav')[0];
		html.innerHTML = html.innerHTML.replace(/ \/ /gi, '');
	}
</script>