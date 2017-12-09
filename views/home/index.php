<?php
$homemodel = new HomeModel();
$queryInstance = new Query();
// upit za dobijanje sastojaka za upis u formu za pretragu
$ingrRows = $homemodel->ingredients();
//upit za dobijanje svih kategorija
$query = "";
$catsAll = $queryInstance->allRows("categories",$query);

?>


<!-- Gornji deo -->
<div class="container-fluid">

  <div class="row">
    <div class="col-12 text-center">
      <br>
      <h2>Dobrodošli na Ukus pokus!</h2>
      <p class="lead">Ovde možete pronaći proverene brze recepte od namirnica koje imate u kući</p><br><br><br>
    </div>
  </div> <!-- end row -->

  <div class="row">
   
    <div class="col-8 text-center">

      <!-- Form search -->
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>
      <h4>Pretraga po namirnicama</h4>
     <!-- <form action="<?php $_SERVER['PHP_SELF']?>" method="POST">  
      
       <select class="form-control form-control-lg custom-select" multiple style="width: 80%" placeholder="U kući imam..." aria-label="Search for..." name="pretraga[]">  izbačeno zbog Ajax-a -->
          <form>
           <select class="form-control form-control-lg custom-select" multiple style="width: 80%" placeholder="U kući imam..." aria-label="Search for..." >
            <?php
               // Izlistavanje sastojaka - za unos u pretragu
               foreach ($viewmodel as $item) {
                  echo '<option value="' . $item['ingredient_id'] . '">' .
                  $item['ingredient_name'] . '</option>';
                } 
             ?>
          </select>
       <!-- <button class="btn btn-success" type="submit" name="submit">Traži!</button> izbačeno zbog Ajax-a -->  
      </form>
      <small>Unesite prva dva slova namirnice, a zatim je izaberite iz padajućeg menija.</small>
      <!-- End form --> 
      <br><br>
      <span id="result"></span> <!-- ubačeno da prikaže rezultate Ajax pretrage-->

 <!-- Prikaz rezultata pretrage ako ih ima-->
  
  
<!--  <?php   
//Ispis recepata po osnovu upita
  $query = "";
  if (isset($ingrRows)) {
    foreach ($ingrRows as $row) {
      $query .= "AND recipe_ingrs_id like '%" . "," .$row. "," . "%' AND ";
    }
    $query = rtrim($query, "AND ");
    $recRows = $queryInstance->allRows("recipes",$query);
    $numberRecipes = count($recRows);
    echo "<h4 class='text-center'>Ukupno recepata koji sadrže tražene namirnice : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4><br>";
    $mouseover = '"#28a745"';
    $mouseout = '"#212121"';

    foreach ($recRows as $item) {
        $id=$item['recipe_id'];
        echo "<p><a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
        echo "</p>";
    }
    echo '<br><p class="recipelist">Ovde dođe paginacija... 1 ... 5 6 7 8 9 10 11 ... 128</p><br>';
  }
?>  izbačeno zbog Ajax-a  -->
<!-- Kraj prikaza rezultata pretrage -->
    <br><br>
    <h4>Najpopularniji recepti</h4><br>
    <div class="text-left">
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
      </div>

    </div>

    <!-- ispis kategorija -->
    <div class="col-3 offset-1 borderleft">      
       <h4>Pretraga po kategorijama</h4>
       <br>
      <?php
      foreach ($catsAll as $item) {
        $id = $item['cat_id'];
        $catname = $item['cat_name'];
        echo "<a class='btn btn-success btn-sm kats' href='category/$id' href='category/$id'>" . $catname . "</a><br>";
      }
      ?>
    </div><!-- kraj ispisa kategorija -->



  </div><!-- end row -->
  <!-- Gornji deo kraj -->

    <div class="row">
      <div class="col-12 text-center">
        <br><br>
        
      </div>
    </div> <!-- end row -->

        <div class="row">
      <div class="col-12 text-center">
        <h4>Najnoviji recepti</h4>
        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
      </div>
    </div> <!-- end row -->

</div><!-- end container fluid -->


<!-- jQuery for search field -->

<script type="text/javascript">

  var select_val;  

$("select").select2({            //seclec2 
  minimumInputLength: 1,
  placeholder: 'Unesite namirnice',
  
   
  language: {

    inputTooShort: function () {
    return 'Krenite da kucate...';
  },
  
   noResults: function () {
    return 'Nije pronađen nijedan rezultat';
  },
  
}
});

$("select").on("select2:select", function (evt) {
  
  select_val = $(evt.currentTarget).val();
 if(select_val != null && select_val !=""){ 

  

  return ajax_call(select_val);


 }
});

$("select").on("select2:unselect", function (evt) {
  select_val = $(evt.currentTarget).val();
 if(select_val !=null && select_val !=""){

   return ajax_call(select_val);

  } else {

    $("span#result").text("");
      select_val = "";

    return select_val;
    
  }
});




 function ajax_call() {               // ajax

    $.post("assets/ajax.php", {data: select_val}, function(result){
            $("span#result").html(result);
    });
}

</script>









