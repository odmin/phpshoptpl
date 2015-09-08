$(window).bind('load', function(){
	$('.bxslider').bxSlider({
		controls:false,
		auto:true,
		pause:5000
	});
	if (window.matchMedia("(min-width: 1023px)").matches){
		var bsLeftHeight = $('#bx-left').css('height');
		var bsCenterHeight = $('.centermenu').css('height');
		var bsLeftElementHeight = parseFloat($('#bx-left').find('.banner-figure').css('height'));
		if (bsLeftHeight < bsCenterHeight) {
			$('#bx-left').css('height', bsCenterHeight).css('padding-top', (parseFloat(bsCenterHeight) - bsLeftElementHeight * 2) / 2 - 15 + 'px');
			$('#bx-right').css('height', bsCenterHeight).css('padding-top', (parseFloat(bsCenterHeight) - bsLeftElementHeight * 2) / 2 - 15 + 'px');
		}
		else{	
			$('.centermenu').each(function () {
				$(this).css('height', bsLeftHeight);
			})
		}
	}
});
