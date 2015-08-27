@php
// Шаблон страницы категории
php@
<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs">
			@breadCrumbs@
		</div>

		<h1 class="box-shop__title">@catalogCategory@</h1>

		@php
			if(empty($_GET)) {
				echo "<div class='content-top usercontent'>@catalogContentTop@</div>";
			}
		php@
		<noindex>

			<form method="post" action="/shop/CID_@productId@.html" name="sort">
				<div class="shop-sort">
					<table border="0" cellspacing="0" cellpadding="0" class="vendorDisp shop-sort__table">
						<tr>
							@vendorDisp@
							<td>@vendorSelectDisp@</td>
						</tr>
					</table>
				</div>
				<div class="divSortPageList shop-sort shop-sort_order">
					<strong>Сортировать по:</strong>&nbsp;&nbsp;&nbsp;&nbsp; Наименованию ( 
						<span class="spanSortPageList">
							<a class="shop-sort__link" href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=1&amp;s=1">возр</a> / 
							<a class="shop-sort__link" href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=2&amp;s=1">убыв</a>
						</span> 
					)&nbsp;&nbsp;&nbsp;&nbsp; Цене ( 
						<span class="spanSortPageList">
							<a class="shop-sort__link" href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=1&amp;s=2">возр</a> / 
							<a class="shop-sort__link" href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=2&amp;s=2">убыв</a>
						</span> 
					)
				</div>
			</form>

		</noindex>
		<div class="box-shop__catalog">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">

				@productPageDis@

			</table>
		</div>

	</div>

<div class="navigation navigation_bottom">@productPageNav@</div>
@php
	if(empty($_GET)) {
		echo "<div class='box-content'><div class='box-content usercontent'>@catalogContent@</div></div>";
	}
php@

</div>