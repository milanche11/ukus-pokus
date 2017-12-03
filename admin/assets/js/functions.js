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


	function addImage(){
		$("#pop_up").css("display", "block");
		$("#pop_up_box").css({"background-color": "white", "padding": "25px", "width": "400px", "height": "52%", "position": "fixed", "left": "50%", "top": "50%", "transform": "translate(-50%, -50%)", "z-index": "1001"});
		
		var header = "<h2>Add new image</h2>";
		var br = '<br><br>';
		var x = '<button type="button" onclick="closeDiv()" class="close" aria-label="Close">X</button>';
		var title = 'Image Title: <input type="text" name="title" id="title">';
		var alt = 'Image Alt: <input type="text" name="alt" id="alt">';
		var file = '<input class="new" multiple="multiple" id="img" name="documents[background]" type="file" />'
		var button = '<button type="button" onclick="add()" id="upload" name="upload" class="btn btn-success btn-sm upload">Upload</button>';
		$("#pop_up_box").html(x+header+br+title+br+alt+br+file+button);
	}
	
	function add(){
		var i = $("#images_i").val();
		var ii = Number(i)+1;
		
		var title = $("#title").val();
		var alt = $("#alt").val();
		var img = $("#img").val();
		alert(title+" / "+alt+" / "+img);
	}
	
	
	
	function closeDiv(){
		$("#pop_up").css("display", "none");
	}
		
		
		
		
		
		
		
		
		
		
		