var id = null;

$(document).ready(function() {

	id = $(document).getUrlParam("cert");
	
	init();
	
	
	if (id != null) {
		showEditMode(id);
	} else {
		showNewMode();
	}
	
	$.get('api/user', function(data) {
		var author = "author: ";
		if (data.first_name == null || data.first_name == null)
			author += data.username;
		else {
			if (data.first_name != null)
				author += data.first_name + " ";
			if (data.first_name != null)
				author += data.last_name;
		}
		$('#author').html(author);
		$('#username').val(data.username);
		console.log(author);
	});
});

function showEditMode(id) {

	$.get('api/msc/' + id, function(data) {
		console.log(data);
		if (data.error != null)
			showNewMode();

		var now = new Date(data.date);
		var datepicker = $('#datepicker').datepicker({
			viewMode : 0,
			minViewMode : 0,
			format : "mm-dd-yyyy"
		});
		$('#datepicker').datepicker("setValue", now.format("mm-dd-yyyy","UTC"));

		if (data.date_format == 0) {
			setDayView();
		} else {
			setMonthView();
		}

		$('#headline').val(data.headline);
		$('#notes').val(data.notes);
		$('#source').val(data.source);
		$('#id').val(data.id);
		$('#eval' + data.evaluation).attr('checked', true);
		$("#category option").filter(function() {
			return $(this).val() == data.category;
		}).attr('selected', true);
		$("#category").val(data.category);
		$('#eval' + data.evaluation).val(data.evaluation);
		$('#evaluation').val(data.evaluation);
		$("#button_submit").hide();
		$("#button_new").hide();
		$("#button_cancel").hide();
		$("#button_list").show();
		$("#button_save").show();
	});

}

function showNewMode() {

	var now = new Date();
	
	var datepicker = $('#datepicker').datepicker({
		viewMode : 0,
		minViewMode : 0,
		format : "mm-dd-yyyy",
		onRender : function(date) {
			return date.valueOf() > now.valueOf() ? 'disabled' : '';
		}
	});

	$('#datepicker').datepicker("setValue", now.format("mm-dd-yyyy","UTC"));

}

function setDayView() {
	$('#day_switch').addClass("active");
	$('#month_switch').removeClass("active");
	$('#datepicker').datepicker("setMinViewMode", 0);
	$('#datepicker').datepicker("setViewMode", 0);
	$('#datepicker').datepicker("setFormat", "mm-dd-yyyy");
	$('#date_format').val(0);
}
function setMonthView() {
	$('#day_switch').removeClass("active");
	$('#month_switch').addClass("active");
	$('#datepicker').datepicker("setMinViewMode", 1);
	$('#datepicker').datepicker("setViewMode", 1);
	$('#datepicker').datepicker("setFormat", "mm-yyyy");
	$('#date_format').val(1);
}

function init() {

	$('.btn-date-switch').click(function() {
		var value = this.value;
		if (value === "day") {
			setDayView();
		} else if (value === "month") {
			setMonthView();
		}

	});

	$('.radioeval').click(function() {
		$('#evaluation').val(this.value);
	});

	$('#button_submit').click(function() {
		$.ajax({
			url : 'api/msc',
			type : 'post',
			dataType : 'json',
			data : $('form#msc_form').serialize(),
			success : function(data) {
				console.log(data);
				if (data.result === 'ok') {
					$("#success_alert").fadeIn();
					$("#button_submit").hide();
					$("#button_new").show();
					$("#button_cancel").hide();
					$("#button_list").show();
					$("#button_save").hide();
					id = data.id;
				} else if (data.result === 'error') {
					$("#error_alert").fadeIn();
				}

			},
			error : function(data) {
				console.log("error", data);
				if (data.result === 'error')
					$("#error_alert").fadeIn();
			}
		});
	});

	$('#button_save').click(function() {
		$.ajax({
			url : 'api/msc',
			type : 'put',
			dataType : 'json',
			data : $('form#msc_form').serialize(),
			success : function(data) {
				console.log(data);
				if (data.result === 'ok') {
					$("#success_alert").fadeIn();
					$("#button_submit").hide();
					$("#button_cancel").hide();
					$("#button_save").hide();
					$("#button_list").show();
					$("#button_new").show();
				}

				else if (data.result === 'error')
					$("#error_alert").fadeIn();

			},
			error : function(data) {
				console.log("error", data);
				if (data.result === 'error')
					$("#error_alert").fadeIn();
			}
		});
	});

}
