<h1>Recipes</h1><hr>
<table class="table table-sm"><!-- Pocetak crtanja tabele -->
  	<thead>
	    <tr>
		  <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">Datum objave</th>
	      <th scope="col">Postavio</th>
	      <th scope="col">Options</th>
	    </tr>
  	</thead>

<?php $i=1; foreach($viewmodel as $item) : ?>
<?php $date = date_create($item['posting_time']);?><!-- Formatiranje datuma dobijenog u bazi -->
	
	<tbody>
	    <tr>
	      <td><?php  echo $i.'.'; $i++ ?></td>
	      <td><a href="<?PHP ROOT_URL ?>recipes/view/<?php echo $item['recipe_id']; ?>"><?php echo $item['recipe_title']; ?></a></td>
	      <td><?php echo date_format($date, 'Y-m-d'); ?></td>
	      <td></td>
	      <td><button type="submit" class="btn btn-danger btn-sm" name="delete" value="">Delete</button>
	      	  <button type="button" class="btn btn-success btn-sm" name="edit">Edit</button></td>
	    </tr>
	<?php endforeach; ?>
	</tbody>
</table><!-- Kraj crtanja tabele -->

<a type="button" href="<?PHP ROOT_URL ?>recipes/insert" class="btn btn-primary btn-sm" name="insert">UNESI RECEPT</a>



<?php 

