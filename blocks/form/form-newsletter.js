jQuery(document).ready(function($) {
	if(!$.cookie('disablesub')){
	  addFieldToCheck("email","Email Address");
	  addFieldToCheck("name","Name");
	  $('#newslettersub').delay(3000).fadeIn(800);
  }
  $('#sub_close').click(function (event) {
	 event.preventDefault();
	 $('#newslettersub').fadeOut(800);
	 $.cookie('disablesub', 'true', { expires: 5 });
  });
});