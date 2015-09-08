@php // Новинки php@

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
		<span>Подробно</span>
	</a>
	<a href="/shop/UID_@productUid@.html" title="@productName@" class="product-card__title">
		<strong>@productName@</strong>
	</a>
	<div class="product-card__avaliable"> @php // Наличие на складе php@
		@ComStartCart@ @productSklad@ @ComEndCart@
	</div>
	<div class="product-card__price">@php // блок со старой и новой ценой php@
		@ComStart@
		<div class="price">
			<div class="price__old">
				@productPriceRub@
			</div>
			<div class="price__actual" title="Цена: @productName@">
				@productPrice@ <i class="icon icon-price"></i>
			</div>
		</div>
		@ComEnd@
	</div>
	<div class="product-card__cart">@php // Добавить в корзину php@
		@ComStartCart@
			<a href="javascript:AddToCartNum(@productUid@,'n@productUid@')" title="Купить @productName@" class="button button_buy">
				Купить
			</a>
			<div class="product-card__input">
				<input class="forma spinner" id="n@productUid@" type=number maxLength=5 size=3 value=1 min=1 name="n@productUid@">
			</div>
		@ComEndCart@
	</div>
	<div class="product-card__notify">@php // Уведомления php@
		@ComStartNotice@
			<a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="button button_buy">
				@productNotice@
			</a>
		@ComEndNotice@
	</div>
    <div class="cb"></div>
</div>