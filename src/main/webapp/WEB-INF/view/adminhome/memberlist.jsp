<div class="col-md-9">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<label>SELECT SOCIETY : </label> 
			<select id="locality-dropdown" onchange="getselectsociety();" required></select>
		</div>
	</div>
</div>


<div class="col-md-9">
       
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-primary"  role="button" style=" margin-left: 705px;padding-right: 30px;margin-top: -4px;margin-bottom: 5px;" data-toggle="modal" data-target="#addMember">  <span class="glyphicon glyphicon-plus"></span> Add Member</button>

		<!-- member add Modal -->
		<div class="modal fade" id="addMember" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					 <h3 class="modal-title">Add Member</h3>
				</div>
				<div class="modal-header">
					<form action="saveEmployee" method="post" name="employeeForm">
						<input type="name" class="form-control" name="adminId" required placeholder="Member Name" /><br>
						 <input type="name" class="form-control" name="adminId" required placeholder="Member Phone" /><br>
						<input type="name" class="form-control" name="adminId" required placeholder="Member Email" /><br> 
						<input type="name" class="form-control" name="adminId" required placeholder="Member Address" /><br> 
						<input type="submit" class="btn btn-primary" role="button" value="Save">
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
					<table id="MemberListTable" class="table table-striped table-borderd">
					
						<thead>
							<tr>
								<th>FNAME</th>
								<th>LNAME</th>
								<th>E-Mail</th>
								<th>MOBILE</th>
								<th></th>	
							</tr>						
						</thead>				
					</table>				
				</div>			
			</div>
		</div>
