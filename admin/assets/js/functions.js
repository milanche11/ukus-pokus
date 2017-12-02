 // Petar
	
	function edit(action,table,id_column,edited_column,value,id){

		if(action == "edit"){
			$("#td_name"+id).html("<form method='post' action=''> <input type='text' id='input"+id+"' name='name"+id+"' value='"+value+"' class='form-control'>");
			$("#td"+id).html("<button type='button' name='edit' id='edited"+id+"'  class='btn btn-success btn-sm' >Submit</button> </form>");
			
			$( "#edited"+id ).click(function() { //ako se klikne na dugme "Submit" uzima se vrednost input polja i salje kroz AJAX
				var val = $('#input'+id).val(); //preuzimanje vrednosti iz input polja
				ajax(val);
			});
		}
		else{
			var val = value;
			ajax(val);
		}	
		
		function ajax(val){	//AJAX
			var xhr = new XMLHttpRequest(); 
			xhr.open("get", "ajax.php?action="+action+"&table="+table+"&row="+id_column+"&value="+id+"&edited_column="+edited_column+"&new_value="+val, false);
			xhr.send();
			var odgovor = xhr.responseText;
			if(odgovor!==""){
				location.reload();
			}
		}
	}
		// Milan

		function cloneFunction(){
		/*    var para = document.getElementById("sastojak");
		    var cln = para.cloneNode(true);
		    document.getElementById("sastojakall").appendChild(cln);
		*/
			
			alert("NESTO");
		
		
		}


		function cloneFunction(b,ingrs,units) {
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
	
//	alert (options_unit);

	$("#sastojak").append("<div class='row'  id='sastojak"+c+"'></div>");
	
	var select_ingredient = '<div class="col-4"><select class="form-control" name="ingredients'+c+'" id="">'+options_ingredient+'</select></div>';
	var kolicina = '<div class="col-3"><input type="text" class="form-control" name="kolicina'+c+'" placeholder="kolicina"></div>';
	var select_unit = '<div class="col-4"><select class="form-control" name="units'+c+'" >'+options_unit+'</select></div>';
	var button = "<div class='col-1'><button type='button' id='button"+c+"' onclick='cloneFunction(" +c+ ',"' +ingrs+ '","' +units+ '"' +")'>+</button></div>";
	
	$("#sastojak"+c).append(select_ingredient + kolicina + select_unit + button);
	$("#button"+b).css("display", "none");

}
		
		
		
		
		
		
		
		
		
		
		
		
		
		