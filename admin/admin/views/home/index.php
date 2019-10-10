<?php if(isset($_SESSION['is_logged_in'])) {
	header('Location: '.ROOT_URL.'dashboard');
} ?>
<div class="text-center">
	<h1>Dobrodošli Na Ukus Pokus Admins</h1>
	<p class="lead">Morate biti ulogovani</p>
	<p class=""><a href="<?php echo ROOT_URL; ?>users/login">Login</a></p>
</div>