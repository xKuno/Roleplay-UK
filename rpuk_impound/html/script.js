window.addEventListener('message', (event) => {
	if (event.data.name == 'openImpoundMenu') {
		openImpoundMenu();
	}
});

function openImpoundMenu() {
	$.confirm({
		title: 'RPUK | Impound Vehicle',
		icon: 'fas fa-car',
		type: 'blue',
		theme: 'dark',
		columnClass: 'large',
		alignMiddle: true,
		closeIcon: true,
		closeIcon: function () {
			$.post('https://rpuk_impound/onMenuClose', JSON.stringify({}));
		},
		content: '' +
		'<form action="" class="formName">' +
		'<div class="form-group">' + 
		'<label><strong>Reason For Impound</strong> <em>(following guidance in rules)</em>:</label><br>' +
		'<textarea name="Enter Reason For Impound" rows="2" placeholder="Vehicle was parked on the pavement." class="reason form-control" required /> </textarea>' +
		'<label><strong>Time Impound</strong> <em>(1 Hour - 48 Hours)</em>:</label><br>' +
		'<input type="number" placeholder="8" class="time form-control" min="1" max="100000" required />'+
		'<label><strong>Pay Amount To Retrieve Vehicle</strong> <em>(£1,00 - £20,000)</em>:</label><br>' +
		'<input type="number" placeholder="50000" class="fee form-control" min="1" max="100000" required />'+

		'</div>' +
		'</form>',
		buttons: {
			formSubmit: {
				text: 'Impound Vehicle',
				btnClass: 'btn-blue',
				action: function () {
					var reason = this.$content.find('.reason').val();
					var time = this.$content.find('.time').val();
					var fee = this.$content.find('.fee').val();

					if(!reason){
						$.alert('Please enter a reason!');
						return false;
					}
					if (time < 1 || time > 48) {
						$.alert('Please enter a time within the valid range! (1 Hour - 48 Hours)');
						return false;
					}
					if(!time){
						$.alert('Please enter a time!');
						return false;
					}
					if (fee < 1 || fee > 20000) {
						$.alert('Please enter a fine amount within the valid range! (£1,00 - £20,000)');
						return false;
					}
					if(!fee){
						$.alert('Please enter a fine amount!');
						return false;
					}
					$.post('https://rpuk_impound/impoundVehicle', JSON.stringify({reason, time, fee}), function (data) {
						if (data.result == true) {
							$.post('https://rpuk_impound/onMenuClose', JSON.stringify({}));
						} else {
							$.alert({
								title: 'Impounding Failed, try again!',
								content: '',
								type: 'red',
								theme: 'dark',
								columnClass: 'small',
								buttons: {
									next: function () {
										openImpoundMenu()
									}
								}
							});
						}
					});
				}
			},
			Cancel: function () {
				$.post('https://rpuk_impound/onMenuClose', JSON.stringify({}));
			},
		},
		onContentReady: function () {
			var jc = this;
			this.$content.find('form').on('submit', function (e) {
				e.preventDefault();
				jc.$$formSubmit.trigger('click');
			});
		}
	});
}