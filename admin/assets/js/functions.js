 // Petar
	function ajax(action,table,row,value){ //parametri:vrsta akcije, naziv tabele, naziv reda (npr. "ingredient_id") i vrednost iz 
								   // tog reda pomocu kog se vrsi pretraga. Ovi parametri se AJAX-om salju na obradu fajlu "delete.php" 
		var xhr = new XMLHttpRequest();
		xhr.open("get", "ajax.php?action="+action+"&table="+table+"&row="+row+"&value="+value, false);
		xhr.send();
		var odgovor = xhr.responseText;
		if(odgovor!==""){
			alert(odgovor);
			location.reload();
		}
		
		
	}
	
	function edit(table,name,id){
			var n = "'"+table+"','"+name+"','"+id+"'";

			$("#td_name"+id).html("<form method='post' action=''> <input type='text' id='input"+id+"' name='name"+id+"' value='"+name+"' class='form-control'>");
			$("#td"+id).html("<button type='button' name='edit' onclick='getInputValue("+'"input'+id+'"'+")'  class='btn btn-success btn-sm' >Submit</button> </form>");

		//	onclick='ajax("+'"edit","ingredients","ingredient_name",'+id+")'
	}
	
	function getInputValue(inputId){
		var value = $('#'+inputId).val();
		alert(value);
	//	ajax('edit',table,name,id);
	}

