<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs">
			<a href="/">�������</a> / @catalogCategory@ 
		</div>

		<h1 class="box-shop__title">@catalogCategory@</h1>
		<form method="post" action="/shop/CID_@productId@.html" name="sort">
			<div class="shop-sort">
				<table border="0" cellspacing="0" cellpadding="0" class="vendorDisp shop-sort__table">
					<tr>
						@vendorDisp@
						<td>@vendorSelectDisp@</td>
					</tr>
				</table>
			</div>
			<div class="divSortPageList fr shop-sort shop-sort_order">
				����������� ��:&nbsp;&nbsp;&nbsp;&nbsp; 
				������������ ( 
				<span class="spanSortPageList">
					<a class="shop-sort__link" href="./@productPageThis@.html?fs=2&amp;ss=1@productVendor@">����</a> / 
					<a class="shop-sort__link" href="./@productPageThis@.html?fs=1&amp;ss=1@productVendor@">����</a>
				</span> )&nbsp;&nbsp;&nbsp;&nbsp; 
				���� ( 
				<span class="spanSortPageList">
					<a class="shop-sort__link" href="./@productPageThis@.html?fs=2&amp;ss=2@productVendor@">����</a> / 
					<a class="shop-sort__link" href="./@productPageThis@.html?fs=1&amp;ss=2@productVendor@">����</a>
				</span> )
			</div>
		</form>
		<div class="cb"></div>
		<div class="box-shop__catalog">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				@productPageDis@
			</table>
		</div>
	</div>

	<div class="page-nav page-nav_bottom">@productPageNav@</div>

</div>