<h1>Categories</h1>
<table class="table table-sm">
  <thead>
    <tr>
	  <th scope="col">#</th>
      <th scope="col">Naziv</th>
      <th scope="col">Options</th>
    </tr>
  </thead>

  <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
        <tr>
        <td> </td>
        <td><input type="text" name="cat_name" class="form-control" /></td>
        <td><button type="submit" class="btn btn-primary btn-sm" name="submit" ?>Add Categorie</button></td>
      </tr>
  </form>

    <?php $i=1; foreach($viewmodel as $item) : ?>
    <tbody>
      <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
        <tr><form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
          <td><?php  echo $i; $i++ ?></td>
          <td id="demo11"><?php echo $item['cat_name']; ?></td>
          <td><?php if ($item['status'] == 0 ) { ?>
            <button type="submit" class="btn btn-warning btn-sm" name="activate" value="<?php echo $item['cat_id']; ?>">Activate</button>
          <?php }else{ ?> 

            <button type="submit" class="btn btn-danger btn-sm" name="delete" value="<?php echo $item['cat_id']; ?>">Delete</button> <?php } ?>
            <button type="submit" class="btn btn-success btn-sm" name="edit">Edit</button>
         </td>
        </tr></form>
      </form>
    <?php endforeach; ?>
    </tbody>
</table>


