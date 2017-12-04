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

<?php $i=1; foreach($viewmodel as $item) : ?>
<?php $date = date_create($item['posting_time']);  // Formatiranje datuma dobijenog u bazi
		$id = $item["recipe_id"];
?>
	
	<tbody>
		<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
			<tr>
			 
				<td><?php  echo $i.'.'; $i++ ?></td>
				<td><a href="<?PHP ROOT_URL ?>recipes/view/<?php echo $item['recipe_id']; ?>"><?php echo $item['recipe_title']; ?></a></td>
				<td><?php echo date_format($date, 'Y-m-d'); ?></td>
				<td></td>
				<td>
			
					<?php //PETAR
					if($item['status'] == 0){	
						echo '<button type="button" onclick="edit('."'activate','recipes','recipe_id','status','1',".$id.')" class="btn btn-warning btn-sm">Activate</button>';
					}else{
						echo "<button type='button' onclick='edit(".'"delete","recipes","recipe_id","status","0",'.$id.")' class='btn btn-danger btn-sm'>Delete</button>";
					}?>   
						<button type="button" onclick="edit(alert('PROBA'))"  class="btn btn-success btn-sm">Edit</button>
		  
				<!--
					<button type="delete" class="btn btn-danger btn-sm" name="delete" value="<?php echo $item['recipe_id']; ?>">Delete</button>  
					<button type="button" class="btn btn-success btn-sm" name="edit">Edit</button></td>
				-->
	    </tr>
	</form>
	<?php endforeach; ?>
	</tbody>
</table><!-- Kraj crtanja tabele -->
Ukupno pronadjeno : <?php echo count($viewmodel);  ?> recepata.<br><br>
<a type="button" href="<?PHP ROOT_URL ?>recipes/insert" class="btn btn-primary btn-sm" name="insert">UNESI RECEPT</a>

<?php 


