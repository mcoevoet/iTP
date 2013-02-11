<script type="text/javascript">
<!--
	function load_data1() {		
		//alert('Je suis un témoin que la fonction se lance...!!');
		
		var datatoexplode = $('#crit1').val();
		var splitted_data = datatoexplode.split("/");
		
		//alert(datatoexplode + ' test 1!!');
		
		var table = splitted_data[1];
		var field = splitted_data[2];
		
		//alert(table + ' test 2!!');
		
		jQuery.ajax({
			type: 'GET', // Le type de ma requete
			url: 'pages/stats_handlingData.php', // L'url vers laquelle la requete sera envoyee
			data: {
				table: table, // Les donnees que l'on souhaite envoyer au serveur au format JSON
				field: field
				}, 
				success: function(data, textStatus, jqXHR) {
					
					//alert(data + ' test 2!!');
					
					//on enleve le dernier caractere qui est un espace car sinon on a un espace de trop dans le dernier option du select
					data = data.substring(0,data.length-1);
					
					
					var tab_new = data.split(", ");
					
					var newOptions = tab_new;
									
					
					//var selectedOption = 'green';

					var select = $('#crit1_val');
					if(select.prop) {
						var options = select.prop('options');
					}
					else {
						var options = select.attr('options');
					}
					$('option', select).remove();

					$.each(newOptions, function(val, text) {
						options[options.length] = new Option(text, text);
					});
				select.val(selectedOption);
					
				},
				error: function(jqXHR, textStatus, errorThrown) {
					// Une erreur s'est produite lors de la requete
				}
			});
		
			
		//alert('Je suis un témoin que la fonction se termine...!!');
		
	}
		function load_data2() {		
		//alert('Je suis un témoin que la fonction se lance...!!');
		
		var datatoexplode = $('#crit2').val();
		var splitted_data = datatoexplode.split("/");
		
		//alert(datatoexplode + ' test 1!!');
		
		var table = splitted_data[1];
		var field = splitted_data[2];
		
		//alert(table + ' test 2!!');
		
		jQuery.ajax({
			type: 'GET', // Le type de ma requete
			url: 'pages/stats_handlingData.php', // L'url vers laquelle la requete sera envoyee
			data: {
				table: table, // Les donnees que l'on souhaite envoyer au serveur au format JSON
				field: field
				}, 
				success: function(data, textStatus, jqXHR) {
					
					//alert(data + ' test 2!!');
					
					//on enleve le dernier caractere qui est un espace car sinon on a un espace de trop dans le dernier option du select
					data = data.substring(0,data.length-1);
					
					
					var tab_new = data.split(", ");
					
					var newOptions = tab_new;
									
					
					//var selectedOption = 'green';

					var select = $('#crit2_val');
					if(select.prop) {
						var options = select.prop('options');
					}
					else {
						var options = select.attr('options');
					}
					$('option', select).remove();

					$.each(newOptions, function(val, text) {
						options[options.length] = new Option(text, text);
					});
				select.val(selectedOption);
					
				},
				error: function(jqXHR, textStatus, errorThrown) {
					// Une erreur s'est produite lors de la requete
				}
			});
		
			
		//alert('Je suis un témoin que la fonction se termine...!!');
		
	}
		
-->
