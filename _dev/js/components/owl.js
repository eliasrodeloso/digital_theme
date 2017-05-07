
if ($('#product')) {
	$('#carousel-product').owlCarousel({
		margin: 10,
		nav: true,
		responsive: {
			
			0: {
				items: 3,
			},
			500: {
				items: 3,
			},
			1000: {
				items: 3,
			},
		},
		navElement: '<i class="material-icons"></i>',
		navText: ['navigate_before', 'navigate_next']
	});

} 

$('#carousel-home').owlCarousel({
		margin: 10,
		responsive: {
			
			0: {
				items: 6,
				nav: true
			},
			500: {
				items: 10,
				nav: false
			},
			1000: {
				items: 10,
				nav: false
			},
		}
	});
