<div class="content" id="master-container" style="padding-top: 50px; height: 100vh">
	<div class="container">
		<div class="row my-3">
			<div class="col-lg-3 col-md-3"></div>
			<div class="col-lg-6 col-md-6 my-5">
				<div class="card bg-white text-black">
					<div class="card-body">
						<h3 class="card-title">Login</h3>
						<hr>
						<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
						  <div class="form-group">
						    <label for="master_password">Master Password</label>
						    <input type="password" class="form-control" id="password" name="password">
						    <span class="help-block text-danger"></span>
						  </div>
						  <div class="form-group">
						  	<input type="submit" class="btn btn-primary" value="Login"></input>
						  </div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3"></div>
		</div>
	</div>
</div>