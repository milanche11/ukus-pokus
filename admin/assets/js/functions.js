 // Petar
	var url = window.location.pathname.substring(1); //dobijanje URL-a stranice sa koje se poziva funkcija (sa bez prvog karaktera)
	var count = (url.match(new RegExp("/", "g")) || []).length; //broj sleseva "/" u URL-u

	if(count == 2){ //ako u urlu ima 2 kose crte netreba dodatak linku
		root_folder = "";
	}
	else if(count == 3){ // ako u urlu ima 3 kose crte treba se vratiti u root folder
		root_folder = "../";
	}
	else if(count == 4){
		root_folder = "../../";
	}
 
 
 

	$(document).ready(function(){
		$("#hide").click(function(){
			$(".toggle-hide").hide(500);
			$(".toggle-show").show(500);
		});
		$("#show").click(function(){
			$(".toggle-hide").show(500);
			$(".toggle-show").hide(500);
		});
	});

	
	function edit1(action,table,id_column,edited_column,value,id){

		if(action == "edit"){ 
			$("#td_name"+id).html("<form method='post' action=''> <input type='text' id='input"+id+"' name='name"+id+"' value='"+value+"' class='form-control'>");
			$("#td"+id).html("<button type='button' name='edit' id='edited"+id+"'  class='btn btn-success btn-sm' >Submit</button> </form>");
			
			$( "#edited"+id ).click(function() { //ako se klikne na dugme "Submit" uzima se vrednost input polja i salje kroz AJAX
				var val = $('#input'+id).val(); //preuzimanje vrednosti iz input polja
				ajax(val);
			});
		}
		else{  // Deleta/Activate
			var val = value;			
			ajax(val); //pozivanje funkcije ajax()
		}	
		
		function ajax(val){	//AJAX		
			var xhr = new XMLHttpRequest(); 
			xhr.open("get", root_folder+"ajax.php?action="+action+"&table="+table+"&row="+id_column+"&value="+id+"&edited_column="+edited_column+"&new_value="+val, false);
			xhr.send();
			var odgovor = xhr.responseText;
			if(odgovor!==""){
				location.reload();
			} 		
		}
	}


	function addImage(){ //Pop-up za dodavanje slika
		$("#pop_up").css("display", "block"); // div "pop_up" postaje vidljiv
		$("#pop_up").html("<div id='pop_up_box'></div>"); // u div "pop_up" se upisuje div "pop_up_box"
		$("#pop_up_box").css({"background-color": "white", "padding": "25px", "width": "380px", "height": "400px", "position": "fixed", "left": "50%", "top": "50%", "transform": "translate(-50%, -50%)", "z-index": "1001", "display": "block"});
		
		var name_recipe = $("#name_recipes").val();
		var div = "pop_up";
		var header = "<h2>Add new image</h2>";
		var br = '<br><br>';
		var x = "<button type='button' onclick='closeDiv("+'"' +div+ '"'+")' class='close' aria-label='Close'>X</button>";
		var title = '<form method="post" id="file_to_upload" name="file_to_upload" >Image Title: <input type="text" class="float-right" name="title" id="title">';
		var alt = 'Image Alt: <input type="text" class="float-right" name="alt" id="alt">';
		var file = ' <label>Select a file:</label><input class="new" id="file" name="file" type="file" />'
		var button = '<button type="button" onclick="uploadFile('+"'"+name_recipe+"'"+')" id="upload" name="upload" class="btn btn-success btn-sm upload">Upload</button></form>';
		$("#pop_up_box").html(x+header+br+title+br+alt+br+file+br+button);
	}
	
	function uploadFile(name_recipe) { //funkcija koja vrsi upload slike, upis slike u bazu i vraca id slike u hidden input "images_id"
		
		var title = $("#title").val(); //vrednost uneta u input polje "title"
		var alt = $("#alt").val();  //vrednost uneta u input polje "alt"
		var img = $("#file").val(); // fajl koji je odabran za upload
		
		if(title != "" && alt != "" && img != ""){ 
			var fd = new FormData(document.getElementById("file_to_upload"));
			fd.append("name_recipe", name_recipe);
			
			$.ajax({
			  url: root_folder+"ajax.php",
			  type: "POST",
			  data: fd,
			  processData: false,  // tell jQuery not to process the data
			  contentType: false   // tell jQuery not to set contentType
			}).done(function( data ) {
				if(data != ""){
					if($.isNumeric(data)){ //ako je primljeni rezultat ("data") broj, odnosno id onda se taj id upisuje u input "#images_id"
						var old_id = $("#images_id").val();
						var id = old_id + "," + data;
						$("#images_id").val(id)
						$("#added_images").append("<div>"+img+"</div>");
						closeDiv('pop_up');
					}else{ //ako je primljeni rezultat neki tekst (verovatno greska) ispisuje se u alert-u
						alert(data);
					}
				}
			});
			return false;
		}
		else{
			alert("SVA POLJA MORAJU BITI POPUNJENA");
		}
    }
	
	
	function delPhoto(id, divId){	//Brisanje slika AJAX-om	
		var xhr = new XMLHttpRequest(); 
		xhr.open("get", root_folder+"ajax.php?action=delPhoto&id="+id, false);
		xhr.send();
		var odgovor = xhr.responseText;
		if(odgovor!==""){
		//	alert(odgovor);
			closeDiv(divId);
		} 		
	}
	
	
	
	function closeDiv(id){//Brisanje odredjenog div-a (sa prosledjenim id-jem "id")
		$("#"+id).html("");
		$("#"+id).css("display", "none");
	}
	
	
	function delInput(id,input){
		closeDiv(id);
/*		var old_num=$("#"+input).val();
		var new_num = old_num - 1;
		
		$("#"+input).val(new_num);
*/		alert(input+" / "+id+" / "+new_num);
	}
	
	function cloneFunction(b,ingrs,units,id) {  //funkcija za kloniranje polja za unos sastojaka (b-$b, ingrs-niz sastojaka, units-niz 		
												//jedinica, id-redni broj inputa)
		var new_id = Number(id) + 1;
		var c = Number(b) + 1 ;
		var ingr_array = ingrs.split('/'); //rasturanje stringa u kome se nalaze podaci za <option> (ingredient_id i ingredient_name) u niz
		var unit_array = units.split('/'); //rasturanje stringa u kome se nalaze podaci za <option> (unit_id i unit_name) u niz

		var ingr_arrayLength = ingr_array.length-1;
		var options_ingredient = "";
		
		for (var i = 0; i < ingr_arrayLength; i++) { //petlja koja pravi string u kome se nalaze svi <option> za <select> "ingredients"
		  var options_ingr = ingr_array[i].split(',');
		  
		  var option_ingredient = '<option value="' +options_ingr[0]+ '">'+options_ingr[1]+'</option>';
		  var options_ingredient = options_ingredient + option_ingredient; // variabla koja sadrzi sve ingredient <options>
		}
	  
	  
		var unit_arrayLength = unit_array.length-1;
		var options_unit = "";

		for (var i = 0; i < unit_arrayLength; i++) { //petlja koja pravi string u kome se nalaze svi <option> za <select> "units"
			var options_un = unit_array[i].split(',');

			var option_unit = '<option value="' +options_un[0]+ '">'+options_un[1]+'</option>';
			var options_unit = options_unit + option_unit; // variabla koja sadrzi sve unit <options>
		}

	//  alert (options_unit);

		$("#sastojak").append("<div class='row'  id='sastojak"+c+"'></div>");

		var select_ingredient = '<div class="col-4"><select class="form-control" name="ingredients'+new_id+'" id=""><option value=""></option>'+options_ingredient+'</select></div>';
		var kolicina = '<div class="col-3"><input type="text" class="form-control" name="kolicina'+new_id+'" placeholder="kolicina"></div>';
		var select_unit = '<div class="col-3"><select class="form-control" name="units'+new_id+'" ><option value=""></option>'+options_unit+'</select></div>';
		var button = "<div class='col-2'><button type='button' class='button-deld' id='button-del"+c+"' onclick='closeDiv("+'"sastojak'+c+'"'+")'> - </button><button type='button' id='button"+c+"' onclick='cloneFunction(" +c+ ',"' +ingrs+ '","' +units+ '","' + new_id + '"' +")'>+</button></div>";

		$("#sastojak"+c).append(select_ingredient + kolicina + select_unit + button);
		$("#button"+b).css("display", "none");
		$("#button-del"+b).css({"display": "inline", "float": "left"});
		$("#new_ingredients").val(new_id);
	}	
		
		
		
		
		
		