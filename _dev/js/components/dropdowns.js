


function changeBackdropStateTo (state) {
	var state = state;
	if (state == 'show'){
		$('#backdrop').addClass('dt-show');
	}
	else{
		$('#backdrop').removeClass('dt-show');
	}
}

$('#dropdownShopping').on('show.bs.dropdown', function(){
	changeBackdropStateTo('show')
});

$('#dropdownShopping').on('hidden.bs.dropdown', function(){
	changeBackdropStateTo('hide');
});

$('#dropdownCustomer').on('show.bs.dropdown', function () {
	changeBackdropStateTo('show');
});

$('#dropdownCustomer').on('hidden.bs.dropdown', function () {
	changeBackdropStateTo('hide');
});

$('#dropdownMainMenu').on('show.bs.dropdown', function () {
	changeBackdropStateTo('show');
});

$('#dropdownMainMenu').on('hidden.bs.dropdown', function () {
	changeBackdropStateTo('hide');
});