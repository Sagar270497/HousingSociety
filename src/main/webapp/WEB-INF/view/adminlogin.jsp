<div id="bg">
	<canvas></canvas>
	<canvas></canvas>
	<canvas></canvas>
</div>
<!-- content -->
<div class="sub-main-w3">
	<form action="checAdminkLogin" method="post" modelAttribute="admin">
		<h2>
			Login Admin <i class="fas fa-level-down-alt"></i>
		</h2>
		<div class="form-style-agile">
			<label> <i class="fas fa-user"></i> Username
			</label> <input placeholder="Username" name="adminId" type="text" required="">
		</div>
		<div class="form-style-agile">
			<label> <i class="fas fa-unlock-alt"></i> Password
			</label> <input placeholder="Password" name="adminPassword" type="password"
				required="">
		</div>
		<!-- checkbox -->
		<div class="wthree-text">
			<ul>
				<li><a href="#">Forgot Password?</a></li>
			</ul>
		</div>
		<!-- //checkbox -->
		<input type="submit" value="Log In">
	</form>
</div>
<!-- //content -->
