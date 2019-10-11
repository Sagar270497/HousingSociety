
let dropdown = $('#locality-dropdown');

dropdown.empty();

dropdown.append('<option selected="true" disabled>Select Society Name</option>');
dropdown.prop('selectedIndex', 0);

url = window.contextRoot + '/society/allSociety';

// Populate dropdown with list of provinces
$.getJSON(url, function (data) {
  $.each(data, function (key, entry) {
    dropdown.append($('<option></option>').attr('value', entry.societyId).text(entry.societyName));
     })
  
});
				  
function getselectsociety(){
	//var memberlist = $('#locality-dropdown').val();
	var memberlist =document.getElementById("locality-dropdown").value;
	jsonUrll = window.contextRoot + '/member/MemberListById/'+ memberlist;
	$table1.DataTable().ajax.url(jsonUrll).load();
}

var $table1 = $('#MemberListTable'); 
	var jsonUrl1 = '';
	jsonUrl1 = window.contextRoot + '/member/MemberListById/0';//+ memberlist;
	if($table1.length) {	
	$table1
			.DataTable({

				lengthMenu : [ [3, 5, 10, -1 ], [ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
				pageLength : 6,
				ajax : {
					url : jsonUrl1,
					dataSrc : ''
				},
				columns : [

						{
							data : 'fname'
						},
						{
							data : 'lname'
						},
						{
							data : 'email'

						},
						{
							data : 'mobile'

						},
						{
							data : 'memberId',
							bSortable : false,
							mRender : function(data, type, row) {
                                var str = '';
								
								str +=  '<button type="button" class="btn btn-primary" onclick="editSociety('+data+')"><span class="glyphicon glyphicon-pencil"></span></button>&#160;';
								str += '<span class="btn btn-danger" onclick="deleteSociety('+data+')"> <span class="glyphicon glyphicon-trash"></span>';
							    return str;
							}
						}
						
				]
				
			});
}





$("#addEditSociety1").submit(function(event){
	event.preventDefault();
          var society = {};
          var dynamicURL = "";
          var methodName = "";
          society.societyName = $('#societyName').val();
          society.societyAdd = $('#societyAdd').val();
          society.societyCity = $('#societyCity').val();
          society.societyFund = $('#societyFund').val();
              var society1 = $('#societyId').val();
              if(society1){
                  //update it
                  dynamicURL = window.contextRoot + '/society/updateSociety/'+ society1;
                  methodName = "PUT";
              }else{
                  //save it
                  dynamicURL = window.contextRoot + '/society/addSociety';
                  methodName = "POST";
              }
              var societyObj = JSON.stringify(society);
              $.ajax({
                  url: dynamicURL,
                  method: methodName,
                  data: societyObj,
                  contentType: 'application/json',
      	          dataType: 'json',
                  success: function(responseText){
                	  if (responseText !== null) {
                          $('#response').text(responseText);
                      } else {
                          alert("Invalid Name");
                      }
                	  location.href = window.contextRoot	+ '/Society';
             
                  },
                  error: function (error) {
                      alert(error);
                  }
              })
 });


//society list
var $table = $('#SocietyListTable');
// execute the below code only where we have this table

if ($table.length) {
	// console.log('Inside the table!');

	var jsonUrl = '';
	jsonUrl = window.contextRoot + '/society/allSociety';
	$table
			.DataTable({

				lengthMenu : [ [3, 5, 10, -1 ], [ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
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
							data : 'societyCity'
						},
						{
							data : 'societyFund',
								mRender : function(data, type, row) {
									return '&#8377; ' + data
								}

						},
						{
							data : 'societyId',
							bSortable : false,
							mRender : function(data,type,row) {

								var str = '';
							
								str +=  '<button type="button" class="btn btn-primary" onclick="editSociety('+data+')"><span class="glyphicon glyphicon-pencil"></span></button>&#160;';
								str += '<span class="btn btn-danger" onclick="deleteSociety('+data+')"> <span class="glyphicon glyphicon-trash"></span>';
								
							
									return str;
							}
						}

				]
			});
}


function editSociety(data){
	 $("#addEditSociety").modal('toggle');
	 $.ajax({
         url: window.contextRoot	+ '/society/getSociety/'+ data,
         method: 'GET',
         dataType: 'json',
         success: function (data1) {
        	 $('#societyId').val(data1.societyId);
             $('#societyName').val(data1.societyName);
              $('#societyAdd').val(data1.societyAdd);
             $('#societyCity').val(data1.societyCity);
             $('#societyFund').val(data1.societyFund); 
            
         },
         error: function (error) {
             alert(error);
         }
     })
}

$("#confirmAdminPwd").submit(function(event){
	event.preventDefault();
	var adminId = document.getElementById("adminId").value;
	 var admin1 = {
			 adminId: $("#adminId").val(),
	         adminPassword:$("#adminPassword1").val(),
	         adminPassword:$("#adminPassword2").val(),
	            }
        $.ajax({
            url: window.contextRoot + '/changeAdminPwd/'+ adminId,
            method: "PUT",
            contentType: 'application/json',
	        dataType: 'json',
            data: JSON.stringify(admin1),
            success: function(responseText){
            	if(responseText == true){
            		alert("admin password updated succesfully")
            	}
            	
          	  location.href = window.contextRoot	+ '/adminlogin';
        },
            error: function (error) {
                alert(error);
            }
        })
   })




function deleteSociety(data){
	
	if(confirm("Are You Sure"))
	  $.ajax({
	        url: window.contextRoot	+ '/society/deleteSociety/'	+ data,
	        contentType: 'application/json',
	        dataType: 'json',
	        type: 'GET',
	        success:function(){
	        	 location.href = window.contextRoot	+ '/Society';
	            }
      })
	
}

var $table2 = $('#FacilitatorList'); 
var jsonUrl2 = '';
jsonUrl2 = window.contextRoot + '/facility/allFacility';
if ($table2.length) {	
$table2
		.DataTable({

			lengthMenu : [ [3, 5, 10, -1 ], [ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
			pageLength : 6,
			ajax : {
				url : jsonUrl2,
				dataSrc : ''
			},
			columns : [

					{
						data : 'facilityName'
					},
					{
						data : 'facilitatorName'
					},
					{
						data : 'contactNo'

					},
					{
						data : 'alternateNo'

					},
					{
						data : 'address'

					},
					{
						data : 'facilityId',
						bSortable : false,
						mRender : function(data, type, row) {
                            var str = '';
							
							str +=  '<button type="button" class="btn btn-primary" onclick="editFacilitator('+data+')"><span class="glyphicon glyphicon-pencil"></span></button>&#160;';
							str += '<span class="btn btn-danger" onclick="deleteFacilitator('+data+')"> <span class="glyphicon glyphicon-trash"></span>';
						    return str;
						}
					}
					
			]
			
		});
}

$("#addEditFacilitator").submit(function(event){
	event.preventDefault();
          var facility = {};
          var dynamicURL = "";
          var methodName = "";
          facility.facilityName = $('#facilityName').val();
          facility.facilitatorName = $('#facilitatorName').val();
          facility.contactNo = $('#contactNo').val();
          facility.alternateNo = $('#alternateNo').val();
          facility.address = $('#address').val();
              var facility1 = $('#facilityId').val();
              if(facility1){
                  //update it
                  dynamicURL = window.contextRoot + '/facility/updateFacility/'+ facility1;
                  methodName = "PUT";
              }else{
                  //save it
                  dynamicURL = window.contextRoot + '/facility/addFacility';
                  methodName = "POST";
              }
              var facilityObj = JSON.stringify(facility);
              $.ajax({
                  url: dynamicURL,
                  method: methodName,
                  data: facilityObj,
                  contentType: 'application/json',
      	          dataType: 'json',
      	        success: function(responseText){
              	  if (responseText !== null) {
                        $('#response').text(responseText);
                    } else {
                        alert("Invalid Name");
                    }
              	location.href = window.contextRoot + '/Facilitator';
             
                  },
                  error: function (error) {
                      alert(error);
                  }
              })
      });

function deleteFacilitator(data){
	
	if(confirm("Are You Sure"))
	  $.ajax({
	        url: window.contextRoot	+ '/facility/deleteFacility/'+ data,
	        contentType: 'application/json',
	        dataType: 'json',
	        type: 'GET',
	        success:function(){
	        	location.href = window.contextRoot + '/Facilitator';
	            }
      })
	
}

function editFacilitator(data){
	 $("#addFacilitator").modal('toggle');
	 $.ajax({
        url: window.contextRoot	+ '/facility/getFacility/'+ data,
        method: 'GET',
        dataType: 'json',
        success: function (data1) {
        	 $('#facilityId').val(data1.facilityId);
        	 $('#facilityName').val(data1.facilityName);
             $('#facilitatorName').val(data1.facilitatorName);
             $('#contactNo').val(data1.contactNo);
             $('#alternateNo').val(data1.alternateNo);
             $('#address').val(data1.address); 
           
        },
        error: function (error) {
            alert(error);
        }
    })
}


