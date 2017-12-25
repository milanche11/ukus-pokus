<?php
$searchmodel = new SearchModel();
$queryInstance = new Query();

// upit za dobijanje sastojaka za upis u formu za pretragu
$ingrRows = $searchmodel->ingredients();
//upit za dobijanje svih kategorija
$query = " ";
$catsAll = $queryInstance->allRows("categories",$query);

?>


<!-- script za Ajax select2-->
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>
<!-- end script za Ajax select2-->



<div class="container-fluid"><!--Glavni kontejner na strani -->

	  <div class="row"><!-- Row za naslov -->
	    <div class="col-12 text-center">
	      <br>
	      <h2>Napredna pretraga</h2><br><br>
	     </div>
	  </div><!-- End row naslov-->
  
<form method="post"> <!-- Forma za pretragu po namirnicama - select polje --> 
<div class="row text-center"><!-- Row select polja za pretragu po namirnicama -->
          <div class="col-8 offset-2 "  >

          
            <select class="form-control form-control-lg custom-select" multiple style="width: 100%" placeholder="U kući imam..." aria-label="Pretraga..." name="pretraga[]">

             <?php
               // Izlistavanje sastojaka - za unos u pretragu
               foreach ($viewmodel as $item) {
                  echo '<option value="' . $item['ingredient_id'] . '">' .
                  $item['ingredient_name'] . '</option>';
                } 
             ?>

              </select> 
        
     </div><!-- kraj reda za select polje -->
</div>

   <div class="row">
   	<div class="col-8 offset-2 text-center">
   		<small>Unesite prva dva slova namirnice, a zatim je izaberite iz padajućeg menija.</small>
   	</div>
   </div><br><br>
    
   <!-- Div napredne pretrage -->
      <div class="row">
    	<div class="col-12">
    	<div class="card card-body ">
    		<br>
    		<p><strong>Pretraga po kategorijama</strong></p>
    		<div class="row">    			
    			<div class="col-3 justify-content-left">

    			<?php
    			$n = count($catsAll);

    			foreach ($catsAll as $kat) {
    				$catId = $kat['cat_id'];
	    			$catName = $kat['cat_name'];

    				if(is_int($catId/5)){    					

	    				echo '<div class="check-rejting">';
	    				echo '<label class="custom-control custom-checkbox">';
	    				echo '<input type="checkbox" id="'.$catId .'" class="custom-control-input" value="'.$catName.'" name="kategorije">';
	    				echo '<span class="custom-control-indicator"></span>';
	    				echo '<span class="custom-control-description">'.$catName.'</span>';
	    				echo '</label></div></div>';	
	    				echo '<div class="col-3 justify-content-left">';    				

    				}else {
    					$catId = $kat['cat_id'];
	    				$catName = $kat['cat_name'];
	    				echo '<div class="check-rejting">';
	    				echo '<label class="custom-control custom-checkbox">';
	    				echo '<input type="checkbox" id="kat'.$catId .'" class="custom-control-input" value="'.$catName.'" name="kategorije">';
	    				echo '<span class="custom-control-indicator"></span>';
	    				echo '<span class="custom-control-description">'.$catName.'</span>';
	    				echo '</label></div>';

    				}
    				//echo $catId;
    			}
    			?>
    			
    			</div>
    		</div>
    		<br>
    		<hr><!-- ---------------------------------------------------------- -->
    		<br>
    		<p><strong>Pretraga po rejtingu</strong></p>

    		<div class="d-flex justify-content-left">
    			<div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="5stars" class="custom-control-input" value="5zv" name="rejting">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 5 zvezdica</span>
			</label>
    			</div>

    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="4stars" class="custom-control-input" value="4zv" name="rejting">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 4 zvezdice</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="3stars" class="custom-control-input" value="3zv" name="rejting">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 3 zvezdice</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="2stars" class="custom-control-input" value="2zv" name="rejting">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 2 zvezdice</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="1stars" class="custom-control-input" value="1zv" name="rejting">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 1 zvezdica</span>
			</label>
    			</div>
    			
			
    		</div>
    		<br>
    		<hr><!-- ---------------------------------------------------------- -->
    		<br>

    		<p><strong>Pretraga po dužini pripreme</strong></p>

    		<div class="d-flex justify-content-left">

    			<div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="15min" class="custom-control-input" value="15min" name="vreme">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> manje od 15 min</span>
			</label>
    			</div>

    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="15-30" class="custom-control-input" value="15-30" name="vreme">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 15 - 30 min</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="30-45" class="custom-control-input" value="30-45" name="vreme">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 30 - 45 min</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="45-60" class="custom-control-input" value="45-60" name="vreme">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 45 - 60 min</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="60-120" class="custom-control-input" value="60-120" name="vreme">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 60 - 120 min</span>
			</label>
    			</div>

    		</div>
    		<br>
    		<hr><!-- ---------------------------------------------------------- -->
    		<br>

    		<p><strong>Pretraga po broju isprljanih posuda</strong></p>

    		<div class="d-flex justify-content-left">

    			<div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="1posuda" class="custom-control-input" value="1posuda" name="posude">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> samo 1 posuda</span>
			</label>
    			</div>

    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="2posude" class="custom-control-input" value="2posude" name="posude">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 2 posude</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="3posude" class="custom-control-input" value="3posude" name="posude">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 3 posude</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="4posude" class="custom-control-input" value="4posude" name="posude">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 4 posude</span>
			</label>
    			</div>
    			
    			 <div class="check-rejting">
    			<label class="custom-control custom-checkbox">
			  <input type="checkbox" id="5posuda" class="custom-control-input" value="5posuda" name="posude">
			  <span class="custom-control-indicator"></span>
			  <span class="custom-control-description"> 5 i više posuda</span>
			</label>
    			</div>
    			
    		</div>
    		<br>

   	  </div>
     </div> 

     <button type="button">Pritisni</button>
  </div><!-- Kraj diva za naprednu pretragu -->
</form>

     <!-- Prikaz rezultata pretrage ako ih ima-->
      
      <br><br>
      <div class="row">
      	<div class="col-12 text-center" id="result">
      		
      	</div>
      </div> <!-- ubaceno da prikaže rezultate Ajax pretrage-->

<!-- Kraj prikaza rezultata pretrage -->
  

</div><!--Kraj glavnog kontejnera na strani -->



<!-- jQuery for search field -->
<script type="text/javascript">
  var select_val;  
$("select").select2({            // select2
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
    $("div#result").text("");
      select_val = "";
    return select_val;
  }
});

 function ajax_call() {               // ajax
    $.post("assets/ajax2.php", {data: select_val}, function(result){
            $("div#result").html(result);
    });
}
</script>


<script type="text/javascript">
    $(document).ready(function() {

        $("button").click(function(){

            var rejting = [];
            var posude = [];
            var kategorije = [];
            var vreme = [];
            //var pretraga = [];

            $.each($("input[name='rejting']:checked"), function(){            
                rejting.push($(this).val());
	 });

            $.each($("input[name='posude']:checked"), function(){            
                posude.push($(this).val());
	 });

            $.each($("input[name='kategorije']:checked"), function(){            
                kategorije.push($(this).val());
	 });

            $.each($("input[name='vreme']:checked"), function(){            
                vreme.push($(this).val());
	 });


	            alert("Izabrali ste: " + rejting.join(", ") + "/" + posude.join(", ") + "/" + kategorije.join(", ") + "/" + vreme.join(", ") );
        });



    });





</script>




