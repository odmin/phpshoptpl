<div class="box-content-shadow">
    
	<div class="page_nava"><div> @breadCrumbs@ </div></div>

	<h1>@catalogCategory@</h1>
@php
if(empty($_GET)) {
echo "<div class='content-top'>@catalogContentTop@</div>";
}
php@
	<NOINDEX>

	  <form method="post" action="/shop/CID_@productId@.html" name="sort">

		<div class="clearfix" style="border-bottom:1px solid #ebebeb;padding:0 0 10px;">

		<div class="fl" style="width:55%">

			<table border="0" cellspacing="0" cellpadding="0" class="vendorDisp">

			  <tr> @vendorDisp@ <td>@vendorSelectDisp@</td></tr>

			</table>

		</div>

		<div class="divSortPageList fr">Сортировать по:&nbsp;&nbsp;&nbsp;&nbsp; Наименованию ( <span class="spanSortPageList"><a href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=1&amp;s=1">возр</a> / <a href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=2&amp;s=1">убыв</a></span> )&nbsp;&nbsp;&nbsp;&nbsp; Цене ( <span class="spanSortPageList"><a href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=1&amp;s=2">возр</a> / <a href="./CID_@productId@_@productPageThis@.html?@productVendor@&f=2&amp;s=2">убыв</a></span> )</div>

		</div>

	  </form>

	</NOINDEX>

	<div style="margin-top:20px">

	  <table cellpadding="0" cellspacing="0" border="0" width="100%">

		@productPageDis@

	  </table>

	</div>

</div>

<div class="navi">@productPageNav@</div>
@php
if(empty($_GET)) {
echo "<div class='box-content'><div class='box-content'>@catalogContent@</div></div>";
}
php@
