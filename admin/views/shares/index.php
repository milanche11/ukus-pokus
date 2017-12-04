<div>
	<?php if(isset($_SESSION['is_logged_in'])) : ?>
	<a class="btn btn-success btn-share" href="<?php echo ROOT_PATH; ?>shares/add">Share Something</a>
	<?php endif; ?>
	<?php foreach($viewmodel as $item) : 
		$id = $item["comment_id"];
	?>
		<div class="well">
			<div class="row">
				<div class="col"><h3><?php echo $item['comment_name']; ?></h3></div>
				<div class="col"><small><?php echo $item['comment_time']; ?></small></div>
				<div class="col">
					<button type="button" onclick="edit1('activate','comments','comment_id','status','1','<?php echo $id; ?>')" class="btn btn-success">OK</button>
					<button type='button' onclick="edit1('delete','comments','comment_id','status','0','<?php echo $id; ?>')" class='btn btn-danger'>Delete</button>
				
				<!--
					<button class="btn btn-danger" >Block</button>
					<button class="btn btn-success" >OK</button>
				-->
				</div>
			</div>
			
			<p><?php echo $item['comment_text']; ?></p>
			
			<a href="<?php echo $item['comment_email'];?>" target="_blank"><?php echo $item['comment_email'];?></a>
			
			<hr /><br>
		</div>
	<?php endforeach; ?>
</div>