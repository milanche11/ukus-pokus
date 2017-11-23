

<div class="row">

	


	<?php
	


$pretraga = '5,6,25';

$niz1 = array();


foreach ($viewmodel as $item) {
				
	$x = $item['recipe_ingrs'];
	array_push($niz1, $x);

	foreach ($x as $key) {
		# code...
	}
}

print_r($niz1);
echo "<br><br>";





/*
$noviniz = array();
$noviniz= implode("/", $niz);

echo "<br><br>";

var_dump($noviniz);

*/








?>

</div>