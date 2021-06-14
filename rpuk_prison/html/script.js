window.addEventListener('message', (event) => {
	if (event.data.name == 'openSentenceMenu') {
		openSentenceMenu();
	}
});

function openSentenceMenu() {
	$.confirm({
		title: 'RPUK | Prison System',
		icon: 'far fa-clipboard',
		type: 'blue',
		theme: 'dark',
		columnClass: 'large',
		alignMiddle: true,
		closeIcon: true,
		closeIcon: function () {
			$.post('https://rpuk_prison/onMenuClose', JSON.stringify({}));
		},
		content: '' +
		'<form action="" class="formName">' +
		'<div class="form-group">' +
		"<label>Please think carefully before submitting this form. After filling out the form the target will be sent to Prison. <strong>Remember to offer food and water</strong>. <br><br>" +
		'<input type="text" placeholder="Session ID" class="sessionid form-control" required /> <input type="number" placeholder="Sentence Time (Months)" class="time form-control" min="1" max="100000" required /> <textarea name="Reason" rows="3" placeholder="Reason" class="reason form-control" required /> </textarea>' +
		'</div>' +
		'</form>',
		buttons: {
			formSubmit: {
				text: 'Submit Prison Sentence',
				btnClass: 'btn-blue',
				action: function () {
					var session = this.$content.find('.sessionid').val();
					var time = this.$content.find('.time').val();
					var reason = this.$content.find('.reason').val();

					if(!session || session < 1){
						$.alert('Please enter a valid session ID!');
						return false;
					}
					if (time < 1) {
						$.alert('Please enter a sentence amount within the valid range!');
						return false;
					}
					if(!time){
						$.alert('Please enter a fine amount!');
						return false;
					}
					if(!reason){
						$.alert('Please enter a reason!');
						return false;
					}
					$.post('https://rpuk_prison/jailPlayer', JSON.stringify({ session, time, reason }), function (data) {
						if (data.result == true) {
							$.post('https://rpuk_prison/completeMenu', JSON.stringify({}));
						} else {
							$.alert({
								title: 'Jailing Player Failed, try again!',
								content: '',
								icon: 'fas fa-shopping-basket',
								type: 'red',
								theme: 'dark',
								columnClass: 'large',
								buttons: {
									next: function () {
										openSentenceMenu()
									}
								}
							});
						}
					});
				}
			},
			cancel: function () {
				$.post('https://rpuk_prison/onMenuClose', JSON.stringify({}));
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
