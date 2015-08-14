@php include_once($GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47)."php/GetUserAgent.lib.php"); php@

@php 

	if(GetUserAgent()=='ACHTUNG-IE') echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">';

	else echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">';

php@

<HTML>

<HEAD>

<TITLE>@pageTitl@</TITLE>

<META http-equiv="Content-Type" content="text-html; charset=windows-1251">

<META name="description" content="@pageDesc@">

<META name="keywords" content="@pageKeyw@">

<META name="copyright" content="@pageReg@">

<META name="engine-copyright" content="PHPSHOP.RU, @pageProduct@">

<META name="domen-copyright" content="@pageDomen@">

<META content="General" name="rating">

<META name="ROBOTS" content="ALL">

<LINK rel="shortcut icon" href="favicon.ico" type="image/x-icon">

<LINK rel="icon" href="favicon.ico" type="image/x-icon">

<LINK href="@pageCss@" type="text/css" rel="stylesheet">

<SCRIPT language="JavaScript" type="text/javascript" src="java/phpshop.js"></SCRIPT>

<SCRIPT language="JavaScript" type="text/javascript" src="phpshop/lib/Subsys/JsHttpRequest/Js.js"></SCRIPT>

<SCRIPT language="JavaScript" type="text/javascript" src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@javascript/js.js"></SCRIPT>

<SCRIPT language="JavaScript" type="text/javascript" src="java/swfobject.js"></SCRIPT>

<script type="text/javascript" src="java/highslide/highslide-p.js"></script>

<link rel="stylesheet" type="text/css" href="java/highslide/highslide.css"/>

<script type="text/javascript">

	hs.registerOverlay({html: '<div class="closebutton" onclick="return hs.close(this)" title="Закрыть"></div>',position: 'top right',fade: 2});

	hs.graphicsDir = 'java/highslide/graphics/';

	hs.wrapperClassName = 'borderless';

</script>

<link rel="stylesheet" href="images/files/jquery-ui-1.11.0/jquery-ui.css">

<link rel="stylesheet" href="images/files/jquery-ui-1.11.0/jquery.ui.spinner.css">

<!--<script src="//code.jquery.com/jquery-1.10.2.js"></script>-->

<script src="images/files/jquery-ui-1.11.0/external/jquery/jquery.js"></script>

<script src="images/files/jquery-ui-1.11.0/jquery-ui.js"></script>

<script>

$(function() {

$( ".spinner" ).spinner({

	min:0,

	icons: { down: "ui-icon-minus", up: "ui-icon-plus" }

});

});

</script>

<!-- jQuery library (served from Google) 

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->

<!-- bxSlider Javascript file -->

<script src="images/files/jquery.bxslider/jquery.bxslider.min.js"></script>

<!-- bxSlider CSS file -->

<link href="images/files/jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />

<script>

	$(document).ready(function(){

	  $('.bxslider').bxSlider({

		controls:false,

		auto:true,

		pause:5000

	  });

	});

</script>

<script type="text/javascript">

	$(document).ready(function(){

		$("#back-top").hide();

		$(function () {

			$(window).scroll(function () {

				if ($(this).scrollTop() > 200) {

					$('#back-top').fadeIn();

				} else {

					$('#back-top').fadeOut();

				}

			});

			$('#back-top a').click(function () {

				$('body,html').animate({

					scrollTop: 0

				}, 800);

				return false;

			});

		});

	});

</script>

</HEAD>

<BODY onLoad="default_load('false','false');NavActive('index');LoadPath('@ShopDir@');" class="bod">

<div class="black_overlay" id="fade"></div>

<p id="back-top"><a href="#top"><img src="images/files/back-up.png" alt="На вверх"></a></p>



<div id="wrapper">

	<div id="mainblock">

		<div id="header">

			<div class="slogan text-center">@name@</div>

			<div class="header htable">

				<div class="hcell hcell-1 first" id="logo"><a title="@name@" href="/"><img src="@logo@" alt="@name@"></a></div>

				<div class="hcell hcell-2">

					<div class="hcell-content">

						<div id="top-menu">@topMenu@<div class="top-menu-static"><a href="/gbook/" title="Отзывы" class="fr">Отзывы</a><div class="clearfix"><a href="/price/" title="Прайс-лист">Прайс-лист</a><a href="/news/" title="Новости">Новости</a></div></div><div class="clearfix"></div></div>

						<div id="search">

							<form method="post" name="forma_search" action="/search/" onSubmit="return SearchChek()">

								<input type="text" name="words" id="searchv" maxLength="30" value="Поиск по сайту" onFocus="this.value=''">

								<input type="submit" id="searchb" value="">

							</form>

						</div>

					</div>

				</div>

				<div class="hcell hcell-3" id="contacts">

					<div class="hcell-content">

						<p>Работаем ежедневно с 9 до 23</p>

						<p class="phone"><!--<span>+7 (495)</span> 789 5221-->@telNum@</p>

						<p class="feedback">@returncall@</p>

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

							Корзина<br><a href="/order/" title="В корзину"><span id="num">@num@</span> шт. <span id="sum">@sum@</span> @productValutaName@</a></div>

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

			</div>



			<div class="box-content-shadow clearfix">

				<div class="fl left-menu">@leftMenu@</div>

				<div class="fr right-menu">@rightMenu@</div>

				<div class="slider">

					<div class="bxslider">

						@centerMenu@

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

			<div class="box-content">

				<div class="box-content-overflow-y" style="margin-bottom:20px;">

					<!--<h2>@mainContentTitle_@</h2>-->

					<div id="maincont2" class="clearfix">@mainContentTwo@</div>

				</div>

				<div class="box-content-overflow-y">

					<!--<h2>@mainContentTitle_@</h2>-->

					<div id="maincont" class="clearfix">@mainContent@</div>

				</div>

			</div>

		</div>

		<div id="footer">

			<div class="footer-menu">

				<a href="/page/o-magazine.html" title="">О магазине</a>  &#9642; 

				<a href="/map/" title="Карта сайта">Карта сайта</a>  &#9642; 
                
                <a href="/page/kontakty.html" title="">Контакты</a>  &#9642; 

				<a href="/partner/" title="">Партнерская программа</a>
                
			</div>

			<div class="footer-bottom clearfix">

								<div align="center">Тел: 8(495)789-5221 © Profserviz.ru, <script type="text/javascript">
dt = new Date();
document.write(dt.getFullYear());</script></div>
</div><!-- end #footer -->
</div><!-- end #wrapp -->

<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t12.1;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число просмотров за 24"+
" часа, посетителей за 24 часа и за сегодня' "+
"border='0' width='2' height='2'><\/a>")
//--></script><!--/LiveInternet-->

				<div class="footer-bottom-box-payment fr">

					<img src="images/files/visa.jpg">

					<img src="images/files/mastercard.jpg">

					<img src="images/files/maestro.jpg">

				</div>

			</div>

		</div>

	</div>

</div>



<div style="clear:both"></div>

<div id="cartwindow" class="message">

    <div class="ico_add_to_card"><b>Внимание...</b><br>Товар добавлен в корзину</div>

</div>

<div id="comparewindow" class="message">

    <div class="ico_add_to_compare"><b>Внимание...</b><br>Товар добавлен в сравнение</div>

</div>

