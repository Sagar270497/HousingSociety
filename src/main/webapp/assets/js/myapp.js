	
	var $table = $('#SocietyListTable');
	// execute the below code only where we have this table
	
	if ($table.length) {
		// console.log('Inside the table!');

		var jsonUrl = '';
		jsonUrl = window.contextRoot + '/society/allSociety';
		$table
				.DataTable({

					lengthMenu : [ [6],
							['6 Records' ] ],
					pageLength : 6,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
						
					    	
							{
								data : 'societyName'
							},
							{
								data : 'societyAdd'
							},
							{
								data : 'societyFund'
								
							},
							{
								data : 'societyId',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/society/updateSociety/'
											+ data
											+ '"button type="button" class="btn btn-primary">Edit</button></a> &#160;';
									str += '<a href="'
										+ window.contextRoot
										+ '/society/deleteSociety/'
										+ data
										+ '"button type="button" class="btn btn-primary">Delete</button></a>';

									return str;
								}
							}
							
							
							]
				});
	}