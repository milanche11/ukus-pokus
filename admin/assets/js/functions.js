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

		

		
		
		
		
		
		
		
		
		
		
		
		