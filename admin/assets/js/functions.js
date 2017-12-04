 // Petar
	
	function edit1(action,table,id_column,edited_column,value,id){

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


	function addImage(){ //Pop-up za dodavanje slika
		$("#pop_up").css("display", "block");
		$("#pop_up_box").css({"background-color": "white", "padding": "25px", "width": "360px", "height": "340px", "position": "fixed", "left": "50%", "top": "50%", "transform": "translate(-50%, -50%)", "z-index": "1001"});
		
		var header = "<h2>Add new image</h2>";
		var br = '<br><br>';
		var x = '<button type="button" onclick="closeDiv()" class="close" aria-label="Close">X</button>';
		var title = '<form method="post" id="file_to_upload" name="file_to_upload" >Image Title: <input type="text" class="float-right" name="title" id="title">';
		var alt = 'Image Alt: <input type="text" class="float-right" name="alt" id="alt">';
		var file = ' <label>Select a file:</label><input class="new" id="file" name="file" type="file" />'
		var button = '<button type="button" onclick="uploadFile()" id="upload" name="upload" class="btn btn-success btn-sm upload">Upload</button></form>';
		$("#pop_up_box").html(x+header+br+title+br+alt+br+file+br+button);
	}
	
	 function uploadFile() { //funkcija koja vrsi upload slike, upis slike u bazu i vraca id slike u hidden input "images_id"
			
		var title = $("#title").val(); //vrednost uneta u input polje "title"
		var alt = $("#alt").val();  //vrednost uneta u input polje "alt"
		var img = $("#file").val(); // fajl koji je odabran za upload
		
		if(title != "" && alt != "" && img != ""){ 
			var fd = new FormData(document.getElementById("file_to_upload"));
			fd.append("label", "ukus-pokus");
			$.ajax({
			  url: "../ajax.php",
			  type: "POST",
			  data: fd,
			  processData: false,  // tell jQuery not to process the data
			  contentType: false   // tell jQuery not to set contentType
			}).done(function( data ) {
				if(data != ""){
					var old_id = $("#images_id").val();
					var id = old_id + "," + data;
					$("#images_id").val(id)
					$("#added_images").append("<div>"+img+"</div>");

					closeDiv();
				}
			});
			return false;
		}
    }
	
	
	
	function closeDiv(){//isklucivanje pop-up prozora
		$("#pop_up").css("display", "none");
	}
		
		
		
		
		
		
		
		
		
		
		