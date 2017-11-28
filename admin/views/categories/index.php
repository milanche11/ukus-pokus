<h1>Categories</h1>
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
        <td> </td>
        <td><input type="text" name="cat_name" class="form-control" /></td>
        <td></td>
        <td><input class="btn btn-primary btn-sm" name="submit" type="submit" value="Add Categorie" /></td>
      </tr>
  </form>

<?php $i=1; foreach($viewmodel as $item) : ?>
	  <tbody>
    <tr>
      <td><?php  echo $i; $i++ ?></td>
      <td id="demo11"><?php echo $item['cat_name']; ?></td>
      <td><?php echo $item['cat_id']; ?></td>
      <td><button type="button" class="btn btn-danger btn-sm" name"xxx" onclick="myFunction()" >Delete</button> <button type="button" class="btn btn-success btn-sm">Edit</button></td>
    </tr>

<?php endforeach; ?>


  </tbody>
</table>


<script>
function myFunction() {

</script>

