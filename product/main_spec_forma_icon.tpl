<div class="box shadow">

	<div class="shadow-t"></div>

	<div class="shadow-r"></div>

	<div class="shadow-b"></div>

	<div class="shadow-l"></div>

	<div class="shadow-t-l"></div>

	<div class="shadow-t-r"></div>

	<div class="shadow-b-r"></div>

	<div class="shadow-b-l"></div>

	<div class="shadow-content">

		

		<div class="prod_card @classHover@">

		  <div class="prod_card2">

			<div class="tovarDivContent1 text-center">@productDes@</div>

			<table cellpadding="0" cellspacing="0" border="0" class="tovarDivImg1" width="100%">

			  <tr>

				<td align="center" valign="middle"><!--<a class="highslide" onclick="return hs.expand(this)" href="@productImgBigFoto@" target="_blank" getParams="null" title="@productName@"><img src="@productImg@" lowsrc="images/shop/no_photo.gif"  onerror="NoFoto(this,'@pathTemplate@')" onload="EditFoto(this,@productImgWidth@)" alt="@productName@" title="@productName@" border="0"></a>

				  <div class=highslide-caption>@productName@</div>-->

				  <a href="/shop/UID_@productUid@.html" title="@productName@"><img src="@productImg@" lowsrc="images/shop/no_photo.gif"  onerror="NoFoto(this,'@pathTemplate@')" onload="EditFoto(this,@productImgWidth@)" alt="@productName@" title="@productName@" border="0"></a></td>

			  </tr>

			</table>
<div class="podrobno"><a href="/shop/UID_@productUid@.html" title="@productName@"><img src="images/podrobno.png" alt="Подробно" title="Подробно" border="0"></a></div>
			<div class="tovarDivName1 text-justify"><a href="/shop/UID_@productUid@.html" title="@productName@"><strong>@productName@</strong></a></div>

			@ComStartCart@ @productSklad@ @ComEndCart@

			<div class="prcent text-center">

				@ComStart@

				<div class="tovarDivOldPrice1 tovarDivPrice__content">@productPriceRub@</div>

				<div class="tovarDivPrice1"><div class="pr-l"><div class="pr-r tovarDivPrice__content" title="Цена: @productName@">@productPrice@ <i class="icon icon-price"></i></div></div></div>

				@ComEnd@

			</div>

			<div class="tovarDivAdd1 text-center">

			  <div class="tovarDivAdd3">

				<!-- Блок корзина-->

				@ComStartCart@

				<A href="javascript:AddToCartNum(@productUid@,'n@productUid@')" title="Купить @productName@" class="btn-buy"></A>

				<INPUT class="forma spinner" id="n@productUid@" type=num maxLength=5 size=3 value=1 name="n@productUid@">

				@ComEndCart@

				<!-- Блок корзина -->

				<!-- Ѕлок уведомить -->

				@ComStartNotice@<a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="btn">@productNotice@</a>@ComEndNotice@

				<!-- Ѕлок уведомить -->

			  </div>

			  <!--<div class="tovarDivAdd2"><a href="javascript:AddToCompare(@productUid@)" title="—равнить @productName@">—равнить</a></div>-->

			</div>

		  </div>

		</div>

		

	</div>

</div>