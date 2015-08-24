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
