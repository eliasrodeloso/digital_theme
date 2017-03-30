
function addTheClass(className){
	$('#carouselHome').find('p').addClass(className)
}

function addTheAttr(attrib) {
	var carousel = document.getElementById('carouselHome');
	var elems = carousel.getElementsByTagName('p');
	var i;

	for( i = 0; i < elems.length; i++){
		elems[i].setAttribute('data-animation', attrib);
	}
}

function doAnimations($elems) {
	var animEnvEnd = 'webkitAnimationEnd animationend';
	
	$elems.each(function () {
		$this = $(this);
		$animationType = $this.data('animation');
		$this.addClass($animationType).one(animEnvEnd, function() {
			$this.removeClass($animationType);
		});
	})
}

$().ready( function () {
	addTheAttr('animated fadeIn');
	addTheClass('dt-delay-2');

	$theCarousel = $('#carouselHome');
	$theCarousel.carousel();

	$firstAnimate = $theCarousel.find('.carousel-caption:first').find('[data-animation ^= "animated"]');

	doAnimations($firstAnimate);

	$theCarousel.on('slide.bs.carousel', function (e){
		$animateElems = $(e.relatedTarget).find('[data-animation ^= "animated"]');
		doAnimations($animateElems);
	});
});






