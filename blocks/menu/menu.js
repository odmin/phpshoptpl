jQuery(document).ready(function($) {
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