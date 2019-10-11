<div id="bg">
	<canvas></canvas>
	<canvas></canvas>
	<canvas></canvas>
</div>
<!-- content -->
<div class="sub-main-w3">
	<form action="checkAdminLogin" method="post" modelAttribute="admin">
		<h2>
			Login Admin <i class="fas fa-level-down-alt"></i>
		</h2>
		<div class="form-style-agile">
			<label> <i class="fas fa-user"></i> Username
			</label> <input placeholder="Username" name="adminId" id="adminId" type="text" required="">
		</div>
		<div class="form-style-agile">
			<label> <i class="fas fa-unlock-alt"></i> Password
			</label> <input placeholder="Password" name="adminPassword" id="adminPassword" type="password"
				required="">
		</div>
		<div>
			<span style="color: red">${message}</span>
		</div>
		<!-- checkbox -->
		<div class="wthree-text">
			<ul>
				<li><a data-toggle="modal" data-target="#changeAdminPwd">Forgot Password?</a></li>
			</ul>
		</div>
		<!-- //checkbox -->
		<input type="submit" value="Log In">
	</form>
	
<!-- forget admin pqassword modal -->

	<div class="modal fade" id="changeAdminPwd" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">Change Admin Password</h3>
				</div>
				<div class="modal-header">
					<form id = "confirmAdminPwd">
						<div class="form-style-agile">
								<label><i class="fas fa-unlock-alt"></i> New Password
							</label> <input type="password" class="form-control" name="adminPassword1"
								id="adminPassword1" required placeholder="New Password" />
						</div>

						<div class="form-style-agile">
							<label> <i class="fas fa-unlock-alt"></i>Confirm Password
							</label> <input type="password" class="form-control" name="adminPassword2"
								id="adminPassword2" required placeholder="Confirm Password" />
						</div>
						<input type="submit" class="btn btn-primary" value="Save" style="margin-top: -10px;">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</div>
