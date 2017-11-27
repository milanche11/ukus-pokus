
<table class="table">
  <thead>
    <tr>
	  <th scope="col">#</th>
      <th scope="col">Naziv</th>
      <th scope="col">id</th>
      <th scope="col">#</th>
    </tr>
  </thead>


<?php $i = 1; foreach($viewmodel as $item) : ?>
	  <tbody>
    <tr>
      <td><?php echo $i; $i++ ?></td>
      <td><?php echo $item['cat_name']; ?></td>
      <td><?php echo $item['cat_id']; ?></td>
      <td><button type="button" class="btn btn-danger btn-sm">Delete</button></td>
    </tr>

<?php endforeach; ?>



<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
      <tr>
      <td><?php echo $i; $i++ ?></td>
      <td><input type="text" name="cat_name" class="form-control" /></td>
      <td>#</td>
      <td><input class="btn btn-primary" name="submit" type="submit" value="Add" /></td>
    </tr>

</form>

  </tbody>
</table>