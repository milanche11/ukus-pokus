<?php print_r($viewmodel);?>



<div>

<h1><?php echo $viewmodel[0]['recipe_title'];?></h1><p><?php echo $viewmodel[0]['posting_time'];?></p>
<h4><?php echo $viewmodel[0]['description'];?></h4>
<p>Vreme pripreme <?php echo $viewmodel[0]['prep_time'];?> min. Prljavo posudje <?php echo $viewmodel[0]['dirty_dishes'];?> kom.</p>
<p><?php echo $viewmodel[0]['instructions'];?></p>

</div>




