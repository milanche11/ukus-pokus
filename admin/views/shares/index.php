

<div>
	<h2 class="text-center">Novi komentari</h2><br>
	<?php 
/*	if(isset($_SESSION['is_logged_in'])){
		echo '<a class="btn btn-success btn-share" href="<?php// echo ROOT_PATH; ?>shares/add">Share Something</a>';
	}
*/	
	$query = new Query;
	
	foreach($viewmodel as $item) : 
		$id = $item["comment_id"];
		$recipe_id = $item["recipe_id"];
		$recipe = $query->soloquery('recipes', 'recipe_id', $recipe_id);
	?>
		<div class="well">
			<div class="row">
				<div class="col"><h4><?php echo $item['comment_name']; ?></h4></div>
				<div class="col"><p><?php echo $recipe["recipe_title"]; ?></p></div>
				<div class="col"><?php echo $item['comment_time']; ?></div>
				<div class="col">
					<button type="button" onclick="edit1('activate','comments','comment_id','status','1','<?php echo $id; ?>')" class="btn btn-success">OK</button>
					<button type='button' onclick="edit1('delete','comments','comment_id','status','0','<?php echo $id; ?>')" class='btn btn-danger'>Delete</button>
				</div>
			</div>
			
			<p><?php echo $item['comment_text']; ?></p>
			
			<a href="<?php echo $item['comment_email'];?>" target="_blank"><?php echo $item['comment_email'];?></a>
			
			<hr /><br>
		</div>
		
	<?php endforeach; ?>
</div>

<div>	
	<h2 class="text-center">Blokirani komentari 
		<img src="assets/images/hide.png" class="toggle-hide" id="hide" alt="hide-arrow">
		<img src="assets/images/show.png" class="toggle-show" id="show" alt="show-arrow">
	</h2>
	<div class="toggle-hide">
	<?php	
// Blokirani komentari	
	$comments = $query->specified('comments', 'status', 0);
	foreach($comments as $item) : 
		$id = $item["comment_id"];
		$recipe_id = $item["recipe_id"];
		$recipe = $query->soloquery('recipes', 'recipe_id', $recipe_id)
	?>
		<div class="well">
			<div class="row">
				<div class="col"><h4><?php echo $item['comment_name']; ?></h4></div>
				<div class="col"><p><?php echo $recipe["recipe_title"]; ?></p></div>
				<div class="col"><?php echo $item['comment_time']; ?></div>
				<div class="col">
					<button type="button" onclick="edit1('activate','comments','comment_id','status','1','<?php echo $id; ?>')" class="btn btn-success">OK</button>
					<button type='button' onclick="edit1('remove','comments','comment_id','status','0','<?php echo $id; ?>')" class='btn btn-danger'>Remove</button>
				</div>
			</div>
			
			<p><?php echo $item['comment_text']; ?></p>
			
			<a href="<?php echo $item['comment_email'];?>" target="_blank"><?php echo $item['comment_email'];?></a>
			
			<hr /><br>
		</div>
	<?php endforeach; ?>
	</div>
</div>

