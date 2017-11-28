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

