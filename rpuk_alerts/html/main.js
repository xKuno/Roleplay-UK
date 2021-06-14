$('document').ready(function() {
	alerts = [];
	stuckId = '';

	window.addEventListener('message', function (event) {
		if (event.data.action == "display") {
			ShowNotif(event.data);
		} else if (event.data.action == "historyOpen") {
			$( "div" ).empty();
			ShowHistory();
		} else if (event.data.action == "historyClose") {
			$( "div" ).empty();
			if (stuckId !== '') {
				StickNotif(stuckId, true);
			}
		}
	});

	function ShowHistory() {
		for (i = alerts.length - 1; i > alerts.length - 20; i--) {
			if(alerts[i] !== undefined) {
				pData = alerts[i];
				pData.length = 100000000000;
				ShowNotif(pData)
			}
		}
	}

	function ShowNotif(data) {
			var $notification = CreateNotification(data);
			$('.notif-container').append($notification);
			setTimeout(function() {
				$.when($notification.fadeOut()).done(function() {
					$notification.remove()
				});
			}, data.length != null ? data.length : 2500);
	}

	function StickNotif(id, skip) {
		if (stuckId !== id || skip) {
			if (stuckId !== '') {
				alerts[stuckId].info["sticky"] = '';  
			}
			stuckId = id
			alerts[id].info["sticky"] = ' <i class="fa fa-thumb-tack"></i>';
			var $notification = CreateNotification(alerts[id]);
			$('.notif-container').append($notification);
		} else {
			stuckId = '';
			$( "div" ).empty();
			alerts[id].info["sticky"] = '';
		}
	}

	function DeleteNotif(alert) {
		const index = alerts.indexOf(alert)
		alerts.splice(index, 1)
	}


	function CreateNotification(data) {
		const template = document.getElementById('template').innerHTML;

		if (data.stored == undefined) { 
			data.stored = true;
			data.info["sticky"] = '';
			data.info["time"] = calcTime('+1');
			data.info["id"] = alerts.length;
			alerts.push(data);
		}

		const rendered = Mustache.render(template, 
			{
				code:            data.info["code"], 
				alert_time:      data.info["time"],
				icon:            data.info["icon"],
				name:            data.info["name"],
				sticky:          data.info["sticky"],
				location:        data.info["loc"],

				vehicle_plate:   data.info["veh-reg"],
				vehicle_model:   data.info["veh-model"],

				officer_name:    data.info["officer-name"],
				radio_frequency: data.info["radio-freq"],

				notes:           data.info["extra-notes"],
				dispatch:        data.info["dispatch"],
				gender:          data.info["gender"]
			}
		);
		
		var $notification = $(document.createElement('div'));

		$notification.addClass('notification').addClass(data.style);
		$notification.html(rendered);

		$notification.mouseup(function(event) {
			switch (event.which) {
				case 1:
					$( "div" ).empty();
					$.post('https://rpuk_alerts/gps', JSON.stringify({x : data.info["coords"].x, y : data.info["coords"].y}));
					break;
				case 2:
					$( "div" ).empty();
					DeleteNotif(data)
					ShowHistory()
					break;
				case 3:
					$( "div" ).empty();
					StickNotif(data.info["id"], false)
					$.post('https://rpuk_alerts/gps', JSON.stringify({x : data.info["coords"].x, y : data.info["coords"].y}));
					break;
			}
		});

		$notification.fadeIn();
		if (data.style !== undefined) {
			Object.keys(data.style).forEach(function(css) {
				$notification.css(css, data.style[css])
			});
		}
		
		return $notification;
	}

	function calcTime(offset) {
		d = new Date();
		utc = d.getTime() + (d.getTimezoneOffset() * 60000);
		nd = new Date(utc + (3600000*offset));
		return nd.toLocaleTimeString([], {hour12: false, hour: '2-digit', minute:'2-digit'});
	}

	document.onkeyup = function (event) {
		if (event.key == 'Escape') {
			$( "div" ).empty();
			$.post('https://rpuk_alerts/exit');
			return
		}
	};
});