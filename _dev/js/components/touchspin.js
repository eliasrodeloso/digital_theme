
$('.touchspin').TouchSpin({
	min: $('#quantity-wanted').data('min'),
	max: $('#quantity-wanted').data('max'),
	buttondown_class: 'btn btn-outline-secondary touchspin-plus',
	buttonup_class: 'btn btn-outline-secondary touchspin-minus',
	verticalbuttons: true
})