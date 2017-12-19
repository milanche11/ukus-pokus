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
   
    <div class="col-12 text-center">

      <!-- Form search -->
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>
      <h4>Pretraga po namirnicama</h4>
     <!-- <form action="<?php $_SERVER['PHP_SELF']?>" method="POST">  
      
       <select class="form-control form-control-lg custom-select" multiple style="width: 80%" placeholder="U kući imam..." aria-label="Search for..." name="pretraga[]">  izbačeno zbog Ajax-a -->
         <div class="row no-gutters">
          <div class="col-8 offset-1 text-center"  >
          <form>
           <select class="form-control form-control-lg custom-select" multiple style="width: 100%" placeholder="U kući imam..." aria-label="Search for..." >
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
      
    </div>
     <div class="col-2" >
          <p>
  <a class="btn btn-danger" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Dodatne opcije
  </a>
  </p>
</div>
</div>
<div class="collapse" id="collapseExample"> <!--collapse div -->
  <div class="card card-body ">
    <div class="row no-gutters">
    <div class="col-3">
     <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="4">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 71px !important">Slana jela</span>
      </label><br>
       <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="3">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 67px !important;">Slatka jela</span>
      </label><br>
       <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="2">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 75px !important;">Ljuta jela</span>
      </label><br>
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="15">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 35px !important;">Vegetarijansko</span>
      </label>
      

    </div>
    <div class="col-3">
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="1">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 18px !important;">U samo jednoj šerpi</span>
      </label><br>
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="17">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description">Priprema za 15 minuta</span>
      </label><br>
       <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input"  value ="18">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description">Priprema za 30 minuta</span>
      </label><br>
       <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="19">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description">Priprema za 60 minuta</span>
      </label>
    </div>
     <div class="col-3">
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="8">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 39px !important">Za bebe</span>
      </label><br>
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="5">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 42px !important">Zimnica</span>
      </label><br>
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="21">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 9px !important">Bez alkohola</span>
      </label><br>
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input"  value ="9">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description">Sadrži alkohol</span>
      </label>
       
    </div>
    <div class="col-3">
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="20">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 89px !important;">Posna jela</span>
      </label><br>
      <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" value ="7">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 34px !important">Zgodno za poneti</span>
      </label><br>
       <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input"  value ="6">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description">Smooćkaj, popij i kreni</span>
      </label><br>
       <label class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input"  value ="12">
      <span class="custom-control-indicator"></span>
      <span class="custom-control-description" style="padding-right: 11px !important;">Prženo, spremi tiganj</span>
      </label>
    </div>
  </div>
</div>
</div> <!--kraj collapse div-a -->
<small >Unesite prva dva slova namirnice, a zatim je izaberite iz padajućeg menija.</small>
      <!-- End form --> 
      <br><br>
      

 <!-- Prikaz rezultata pretrage ako ih ima-->
  
  <div id="result"></div> <!-- ubačeno da prikaže rezultate Ajax pretrage-->

<!-- Kraj prikaza rezultata pretrage -->
    <br><br>
    <h4>Najpopularniji recepti</h4><br>
    <div class="text-left">
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
      </div>

    </div>

    <!-- ispis kategorija -->
    <div class="col-3 offset-1 borderleft" style="display: none !important;">      
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
  var checkbox ;

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

    var n = $(".custom-control-input:checked").length;
        if (n > 0){
            checkbox =[];
            $(".custom-control-input:checked").each(function(){
                checkbox.push($(this).val());
            });
        }
  
  return ajax_call(select_val, checkbox);


 }
});

$("select").on("select2:unselect", function (evt) {
    
    select_val = $(evt.currentTarget).val();
    checkbox =[];
    $(".custom-control-input:checked").each(function(){
                  
               checkbox.push($(this).val());
          });

 if(select_val ==null && checkbox ==null || select_val =="" && checkbox =="" || select_val ==null && checkbox =="" || select_val =="" && checkbox ==null){
   
   $("div#result").text("");
     

  } else {

     
            
        
  
      return ajax_call(select_val, checkbox);
    
  }
});

$(".custom-control-input").click(function(){

      checkbox =[];
     $(".custom-control-input:checked").each(function(){
                checkbox.push($(this).val());
            });
      select_val = $("select").val();

  if(select_val ==null && checkbox ==null || select_val =="" && checkbox =="" || select_val ==null && checkbox =="" || select_val =="" && checkbox ==null){

      $("div#result").text("");
     
  } else {        
            
          return ajax_call(select_val, checkbox);        
      }     
    });


 function ajax_call() {               // ajax

    $.post("assets/ajax.php", {data: select_val , cat: checkbox}, function(result){
            $("div#result").html(result);
    });


    return select_val = [];
}

</script>









