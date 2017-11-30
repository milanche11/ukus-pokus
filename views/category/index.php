

<div class="container-fluid text-center">
<?php

$resultSet = array();
foreach ($viewmodel as $item) {
				
	$x = $item;
	array_push($resultSet, $x);
	
}
print_r($resultSet);


?>
</div>