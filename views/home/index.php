



<div class="text-center">
	<h1>Dobrodošli na Ukus pokus!</h1>

	<p class="lead">Ovde možete pronaći proverene brze recepte od namirnica koje imate u kući</p>

	<br><br>

	<div class="container-fluid">
     <div class="col-lg-10 offset-lg-1">
 

    <!-- Form search -->

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>

    <form action="<?php $_SERVER['PHP_SELF']?>" method="POST">
      
        <label>Pretraga po namirnicama</label>

            <select class="form-control form-control-lg custom-select" multiple style="width: 80%" placeholder="U kući imam..." aria-label="Search for..." name="pretraga[]">

              <?php

              // Izlistavanje sastojaka - za unos u pretragu

              foreach ($viewmodel as $item) {
                echo '<option value="' . $item['ingredient_id'] . '">' .
                $item['ingredient_name'] . '</option>';

              } 

              ?>

            </select>

            <button class="btn btn-success" type="submit" name="submit">
             Traži!
            </button>      
    </form>

<?php

$sastojci = new HomeModel;

$ingrRows = $sastojci->ingredients();

//print_r($ingrRows);

$query = "";

if (isset($ingrRows)) {

  foreach ($ingrRows as $row) {

    $query .= "recipe_ingrs_id like '%" . $row. "%' AND ";
  }

  $query = rtrim($query, "AND ");

  $recRows = $sastojci->recipes($query);

    foreach ($recRows as $item) {
      echo $item['recipe_title'] . "<br>";
  }


//echo $query;

}



?>    

  </div>


<div class="container-fluid">
  <small>Unesite prva dva slova namirnice, a zatim je izaberite iz padajućeg menija.
  </small>
</div>


     
<br><br><br>

    <!-- End form -->  

    </div>

 </div>

<br><br><br>

<div class="text-center">

<h4>Najpopularniji recepti</h4>
<p>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

<h4>Najnoviji recepti</h4>
<p>
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).

</p>

</div>

<!-- jQuery for search field -->

<script type="text/javascript">

  $("select").select2();

  $("select").on("select2:unselect", function (evt) {
  if (!evt.params.originalEvent) {
    return;
  }
  
  evt.params.originalEvent.stopPropagation();
  });
</script>

















