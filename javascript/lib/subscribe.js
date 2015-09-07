$(document).ready(function(){
	  if(!$.cookie('disablesub')){
		  addFieldToCheck("email","Email Address");
		  addFieldToCheck("name","Name");
		  $('#newslettersub').delay(30000).fadeIn(800);
	  }
	  $('#sub_close').click(function (event) {
		 event.preventDefault();
		 $('#newslettersub').fadeOut(800);
		 $.cookie('disablesub', 'true', { expires: 5 });
	  });

	var options = {
	    url: '/lists/?p=subscribe&id=2',
	      success: function(response) {
		      $('#newslettersub').html($(response).find('div.content'));
		      $('#newslettersub').delay(5000).fadeOut(800);
		      $.cookie('disablesub', 'true', { expires: 5 });
		   }
	  };  	
	$("#subscribeform").submit(function(event) {
		$("#subscribeform").ajaxSubmit(options);
	  	 event.preventDefault();
	});
});
