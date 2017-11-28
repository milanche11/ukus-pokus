<h1>Ingredient</h1>
<table class="table table-sm">
  <thead>
    <tr>
	  <th scope="col">#</th>
      <th scope="col">Naziv</th>
      <th scope="col">id</th>
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

<?php $i = 1; foreach($viewmodel as $item) : $id = $item['ingredient_id']; ?>
	  <tbody>
    <tr>
		<td><?php echo $i; $i++ ?></td>
		<td id="td_name<?php echo $id; ?>"><?php echo $item['ingredient_name']; ?></td>
		<td><?php echo $item['status']; ?></td>
		<td id="td<?php echo $id; ?>">
			<?php

			if($item['status'] == 0){	
				echo '<button type="button" onclick="ajax('."'activate','ingredients','ingredient_id',".$id.')" class="btn btn-warning btn-sm">Activate</button>';
			}else{
				echo "<button type='button' onclick='ajax(".'"delete","ingredients","ingredient_id",'.$id.")' class='btn btn-danger btn-sm'>Delete</button>";
			}?>   
				<button id="delete<?php echo $id; ?>" onclick="ajax('edit','ingredients','ingredient_id',<?php echo $id; ?>)" type="button" class="btn btn-success btn-sm">Edit</button>
		</td>
    </tr>

<?php endforeach; ?>


  </tbody>
</table>
