<?php 

$ingredients = $viewmodel[0];  //spisak svih namirnica
$units = $viewmodel[1];  //spisak svih jedinica mere
$cats = $viewmodel[2];  //spisak svih kategorija

$ingsAllOption = "<select name='ingredients[]' class='select2'>";
foreach ($ingredients as $ingredient) {
	$id = $ingredient['ingredient_id'];
	$name = $ingredient['ingredient_name'];

	$ingsAllOption .= "<option value='" . $id . "'>" . $name . "</option>";	
}

$ingsAllOption .= "</select>";
//echo $ingsAllOption;

$unitsAllOption = "<select name='units[]' class='select2'>";
foreach ($units as $unit) {
	$id = $unit['unit_id'];
	$name = $unit['unit_name'];

	$unitsAllOption .= "<option value='" . $id . "'>" . $name . "</option>";	
}

$unitsAllOption .= "</select>";
//echo $unitsAllOption;





?>
 <script src="<?php echo ROOT_URL; ?>assets/js/lib/jquery/jquery-3.2.1.min.js"></script>

<?php
if(($superadmin || $admin || $editor) === true){

?>
<style>


</style>
<div class="box-typical box-typical-padding">				
	<h5 class="m-t-lg with-border text-center"><i class="font-icon red fas fa-utensils"></i>&nbsp;&nbsp;&nbsp;<strong>Unos novog recepta</strong>&nbsp;&nbsp;&nbsp;<i class="font-icon red fas fa-utensils"></i></h5><br>


	<!-- forma za unos recepta -->
	<form method="POST" action="<?php echo ROOT_URL; ?>recipes/insert" name="newrecipe" enctype='multipart/form-data'>
		
		<!-- hidden, admin id -->
		<input type="hidden" name="authorid" value="<?php echo $_SESSION['user_id'] ; ?>" >
	
		<!-- naziv -->
		<div class="form-group row">
			<label class="col-sm-2 form-control-label">Naziv</label>
			<div class="col-sm-9">
				<p class="form-control-static"><input type="text" class="form-control" id="recipetitle" placeholder='Početno slovo mora biti veliko, npr. "Američke palačinke"... ' name="recipetitle"></p>
			</div>
		</div>

		<!-- permalink -->
		<div class="form-group row">
			<label class="col-sm-2 form-control-label">Permalink</label>
			<div class="col-sm-9">
				<p class="form-control-static"><input type="text" class="form-control" id="permalink" placeholder='Samo mala slova i crtice "-", npr. "americke-palacinke"... ' name="permalink"></p>
			</div>
		</div>
		
		<!-- kratak opis -->
		<div class="form-group row">
			<label class="col-sm-2 form-control-label">Kratak opis</label>
			<div class="col-sm-9 summernote-theme-1">
				<textarea rows="6" class="summernote" id="description" placeholder="Kraći opis recepta u max. 2 rečenice..." name="description">Kraći opis recepta u max. 2 rečenice...</textarea>
			</div>
			
		</div>

		<!-- vreme pripreme -->
		<div class="form-group row">
			<label class="col-sm-2 form-control-label">Vreme pripreme</label>
			<div class="col-sm-3">
				<p class="form-control-static"><input type="number" class="form-control" id="preptime" name="preptime" placeholder='Samo brojevi, npr. "30"... '></p>
			</div>
			
			<!-- broj prljavih sudova -->
			<label for="dirtydishes" class="col-sm-2 form-control-label">Isprljani sudovi</label>
			<div class="col-sm-3">
				<select id="dirtydishes" class="form-control" name="dirtydishes">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5 i više</option>
				</select>
			</div>		
		</div>
		
	
		<!-- sastojci / kolicina / jedinica mere 1 -->
		<div class="form-group row addafterthis">
			<label for='ingredients' class='col-sm-2 form-control-label'>Sastojci, količine i jedinice mere</label>
			<!-- sastojci -->
			<div class='col-sm-4'><?php echo $ingsAllOption; ?></div>	
			<!-- kolicina -->		
			<div class='col-sm-2'>
				<p class='form-control-static'><input type='number' class='form-control'  name='ammount[]' placeholder='Samo brojevi, npr. "300"...' ></p>
			</div>
			<!-- jedinica mere -->	
			<div class='col-sm-2'><?php echo $unitsAllOption; ?></div>
			<!-- dugme + -->
			<div class='col-sm-1'>
				<p class='form-control-static'><a class='addfields'><i class='green fas fa-plus-square fa-2x'></i></a></p>
			</div>
		</div>

		<!-- sastojci / kolicina / jedinica mere 2 -->
		<div class="form-group row addthis">
			<label for='ingredients' class='col-sm-2 form-control-label'></label>
			<!-- sastojci -->
			<div class='col-sm-4'><?php echo $ingsAllOption; ?></div>	
			<!-- kolicina -->		
			<div class='col-sm-2'>
				<p class='form-control-static'><input type='number' class='form-control'  name='ammount[]' placeholder='Samo brojevi, npr. "300"...' ></p>
			</div>
			<!-- jedinica mere -->	
			<div class='col-sm-2'><?php echo $unitsAllOption; ?></div>
			<!-- dugme + -->
			<!-- <div class='col-sm-1'>
				<p class='form-control-static'><a class='addfields'><i class='green fas fa-plus-square fa-2x'></i></a></p>
			</div> -->
		</div>

			<!-- sastojci / kolicina / jedinica mere 2 -->
		<div class="form-group row here">
			<label for='ingredients' class='col-sm-2 form-control-label'></label>
			<!-- sastojci -->
			<div class='col-sm-4'><?php echo $ingsAllOption; ?></div>	
			<!-- kolicina -->		
			<div class='col-sm-2'>
				<p class='form-control-static'><input type='number' class='form-control'  name='ammount[]' placeholder='Samo brojevi, npr. "300"...' ></p>
			</div>
			<!-- jedinica mere -->	
			<div class='col-sm-2'><?php echo $unitsAllOption; ?></div>
			<!-- dugme + -->
			<!-- <div class='col-sm-1'>
				<p class='form-control-static'><a class='addfields'><i class='green fas fa-plus-square fa-2x'></i></a></p>
			</div> -->
		
		</div>

			
				
		<!-- uputstvo za pravljenje -->
		<div  class="form-group row">
			<label class="col-sm-2 form-control-label">Uputstvo</label>
			<div class="col-sm-9 summernote-theme-1">
				<textarea rows="10" class="summernote" id="instructions" placeholder="Uputstvo za pripremu, po koracima..." name="instructions"><strong>Korak 1</strong>:<br>bla bla..<br><br><strong>Korak 2</strong>:<br>bla bla..<br><br><strong>Korak 3</strong>:<br>bla bla..<br><br></textarea>
			</div>			
		</div>
		
		<!-- kategorije -->
		<div  class="form-group row">
			<label for="cats" class="col-sm-2 form-control-label">Kategorije</label>
			<div class="col-sm-9">
				<select id="cats" name="cats[]" class="select2" multiple="multiple">
					<?php 
					foreach ($cats as $cat) {
						$catId = $cat['cat_id'];
						$catName = $cat['cat_name'];
						echo '<option value="'. $catId .'">'. $catName .'</option>';
					}
					 ?>
				</select>
			</div>			
		</div>
	<br>
		<!-- galerija slika -->
		<div  class="form-group row">
			<label class="col-sm-2 form-control-label">Galerija slika</label>
			<div class="col-sm-9">
				<p>prikaz slika iz galerije, one koje su vec uploadovane</p>
			</div>			
		</div>	
	
		<!-- submit -->	
		<div class="text-center">
			<button type="text" name="submit" value="submit" class="btn btn-rounded btn-success">Sačuvaj</button>
		</div>
	</form>
</div><!--.box-typical-->

<script>

var cloned = "<div class='form-group row addthis'><label for='ingredients' class='col-sm-2 form-control-label'></label><div class='col-sm-4'><select name='ingredients[]' class='select2'><option value='102'>ajvar</option><option value='48'>ananas</option><option value='109'>avokado</option><option value='49'>banane</option><option value='58'>belance</option><option value='60'>beli luk</option><option value='111'>belo grožđe</option><option value='37'>belo vino</option><option value='7'>biber</option><option value='93'>blitva</option><option value='22'>boranija</option><option value='63'>borovnice</option><option value='88'>brašno od prosa</option><option value='28'>cimet</option><option value='59'>crni luk</option><option value='110'>crno grožđe</option><option value='39'>crno vino</option><option value='13'>feta sir</option><option value='21'>grašak</option><option value='35'>hladna voda</option><option value='44'>jabuke</option><option value='43'>jagode</option><option value='1'>jaja</option><option value='8'>jogurt</option><option value='31'>karanfilić</option><option value='107'>kavijar</option><option value='101'>kečap</option><option value='32'>kim u zrnu</option><option value='34'>kisela voda</option><option value='10'>kiselo mleko</option><option value='41'>kokosovo brašno</option><option value='95'>kokosovo mleko</option><option value='42'>kokosovo ulje</option><option value='70'>kore za pitu</option><option value='105'>krastavac</option><option value='18'>krompir</option><option value='45'>kruške</option><option value='23'>kukuruzno brašno</option><option value='55'>kuvana kafa</option><option value='85'>laneno seme</option><option value='72'>limuntus</option><option value='100'>lisnato testo</option><option value='19'>luk</option><option value='12'>majonez</option><option value='84'>mak</option><option value='46'>maline</option><option value='51'>mandarine</option><option value='106'>mango</option><option value='68'>margarin</option><option value='27'>mileram 30% mm</option><option value='36'>mlaka voda</option><option value='5'>mleko</option><option value='56'>mlevena kafa</option><option value='75'>mleveni bademi</option><option value='86'>mleveni lan</option><option value='77'>mleveni lešnici</option><option value='87'>mleveni mak</option><option value='76'>mleveni orasi</option><option value='67'>mleveni plazma keks</option><option value='30'>muskatni orah</option><option value='89'>ovsene pahuljice</option><option value='16'>palenta</option><option value='108'>papaja</option><option value='104'>paradajz</option><option value='20'>pasulj</option><option value='103'>patlidžan</option><option value='9'>pavlaka 12% mm</option><option value='25'>pavlaka 16% mm</option><option value='26'>pavlaka 20% mm</option><option value='15'>pirinač</option><option value='24'>pirinčano brašno</option><option value='96'>pirinčano mleko</option><option value='69'>piškote</option><option value='40'>pivo</option><option value='50'>pomorandže</option><option value='33'>prašak za pecivo</option><option value='61'>praziluk</option><option value='29'>prezle</option><option value='38'>pšenični griz</option><option value='2'>pšenično brašno</option><option value='53'>puding od čokolade</option><option value='54'>puding od jagode</option><option value='52'>puding od vanile</option><option value='14'>puter</option><option value='66'>rum</option><option value='71'>rum šećer</option><option value='17'>šargarepa</option><option value='3'>šećer</option><option value='78'>semenke od bundeve</option><option value='79'>semenke suncokreta</option><option value='11'>slatka pavlaka</option><option value='4'>so</option><option value='92'>sočivo</option><option value='73'>sok od limuna</option><option value='74'>sok od pomorandže</option><option value='99'>špagete, spaghetti</option><option value='64'>spanać</option><option value='82'>sušene brusnice</option><option value='81'>sušene urme</option><option value='83'>suvo grožđe</option><option value='80'>tamari soja sos</option><option value='97'>tofu sir</option><option value='62'>trešnje</option><option value='6'>ulje</option><option value='65'>vanil šećer</option><option value='47'>višnje</option><option value='91'>zelje</option><option value='90'>zobene pahuljice</option><option value='57'>žumance</option></select></div><div class='col-sm-2'><p class='form-control-static'><input type='number' class='form-control'  name='ammount[]' placeholder='Samo brojevi, npr. 300...' ></p></div><div class='col-sm-2'><select name='units[]' class='select2'><option value='31'>čaša</option><option value='32'>čaše</option><option value='22'>čen</option><option value='23'>čena</option><option value='7'>dcl</option><option value='20'>glavica</option><option value='21'>glavice</option><option value='1'>gr</option><option value='24'>grančica</option><option value='25'>grančice</option><option value='8'>kaš</option><option value='9'>kčc</option><option value='2'>kg</option><option value='11'>kockica</option><option value='12'>kockice</option><option value='17'>kolutića</option><option value='5'>kom</option><option value='4'>lit</option><option value='15'>malo</option><option value='3'>ml</option><option value='16'>par</option><option value='6'>prstohvat</option><option value='10'>prstohvata</option><option value='26'>šnita</option><option value='27'>šnite</option><option value='13'>šolja</option><option value='14'>šolje</option><option value='28'>šoljica</option><option value='29'>šoljice</option><option value='18'>štapić</option><option value='19'>štapića</option></select></div><div class='col-sm-1'><p class='form-control-static'><a class='addfields'><i class='green fas fa-plus-square fa-2x'></i></a></p></div></div>";


$(".addfields").click(function() {
	alert(cloned);
	//$('.addthis').addClass('original').clone().insertAfter('.here').addClass('cloned').removeClass('addthis');
	$(cloned).insertAfter('here').removeClass('addthis');
});

</script>


<?php 



if(isset($_POST['submit'])){
	
	print_r($_POST);
	echo '<br>';
	
}	

 ?>

  <script src="<?php echo ROOT_URL; ?>assets/js/lib/jquery/jquery-3.2.1.min.js"></script>









<?php
}elseif ($demo === true) {
?>




<?php	
}


?>


