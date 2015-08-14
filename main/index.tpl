@php include_once($GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47)."php/GetUserAgent.lib.php"); php@
@php 
	if(GetUserAgent()=='ACHTUNG-IE') echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">';
	else echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">';
php@
<HTML>
<HEAD>
<TITLE>@pageTitl@</TITLE>
@php
$LastModified_unix = strtotime(date("D, d M Y H:i:s", filectime($_SERVER['SCRIPT_FILENAME'])));
$LastModified = gmdate("D, d M Y H:i:s GMT", $LastModified_unix);
$IfModifiedSince = false;

if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
   $IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));

if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
   $IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));

if ($IfModifiedSince&& $IfModifiedSince>= $LastModified_unix) {
   header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
   exit;
}

header('Last-Modified: '. $LastModified);

php@
<META http-equiv="Content-Type" content="text-html; charset=windows-1251">
<meta name="geo.placename" content="Москва, Россия">
<meta name="geo.position" content="55.648626;37.632026">
<meta name="geo.region" content="RU-Москва">
<meta name="ICBM" content="55.648626;37.632026">
<META name="description" content="@pageDesc@">
<META name="keywords" content="@pageKeyw@">
<META name="copyright" content="@pageReg@">
<META name="engine-copyright" content="@pageReg@">
<META name="domen-copyright" content="@pageDomen@">
<META content="General" name="rating">
<META name="ROBOTS" content="ALL">
<meta name="cmsmagazine" content="b08b8257633837f3e19f6e5b1d130da4">
<LINK rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<LINK rel="icon" href="favicon.ico" type="image/x-icon">
<LINK href="@pageCss@" type="text/css" rel="stylesheet">
 <!--[if IE 7]>
<LINK href="phpshop/templates/profserviz/ie7-style.css" type="text/css" rel="stylesheet">
 <![endif]-->
<!--[if IE]><LINK href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@/style.ie.css" type="text/css" rel="stylesheet"><![endif]-->
<SCRIPT language="JavaScript" type="text/javascript" src="java/phpshop.js"></SCRIPT>
<SCRIPT language="JavaScript" type="text/javascript" src="phpshop/lib/Subsys/JsHttpRequest/Js.js"></SCRIPT>
<SCRIPT language="JavaScript" type="text/javascript" src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@javascript/js.js"></SCRIPT>
<SCRIPT language="JavaScript" type="text/javascript" src="java/swfobject.js"></SCRIPT>
<script type="text/javascript" src="java/highslide/highslide-p.js"></script>
<script type="text/javascript" src="java/highslide/highslide-p.js"></script>
<link rel="stylesheet" type="text/css" href="java/highslide/highslide.css">

<link rel="stylesheet" href="images/files/jquery-ui-1.11.0/jquery-ui.css">
<link rel="stylesheet" href="images/files/jquery-ui-1.11.0/jquery.ui.spinner.css">
<!--<script src="//code.jquery.com/jquery-1.10.2.js"></script>-->
<script type="text/javascript" src="images/files/jquery-ui-1.11.0/external/jquery/jquery.js"></script>
<script type="text/javascript" src="images/files/jquery-ui-1.11.0/jquery-ui.js"></script>
<!-- jQuery library (served from Google) 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->
<!-- bxSlider Javascript file -->
<script type="text/javascript" src="images/files/jquery.bxslider/jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="images/files/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.bxslider').bxSlider({
	controls:false,
	auto:true,
	pause:5000
  });
});
</script>


</HEAD>
<BODY onLoad="default_load('false','false');NavActive('index');LoadPath('@ShopDir@');" class="bod">
<div class="black_overlay" id="fade"></div>
<div id="back-top"><a href="#top"><span></span></a></div>
<div id="wrapper">
	<div id="mainblock">
		<div id="header">
<ul class="main-menu">
	<li><a href="/page/kontakty.html" title="Контакты" >Контакты</a></li>
	<li><a href="/page/dostavka_i_oplata.html" title="Доставка и Оплата">Доставка и Оплата</a></li>
	<li><a href="/page/akcii.html" title="Акции">Акции</a></li>
	<li><a href="/page/o-magazine.html" title="О магазине">О магазине</a></li>
	<li><a href="/page/skidki.html" title="Скидки">Скидки</a></li>
	<li><a href="/page/video.html" title="Видео">Видео</a></li>
	<li><a href="/gbook/" title="Отзывы">Отзывы</a></li>
	<li><a href="/price/" title="Прайс-лист">Прайс-лист</a></li>
	<li><a href="/news/" title="Новости">Новости</a></li>
</ul>
			<div class="header htable">
				<div class="hcell hcell-1 first" id="logo"><a title="@name@" href="/"><img src="@logo@" alt="@name@"></a></div>
				<div class="hcell hcell-2">
					<div class="hcell-content">
					<span>Профсервиз &ndash; розничный интернет магазин посуды Leander. Фарфор Чехии, Столовые сервизы, Чайные сервизы. Хрусталь Bohemia</span>
							@w4aSmartSearch@
					</div>
				</div>
				<div class="hcell hcell-3" id="contacts">
					<div class="hcell-content">
						<p>Заказы по телефону с 9 до 23<br>Через магазин Круглосуточно</p>
					  <p class="phone">@telNum@</p>
						<div class="feedback">@returncall@</div>
					</div>
				</div>
				<div class="hcell hcell-4 last">
					<div class="htable">
						<div class="hcell hcell-1 first"><div class="hcell-content">
							<a href="/newprice/" title="Товары со скидкой"><span class="icon icon-discount"></span><br>
							Товары<br>со скидкой</a>
							</div>
						</div>
						<div class="hcell hcell-2"><div class="hcell-content">
							<span class="icon icon-profile"></span><br>
							Профиль<br>
							@usersDisp@</div>
						</div>
						<div class="hcell hcell-3 last" id="basket"><div class="hcell-content">
							<span class="icon icon-basket"></span><br>
							Корзина<br>

							<a href="/order/" title="В корзину"><span id="num">@num@</span> шт. <span id="sum">@sum@</span> @productValutaName@.</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="content">
			<div id="catb" class="topCat"><div class="shadow-catb"></div>
			  <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
				  @leftCatal@
				</tr>
			  </table>
			</div>			@mainTextFastComStart@
			<div class="box-content-shadow mm-box-new">
				<div class="fast-messages">
					@mainTextFast@
				</div>
			</div>
			@mainTextFastComEnd@
			<div class="box-content-shadow clearfix">
            <a href="/page/series.html" target="_self"><img src="/UserFiles/Image/Dop/serii.png" alt="Посуда по сериям"></a>
            <p></p>
            <a href="/page/skidki.html" class=link><img src="/UserFiles/Image/Dop/banner-skidki.jpg" border="0" align="top" name="myimage" id="myimage" onMouseOver="document.all('myimage').src='/UserFiles/Image/Dop/banner-skidki-2.jpg'" onMouseOut="document.all('myimage').src='/UserFiles/Image/Dop/banner-skidki.jpg'" alt="Скидки"></a>
            <p></p>
				<div class="fl left-menu">@leftMenu@</div>
				<div class="fr right-menu">@rightMenu@</div>
	<div class="slider">
		<div class="box shadow">
			<div class="shadow-t"></div>
			<div class="shadow-r"></div>
			<div class="shadow-b"></div>
			<div class="shadow-l"></div>
			<div class="shadow-t-l"></div>
			<div class="shadow-t-r"></div>
			<div class="shadow-b-r"></div>
			<div class="shadow-b-l"></div>
			<div class="shadow-content" style="height:453px">
			<div class="bxslider">
							@centerMenu@
			</div>
			</div>
		</div>
	</div>
			</div>
			<div class="box-title">
				<h2>Новинки</h2><a href="/newtip/" title="Показать все">Показать все</a>
			</div>
			<div class="box-content-shadow new-tip">
				@specMainIcon@
			</div>
			<script>
				$('.new-tip > table > tbody > tr > td:odd').addClass('setka');
			</script>
			<div class="box-title">
				<h2>Хиты продаж</h2><a href="/spec/" title="Показать все">Показать все</a>
			</div>
			<div class="box-content-shadow">
				@specMain@
			</div>
            <div class="box-title">
                <h2>Информация</h2><a href="/news/" title="Новости">Новости</a>
            </div>
            <div class="box-content-shadow">
    <div align="center">
        <script type="text/javascript">
		AC_FL_RunContent( 'width','940','height','94','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0','src','/UserFiles/Image/Dop/top','quality','high','pluginspage','http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash','movie','/UserFiles/Image/Dop/top' ); //end AC code
		</script>
		<noscript>
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="940" height="94" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"><param name="movie" value="/UserFiles/Image/Dop/top.swf"><param name="quality" value="high"><embed type="application/x-shockwave-flash" width="940" height="94" src="/UserFiles/Image/Dop/top.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">
			</object>
		</noscript>
</div>
					<div id="maincont" class="clearfix">@mainContent@</div>
			</div>
		</div>
		<div id="footer">
			<div class="footer-menu">
				<a href="/page/o-magazine.html" title="О магазине">О магазине</a>  &#9642; 
				<a href="/map/" title="Карта сайта">Карта сайта</a>  &#9642; 
                <a href="/page/kontakty.html" title="Контакты">Контакты</a>  &#9642; 
				<a href="/page/sertifikat.html" title="Сертификаты">Сертификаты</a>  &#9642; 
                <a href="/page/leander-optom.html" title="Посуда Оптом">Посуда Оптом</a>
			</div>
			<div class="footer-bottom clearfix">
                                <div align="center">Все материалы являются собственностью, любое использование разрешено, с согласия автора. <a href="/page/privacypolicy.html" title="Политика Конфиденциальности" target="_blank">Политика Конфиденциальности</a>, <a href="/page/dogovor-oferta.html" title="Договор-оферта" target="_blank">Договор-оферта</a>
								</div>
                                <p></p>
              <div align="center"><a href="/" title="Посуда из Чехии">Посуда из Чехии</a> 8(495)789-5221 <a href="mailto:sale@profserviz.ru"><img src="images/mm_mail.gif" alt="sale@profserviz.ru" width="11" height="11" border="0"></a> © Profserviz.ru, 2008-<script type="text/javascript">

dt = new Date();

document.write(dt.getFullYear());</script></div>

</div><!-- end #footer -->

</div><!-- end #wrapp --><!-- Разметка JSON-LD, созданная Мастером разметки структурированных данных Google. -->

<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "Organization",
  "name" : "ООО Чешский хрусталь",
  "telephone" : [ "+7 (495)789-5221", "+7 (903)589-5221" ],
  "email" : "sale@profserviz.ru",
  "address" : {
    "@type" : "PostalAddress",
    "streetAddress" : "2-й Котляковский пер., д.1 стр.1",
    "addressLocality" : "г. Москва",
    "postalCode" : "115201"
  },
  "url" : "http://profserviz.ru/"
}
</script>
				<div class="footer-bottom-box-payment fr">
                

                   <!--noindex-->
				   <a href="http://vk.com/profserviz_ru" target="_blank"><img src="images/files/vk-profserviz_ru.png" alt="Вконтакте"></a>
                   <a href="https://market.yandex.ru/shop/146808/reviews" target="_blank"><img src="/UserFiles/Image/Dop/market.jpg" border="0" width="68" height="24" alt="Читайте отзывы покупателей и оценивайте качество магазина на Яндекс.Маркете"></a>
                   <!--/noindex-->				    
                    <img src="images/files/visa.jpg" alt="Visa">
					<img src="images/files/mastercard.jpg" alt="Mastercard">
					<img src="images/files/maestro.jpg" alt="Maestro">				</div>

	</div>
</div>
<!--LiveInternet counter-->
<script type="text/javascript">
<!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t12.1;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число просмотров за 24"+
" часа, посетителей за 24 часа и за сегодня' "+
"border='0' width='2' height='2'>")
//-->
</script>
<!--/LiveInternet-->

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
	(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter21410194 = new Ya.Metrika({id:21410194, webvisor:true, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");
</script>
<noscript>
	<div><img src="//mc.yandex.ru/watch/21410194" style="position:absolute; left:-9999px;" alt=""></div>
</noscript>
<!-- /Yandex.Metrika counter -->

<!-- Google Analytics counter -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55866924-1', 'auto');
  ga('send', 'pageview');
</script>
<!-- /Google Analytics counter -->

<div style="clear:both"></div>
<div id="cartwindow" class="message">
    <div class="ico_add_to_card"><b>Внимание...</b><br>Товар добавлен в корзину</div>
</div>
<div id="comparewindow" class="message">
    <div class="ico_add_to_compare"><b>Внимание...</b><br>Товар добавлен в сравнение</div>
</div>
<script type="text/javascript" src="java/scripts.js"></script>

