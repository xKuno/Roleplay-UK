window.addEventListener('message', (event) => {
	if (event.data.name == 'openFineMenu') {
		openFineMenu();
	} else if (event.data.name == 'openWarrantSubmission') {
		openWarrantMenu();
	} else if (event.data.name == 'houseIDSearch') {
		openSearchHouseID();
	} else if (event.data.name == 'licencePurchase') {
		licencePurchase();
	} else if (event.data.name == 'licenceSubmissionBan') {
		licenceSubmission();
	}
});

function licencePurchase() {
	$.confirm({
		title: 'Available Licences',
		icon: 'far fa-id-badge',
		type: 'blue',
		theme: 'supervan',
		animation: 'scale',
		columnClass: 'large',
		draggable: false,
		alignMiddle: true,
		dragWindowBorder: false,
		content: '<div class="column"><img id="lsc-logo" height="150" width="150" src="https://i.gyazo.com/516ac48b73f719d1f8fc01edf2ee02a7.png" alt="LS Court logo"> <br>',
		onOpenBefore: function () {
			let self = this;

			$.post('https://rpuk_court/getLicenceList', {}, function (licenceList) {
				if (licenceList.length > 0) {
					let htmlLicenceList;

					$.each(licenceList, function (k, v) {
						htmlLicenceList += `<option data-licencename="${v.licenceName}" data-licenceprice="${v.licencePrice}" data-licencedesc="${v.licenceDescription}" data-licencelabel="${v.licenceLabel}" value=${v.licencePrice}>${v.licenceLabel} - £${v.licencePrice}</option>`;
					});

					self.setContentAppend(`<select name="licence" id="licence" onfocus="this.selectedIndex = -1;">` +
						htmlLicenceList +
						'</select>');

					$('#licence').change(() => {
						self.close();
						licencePurchaseDetails();
					});
				} else {
					self.setContentAppend('<b>No licences available to purchase.</b>')
				};
			});

			self.setContentAppend('</div>')
		},
		buttons: {
			closeMenu: { 
				text: 'Back',
				action: function () { $.post('https://rpuk_court/onMenuClose', JSON.stringify({})); }
			}
		}
	});
}

function licencePurchaseDetails() {
	let licence = $('#licence :selected')
	$.confirm({
		title: `<Strong>Purchase - ${licence.data('licencelabel')}</Strong>`,
		icon: 'far fa-id-badge',
		type: 'blue',
		theme: 'supervan',
		animation: 'scale',
		draggable: false,
		columnClass: 'large',
		dragWindowBorder: false,
		closeIcon: true,
		closeIcon: function () {
			this.close();
		},
		content: `<b>Description:</b><br> ${licence.data('licencedesc')}<br><br><b>Terms and conditions:</b><br>`+
			'Understand that by purchasing this licence you agree to abide by all standing rules and regulations as issued by the <strong>City Of Los Santos</strong>. Each licence may be endorsed up to a maximum of 20 points for any offences, at which point the licence may be revoked.',
		buttons: {
			purchaseLicence: {
				text: `Purchase - £${licence.data('licenceprice')}`,
				action: function () {
					let self = this;
					$.post('https://rpuk_court/purchaseLicence', JSON.stringify({
							licenceName: licence.data('licencename'),
							licencePrice: licence.data('licenceprice')
						}), (result) => {
							if (result) {
								self.close();
								$.alert({
									title: 'Success!',
									content: `You purchased the ${licence.data('licencelabel')}`,
									type: 'blue',
									theme: 'supervan',
									draggable: false,
									dragWindowBorder: false,
									onClose: () => { $.post('https://rpuk_court/onMenuClose', JSON.stringify({})); }
								});
							} else {
								self.close();
								$.alert({
									title: 'Insufficient funds',
									content: 'You do not have enough money to purchase this licence.',
									type: 'blue',
									theme: 'supervan',
									draggable: false,
									dragWindowBorder: false,
									onClose: () => { $.post('https://rpuk_court/onMenuClose', JSON.stringify({})); }
								});
							}
						}
					);
				}
			},
			closeMenu: { 
				text: 'Back',
				action: () => {
					this.close();
					licencePurchase();
				}
			}
		}
	});
}


function openFineMenu() {
	$.confirm({
		title: 'RPUK | Fine System',
		icon: 'fas fa-pound-sign',
		type: 'blue',
		theme: 'dark',
		columnClass: 'large',
		alignMiddle: true,
		closeIcon: true,
		closeIcon: function () {
			var fineUI = true
			$.post('https://rpuk_court/onMenuClose', JSON.stringify({fineUI}));
		},
		content: '' +
		'<form action="" class="formName">' +
		'<div class="form-group">' +
		"<label>Please think carefully before submitting this form. After filling out the form the target will receive three options to deal with the request. <br><br> Option 1 - Pay Now | Option 2 - Pay Later (14 Days) | Option 3 - Decline </label><br><br>" +
		'<input type="text" placeholder="Session ID" class="sessionid form-control" required /> <input type="number" placeholder="Fine Amount (£1,00-£100,000)" class="fine form-control" min="1" max="100000" required /> <textarea name="Reason" rows="3" placeholder="Reason" class="reason form-control" required /> </textarea>' +
		'</div>' +
		'</form>',
		buttons: {
			formSubmit: {
				text: 'Submit Fine',
				btnClass: 'btn-blue',
				action: function () {
					var session = this.$content.find('.sessionid').val();
					var fine = this.$content.find('.fine').val();
					var reason = this.$content.find('.reason').val();

					if(!session || session < 1){
						$.alert('Please enter a valid session ID!');
						return false;
					}
					if (fine < 1 || fine > 100000) {
						$.alert('Please enter a fine amount within the valid range! (£1,00-£100,000)');
						return false;
					}
					if(!fine){
						$.alert('Please enter a fine amount!');
						return false;
					}
					if(!reason){
						$.alert('Please enter a reason!');
						return false;
					}
					$.post('https://rpuk_court/billPlayer', JSON.stringify({ session, fine, reason }), function (data) {
						if (data.result == true) {
							var fineUI = true
							$.post('https://rpuk_court/onMenuClose', JSON.stringify({fineUI}));
						} else {
							$.alert({
								title: 'Ticket Failed, try again!',
								content: '',
								icon: 'fas fa-pound-sign',
								type: 'red',
								theme: 'dark',
								columnClass: 'small',
								buttons: {
									next: function () {
										openFineMenu()
									}
								}
							});
						}
					});
				}
			},
			Cancel: function () {
				var fineUI = true
				$.post('https://rpuk_court/onMenuClose', JSON.stringify({fineUI}));
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


function licenceSubmission() {
	$.confirm({
		title: 'RPUK | Licence Ban Submission (PC+)',
		icon: 'fas fa-file-upload',
		type: 'blue',
		theme: 'supervan',
		alignMiddle: true,
		draggable: false,
		columnClass: 'large',
		dragWindowBorder: false,
		content: '' +
		'<img src="https://i.gyazo.com/516ac48b73f719d1f8fc01edf2ee02a7.png" alt="LS Court logo">' +
		'<form action="" class="formName">' +
		'<div class="form-group">' +
		'<br>'+
		'<label>This form can be used, after a series of repeat offences, for requesting an individuals license to be revoked until successfully appealed by the individual through the courts.</label><br><br>' +

		'<label><strong>Individuals Full Name:</strong></label><br>' +
		'<input type="text" placeholder="John Smith" class="name form-control" required /><br>' +

		"<label><strong>Incident Report ID</strong> <em>(with relevant offences added)</em>:</label><br>" +
		'<input type="number" placeholder="2345" class="reportid form-control" min="1" max="90000" required /><br>' +
		
		"<label><strong>License to be Revoked</strong>:</label><br>" +
		'<select id="licencetype" class="licensetype form-control"> <option value="driving">Driving</option> <option value="hunting">Hunting</option> <option value="commercial">Commercial Driver</option> <option value="taxi">Taxi</option> <option value="mechanic">Mechanic</option> <option value="boat">Boating</option> <option value="pilot">Pilot</option> </select><br>' + 
		 
		"<label><strong>Additional Comments</strong> <em>(further info not listed in Incident Report)</em>:</label><br>" +
		'<textarea name="reason" rows="3" placeholder="Repeat offender" class="reason form-control" required /> </textarea><br><br>' +
		
		"<label>Your request will be reviewed by the judiciary within 1-3 days. <br>Please do not escalate to the Judges unless urgent. <br> A reminder that an explanation, of the reasoning and offence behind the request, should be stated on the PNC incident report number stated. </label><br>" +

		"</div>" +
		"</form>",
		buttons: {
			formSubmit: {
				text: 'Submit Request to Judges',
				btnClass: 'btn-blue',
				action: function () {
					let suspectsName = this.$content.find('.name').val();
					let reportID = this.$content.find('.reportid').val();
					let licenceType = this.$content.find('#licencetype').val();
					let reason = this.$content.find('.reason').val();

					if(!suspectsName){
						$.alert('Please enter the name of the suspect!');
						return false;
					}
					if(!reportID){
						$.alert('Please enter a report ID!');
						return false;
					}
					if(!reason){
						$.alert('Please enter some supporting comments!');
						return false;
					}
					$.post('https://rpuk_court/submitLicenceBan', JSON.stringify({ suspectsName, licenceType, reportID, reason }), function (data) {
						if (data.result == true) {
							$.post('https://rpuk_court/completeMenu', JSON.stringify({}));
						} else {
							$.alert({
								title: 'Request Failed, try again!',
								content: '',
								type: 'red',
								theme: 'dark',
								columnClass: 'large',
								buttons: {
									next: function () {
										licenceSubmission();
									}
								}
							});
						}
					});
				}
			},
			Cancel: function () {
				$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
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

function openWarrantMenu() {
	$.confirm({
		title: 'RPUK | Warrant Submission (Inspector+)',
		icon: 'fas fa-file-upload',
		type: 'blue',
		theme: 'supervan',
		columnClass: 'large',
		alignMiddle: true,
		closeIcon: true,
		closeIcon: function () {
			$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
		},
		content: '' +
		'<img height="150" width="150" src="https://i.gyazo.com/516ac48b73f719d1f8fc01edf2ee02a7.png" alt="LS Court logo>' +
		'<form action="" class="formName">' +
		'<div class="form-group">' +
		'<br> <label>Please ensure you read the <strong>LS Search Warrants Policy</strong> FULLY before submitting this form. <br> <br>Failure to follow the guidance in the Warrant policy WILL result in your request being denied. Please contact Police Command or a Judge if you do not have this document. </label><br><br>' +

		'<label> <strong> LS Search Warrants Policy: </strong> https://tinyurl.com/LSWarrantsPolicy</label><br><br>' +


		"<label><strong>House Owner's Full Name:</strong></label><br>" +
		'<input type="text" placeholder="Joe Gray" class="name form-control" required /><br>' +
		'<label><strong>House ID</strong> <em>(you should confirm ownership with a judge)</em>:</label><br>' +
		'<input type="number" placeholder="123" class="houseid form-control" min="1" max="1000" required /><br>' +
		'<label><strong>Justification Document</strong> <em>(following guidance in policy)</em>:</label><br>' +
		'<input type="url" placeholder="https://docs.google.com/yoururl/" class="reason form-control" required /><br>' +
		"<label><strong>Senior Officer's Name and Rank</strong> <em>(this cannot be yourself)</em>:</label><br>" +
		'<input type="text" placeholder="C/Supt Shane Jones" class="seniorName form-control" required /><br><br>' +
		
		'<label>Your warrant will be reviewed by the judiciary according to the timescales stated in the policy. Please do not escalate to the Judges unless urgent. <br><br> A reminder that you <strong>will</strong> be expected to submit a PNC incident report, showing the before <em>and</em> after contents, of any search which takes place. </label><br>' +

		'</div>' +
		'</form>',
		buttons: {
			formSubmit: {
				text: 'Submit Warrant',
				btnClass: 'btn-blue',
				action: function () {
					var suspectsName = this.$content.find('.name').val();
					var seniorName = this.$content.find('.seniorName').val();
					var reason = this.$content.find('.reason').val();
					var houseid = this.$content.find('.houseid').val();

					if(!suspectsName){
						$.alert('Please enter the name of the suspect!');
						return false;
					}
					if(!seniorName){
						$.alert('Please enter the name of the senior officer!');
						return false;
					}
					if(!houseid){
						$.alert('Please enter a houseID!');
						return false;
					}
					if(!reason){
						$.alert('Please enter a reason!');
						return false;
					}
					$.post('https://rpuk_court/submitWarrant', JSON.stringify({ suspectsName, seniorName, houseid, reason }), function (data) {
						if (data.result == true) {
							$.post('https://rpuk_court/completeMenu', JSON.stringify({}));
						} else {
							$.alert({
								title: 'Warrant Failed, try again!',
								content: '',
								icon: 'fas fa-shopping-basket',
								type: 'red',
								theme: 'dark',
								columnClass: 'large',
								buttons: {
									next: function () {
										openWarrantMenu();
									}
								}
							});
						}
					});
				}
			},
			Cancel: function () {
				$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
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


function openSearchHouseID() {
	$.confirm({
		title: 'RPUK | House ID Search',
		icon: 'fas fa-home',
		type: 'blue',
		theme: 'dark',
		columnClass: 'small',
		alignMiddle: true,
		closeIcon: true,
		closeIcon: function () {
			$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
		},
		content: '' +
		'<img src="https://i.gyazo.com/516ac48b73f719d1f8fc01edf2ee02a7.png" alt="LS Court logo>' +
		'<form action="" class="formName">' +
		'<div class="form-group">' +
		"<label>This form is for Judges to confirm house owners to police. Please use discretion with this information and think about what you reveal.  </label><br><br>" +
		'<input type="number" placeholder="House ID" class="houseID form-control" required/>' +
		'</div>' +
		'</form>', 
		buttons: {
			formSubmit: {
				text: 'Search House ID',
				btnClass: 'btn-blue',
				action: function () {
					var houseID = this.$content.find('.houseID').val();

					if(!houseID || houseID < 1){
						$.alert('Please enter a valid House ID!');
						return false;
					}
					$.post('https://rpuk_court/checkHouseID', JSON.stringify({houseID}), function (data) {
						if (data.result == true) {
							$.alert({
								title: 'House Owner Found',
								content: data.info,
								type: 'green',
								theme: 'dark',
								columnClass: 'small',
								buttons: {
									search: {
										text: 'Search Again',
										btnClass: 'btn-blue',
										action: function () {
											openSearchHouseID()
										},
									},
									close: {
										text: 'Close',
										btnClass: 'btn-red',
										action: function () {
											$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
										},
									}
								}
							});
						} else {
							$.alert({
								title: 'Result not found, please search again!',
								content: '',
								type: 'red',
								theme: 'dark',
								columnClass: 'small',
								buttons: {
									search: {
										text: 'Search Again',
										btnClass: 'btn-blue',
										action: function () {
											openSearchHouseID()
										},
									},
									close: {
										text: 'Close',
										btnClass: 'btn-red',
										action: function () {
											$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
										},
									}
								}
							});
						}
					});
				}
			},
			Cancel: function () {
				$.post('https://rpuk_court/onMenuClose', JSON.stringify({}));
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
