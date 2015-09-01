$(window).bind('load', function(){
	$('.bxslider').bxSlider({
		controls:false,
		auto:true,
		pause:5000
	});
	if (window.matchMedia("(min-width: 1200px)").matches){
		var bsMaxHeight = $('#bx-left').css('height');
		$('.centermenu').each(function () {
			$(this).css('height', bsMaxHeight);
		})
	}
	else if (window.matchMedia("(min-width: 1023px)").matches){
		var bsLeftHeight = $('#bx-left').css('height');
		var bsCenterHeight = $('.centermenu').css('height');
		var bsLeftElementHeight = parseFloat($('#bx-left').find('.banner-figure').css('height'));
		if (bsLeftHeight < bsCenterHeight) {
			$('#bx-left').css('height', bsCenterHeight).css('padding-top', (parseFloat(bsCenterHeight) - bsLeftElementHeight * 2) / 2 - 30 + 'px');
			$('#bx-right').css('height', bsCenterHeight).css('padding-top', (parseFloat(bsCenterHeight) - bsLeftElementHeight * 2) / 2 - 30 + 'px');
		}
		else{	
			$('.centermenu').each(function () {
				$(this).css('height', bsLeftHeight);
			})
		}
	}
});
;jQuery(document).ready(function($) {
	if (window.matchMedia("(min-width: 1023px)").matches) {
	    $('.menu-cat__item').hover(
	        function () {$(this).find('.menu-cat-child').removeClass('hide');},
	        function () {$(this).find('.menu-cat-child').addClass('hide');}
	      )
	}
	else{
		$('.menu-cat__item').on('click', 
			function () {
				$('.menu-cat-child').each(function () {
					$(this).addClass('hide');
				});
				$(this).find('.menu-cat-child').removeClass('hide');
			})
	};
	$('.menu-cat__parent').each(function () {
		if (window.matchMedia("(max-width: 1024px)").matches) {
			var href = '#' + $(this).parent('.menu-cat__item').attr('id');
			var link = $(this).attr('href');
			$(this).attr('href', href);
		}
	});
  });
$('#toggle-menu_top').on('click', function () {
	$(this).toggleClass('open');
	$(this).parent().find('.menu_top').toggleClass('open');
});