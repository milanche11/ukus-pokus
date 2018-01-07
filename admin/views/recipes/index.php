<h1>Recipes</h1><hr>

<table class="table table-sm"><!-- Pocetak crtanja tabele -->
  	<thead>
	    <tr>
		  <th scope="col">Br.</th>
	      <th scope="col">Name</th>
	      <th scope="col">Datum objave</th>
	      <th scope="col" class="text-right">Options</th>
	    </tr>
  	</thead>
<?php 
$pagination = new Pagination();
$paginationpage = $pagination->allres('recipes', 10, $viewmodel);
$brojac = (($_GET['id']-1) * 10) + 1;?>
<?php $i=1; foreach ($paginationpage as $item) : ?>
<?php $date = date_create($item['posting_time']);  // Formatiranje datuma dobijenog u bazi
		$id = $item["recipe_id"];
?>	
	<tbody>
	    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
	    <tr>
				<td><?php echo $brojac."."; ?></td>
				<td><a href="<?PHP ROOT_URL ?>view/<?php echo $item['recipe_id']; ?>"><?php echo $item['recipe_title']; ?></a></td>
				<td><?php echo date_format($date, 'Y-m-d'); ?></td>
				<td class="text-right">
				<?php //PETAR
					if($item['status'] == 0){	
						echo '<button type="button" onclick="edit1('."'activate','recipes','recipe_id','status','1',".$id.')" class="btn btn-warning btn-sm">Activate</button>';
					}else{
						echo "<button type='button' onclick='edit1(".'"delete","recipes","recipe_id","status","0",'.$id.")' class='btn btn-danger btn-sm'>Delete</button>";
					}
				?>   
					<a class="btn btn-success btn-sm" href="<?php echo ROOT_URL; ?>recipes/edit/<?php echo $item['recipe_id']; ?>" role="button">Edit</a>
				</td>
	    </tr>
	</form>
	<?php $brojac++; endforeach; ?>
	</tbody>
</table><!-- Kraj crtanja tabele -->
<hr>
  <ul class="pagination pagination-sm justify-content-center">
		<?php echo $pagination->printPagination(); ?>
  </ul>

<a type="button" href="<?PHP ROOT_URL ?>insert" class="btn btn-primary btn-sm" name="insert">UNESI RECEPT</a> <span class='badge badge-dark'>Ukupno pronadjeno : <?php echo count($viewmodel);  ?> recepata.</span><br><br><br>