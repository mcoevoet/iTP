<script type="text/javascript">
<!--
	function message_js_func() {		
		//alert('Je suis un témoin que la fonction se lance...!!');	
		if(document.new_mess_form.send_data_pat.checked == true)
		{
			//alert('Je suis un témoin que la confition se lance...!!');
			var id = document.new_mess_form.idPatStluc.value;
			var firstname = document.new_mess_form.firstname.value;
			var lastname = document.new_mess_form.lastname.value;
			var req = document.new_mess_form.req.value;
			var ptv = document.new_mess_form.ptv.value;	
			var ptvName = document.new_mess_form.ptvName.value;	
			var plan = document.new_mess_form.plan.value;	
			var planName = document.new_mess_form.planName.value;	
			var volcible = document.new_mess_form.volcible.value;
			var volcibleName = document.new_mess_form.volcibleName.value;		
				
			//alert('Je suis un témoin que la confition se lance...!!'+firstname);
			var aff_data = id+"\n"+firstname+" "+lastname+"\nReq n°"+req+"\nPTV"+ptv+" : "+ptvName+"\nVolume cible n°"+volcible+": "+volcibleName+"\nPlan n°"+plan+": "+planName;
			
			document.new_mess_form.message_patient_data.value = aff_data;
		}
		else
		var aff_data = "Info patient";
		document.new_mess_form.message_patient_data.value = aff_data;
	}
	
	function mail_enable() {		
		//alert('Je suis un témoin que la fonction mail enable se lance...!!');	
		
		var string_to_explode = document.new_mess_form.dest.value;
		//alert('Mail dest = '+string_to_explode);	
		
		var exploded_string = string_to_explode.split(";",4);
		var mail_dest = exploded_string[3];
		var mail_dest_act = exploded_string[2];
		
		
		//alert('Mail dest = '+exploded_string[4]);	
		
		var new_string = mail_dest;
		if ((!new_string.match('^[-_\.0-9a-zA-Z]{1,}@[-_\.0-9a-zA-Z]{1,}[\.][0-9a-zA-Z]{2,}$'))||(mail_dest_act=="non")) {
                //alert('pas mail');	
                document.new_mess_form.send_email_copy.disabled = true;
                document.new_mess_form.send_email_copy.checked = false;
        }
        else {
                 //alert('mail OK');	
                 document.new_mess_form.send_email_copy.disabled = false;
                 
        }
		
		
	}
	
	function verif_form() {		
		//alert('Je suis un témoin que la fonction se lance...!!');
				
		var temp_test;
		temp_test = 1;
				
		if(document.new_mess_form.subject.value != "") {
		//ok	
		}
		else {
			temp_test = 0;
			alert("Veuillez remplir le champ Sujet");	
		}
						
		if(temp_test == 1) {
	    // les données sont ok, on peut envoyer le formulaire    
	    return true;
	  	}		
		else {
   	    //alert("Veuillez remplir tout les champs");
    	return false;
  		}
		//alert('Je suis un témoin que la fonction se termine...!!');	
		
	}
			
//-->
</script>

