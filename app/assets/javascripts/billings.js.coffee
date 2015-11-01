sows = $('#billing_sow_id').html()

$('#billing_project_id').change ->
	project = $('#billing_project_id :selected').text()
	options = $(sows).filter("optgroup[label=#{project}]").html()	
	if options
		$('#billing_sow_id').html(options)
	else
		$('#billing_sow_id').empty()