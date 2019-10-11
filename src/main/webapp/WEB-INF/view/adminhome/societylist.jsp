<div class="col-md-9">
<div class="row">			
		
<!--add society madal window -->

<!--Trigger the modal with a button -->
	<button type="button" class="btn btn-primary" role="button"
		style=" margin-left: 734px;padding-right: 35px;margin-top: -4px;margin-bottom: 5px;" data-toggle="modal"
		data-target="#addEditSociety"> <span class="glyphicon glyphicon-plus"></span> Add Society</button>
		

	<!-- society add Modal -->
	<div class="modal fade" id="addEditSociety" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
		             <h3 class="modal-title">Add/Edit Society</h3>
				</div>
				<div class="modal-header">
					<form  id = "addEditSociety1" > 
				     	<input type="name" name = "societyId" hidden  id="societyId" />
						<input type="name" class="form-control" name="societyName" id="societyName"  required placeholder="Society Name" /><br>
						 <input type="address" class="form-control" name="societyAdd" id="societyAdd" required placeholder="Society Address" /><br>
						 <input type="city" class="form-control" name="societyCity" id="societyCity" required placeholder="Society City" /><br>
						<input type="fund" class="form-control" name="societyFund" id="societyFund" required placeholder="Society Fund" /><br> 
						<input type = "submit" class="btn btn-primary" value = "Save">
							<div class="alert alert-info fade in" id="response"></div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	

	<!--  bootstrap society table -->
	<div class="row">

			<div class="col-xs-12">
			<table id="SocietyListTable"
				class="table table-striped table-borderd">

				<thead>
					<tr>
						<th>NAME</th>
						<th>ADDRESS</th>
						<th>CITY</th>
						<th>FUND</th>
						<th></th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</div>
</div>