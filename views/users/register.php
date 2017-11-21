<div class="panel">
	<div class="panel-heading">
		<h3 class="panel-title">Register user</h3>
	</div>

	<div class="lead">
		<form method="POST" action="<?php $_SERVER['PHP_SELF']?>">
			<div>
				<label>Name</label>
				<input type="text" name="name" class="form-control"/>
				<br/>
			</div>
			<div ">
				<label>Email</label>
				<input name="email" class="form-control" type="text" /> 
				<br/>
			</div>
			<div>
				<label>Password</label>
				<input type="password" name="password" class="form-control"/>
				<br/>
			</div>
			<input type="submit" name="submit" class="btn btn-primary" value="Submit" />
			
			
		</form>
	</div>
</div>