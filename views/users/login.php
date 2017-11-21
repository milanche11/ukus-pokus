<div class="panel">
	<div class="panel-heading">
		<h3 class="panel-title">Login user</h3>
	</div>

	<div class="panel-body">
		<form method="POST" action="<?php $_SERVER['PHP_SELF']?>">
			
			<div class="form-group">
				<label>Email</label>
				<input name="email" class="form-control" type="text" /> 
			</div>
			<div class="form-group">
				<label>Password</label>
				<input type="password" name="password" class="form-control"/>
			</div>
			<input type="submit" name="submit" class="btn btn-primary" value="Submit" />
			
			
		</form>
	</div>
</div>