<script type="text/javascript">
<!--
	function verif_form() {		
		//alert('Je suis un témoin que la fonction se lance...!!');
		
		var temp_test;
		temp_test = 1;
				
		if(document.formulaire.nom.value != "") {
				
		}
		else {
			temp_test = 0;
			alert("Veuillez remplir le champ nom");
		}
		
		if(document.formulaire.user.value != "") {
			
		}
		else {
			temp_test = 0;
			alert("Veuillez remplir le champ Nom d'utilisateur");	
		}
		
		if(document.formulaire.prenom.value != "") {
				
		}
		else {
			temp_test = 0;
			alert("Veuillez remplir le champ prénom");
		}
		
		if(isNaN(document.formulaire.H.value)){
			temp_test = 0;
			alert("Le champ hierarchie doit être un nombre");
		}
					
		if(document.formulaire.passwordA.value == "") {
			temp_test = 0;
			alert("Veuillez rentrer un mot de passe")	
		}
		
		if(document.formulaire.passwordA.value == document.formulaire.passwordB.value) {
		}
		else {
			temp_test = 0;
			alert("Attention le mot de passe et sa vérification ne sont pas identique");
			document.formulaire.passwordA.value = "";
			document.formulaire.passwordB.value = "";
			
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
		
	function verif_date() {
	//alert('Je suis un témoin que la fonction verif date se lance...!!');	
    mot=document.formulaire.ddn.value;
    erreur=false;
    if (mot.length!=10){alert("Veuillez introduire la date au format JJ/MM/AAAA (exemple : 12/02/1981)");document.formulaire.ddn.value = "";Erreur=true;return;}
    else{
    motjour=mot.substring(0,2);motmois=mot.substring(3,5);
    motan=mot.substring(6,10);motsep=mot.charAt(2)+mot.charAt(5);}
    if (isNaN(motjour+motmois+motan)|| motan>3000 ||motan<1900 || motsep!="//"){alert("Veuillez introduire la date de traitement au format JJ/MM/AAAA (exemple : 12/02/1981)");document.formulaire.ddn.value = "";Erreur=true;return;}
    else {choix="";
    if (motan-(parseInt(motan/4)*4)==0){choix="bi"};
    if (motan-(parseInt(motan/4)*4)==0&&motan-(parseInt(motan/100)*100)==0)
    {choix=""};
    if (motan-(parseInt(motan/4)*4)==0&&motan-(parseInt(motan/400)*400)==0)
    {choix="bi"}
    switch (motmois){
    case "01":if(motjour<1 || motjour>31){alert("Le mois de Janvier comporte 31 jours, veuillez choisir une date de naissance comprise en 1 et 31.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case"02":if(choix=="bi"){if(motjour<1 || motjour>29){alert("Le mois de Février comporte 29 jours car l'année choisie est bissextile.\nVeuillez choisir une date comprise en 1 et 29.");document.formulaire.date.value = "";Erreur=true;return;}}
    else{if(motjour<1 || motjour>28){alert("Le mois de Février comporte 28 jours car l'année choisie n'est pas bissextile.\nVeuillez choisir une date comprise en 1 et 28.");document.formulaire.date.value = "";Erreur=true;return;}};
    break;
    case "03":if(motjour<1 || motjour>31){alert("Le mois de Mars comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "04":if(motjour<1 || motjour>30){alert("Le mois de Avril comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "05":if(motjour<1 || motjour>31){alert("Le mois de Mai comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "06":if(motjour<1 || motjour>30){alert("Le mois de Juin comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "07":if(motjour<1 || motjour>31){alert("Le mois de Juillet comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "08":if(motjour<1 || motjour>31){alert("Le mois de Aout comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "09":if(motjour<1 || motjour>30){alert("Le mois de Septembre comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");document.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "10":if(motjour<1 || motjour>31){alert("Le mois de Octobre comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");document.form.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "11":if(motjour<1 || motjour>30){alert("Le mois de Novembre comporte 30 jours, veuillez choisirune date comprise en 1 et 30.");document.form.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    case "12":if(motjour<1 || motjour>31){alert("Le mois de Décembre comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");document.form.formulaire.ddn.value = "";Erreur=true;return;};
    break;
    default:alert("Le mois que vous avez entré n'est pas valide. Choisissez un mois compris entre 1 et 12.");document.form.date_trait.value = "";Erreur=true;return;}
    }
}
		
//-->
</script>

