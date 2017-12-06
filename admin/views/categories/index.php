<h1>Categories</h1><hr>
<table class="table table-sm">
  <thead>
    <tr>
	    <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Options</th>
    </tr>
  </thead>
  <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
      <tr>
        <td></td>
        <td><input type="text" name="cat_name" class="form-control" /></td>
        <td><button type="submit" class="btn btn-primary btn-sm" name="submit" ?>Add Categorie</button></td>
      </tr>
  </form>

    <?php $i=1; foreach($viewmodel as $item) : 
		$name= $item["cat_name"];
		$id=$item["cat_id"];
	?>
    <tbody >
      <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
        <tr>
          <td><?php  echo $i.'.'; $i++ ?></td>

          <td id="td_name<?php echo $id; ?>"><?php echo $item['cat_name']; ?></td>
          <td id="td<?php echo $id; ?>">
		  <?php if ($item['status'] == 0 ) { ?>
            <button type="submit" class="btn btn-warning btn-sm" name="activate" value="<?php echo $item['cat_id']; ?>">Activate</button>
          <?php }else{ ?> 
            <button type="submit" class="btn btn-danger btn-sm" name="delete" value="<?php echo $item['cat_id']; ?>">Delete</button> <?php } ?>
   <!--         <button type="submit" class="btn btn-success btn-sm" name="edit" onclick="">Edit</button>  -->
			<button type="button" onclick="edit1('edit','categories','cat_id','cat_name','<?php echo $name; ?>','<?php echo $id; ?>')"  class="btn btn-success btn-sm">Edit</button>


         </td>
        </tr>
      </form>
    <?php endforeach; ?>
    </tbody>
</table>