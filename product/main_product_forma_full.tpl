<script>
function getBrowserInfo() { 
  var t,v = undefined; 
 
  if (window.chrome) t = 'Chrome'; 
  else if (window.opera) t = 'Opera'; 
  else if (document.all) { 
  t = 'IE'; 
  var nv = navigator.appVersion; 
  var s = nv.indexOf('MSIE')+5; 
  v = nv.substring(s,s+1); 
  } 
  else if (navigator.appName) t = 'Netscape'; 
 
  return {type:t,version:v}; 
 } 
 
 function bookmark(a){ 
  var url = window.document.location; 
  var title = window.document.title; 
  var b = getBrowserInfo(); 
  if (b.type == 'IE' && 8 >= b.version && b.version >= 4) window.external.AddFavorite(url,title); 
  else if (b.type == 'Opera') { 
  a.href = url; 
  a.rel = "sidebar"; 
  a.title = url+','+title; 
  return true; 
  } 
  else if (b.type == "Netscape") window.sidebar.addPanel(title,url,""); 
  else alert("Нажмите CTRL-D, чтобы добавить страницу в закладки."); 
  return false; 
 } 
</script>

<div class="product clearfix">
<div itemscope itemtype="http://schema.org/Product">
	<h1 itemprop="name">@productName@ 

<a href="javascript:void(0);" onclick="return bookmark(this);"><img style="position: relative;top: 9px;" src="images/fafor.png" width="28" height="28" alt="Добавить в Избранное" title="Добавить в Избранное"></a></h1> 
	<div class="product-image fl">
		<div id="fotoload">
		@productFotoList@
		</div>
		@w4aSeries@
	</div>
	<div class="product-info fr">
		<div class="product-info-box-order fl">
			@ComStart@
			<div class="product-info-box-order-box-inner text-center">
				<div class="box-yellow-bg-t-l">
					<div class="box-yellow-bg-t-r">
						<div class="box-yellow-bg-b-r">
							<div class="box-yellow-bg-b-l">
							<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
								<div class="tovarDivOldPrice1">@productPriceRub@</div>
								    <meta itemprop="price" content="@productPrice@">
									<meta itemprop="priceCurrency" content="RUB">
									<div class="tovarDivPrice1" title="Цена: @productName@">
									<span class='price'>@productPrice@</span>
									<i class="icon icon-price-md"></i>
									</div>
						@ComStartCart@<div class="product-info-box-order-box-spinner product-spinner">
									<INPUT class="forma spinner" id="n@productUid@" type=num maxLength=5 size=3 value=1 name="n@productUid@">
									</div>
						@ComEndCart@
						<div>@productSklad@</div>
						<link itemprop="availability" href="http://schema.org/InStock">
							</div>	
								<div class="product-info-box-order-box-art">Код: @productUid@</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tovarDivAdd1">
				<div class="tovarDivAdd3">
					@ComStartCart@
					<A href="javascript:AddToCartNum(@productUid@,'n@productUid@')" title="Купить @productName@" class="btn-prod"><span class="btn-l"><span class="btn-r btn-prod-content">Добавить в корзину</span></span></A>
					@ComEndCart@
					@ComStartNotice@<a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="btn-prod"><span class="btn-l"><span class="btn-r btn-prod-content">@productNotice@</span></span></a>@ComEndNotice@
				</div>
			</div>
			@ComStartCart@ @oneclick@ @ComEndCart@
			@ComEnd@
			@productParentList@
		</div>
		<div class="product-info-box-info fr">
			<div class="product-info-b-i-box-inner">
				<div class="b-i-box-header">
					<div class="box-yellow-bg-t-l">
						<div class="box-yellow-bg-t-r">
							<div class="b-i-box-header-content"><b><a href="/page/skidki.html">Как получить скидку</a></b></div>
						</div>
					</div>
				</div>
				<div class="b-i-box-content">
					<table>
						<tr>
							<td>Самовывоз:<br><b>бесплатно</b></td>
							<td>0-2 дня</td>
						</tr>
						<tr>
							<td>Курьером:<br><b>300руб.</b></td>
							<td>0-2 дня</td>
						</tr>
						<tr>
							<td>Бесплатно:<br><b>от 3000 руб.</b></td>
							<td></td>
						</tr>
					</table>
				</div>
				<div class="b-i-box-footer">
					<div class="box-yellow-bg-b-l">
						<div class="box-yellow-bg-b-r">
							<div class="b-i-box-footer-content"><b><a href="/page/dostavka_i_oplata.html">< Доставка и оплата ></a></b></div>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center">
				<img src="images/files/visa.jpg" alt="visa">
				<img src="images/files/mastercard.jpg" alt="mastercard">
				<img src="images/files/maestro.jpg" alt="maestro">
                <!--noindex-->
                <a href="https://market.yandex.ru/shop/146808/reviews" target="_blank"><img src="/UserFiles/Image/Dop/market.jpg" border="0" width="68" height="24" alt="Читайте отзывы покупателей и оценивайте качество магазина на Яндекс.Маркете"></a>
                <!--/noindex-->
			</div>
	  </div>
		<div class="clearfix"></div>
		<div class="tab-pane" id="tabPane1">
		 <script type="text/javascript">tp1 = new WebFXTabPane( document.getElementById( "tabPane1" ) );</script>
			<div class="tab-page" id="tabPage1">
				<h2 class="tab">Характеристики</h2>
				<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage1" ) );</script>
				<span itemprop="description">
				@productDes@
				</span>
			</div>
            <!--noindex-->
			<div class="tab-page" id="tabPage3">
				<h2 class="tab">Отзывы</h2>
				<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage3" ) );</script>
			<!-- Anything Slider -->
			<link rel="stylesheet" href="java/anythingslider.css">
			<script src="java/jquery.anythingslider.js"></script>
			<!-- AnythingSlider initialization -->
			<!-- Define slider dimensions here -->
			<style>
			#slider { width: 380px; height: 210px; padding-left: 35px; padding-right: 35px; padding-top: 10px;}
			.link-quest {
				text-align: center;
				position: relative;
			}
			.link-quest a {
				font-size: 17px;
				color: #000;
				padding-left: 20px;
			}
			.line-bo {
				position: absolute;
				width: 100%;
				height: 40px;
				background: url(java/default0.png) repeat-x;
				top: -50px;
			}
			</style>


			<ul id="slider">
				@slideGbookUid@
			</ul>
				<div class="link-quest">
					<a href="/gbook/?add_forma=true">Оставить отзыв</a> <a href="/gbook/">Показать все</a>
					<div class="line-bo"></div>
				</div>
		  </div>
          <!--/noindex-->
		</div>
	</div>
</div>
</div>