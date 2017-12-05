<h1>Recipes</h1><hr>
<table class="table table-sm"><!-- Pocetak crtanja tabele -->
  	<thead>
	    <tr>
		  <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">Datum objave</th>
	      <th scope="col"></th>
	      <th scope="col">Options</th>
	    </tr>
  	</thead>
<?php 
$pag = new Pagination();
$w = $pag->allres('recipes', 2, $viewmodel);

?>
<?php $i=1; foreach ($w[0] as $item) : ?>
<?php $date = date_create($item['posting_time']);  // Formatiranje datuma dobijenog u bazi
		$id = $item["recipe_id"];
?>
	
	<tbody>
	    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
	    <tr>
			 

				<td><?php  //echo $i.'.'; $i++ ?></td>
				<td><a href="<?PHP ROOT_URL ?>recipes/view/<?php echo $item['recipe_id']; ?>"><?php echo $item['recipe_title']; ?></a></td>
				<td><?php echo date_format($date, 'Y-m-d'); ?></td>
				<td></td>
				<td>
			
					<?php //PETAR
					if($item['status'] == 0){	
						echo '<button type="button" onclick="edit1('."'activate','recipes','recipe_id','status','1',".$id.')" class="btn btn-warning btn-sm">Activate</button>';
					}else{
						echo "<button type='button' onclick='edit1(".'"delete","recipes","recipe_id","status","0",'.$id.")' class='btn btn-danger btn-sm'>Delete</button>";
					}?>   
					<a class="btn btn-success btn-sm" href="<?php echo ROOT_URL; ?>recipes/edit/<?php echo $item['recipe_id']; ?>" role="button">Edit</a>
				</td>
	    </tr>
	</form>
	<?php endforeach; ?>
	</tbody>
</table><!-- Kraj crtanja tabele -->

  <ul class="pagination">
		<?php echo $pag->ispis(); ?>
  </ul>

<br>Ukupno pronadjeno : <?php echo count($viewmodel);  ?> recepata.<br><br>





<a type="button" href="<?PHP ROOT_URL ?>recipes/insert" class="btn btn-primary btn-sm" name="insert">UNESI RECEPT</a><br><br><br>

<?php 


