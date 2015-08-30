@php include_once($GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47)."php/GetUserAgent.lib.php"); php@
<!doctype html>
@php 
	if(GetUserAgent()=='ACHTUNG-IE') echo '<html class="lteie8">';
	else echo '<html>';
php@
<head>
	<title>@pageTitl@</title>
	@php
		$LastModified_unix = strtotime(date("D, d M Y H:i:s", filectime($_SERVER['script_FILENAME'])));
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
	<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' />
	<meta http-equiv="Content-Type" content="text-html; charset=windows-1251">
	<meta name="geo.placename" content="Москва, Россия">
	<meta name="geo.position" content="55.648626;37.632026">
	<meta name="geo.region" content="RU-Москва">
	<meta name="ICBM" content="55.648626;37.632026">
	<meta name="description" content="@pageDesc@">
	<meta name="keywords" content="@pageKeyw@">
	<meta name="copyright" content="@pageReg@">
	<meta name="engine-copyright" content="@pageReg@">
	<meta name="domen-copyright" content="@pageDomen@">
	<meta content="General" name="rating">
	<meta name="ROBOTS" content="ALL">
	<meta name="cmsmagazine" content="b08b8257633837f3e19f6e5b1d130da4">

	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<link href="@pageCss@" type="text/css" rel="stylesheet">
	<!--[if IE 7]>
		<link href="phpshop/templates/profserviz/ie7-style.css" type="text/css" rel="stylesheet">
	<![endif]-->
	<!--[if lte IE 8]>
		<script language="Javascript" type="text/javascript" src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@javascript/html5.js"></script>
	<![endif]-->
	<!--[if IE]><link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@/style.ie.css" type="text/css" rel="stylesheet"><![endif]-->
	<link href="images/files/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
	
	<script language="Javascript" type="text/javascript" src="java/phpshop.js"></script>
	<script language="Javascript" type="text/javascript" src="phpshop/lib/Subsys/JsHttpRequest/Js.js"></script>
	<script language="Javascript" type="text/javascript" src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@javascript/js.js"></script>
	<script language="Javascript" type="text/javascript" src="java/swfobject.js"></script>
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
	<script src="scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body onLoad="default_load('false','false');NavActive('index');LoadPath('@ShopDir@');" class="bod">
	<div class="black_overlay" id="fade"></div>
	<div id="back-top" class="navigation-topbtn"><a class="navigation-topbtn__link" href="#top"><span></span></a></div>
	<div class="page">
		<div class="page__content">
			<div class="wrapper wrapper_decorate">
				<header class="header header_page">
					<button class="button button_menu" id="toggle-menu_top">Меню</button>
					<nav class="menu menu_top menu_justify">
						<a class="menu__item" href="/page/kontakty.html" title="Контакты" >Контакты</a>
						<a class="menu__item" href="/page/dostavka_i_oplata.html" title="Доставка и Оплата">Доставка и Оплата</a>
						<a class="menu__item" href="/page/akcii.html" title="Акции">Акции</a>
						<a class="menu__item" href="/page/o-magazine.html" title="О магазине">О магазине</a>
						<a class="menu__item" href="/page/skidki.html" title="Скидки">Скидки</a>
						<a class="menu__item" href="/page/video.html" title="Видео">Видео</a>
						<a class="menu__item" href="/gbook/" title="Отзывы">Отзывы</a>
						<a class="menu__item" href="/price/" title="Прайс-лист">Прайс-лист</a>
						<a class="menu__item" href="/news/" title="Новости">Новости</a>
					</nav>
					<div class="grid grid_indent_sm">
						<div class="grid__col1 grid__col_tablet2 grid__col_phone3">
							<a href="/" title="@name@" class="logo logo_top">
								<img src="@logo@" alt="@name@" class="logo__img">
							</a>
						</div>
						<div class="grid__col2 grid__col_tablet4 grid__col_phone3">
							<p class="text text_white">
								@name@
							</p>
							<div class="text">
								@w4aSmartSearch@
							</div>
						</div>
						<div class="grid__col1 grid__col_tablet2 grid__col_phone3">
							<div class="header-section header-section_theme_phonecenter">
								<div class="text text_sm text_ital text_white">
									<p class="text__line text__line_first">Заказы по телефону с 9 до 23<br>Через магазин Круглосуточно</p>
									<p class="text__phone">
										@telNum@
									</p>
								</div>
								<div class="text text_sm text_ital">
									<p class="text__line text__line_returncall">
										@returncall@
								</div>
							</div>
						</div>
						<div class="grid__col1 grid__col_tablet2 grid__col_phone3">
							<div class="header-section">
								<div class="profile profile_flex">
									<div class="header-section header-section_theme_none header-section_float header-section_oneof_3">
										<div class="profile-blank">
											<a href="/newprice/" title="Товары со скидкой" class="profile-blank__link profile-blank__link_img">
												<span class="icon icon-discount"></span><br>
												<span class="profile-blank__link">Товары<br>со скидкой</span>
											</a>
										</div>
									</div>
									<div class="header-section header-section_float header-section_oneof_3 header-section_sm">
										<div class="profile-blank">
											<span class="icon icon-profile"></span><br>
											Профиль<br>
											@usersDisp@
										</div>
									</div>
									<div class="header-section header-section_float header-section_oneof_3 header-section_sm">
										<div class="profile-blank profile-blank_basket">
											<span class="icon icon-basket"></span><br>
											Корзина<br>
											<a href="/order/" title="В корзину">
												<span id="num">@num@</span>&nbsp;шт. 
												<span id="sum">@sum@</span>&nbsp;@productValutaName@.
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cb"></div>
				</header>
				<section class="general">
					<nav class="navigation navigation_top" id="nav">
						<ul class="menu-cat" id="menu-top">
							@leftCatal@
						</ul>
					</nav>
					<aside class="general__area">
						@mainTextFastComStart@
						<div class="fast-messages">
							@mainTextFast@
						</div>
						@mainTextFastComEnd@
						<div class="banner banner_full">
							<a href="/page/series.html" target="_self" class="banner__link">
								Посуда по коллекциям
							</a>
						</div>
						<div class="banner banner_full banner_indent_top">
							<a href="/page/skidki.html" target="_self">
								<img src="/UserFiles/Image/Dop/banner-skidki.jpg" alt="Скидки" class="banner__img">
							</a>
						</div>
						<div class="grid grid_indent_sm">
							<div class="grid__col1 grid__col_tablet6 grid__col_phone3" id="bx-left">
								@leftMenu@
							</div>
							<div class="grid__col3 grid__col_tablet6 grid__col_phone3">
								<div class="centermenu">
									<div class="banner banner_full">
										<div class="bxslider">
											@centerMenu@
										</div>
									</div>
								</div>
							</div>
							<div class="grid__col1 grid__col_tablet6 grid__col_phone3">
								@rightMenu@
							</div>
						</div>
						<div class="cb"></div>
					</aside>
					<header class="general__separator">
						<span class="separator">
							<h2 class="separator__title">Новинки</h2>
							<a href="/newtip/" title="Показать все" class="separator__link">Показать все</a>
						</span>
					</header>
					<aside class="general__area general__area_shadow general__area_spec">
						@specMainIcon@
					</aside>
					<header class="general__separator">
						<span class="separator">
							<h2 class="separator__title">Хиты продаж</h2>
							<a href="/spec/" title="Показать все" class="separator__link">Показать все</a>
						</span>
					</header>
					<aside class="general__area general__area_shadow general__area_spec">
						@specMain@
					</aside>
					<header class="general__separator">
						<span class="separator">
							<h2 class="separator__title">Информация</h2>
							<a href="/news/" title="Новости" class="separator__link">Новости</a>
						</span>
					</header>
					<main class="general__area general__area_shadow">
						<div class="flash">
							<script type="text/javascript">
								AC_FL_RunContent( 'width','940','height','94','codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0','src','/UserFiles/Image/Dop/top','quality','high','pluginspage','http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash','movie','/UserFiles/Image/Dop/top' ); //end AC code
							</script>
							<noscript>
								<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="940" height="94" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"><param name="movie" value="/UserFiles/Image/Dop/top.swf"><param name="quality" value="high"><embed type="application/x-shockwave-flash" width="940" height="94" src="/UserFiles/Image/Dop/top.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">
								</object>
							</noscript>
						</div>
						<div class="usercontent">
							@mainContent@
						</div>
					</main>
				</section>
			</div>
		</div>
		<footer class="page__footer">
			<div class="wrapper wrapper_transparent">
				<nav class="menu menu_footer">
					<a class="menu__item" href="/page/o-magazine.html" title="О магазине">О магазине</a>  &#9642; 
					<a class="menu__item" href="/map/" title="Карта сайта">Карта сайта</a>  &#9642; 
					<a class="menu__item" href="/page/kontakty.html" title="Контакты">Контакты</a>  &#9642; 
					<a class="menu__item" href="/page/sertifikat.html" title="Сертификаты">Сертификаты</a>  &#9642; 
					<a class="menu__item" href="/page/leander-optom.html" title="Посуда Оптом">Посуда Оптом</a>
				</nav>
				<div class="externals">
					<span class="externals__row">
						<a href="http://vk.com/profserviz_ru" target="_blank" class="externals__link">
							<img src="images/files/vk-profserviz_ru.png" alt="Вконтакте">
						</a>
					</span>
					<span class="externals__row">
						<a href="https://twitter.com/Profserviz" target="_blank" class="externals__link">
							<img src="images/files/tw-profserviz_ru.png" alt="Твиттер">
						</a>
						<a href="https://www.facebook.com/profserviz.ru" target="_blank" class="externals__link">
							<img src="images/files/fb-profserviz_ru.png" alt="Фейсбук">
						</a>
						<a href="http://ok.ru/profserviz.ru" target="_blank" class="externals__link">
							<img src="images/files/ok-profserviz_ru.png" alt="Одноклассники">
						</a>
						<a href="https://plus.google.com/+ProfservizRu2008" target="_blank" class="externals__link">
							<img src="images/files/gp-profserviz_ru.png" alt="Google+">
						</a>
						<a href="http://youtube.com/c/ProfservizRu2008" target="_blank" class="externals__link">
							<img src="images/files/yt-profserviz_ru.png" alt="YouTube">
						</a>
					</span>
					<span class="externals__row">
						<img src="images/files/market-profserviz_ru.png" alt="Отзывы в Маркете">
						<a href="https://market.yandex.ru/shop/146808/reviews" target="_blank" class="externals__link">
							<img src="/UserFiles/Image/Dop/market.jpg" border="0" width="68" height="24" alt="Читайте отзывы покупателей и оценивайте качество магазина на Яндекс.Маркете">
						</a>
					</span>
					<span class="externals__row">
						<img src="images/files/karti-profserviz_ru.png" alt="Мы принимаем карты">
						<img src="images/files/visa.jpg" alt="Visa">
						<img src="images/files/mastercard.jpg" alt="Mastercard">
						<img src="images/files/maestro.jpg" alt="Maestro">
					</span>
				</div>
				<div class="copyright">
					<p>Все материалы являются собственностью, любое использование разрешено, с согласия автора. <a class="copyright__link" href="/page/privacypolicy.html" title="Политика Конфиденциальности" target="_blank">Политика Конфиденциальности</a>, <a class="copyright__link" href="/page/dogovor-oferta.html" title="Договор-оферта" target="_blank">Договор-оферта</a></p>
					<p><a href="/" title="Посуда из Чехии">Посуда из Чехии</a> 8(495)789-5221 <a class="copyright__link" href="mailto:sale@profserviz.ru"><img src="images/mm_mail.gif" alt="sale@profserviz.ru" width="11" height="11" border="0"></a> © Profserviz.ru, 2008-@php $a = getdate(); echo $a['year']; php@</p>
				</div>
			</div>
		</footer>
	</div>
	<script language="Javascript" type="text/javascript" src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@javascript/production.js"></script>
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
		"border='0' width='2' height='2'></a>")
	//-->
	</script>
	<!--/LiveInternet-->
	<!-- Yandex.Metrika counter -->
	<script type="text/javascript">
		(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter21410194 = new Ya.Metrika({id:21410194, webvisor:true, clickmap:true, tracklinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");
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
	<script type="text/javascript" src="java/scripts.js"></script>
	<div id="cartwindow" class="message">
		 <div class="message__content message__content_cart"><b>Внимание...</b><br>Товар добавлен в корзину</div>
	</div>
	<div id="comparewindow" class="message">
		 <div class="message__content message__content_compare"><b>Внимание...</b><br>Товар добавлен в сравнение</div>
	</div>