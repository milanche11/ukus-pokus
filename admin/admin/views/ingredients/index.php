<h1>Ingredient</h1><hr>
<table class="table table-sm">
  <thead>
    <tr>
	  <th scope="col">#</th>
      <th scope="col">Naziv</th>
      <th scope="col"></th>
      <th scope="col">Options</th>
    </tr>
  </thead>
	
	<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
		<tr>
		  <td></td>
		  <td><input type="text" name="ingredient_name" class="form-control" /></td>
		  <td></td>
		  <td><input class="btn btn-primary btn-sm" name="submit" type="submit" value="Add Ingredients" /></td>
		</tr>
	</form>

	<?php $i = 1; 
		foreach($viewmodel as $item) : 
			$name = $item['ingredient_name'];
			$id = $item['ingredient_id']; 
			$status = $item['status']
	?>
	  <tbody>
    <tr>
		<td><?php echo $i; $i++ ?></td>
		<td id="td_name<?php echo $id; ?>"><?php echo $name; ?></td>
		<td></td>
		<td id="td<?php echo $id; ?>">
			<?php

			if($item['status'] == 0){	
				echo '<button type="button" onclick="edit1('."'activate','ingredients','ingredient_id','status','1',".$id.')" class="btn btn-warning btn-sm">Activate</button>';
			}else{
				echo "<button type='button' onclick='edit1(".'"delete","ingredients","ingredient_id","status","0",'.$id.")' class='btn btn-danger btn-sm'>Delete</button>";
			}?>   
				<button type="button" onclick="edit1('edit','ingredients','ingredient_id','ingredient_name','<?php echo $name; ?>','<?php echo $id; ?>')"  class="btn btn-success btn-sm">Edit</button>
		</td>
    </tr>

<?php endforeach; ?>


  </tbody>
</table>