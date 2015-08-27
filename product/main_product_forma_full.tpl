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
  else alert("������� CTRL-D, ����� �������� �������� � ��������."); 
  return false; 
 } 
</script>

<div class="product clearfix">
	<div itemscope itemtype="http://schema.org/Product">
		<h1 itemprop="name" class="product__title">@productName@ 
			<a href="javascript:void(0);" onclick="return bookmark(this);">
				<img style="position: relative;top: 9px;" src="images/fafor.png" width="28" height="28" alt="�������� � ���������" title="�������� � ���������">
			</a>
		</h1> 
		<div class="product-image">
			<div id="fotoload">
			@productFotoList@
			</div>
			@w4aSeries@
		</div>
		<div class="product-info">
			<div class="product-info-box-order">
				@ComStart@
				<div class="product-info-box-order-box-inner">
					<div class="price price_theme_incard" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
						<div class="tovarDivOldPrice1 price__old">@productPriceRub@</div>
						<meta itemprop="price" content="@productPrice@">
						<meta itemprop="priceCurrency" content="RUB">
						<div class="tovarDivPrice1 price__actual" title="����: @productName@">
							<span class='price'>@productPrice@</span>
							<i class="icon icon-price-md"></i>
						</div>
						@ComStartCart@
							<div class="product-info-box-order-box-spinner product-spinner">
								<input class="forma spinner" id="n@productUid@" type=num maxLength=5 size=3 value=1 name="n@productUid@">
							</div>
						@ComEndCart@
						<link itemprop="availability" href="http://schema.org/InStock">
					</div>	
						<div class="product-info__status">@productSklad@</div>
					<div class="product-info-box-order-box-art">���: @productUid@</div>
				</div>
				<div class="tovarDivAdd1 product-info__cart">
					<div class="tovarDivAdd3">
						@ComStartCart@
						<a href="javascript:AddToCartNum(@productUid@,'n@productUid@')" title="������ @productName@" class="button button_buy button_big">
						�������� � �������</a>
						@ComEndCart@
						@ComStartNotice@
							<a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="button button_buy button_big">
							@productNotice@</a>
						@ComEndNotice@
					</div>
				</div>
				@ComStartCart@ 
					@oneclick@ 
					@ComEndCart@
					@ComEnd@
				@productParentList@
			</div>
			<div class="product-info-box-info">
				<div class="product-info-b-i-box-inner">
					<div class="product-info-b-i-box-inner__header">
						<div class="b-i-box-header-content">
							<b><a class="product-info__link" href="/page/skidki.html">��� �������� ������</a></b>
						</div>
					</div>
					<div class="product-info-b-i-box-inner__content">
						<table class="apport">
							<tr>
								<td>���������:<br><b class="apport__summ">���������</b></td>
								<td class="apport__time">0-2 ���</td>
							</tr>
							<tr>
								<td>��������:<br><b class="apport__summ">300���.</b></td>
								<td class="apport__time">0-2 ���</td>
							</tr>
							<tr>
								<td>���������:<br><b class="apport__summ">�� 3000 ���.</b></td>
								<td class="apport__time"></td>
							</tr>
						</table>
					</div>
					<div class="product-info-b-i-box-inner__footer">
						<div class="box-yellow-bg-b-l">
							<div class="box-yellow-bg-b-r">
								<div class="b-i-box-footer-content">
									<b><a class="product-info__link" href="/page/dostavka_i_oplata.html">&lt; �������� �&nbsp;������ &gt;</a></b>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product-info__paymethod">
					<img src="images/files/visa.jpg" alt="visa">
					<img src="images/files/mastercard.jpg" alt="mastercard">
					<img src="images/files/maestro.jpg" alt="maestro">
	                <!--noindex-->
	                <a href="https://market.yandex.ru/shop/146808/reviews" target="_blank">
	                	<img src="/UserFiles/Image/Dop/market.jpg" border="0" width="68" height="24" 
	                		alt="������� ������ ����������� � ���������� �������� �������� �� ������.�������">
            		</a>
	                <!--/noindex-->
				</div>
			</div>
			<div class="cb"></div>
			<div class="tab-pane" id="tabPane1">
				<script type="text/javascript">tp1 = new WebFXTabPane( document.getElementById( "tabPane1" ) );</script>
				<div class="tab-page" id="tabPage1">
					<h2 class="tab">��������������</h2>
					<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage1" ) );</script>
					<div class="cb"></div>
					<span itemprop="description" class="tab-page__item">
						@productDes@
					</span>
				</div>
					<div class="cb"></div>
				<!--noindex-->
				<div class="tab-page" id="tabPage3">
					<h2 class="tab">������</h2>
					<script type="text/javascript">tp1.addTabPage( document.getElementById( "tabPage3" ) );</script>
					<!-- Anything Slider -->
					<script src="java/jquery.anythingslider.js"></script>
					<div class="cb"></div>
					<ul id="slider">
						@slideGbookUid@
					</ul>
					<div class="link-quest">
						<a href="/gbook/?add_forma=true">�������� �����</a> <a href="/gbook/">�������� ���</a>
						<div class="line-bo"></div>
					</div>
				</div>
					<div class="cb"></div>
			<!--/noindex-->
			</div>
		</div>
</div>
</div>