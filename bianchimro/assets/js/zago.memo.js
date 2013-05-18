var id = null;

$(document).ready(function() {

	id = $(document).getUrlParam("id");
	
	init();
	
	
	$('#private_memo_cb').on('switch-change', function(e,data) {
		$('#private_memo').val(data.value);
	});
	
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

	$.get('api/memo/' + id, function(data) {
		console.log(data);
		if (data.error != null)
			showNewMode();

		var now = new Date(data.date.sqlDate);
		
		console.log(now);
		var datepicker = $('#datepicker').datepicker({
			viewMode : 0,
			minViewMode : 0,
			format : "mm-dd-yyyy"
		});
		$('#datepicker').datepicker("setValue", now.format("mm-dd-yyyy","UTC"));

		
		setDayView();
		

		$('#headline').val(data.headline);
		$('#text').val(data.text);
		$('#id').val(data.id);
		//tags
		$(".tagManager").tagsManager({
			prefilled: data.tags,
			typeahead: true,
			typeaheadAjaxSource: 'api/tags',
	        typeaheadAjaxPolling: true,
	        AjaxPush: 'api/tags'
		});
		
		//pub private
		$('#private_memo_cb').bootstrapSwitch('setState', data.privateMemo);

		
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
		format : "mm-dd-yyyy"
	});

	$('#datepicker').datepicker("setValue", now.format("mm-dd-yyyy","UTC"));
	
	$(".tagManager").tagsManager({
		typeahead: true,
		typeaheadAjaxSource: 'api/tags',
        typeaheadAjaxPolling: true,
        AjaxPush: 'api/tags'
	});

}

function setDayView() {
	$('#day_switch').addClass("active");
	$('#month_switch').removeClass("active");
	$('#datepicker').datepicker("setMinViewMode", 0);
	$('#datepicker').datepicker("setViewMode", 0);
	$('#datepicker').datepicker("setFormat", "mm-dd-yyyy");
	$('#date_format').val(0);
}

function init() {

	$('#button_submit').click(function() {
		$.ajax({
			url : 'api/memo',
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
			url : 'api/memo',
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
