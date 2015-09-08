@php // ������� php@

<div class="product-card @classHover@">
	<div class="product-card__desc">
		@productDes@
	</div>
	<div class="product-card__img">
		<a href="/shop/UID_@productUid@.html" title="@productName@">
			<img src="@productImg@" lowsrc="images/shop/no_photo.gif"  
				onerror="NoFoto(this,'@pathTemplate@')" 
				onload="EditFoto(this,@productImgWidth@)" 
				alt="@productName@" 
				title="@productName@" 
				border="0">
		</a>
	</div>
	<a href="/shop/UID_@productUid@.html" title="@productName@" class="product-card__button product-card__button_detail">
		<span>��������</span>
	</a>
	<a href="/shop/UID_@productUid@.html" title="@productName@" class="product-card__title">
		<strong>@productName@</strong>
	</a>
	<div class="product-card__avaliable"> @php // ������� �� ������ php@
		@ComStartCart@ @productSklad@ @ComEndCart@
	</div>
	<div class="product-card__price">@php // ���� �� ������ � ����� ����� php@
		@ComStart@
		<div class="price">
			<div class="price__old">
				@productPriceRub@
			</div>
			<div class="price__actual" title="����: @productName@">
				@productPrice@ <i class="icon icon-price"></i>
			</div>
		</div>
		@ComEnd@
	</div>
	<div class="product-card__cart">@php // �������� � ������� php@
		@ComStartCart@
			<a href="javascript:AddToCartNum(@productUid@,'n@productUid@')" title="������ @productName@" class="button button_buy">
				������
			</a>
			<div class="product-card__input">
				<input class="forma spinner" id="n@productUid@" type=number maxLength=5 size=3 value=1 min=1 name="n@productUid@">
			</div>
		@ComEndCart@
	</div>
	<div class="product-card__notify">@php // ����������� php@
		@ComStartNotice@
			<a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="button button_buy">
				@productNotice@
			</a>
		@ComEndNotice@
	</div>
    <div class="cb"></div>
</div>