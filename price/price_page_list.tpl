@php
// ������ �������� ������
php@
<div class="general__area">
	<div class="box-shop">
		<div class="breadcrumbs">
			<a href="/">�������</a> / �����-����
		</div>
		<h1 class="box-shop__title">�����-����</h1>
		<form>
			@searchPageCategory@
			<input type="button" value="��������" onclick="DoPriceSort();" class="button button_buy ok">
		</form>
		<div class="pricepage">
			<div class="pricepage__links">
				<a class="pricepage__link" href="/price/CAT_ALL.html" title="������� ��� �������">������� ��� �������</a>
				<a class="pricepage__link" href="javascript:GetAllForma('@PageCategory@')" title="����� � ���������">����� � ���������</a>
				<a class="pricepage__link" href="#" onclick="window.open('phpshop/forms/priceprint/print.html?catId=@PageCategory@')" title="�������� �����">�������� �����</a>
				<a class="pricepage__link" href="#" onclick="window.open('/files/priceSave.php?catId=@PageCategory@')" title="Excel �����">Excel �����</a>
				<a class="pricepage__link" href="#" onclick="window.open('/files/priceSave.php?catId=@PageCategory@&gzip=true')" title="Excel ����� GZIP">Excel ����� GZIP</a>
				<a class="pricepage__link" href="/files/onlineprice/" target="_blank" title="������������� �����">������������� �����</a>
			</div>
		</div>
		<div id="pri" class="box-shop__catalog pricepage-table">
			@productPageDis@
		</div>
	</div>
</div>
