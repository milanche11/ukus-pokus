<!--  <?php
$homemodel = new HomeModel();
$queryInstance = new Query();

// upit za dobijanje sastojaka za upis u formu za pretragu
 $ingrRows = $homemodel->ingredients();

//upit za dobijanje svih kategorija
$query = "";
$catsAll = $queryInstance->allRows("categories",$query);

?> -->

      <!-- Form search -->
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>

<!-- POCETAK STRANE -->
   <div class="cover"><!-- cover slika i pretraga--> 

    <!-- Naslov -->
    <div class="row">
       <div class="col-12 text-center"><br>
         <h1 class="white text-shadow">Brzi i ukusni recepti</h1>
         <h1 class="white text-shadow">za svaki dan</h1><br><br>
         <h2 class="white text-shadow">Pretraga po namirnicama</h2><br>
       </div>
     </div><!-- naslov kraj -->
     
     <!-- Pretraga -->
<!--      <div class="row">
          <div class="col-12 text-center">
               
          </div>
     </div>  --> 

      <div class="row text-center"><!-- pretraga -->
        <div class="col-sm-7 offset-sm-2 justify-content-sm-center text-center" > <!-- polje za pretragu -->
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
          </form>
  
          <small class="white text-shadow">Unesite prva dva slova namirnice, a zatim je izaberite iz padajućeg menija.</small><br><br>
        </div><!--kraj polje za pretragu -->

        <div class="col-sm-1 justify-content-sm-center text-center" ><!--dugme za dodatne opcije -->
             <a class="btn btn-success mx-auto" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Dodatne opcije</a>
        </div><!-- kraj dugme -->
        <br><br><br>
    </div><!-- kraj pretraga -->
</div><!-- kraj cover slika i glavna pretraga -->

<!-- Main -->
<div class="container-fluid main">

      <!-- Dodatne opcije koje se otvaraju na dugme -->
      <div class="collapse" id="collapseExample"> 
          <div class="card card-body ">
            <div class="row">
            <div class="col-3">
             <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="4">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Slana jela</span>
              </label><br>
               <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="3">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Slatka jela</span>
              </label><br>
               <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="2">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Ljuta jela</span>
              </label><br>
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="15">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Vegetarijansko</span>
              </label>              
            </div>
            <div class="col-3">
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="1">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">U samo jednoj šerpi</span>
              </label><br>
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="17">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Do 15 minuta</span>
              </label><br>
               <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input"  value ="18">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Do 30 minuta</span>
              </label><br>
               <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="19">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Do 60 minuta</span>
              </label>
            </div>
             <div class="col-3">
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="8">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Za bebe</span>
              </label><br>
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="5">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Zimnica</span>
              </label><br>
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="21">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Bez alkohola</span>
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
              <span class="custom-control-description">Posno</span>
              </label><br>
              <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" value ="7">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Za poneti</span>
              </label><br>
               <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input"  value ="6">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Smooćkaj, i kreni</span>
              </label><br>
               <label class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input"  value ="12">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Pržena jela</span>
              </label>
            </div>
            </div>
          </div>
        </div> <!--kraj dodatne opcije div-a -->

     <!-- Prikaz rezultata Ajax pretrage ako ih ima-->
     <div id="result">
     </div> <!-- Kraj prikaza rezultata pretrage -->

     <!-- Prikaz 6 najnovijih recepata -->
     <div class='row no-gutters'>
     <div class="col-xl-5"> <hr/> </div> <div class="col-xl-2 text-center section-title"> Najnoviji recepti </div>  <div class="col-xl-5"> <hr/> </div>
      <br> <br> <br> 
       <?php
        $upit = new Database();
        $upit->query("SELECT * FROM recipes WHERE (status = 1)  ORDER BY posting_time DESC LIMIT 6");
        $recepiesNewest = $upit->resultSet();
        $mouseover = '"#28a745"';
        $mouseout = '"#212121"';

        foreach ($recepiesNewest as $item) {               
          $id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
          $id = str_replace(" ", "-", $id);
          $id = $upit->convertExtendedToNormal($id);
          echo "<div class='col-sm-12 col-xl-4 text-center'>";
                  echo '<p>';
          echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
          echo "</p>";
          echo "</div>";
                }
       ?>
          <br> <br> 
     </div><!-- Kraj prikaz 6 najnovijih recepata -->




</div><!-- kraj main -->

<!-- KRAJ STRANE -->


<!-- jQuery for search field -->

<script type="text/javascript">

  var select_val;  
  var checkbox ;

$("select").select2({            //select2 
  minimumInputLength: 1,
  placeholder: 'Unesite namirnice koje želite da upotrebite',
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

//ajax funkcija
 function ajax_call() {             
    $.post("assets/ajax.php", {data: select_val , cat: checkbox}, function(result){
            $("div#result").html(result);
    });
    return select_val = [];
}

//zadrzavanje vrednosti nakon dugmeta Back
$(document).ready(function(){
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


</script>









