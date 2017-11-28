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
		
		if(action == 'edit'){
			$("#td_name"+value).html("<form method='post' action=''> <input type='text' name='"+value+"' value='NESTO' class='form-control'>");
			$("#td"+value).html("<button type='submit' name='edit' class='btn btn-success btn-sm' >Submit</button> </form>");
			
		//	<button type='submit' name='edit' class='btn btn-success btn-sm' >Edit</button>
		}
	}
	
	

