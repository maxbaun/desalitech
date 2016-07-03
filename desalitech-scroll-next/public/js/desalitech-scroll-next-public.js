(function( $ ) {
	'use strict';

	$(document).ready(function(){
		init();
	});

	function init(){
		$('.desalitech-scroll-to .button').click(function(e){
			e.preventDefault();
			var selector = $(this).data('scrollTo');
			var speed = parseFloat($(this).data('speed')) * 1000 ;
			var where = $(this).data('where');
			var $elem = $(selector);
			var ht= $elem.height();

			var top = $elem.offset().top;
			var ntop = 0;
			var padding = 67;

			if(where=== 'middle' ){
				ntop = parseInt(top) - ht;
			}else if(where=== 'top' ){
				ntop = top - padding;
			}
			$("html, body").animate({scrollTop : ntop}, speed);

		})
	}

})( jQuery );
