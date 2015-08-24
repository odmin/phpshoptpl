$(window).bind('load', function(){
	$('.bxslider').bxSlider({
	controls:false,
	auto:true,
	pause:5000
	});
	if (window.matchMedia("(min-width: 1025px)").matches){
		var bsMaxHeight = $('#bx-left').css('height');
		$('.centermenu').each(function () {
			$(this).css('height', bsMaxHeight);
		})
	}
});
;jQuery(document).ready(function($) {
	if (window.matchMedia("(min-width: 1023px)").matches) {
	    $('.menu-cat__item').hover(
	        function () {$(this).find('.menu-cat-child').css('display', 'inline-block');},
	        function () {$(this).find('.menu-cat-child').css('display', 'none')}
	      )
	}
	else{
		$('.menu-cat__item').on('click', 
			function () {
				$('.menu-cat-child').each(function () {
					$(this).css('display', 'none')
				});
				$(this).find('.menu-cat-child').css('display', 'inline-block');
			})
	}
  })
$('#toggle-menu_top').on('click', function () {
	$(this).toggleClass('open');
	$(this).parent().find('.menu_top').toggleClass('open');
})