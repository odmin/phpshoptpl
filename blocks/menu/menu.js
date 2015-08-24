jQuery(document).ready(function($) {
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
	}
  });
$('#toggle-menu_top').on('click', function () {
	$(this).toggleClass('open');
	$(this).parent().find('.menu_top').toggleClass('open');
});