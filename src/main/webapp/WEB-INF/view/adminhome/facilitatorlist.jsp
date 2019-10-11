

<div class="col-md-9">
       
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-primary"  role="button" style=" margin-left: 705px;padding-right: 18px;margin-top: -4px;margin-bottom: 5px;" data-toggle="modal" data-target="#addFacilitator">  <span class="glyphicon glyphicon-plus"></span> Add Facilitator</button>

		<!-- member add Modal -->
		<div class="modal fade" id="addFacilitator" role="dialog">
			<div class="modal-dialog">

			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
		             <h3 class="modal-title">Add/Edit Facilitator</h3>
				</div>
				<div class="modal-header">
					<form  id = "addEditFacilitator" > 
				     	<input type="id" name = "facilityId" hidden  id="facilityId" />
						<input type="name" class="form-control" name="facilityName" id="facilityName"  required placeholder="Facility Name" /><br>
						 <input type="name" class="form-control" name="facilitatorName" id="facilitatorName" required placeholder="Facilitator Name" /><br>
						 <input type="contact" class="form-control" name="contactNo" id="contactNo" required placeholder="Mobile" /><br>
						<input type="alterno" class="form-control" name="alternateNo" id="alternateNo" required placeholder="Alternate Number" /><br> 
						<input type="address" class="form-control" name="address" id="address" required placeholder="Address" /><br> 
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
		
	<!-- Member Table -->

			<div class="row">
			
				<div class="col-xs-12">
					<table id="FacilitatorList" class="table table-striped table-borderd">
					
						<thead>
							<tr>
								<th>Facility</th>
								<th>Facilitator</th>
								<th>Mobile</th>
								<th>AlternateNo.</th>
								<th>Address</th>
								<th></th>
							</tr>						
						</thead>				
					</table>				
				</div>			
			</div>
		</div>
