<!-- Automatic generation of Step X,X -->

<script type="text/javascript">

//Display or not of PlusInfo
function plusInfo(divId)
    {
    if (document.getElementById(divId).style.visibility=="hidden") {
        document.getElementById(divId).style.visibility="visible";
        document.getElementById(divId).style.display="inline";
    }
    else {       
        document.getElementById(divId).style.visibility="hidden";
        document.getElementById(divId).style.display="none";
    }
}

//Centered popup
function centrePop(url,largeur,hauteur) {
	var gauche = (screen.width - largeur)/2
	var haut =  (screen.height - hauteur)/2
	window.open(url,"","width="+largeur+",height="+hauteur+",left="+gauche+",top="+haut+",toolbar=0,scrollbars=1,status=0,menubar=0,location=0,resizable=1,fullscreen=no,")
}

//Check an exisitng date
function check_date(valeur) {
	//alert('JS function works fine');	
	mot=document.getElementById(valeur);												
    erreur=false;
    if (mot.value.length!=10){alert("Veuillez introduire la date au format JJ/MM/AAAA (exemple : 27/01/1979)"); mot.value = ""; mot.focus(); Erreur=true;return;}
    else{
    motjour=mot.substring(0,2);motmois=mot.substring(3,5);
    motan=mot.substring(6,10);motsep=mot.charAt(2)+mot.charAt(5);}
    if (isNaN(motjour+motmois+motan)|| motan>3000 ||motan<1900 || motsep!="//"){alert("Veuillez introduire la date de traitement au format JJ/MM/AAAA (exemple : 27/01/1979)");mot.value = ""; mot.focus(); Erreur=true;return;}
    else {choix="";
    if (motan-(parseInt(motan/4)*4)==0){choix="bi"};
    if (motan-(parseInt(motan/4)*4)==0&&motan-(parseInt(motan/100)*100)==0)
    {choix=""};
    if (motan-(parseInt(motan/4)*4)==0&&motan-(parseInt(motan/400)*400)==0)
    {choix="bi"}
    switch (motmois){
    case "01":if(motjour<1 || motjour>31){alert("Le mois de Janvier comporte 31 jours, veuillez choisir une date de naissance comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case"02":if(choix=="bi"){if(motjour<1 || motjour>29){alert("Le mois de Février comporte 29 jours car l'année choisie est bissextile.\nVeuillez choisir une date comprise en 1 et 29.");mot.value = ""; mot.focus(); Erreur=true;return;}}
    else{if(motjour<1 || motjour>28){alert("Le mois de Février comporte 28 jours car l'année choisie n'est pas bissextile.\nVeuillez choisir une date comprise en 1 et 28.");mot.value = ""; mot.focus(); Erreur=true;return;}};
    break;
    case "03":if(motjour<1 || motjour>31){alert("Le mois de Mars comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "04":if(motjour<1 || motjour>30){alert("Le mois de Avril comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "05":if(motjour<1 || motjour>31){alert("Le mois de Mai comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "06":if(motjour<1 || motjour>30){alert("Le mois de Juin comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "07":if(motjour<1 || motjour>31){alert("Le mois de Juillet comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "08":if(motjour<1 || motjour>31){alert("Le mois de Aout comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "09":if(motjour<1 || motjour>30){alert("Le mois de Septembre comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "10":if(motjour<1 || motjour>31){alert("Le mois de Octobre comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "11":if(motjour<1 || motjour>30){alert("Le mois de Novembre comporte 30 jours, veuillez choisirune date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    case "12":if(motjour<1 || motjour>31){alert("Le mois de Décembre comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
    break;
    default:alert("Le mois que vous avez entré n'est pas valide. Choisissez un mois compris entre 1 et 12.");mot.value = ""; mot.focus(); Erreur=true;return;}
    }
}
</script>

<?php

//FUNCTION area for all the page

function newVolCible($coordPat) {

	//No need to insert the patient in patient_admin table, he is already there
  	//Insertion in the table patient_treat where the status and processus is 	
  	$status="Treatment";
	//Filling up of the ToGo var which contains the process of the patient with the Actives Step & Actions ID 
	//Looking for the new VolCible in the same Requisition whatever the PTV or PLAN is
	$queryOldVolCible="SELECT volcible FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]'";
//	echo $queryOldVolCible;
	$resultOldVolCible=mysql_query($queryOldVolCible);
	$i=0;
	while ($oldVolCible=mysql_fetch_array($resultOldVolCible)) {
		$bigVolCible[$i]=$oldVolCible[volcible];
		$i++;
	}
	$newVolCible=max($bigVolCible)+1;
  	$dateintro=time();

	//Filling up of the IDCard data which are common to a REQ (not comment nor what is inside patient_admin)
	//A new Volume Cible will always have a ptv "1" and plan "1"
	//A new VolCible is always sent in PTV 0.0 for validation by secretary
   	$sqlinsertToGo="INSERT INTO 
  		patient_treat(idStluc, req, volcible, ptv, plan, introDate, status, togo, superviseur, assistant, physicien, hospi, unit, spo, prescription, dateSim, startDate, endDate, datePTV2, actual_process, actual_step)   	  	
		VALUES('$_SESSION[idPatStluc]', '$_SESSION[req]', '$newVolCible', '1', '1', '$dateintro', '$status', '$coordPat[togo]', '$coordPat[superviseur]', '$coordPat[assistant]', 
   		'$coordPat[physicien]', '$coordPat[hospi]', '$coordPat[unit]', '$coordPat[spo]', '$coordPat[prescription]', 
   		'$coordPat[dateSim]', '$coordPat[startDate]', '$coordPat[endDate]', '$coordPat[datePTV2]', '$_SESSION[processID]', '$_POST[stepNewVolCible]') "; 	
//		echo $sqlinsertToGo;"<br>";
 	mysql_query($sqlinsertToGo); 		
 	
 	//We need the step number where to stop
	$query="SELECT number FROM step_list WHERE id='$_POST[stepNewVolCible]'";
	$result=mysql_query($query);
	$numStepNewVolCible=mysql_fetch_row($result);
	$numStepNewVolCible=$numStepNewVolCible[0];
		
	//Filling up of all the ACTIVES steps till the one choosen, we will prepare the followed just after
	$queryStepToFill="SELECT id FROM step_list WHERE state='Enabled' AND number<'$numStepNewVolCible' ORDER by number";
	$resultStepToFill=mysql_query($queryStepToFill);	
	while ($stepToFill=mysql_fetch_array($resultStepToFill)) {
//		echo "<br>StepToFill<pre>"; print_r($stepToFill); echo "</pre>";
		//We select the actions till step "$stepToFill"
		$queryAction="SELECT id FROM step_action WHERE step_link='$stepToFill[id]'";
//		echo "<br>queryAction: ".$queryAction;
		//Page setup of the liste of ActionsID_x, UserID_x, TimeID_x to be update
		$resultAction=mysql_query($queryAction);	
		$listActionID="";
		$listUserID="";
		$listTimeID="";
		while ($actionToFill=mysql_fetch_array($resultAction)) {
			$listActionID=$listActionID."actionId_".$actionToFill[id].",";
			$listUserID=$listUserID."userId_".$actionToFill[id].",";
			$listTimeID=$listTimeID."timeId_".$actionToFill[id].",";
		}
		$listActionID=rtrim($listActionID,",");
		$listUserID=rtrim($listUserID,",");
		$listTimeID=rtrim($listTimeID,",");
//		echo "<br>liste: ".$listActionID;
		//Filled up of the tables step_id on the base of the PTV where we come from
		//A new Volume Cible will always have a ptv "1" and plan "1"
		$queryIdToFill="INSERT INTO `step_$stepToFill[id]` ($listActionID, $listUserID, $listTimeID, idStluc, req, volcible, ptv, plan) 
			(SELECT $listActionID, $listUserID, $listTimeID, '$_SESSION[idPatStluc]', '$_SESSION[req]', '$newVolCible', '1', '1' FROM `step_$stepToFill[id]` 
			WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
//			echo "<br>queryToFill: ".$queryIdToFill;
		$resultToFill=mysql_query($queryIdToFill);
	}			
	
	//Filling up of next step with idStluc, Req, VolCible, PTV, Plan to be able to continue the process
	$queryStepToFill="SELECT id FROM step_list WHERE state='Enabled' AND number>='$numStepNewVolCible' ORDER by number";
//	echo $queryStepToFill;	
	$resultStepToFill=mysql_query($queryStepToFill);	
	while ($stepToFill=mysql_fetch_array($resultStepToFill)) {
		//Filling up tables step_id on base on the PTV where we come from
		$queryIdToFill="INSERT INTO `step_$stepToFill[id]` (idStluc, req, volcible, ptv, plan) VALUES('$_SESSION[idPatStluc]', '$_SESSION[req]', '$newVolCible', '1', '1')";
//		echo "<br>queryToFill: ".$queryIdToFill;
		$resultToFill=mysql_query($queryIdToFill);
	}		
	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflow'>"); 	
}

function newPTV($coordPat) {
	//No need to insert the new PTV in the patient_admin table, it's already there 	 	
  	//Insertion in the table patient_treat where the status and processus is 	
  	$status="Treatment";
	
	//Looking for the new PTV number in the same requisition, whatever the plan is
	$queryOldPTV="SELECT ptv FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' ";
//echo $queryOldPTV;
	$resultOldPTV=mysql_query($queryOldPTV);
	$i=0;
	while ($oldPTV=mysql_fetch_array($resultOldPTV)) {
		$bigPTV[$i]=$oldPTV[ptv];
		$i++;
	}
	$newPTV=max($bigPTV)+1;
  	$dateintro=time();
	//Filling up of the ID Card data which are common to a req (not comment nor what exists in patient_admin)
	//A new PTV will always be a plan number "1"
	//We always send a new PTV in step 0.1 for validation
  	$sqlinsertToGo="INSERT INTO 
  		patient_treat(idStluc, req, volcible, volcibleName, ptv, plan, introDate, status, togo, superviseur, assistant, physicien, hospi, unit, spo, prescription, dateSim, startDate, endDate, datePTV2, actual_process, actual_step) 
  		VALUES('$_SESSION[idPatStluc]', '$_SESSION[req]', '$_SESSION[volcible]', '$coordPat[volcibleName]', '$newPTV', '1', '$dateintro', '$status', '$coordPat[togo]', '$coordPat[superviseur]', '$coordPat[assistant]', 
   		'$coordPat[physicien]', '$coordPat[hospi]', '$coordPat[unit]', '$coordPat[spo]', '$coordPat[prescription]', 
   		'$coordPat[dateSim]', '$coordPat[startDate]', '$coordPat[endDate]', '$coordPat[datePTV2]', '$_SESSION[processID]', '$_POST[stepNewPTV]') "; 	
//echo $sqlinsertToGo;"<br>";
 	mysql_query($sqlinsertToGo); 		

	//We need the new step number where the insert process has to stop
	$query="SELECT number FROM step_list WHERE id='$_POST[stepNewPTV]'";
	$result=mysql_query($query);
	$numStepNewPTV=mysql_fetch_row($result);
	$numStepNewPTV=$numStepNewPTV[0];

	//Filling up of all the Active Steps till the one choosen, the next will be prepared just next	
	$queryStepToFill="SELECT id FROM step_list WHERE state='Enabled' AND number<'$numStepNewPTV' ORDER by number";
	$resultStepToFill=mysql_query($queryStepToFill);	
	while ($stepToFill=mysql_fetch_array($resultStepToFill)) {
//echo "<br>StepToFill<pre>"; print_r($stepToFill); echo "</pre>";
		//Selection of the actions from Step "$stepToFill"
		$queryAction="SELECT id FROM step_action WHERE step_link='$stepToFill[id]'";
//echo "<br>queryAction: ".$queryAction;
		//Page setup of the list of the ActionID_x, UserID_x, TimeID_x to be update
		$resultAction=mysql_query($queryAction);	
		$listActionID="";
		$listUserID="";
		$listTimeID="";
		while ($actionToFill=mysql_fetch_array($resultAction)) {
			$listActionID=$listActionID."actionId_".$actionToFill[id].",";
			$listUserID=$listUserID."userId_".$actionToFill[id].",";
			$listTimeID=$listTimeID."timeId_".$actionToFill[id].",";
		}
		$listActionID=rtrim($listActionID,",");
		$listUserID=rtrim($listUserID,",");
		$listTimeID=rtrim($listTimeID,",");
//echo "<br>liste: ".$listActionID;
		//Filling up of the table step_id on base of the PTV where we come from
		$queryIdToFill="INSERT INTO `step_$stepToFill[id]` ($listActionID, $listUserID, $listTimeID, idStluc, req, volcible, ptv, plan) 
			(SELECT $listActionID, $listUserID, $listTimeID, '$_SESSION[idPatStluc]', '$_SESSION[req]', '$_SESSION[volcible]', '$newPTV', '$_SESSION[plan]' FROM `step_$stepToFill[id]` 
			WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
//echo "<br>queryToFill: ".$queryIdToFill;
		$resultToFill=mysql_query($queryIdToFill);
	}			
	//Remplissage des étapes qui suivent par l'idStluc, la req, le volcible, le ptv, le plan pour pouvoir continuer le workflow
	$queryStepToFill="SELECT id FROM step_list WHERE state='Enabled' AND number>='$numStepNewPTV' ORDER by number";
//	echo $queryStepToFill;	
	$resultStepToFill=mysql_query($queryStepToFill);	
	while ($stepToFill=mysql_fetch_array($resultStepToFill)) {
		//Remplissage des tables step_id sur base du PTV d'où l'on vient
		$queryIdToFill="INSERT INTO `step_$stepToFill[id]` (idStluc, req, volcible, ptv, plan) VALUES('$_SESSION[idPatStluc]', '$_SESSION[req]', '$_SESSION[volcible]', '$newPTV', '1')";
//echo "<br>queryToFill: ".$queryIdToFill;
		$resultToFill=mysql_query($queryIdToFill);
	}	
	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflow'>"); 		
}

function newPlan($coordPat) {
	//Pas besoin d'insérer dans la table patient_admin car il s'y trouve déjà
  	 	
  	//Insertion dans la table des patients contenant le status et le processus (table patient_treat)
  	$status="Treatment";

  	//Remplissage de la variable togo qui contient le processus-workflow du patient par les ID des étapes et actions ACTIVES
	
	//Recherche du numéro du nouveau Plan dans la même req, volcible et ptv
	$queryOldPlan="SELECT plan FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]'";
	$resultOldPlan=mysql_query($queryOldPlan);
	$i=0;
	while ($oldPlan=mysql_fetch_array($resultOldPlan)) {
		$bigPlan[$i]=$oldPlan[plan];
		$i++;
	}
	$newPlan=max($bigPlan)+1;
  	$dateintro=time();
  	//Un nouveau plan aura comme PTV celui d'où il vient.  	
  	$sqlinsertToGo="INSERT INTO 
  		patient_treat(idStluc, req, volcible, volcibleName, ptv, ptvName, plan, introDate, status, togo, superviseur, assistant, physicien, hospi, unit, spo, prescription, dateSim, startDate, endDate, datePTV2, actual_process, actual_step)  
  		VALUES('$_SESSION[idPatStluc]', '$_SESSION[req]', '$_SESSION[volcible]', '$coordPat[volcibleName]', '$_SESSION[ptv]', '$coordPat[ptvName]', '$newPlan', '$dateintro', '$status', '$coordPat[togo]', '$coordPat[superviseur]', '$coordPat[assistant]', 
   		'$coordPat[physicien]', '$coordPat[hospi]', '$coordPat[unit]', '$coordPat[spo]', '$coordPat[prescription]', 
   		'$coordPat[dateSim]', '$coordPat[startDate]', '$coordPat[endDate]', '$coordPat[datePTV2]', '$_SESSION[processID]', '$_POST[stepNewPlan]') ";   		
// 	echo $sqlinsertToGo;
 	mysql_query($sqlinsertToGo); 		

	//Il nous faut le numéro de l'étape à laquelle l'insertion doit s'arrêter
	$query="SELECT number FROM step_list WHERE id='$_POST[stepNewPlan]'";
	$result=mysql_query($query);
	$numStepNewPlan=mysql_fetch_row($result);
	$numStepNewPlan=$numStepNewPlan[0];
		
	//Remplissage de toutes les étapes ACTIVES jusqu'à l'étape choisie, on préparera les suivantes juste après
	$queryStepToFill="SELECT id FROM step_list WHERE state='Enabled' AND number<'$numStepNewPlan' ORDER by number";
	$resultStepToFill=mysql_query($queryStepToFill);	
	while ($stepToFill=mysql_fetch_array($resultStepToFill)) {
//		echo "<br>StepToFill<pre>"; print_r($stepToFill); echo "</pre>";
		//Sélection des actions de l'étape $stepToFill
		$queryAction="SELECT id FROM step_action WHERE step_link='$stepToFill[id]'";
//		echo "<br>queryAction: ".$queryAction;
		$resultAction=mysql_query($queryAction);
		//Mise en page de la liste des ActionID_x, UserID_x, TimeID_x à mettre à jour
		$listActionID="";
		$listUserID="";
		$listTimeID="";
		while ($actionToFill=mysql_fetch_array($resultAction)) {
			$listActionID=$listActionID."actionId_".$actionToFill[id].",";
			$listUserID=$listUserID."userId_".$actionToFill[id].",";
			$listTimeID=$listTimeID."timeId_".$actionToFill[id].",";
		}
		$listActionID=rtrim($listActionID,",");
		$listUserID=rtrim($listUserID,",");
		$listTimeID=rtrim($listTimeID,",");					
		//Remplissage des tables step_id sur base du PTV d'où l'on vient
		$queryIdToFill="INSERT INTO `step_$stepToFill[id]` ($listActionID, $listUserID, $listTimeID, idStluc, req, volcible, ptv, plan)
			(SELECT $listActionID, $listUserID, $listTimeID, '$_SESSION[idPatStluc]', '$_SESSION[req]', '$_SESSION[volcible]', '$_SESSION[ptv]', '$newPlan' FROM `step_$stepToFill[id]` 
			WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND '$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
//		echo "<br>queryToFill: ".$queryIdToFill;
		$resultToFill=mysql_query($queryIdToFill);
	}
	//Remplissage des étapes qui suivent par l'idStluc, la req, le volcible, le ptv, le plan pour pouvoir continuer le workflow
	$queryStepToFill="SELECT id FROM step_list WHERE state='Enabled' AND number>='$numStepNewPlan' ORDER by number";
//	echo $queryStepToFill;	
	$resultStepToFill=mysql_query($queryStepToFill);	
	while ($stepToFill=mysql_fetch_array($resultStepToFill)) {
		//Remplissage des tables step_id sur base du PTV d'où l'on vient
		$queryIdToFill="INSERT INTO `step_$stepToFill[id]` (idStluc, req, volcible, ptv, plan) VALUES('$_SESSION[idPatStluc]', '$_SESSION[req]', '$_SESSION[volcible]', '$_SESSION[ptv]', '$newPlan')";
//		echo "<br>queryToFill: ".$queryIdToFill;
		$resultToFill=mysql_query($queryIdToFill);
	}
	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflow'>");			
}

function patientDemographicData() {
	//Get the patient data back from "Demographic part" (table patient_admin and patient_treat)
	$queryPat="SELECT * FROM patient_admin INNER JOIN patient_treat ON patient_admin.idStluc=patient_treat.idStluc WHERE patient_admin.idStluc='$_SESSION[idPatStluc]' AND patient_treat.volcible='$_SESSION[volcible]' AND patient_treat.req='$_SESSION[req]' AND patient_treat.ptv='$_SESSION[ptv]' AND patient_treat.plan='$_SESSION[plan]' ";
	$resultPat=mysql_query($queryPat);
	global $coordPat;
	$coordPat=mysql_fetch_array($resultPat);	
//	echo "<pre>"; print_r($coordPat);  echo "</pre>";	
}

//Get the patient demographic data to start the page
patientDemographicData();

//We get the actual patient step number used later for the "grey" background in the step list
$queryActuStep="SELECT number FROM step_list WHERE id='$coordPat[actual_step]'";
$resultActuStep=mysql_query($queryActuStep);
$stepActu=mysql_fetch_array($resultActuStep);

//If we would like to see data from another step, then we have to change the value of the SESSION variable which give the step
if (isset($_GET[stepSelected])) {	
	$_SESSION[idstepNumber]=$_GET[stepSelected];
	//Get the step info back
	$queryStep="SELECT id, name, number, process FROM step_list WHERE id='$_SESSION[idstepNumber]'";	
	$resultStep=mysql_query($queryStep);
	$stepName=mysql_fetch_array($resultStep);
}
else {
	//Get the step info back if we did not have clicked on another step link
	$queryStep="SELECT id, name, number, process FROM step_list WHERE id='$coordPat[actual_step]'";
	$resultStep=mysql_query($queryStep);
	$stepName=mysql_fetch_array($resultStep);
}

//AREA where to detect if we are in the past or in the future
//To know that, we have to compare the number of the "actual_step" stored in patient_treat and the selected one

if ($stepName[number] < $stepActu[number]) {
//	echo 'PAST';
	$pastOrFuture="Past";
	$savedButton="Modifier le passé";		
	//Pour ne pas porter à confusion en Prod
	$savedButton=" / ";						
}
elseif ($stepName[number] > $stepActu[number]) {
//	echo 'FUTURE'; 
	$pastOrFuture="Future";
	$savedButton="Anticiper le futur";								
	//Pour ne pas porter à confusion en Prod
	$savedButton=" / ";
}
else {
	$savedButton="Sauver";			
}
//echo $stepName[number].'-'.$stepActu[number];


//AREA where creating new VolCible, PTV or PLAN

//NEW VOLUME CIBLE
//If a new VolCible is asked, we create it and the we go back to the workflow page after having filled up step
if (isset($_POST['addNewVolCible'])) {
	newVolCible($coordPat);
}

//NEW PTV
//For a new PTV, we create first the PTV and then we go to the workflow page after having filled up the actions so far
if (isset($_POST['addNewPTV'])) {
	newPTV($coordPat);
}

//NEW PLAN
//Si on a une demande de nouveau PLAN, alors on crée ce PLAN et on va à la page workflow après avoir rempli les actions jusque là
if (isset($_POST['addNewPlan'])) {
	newPlan($coordPat);								
}

//NEW PROCESS
//Si on a une demande d'introduction dans un nouveau process
if (isset($_POST['gotoNewProcess'])) {
	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=new_patient_valid&origin=generatedStep&newProcessID=$_POST[newProcessID]'>");	
}

?>

<div id="nomPatient"><?php echo $coordPat['firstname'].' '.$coordPat['lastname'].' - '.$coordPat['idStluc'];?></div>

<form name="stepForm" action="index.php?toload=generatedStep" method="post">

<?php 

//Part executed after a "save" from the client
if (isset($_POST['ok'])) {
	
	//Timestamp page setup for all the date
	$exploded_date1 = explode("/", $_POST[birthdate]);	
	$d1 = $exploded_date1['0'];
	$m1 = $exploded_date1['1'];
	$y1 = $exploded_date1['2'];
	$_POST['birthdate']=mktime(0,0,0,$m1,$d1,$y1);

	$exploded_date2 = explode("/", $_POST[startDate]);	
	$d2 = $exploded_date2['0'];
	$m2 = $exploded_date2['1'];
	$y2 = $exploded_date2['2'];
	$_POST['startDate']=mktime(0,0,0,$m2,$d2,$y2);

	$exploded_date3 = explode("/", $_POST[endDate]);	
	$d3 = $exploded_date3['0'];
	$m3 = $exploded_date3['1'];
	$y3 = $exploded_date3['2'];
	$_POST['endDate']=mktime(0,0,0,$m3,$d3,$y3);
	
	$exploded_date4 = explode("/", $_POST[datePTV2]);	
	$d4 = $exploded_date4['0'];
	$m4 = $exploded_date4['1'];
	$y4 = $exploded_date4['2'];
	$_POST['datePTV2']=mktime(0,0,0,$m4,$d4,$y4);	

	$exploded_date5 = explode("/", $_POST[dateSim]);	
	$d5 = $exploded_date5['0'];
	$m5 = $exploded_date5['1'];
	$y5 = $exploded_date5['2'];
	$_POST['dateSim']=mktime(0,0,0,$m5,$d5,$y5);

//	echo "<pre>"; print_r($_POST['prescription']); echo "</pre>";
	
	$prescription=serialize($_POST['prescription']);
	$_POST['historical']=addslashes($_POST['historical']);
	
	//Admin identity part update								
  	$sqlinsertName="UPDATE `patient_admin` SET `civilite`='$_POST[civilite]', `lastname`='$_POST[lastname]', `firstname`='$_POST[firstname]', `address`='$_POST[address]', `zip`='$_POST[zip]', 
  		`city`='$_POST[city]', `country`='$_POST[country]', `phone`='$_POST[phone]', `cellphone`='$_POST[cellphone]', `divers`='$_POST[divers]', `birthdate`='$_POST[birthdate]'
  		WHERE idStluc='$_SESSION[idPatStluc]' ";
	mysql_query($sqlinsertName);																										
	
	//Update separately information for a VolCible, a PTV and a PLAN

	//Patient_treat update for VolCible name - linked only to volcible 
  	$sqlinsertDataTreat="UPDATE `patient_treat` SET
  		`volcibleName`='$_POST[volcibleName]'
  		WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' ";
  	mysql_query($sqlinsertDataTreat);
	
  	//Patient_treat update for PTV name - linked only to PTV 
  	$sqlinsertDataTreat="UPDATE `patient_treat` SET
  		`ptvName`='$_POST[ptvName]'
  		WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' ";
  	mysql_query($sqlinsertDataTreat);

  	//Patient_treat update for PLAN name - linked only to plan 
  	$sqlinsertDataTreat="UPDATE `patient_treat` SET
		`planName`='$_POST[planName]'
  		WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
  	mysql_query($sqlinsertDataTreat);

  	//Patient_treat update for prescription info, superviseur, physicist, hospi, ... - linked to a req (course in Mosaiq)
  	$sqlinsertDataTreat="UPDATE `patient_treat` SET `superviseur`='$_POST[superviseur]', `assistant`='$_POST[assistant]', `physicien`='$_POST[physicien]',  		
  		`hospi`='$_POST[hospi]', `unit`='$_POST[unit]', `spo`='$_POST[spo]',
  		`dateSim`='$_POST[dateSim]', `startDate`='$_POST[startDate]', `endDate`='$_POST[endDate]', `datePTV2`='$_POST[datePTV2]',
  		prescription='$prescription', historical='$_POST[historical]'
  		WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' ";
  	mysql_query($sqlinsertDataTreat);

  	//There must be a comment to be updated in the DB 
	$timeComment=date("d/m/Y - H:i",time())." - ".$_SESSION[user]." => ";
	if (strlen($_POST['commentaires'])>2) {
  		$commentaire=addslashes($timeComment.mysql_real_escape_string($_POST['commentaires']."\r".stripcslashes($listActionUsed[comment])).$coordPat[comment]);
  		$sqlinsertComment="UPDATE `patient_treat` SET `comment`='$commentaire' 
  			WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
  		mysql_query($sqlinsertComment);						
  		//Do not reload the page here. If do reload, update of the rest will miss
	}
	//Do not refresh here after those update
  	
} //ENd if $_POST=ok

//Get patient demographic data back after the previous updates of the "identity part" (grey area). If we do not reload, then we got a "refresh data problem
patientDemographicData();
//echo "TEST<pre>"; print_r($coordPat);  echo "</pre>";

//To avoid filling up the "identity card" area (grey area) without any login
if ($_SESSION[logged]!="ok") { 
	$enablingActionForAll='disabled';
}

?>

<table cellspacing="1" cellpadding="7">
	<tr>
		<td bgcolor="#eeeeee" style="border: 3px solid #618C04;" >
			<!-- "Case" administrative part -->
			<table width="900px">
				<tr>
					<td colspan="2">				
						<h2>Etape <?php echo $stepName['number'].' / '.$stepName['name'] ; ?></h2>
					</td>
				<tr>
					<td>
						<span style="color:#00008B">Status: <?php echo $coordPat['status']; ?></span>
					</td>	
					<td align="right">						
						<em><h3>Process: <?php echo $_SESSION['processName']; ?></h3></em>
					</td>
				</tr>
				<tr>
					<td width="420px">				
						Mme<input type="radio" name="civilite" value="Mme" <?php if ($coordPat['civilite']=='Mme') {echo 'checked'; } echo $enablingActionForAll; ?> >, 
						Mlle<input type="radio" name="civilite" value="Mlle" <?php if ($coordPat['civilite']=='Mlle') {echo 'checked'; } echo $enablingActionForAll; ?> >, 
						Mr<input type="radio" name="civilite" value="Mr" <?php if ($coordPat['civilite']=='Mr') {echo 'checked'; } echo $enablingActionForAll; ?> >
						- Nom: <input type="text" class="inputFieldBig" name="lastname" value="<?php echo ucfirst(strtolower($coordPat['lastname'])) ; ?>" <?php echo $enablingActionForAll;?>>
					</td>
					<td width="480px">				
						Prénom: <input type="text" class="inputFieldBig" name="firstname" value="<?php echo ucfirst(strtolower($coordPat['firstname'])); ?>" <?php echo $enablingActionForAll;?> >
					</td>					
				</tr>
				<tr>
					<td>				
						ID St-Luc: <?php echo $coordPat['idStluc'];?> / Course: <?php echo $coordPat['req'];?>
					</td>
					<td>				
						Site d'irradiation: <?php echo $coordPat['volcible'];?>&nbsp;<input type="text" class="inputFieldSmall" name="volcibleName" value="<?php echo $coordPat['volcibleName'];?>" <?php echo $enablingActionForAll;?> maxlength="10">&nbsp;/&nbsp;
						PTV: <?php echo $coordPat['ptv'];?>&nbsp;<input type="text" class="inputFieldSmall" name="ptvName" value="<?php echo $coordPat['ptvName'];?>" <?php echo $enablingActionForAll;?> maxlength="10">&nbsp;/&nbsp;
						Plan: <?php echo $coordPat['plan'];?>&nbsp;<input type="text" class="inputFieldSmall" name="planName" value="<?php echo $coordPat['planName'];?>" <?php echo $enablingActionForAll;?> maxlength="10">
					</td>					
				</tr>
				<tr>
					<td>				
						Superviseur:					
						<select name="superviseur" <?php echo $enablingActionForAll;?>>
							<?php 
							if (isset($coordPat['superviseur'])) {
								echo '<option value='.$coordPat['superviseur'].'>'.$coordPat['superviseur'].'</option>';
							}
							?>	
							<option value="">---</option>																	
							<?php 
							$queryMed="SELECT * FROM users WHERE access_chain LIKE '%.1.1' ORDER by nom";
//							$queryMed="SELECT * FROM users INNER JOIN users_level ON users.H=users_level.level WHERE users.fonction='med' AND users_level.intitule='Superviseur' AND actif='oui' ORDER by H, nom";						
							$resultMed=mysql_query($queryMed);
							while ($listMed=mysql_fetch_array($resultMed)) {
					   			echo '<option value='.$listMed['INITIALES'].'>'.$listMed['INITIALES'].'</option>';
					   		}
					   		?>
						</select>
						<?php // echo $queryMed; ?>
						&nbsp;/&nbsp;Assistant:					
						<select name="assistant" <?php echo $enablingActionForAll;?>>	
							<?php 
							if (isset($coordPat['assistant'])) {
								echo '<option value='.$coordPat['assistant'].'>'.$coordPat['assistant'].'</option>';
							}
							?>								
							<option value="">---</option>																	
							<?php 
							//Select intitulé sur Superviseur tant que pas corrigé dans la gestion des users
							$queryAss="SELECT * FROM users WHERE access_chain LIKE '%.1.2' ORDER by nom";
//							$queryAss="SELECT * FROM users INNER JOIN users_level ON users.H=users_level.level WHERE users.fonction='med' AND users_level.intitule='Superviseur' AND actif='oui' ORDER by H, nom";							
							$resultAss=mysql_query($queryAss);
							while ($listAss=mysql_fetch_array($resultAss)) {
					   			echo '<option value='.$listAss[INITIALES].'>'.$listAss[INITIALES].'</option>';
					   		}
					   		?>
						</select>
						&nbsp;/&nbsp;Physicien:
						<select name="physicien" <?php echo $enablingActionForAll;?>>	
							<?php 
							if (isset($coordPat['physicien'])) {
								echo '<option value='.$coordPat['physicien'].'>'.$coordPat['physicien'].'</option>';
							}
							?>	
							<option value="">---</option>																	
							<?php 
							$queryPhys="SELECT * FROM users WHERE access_chain LIKE '%.2.%' ORDER by nom";
//							$queryPhys="SELECT * FROM users WHERE fonction='phys' AND actif='oui' ORDER by H, nom";						
							$resultPhys=mysql_query($queryPhys);
							while ($listPhys=mysql_fetch_array($resultPhys)) {
								echo $listPhys[INITIALES];
					   			echo '<option value='.$listPhys['INITIALES'].'>'.$listPhys['INITIALES'].'</option>';
					   		}
					   		?>
						</select>							
					</td>
					<td>				
						Hospi: <input type="checkbox" name="hospi" value="Oui" <?php if ($coordPat['hospi']=='Oui') { echo 'Checked'; }?> <?php echo $enablingActionForAll;?>>
						&nbsp;-&nbsp;
						Unité: <input type="text" class="inputFieldSmall" name="unit" value="<?php echo $coordPat['unit'];?>" <?php echo $enablingActionForAll;?>>
						&nbsp;-&nbsp;
						SPO: <input type="checkbox" name="spo" value="Oui" <?php if ($coordPat['spo']=='Oui') { echo 'Checked'; }?> <?php echo $enablingActionForAll;?>>
					</td>								
				</tr>
				<tr>
					<td align="right" colspan="2">
						<!-- Type Button important, if submit page will be reloaded -->
						<input type="button" onclick="plusInfo('moreInfo')" value="Plus d'infos ...">							
					</td>
				</tr>
				
				<!-- Modular display area -->				
				<tr>
					<td colspan="2">
						<table id="moreInfo" style="visibility: hidden; display: none;">							
							<tr>							
								<td align="center" width="800px">
									<?php 			
									$prescription=unserialize($coordPat[prescription]);
									
									//It's possible to have 2 irradiation site in the prescription
									//$numSite will give the number of site, given by a button "add" or by calculating how many there are in the $prescription
									if (isset($_GET[numSite])) {
										$numSite=$_GET[numSite];
									}
									else { 
										$numSite=count($prescription[siteName]); 
									}
									if ($numSite=="0") {
										$numSite=1;
									}									
									for ($i=0; $i<$numSite; $i++) {	
										//Loop on $numSite to display the prescription per site in a table dedicated for each
										//3 PTV are planned for each site								
									?>									
										<table style="border: 1px solid #C0C0C0;" cellpadding="1" cellspacing="0">
											<tr>
												<td colspan="4">
													<b>Site d'irradiation <?php echo $i+1; ?>:</b> &nbsp;<input type="text" class="inputFieldMiddle" name="<?php echo 'prescription[siteName]['.$i.']';?>" value="<?php echo $prescription['siteName'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																																																		
												</td>
												<td colspan="2">
													Sib: Oui<input type="radio" name="<?php echo 'prescription[sib]['.$i.']';?>" value="Oui" <?php if ($prescription['sib'][$i]=='Oui') {echo 'checked'; } echo $enablingActionForAll; ?> > 
													Non<input type="radio" name="<?php echo 'prescription[sib]['.$i.']';?>" value="Non" <?php if ($prescription['sib'][$i]=='Non') {echo 'checked'; } echo $enablingActionForAll; ?> > 																								
													<em>reset</em><input type="radio" name="<?php echo 'prescription[sib]['.$i.']';?>" value="" <?php echo $enablingActionForAll; ?> > 																																					
												</td>
											</tr>
											<tr>
												<td width="40px">
												</td>
												<td width="180px">
												</td>
												<td width="100px">	
													# fractions										
												</td>
												<td width="100px">	
													Dose/fractions										
												</td>				
												<td width="100px">	
													Dose totale									
												</td>
												<td width="100px">	
													Machine								
												</td>											
											</tr>
											<tr>
												<td>
													PTV1												
												</td>
												<td>
													<input type="text" class="inputFieldMiddle" name="<?php echo 'prescription[ptvName1]['.$i.']';?>" value="<?php echo $prescription['ptvName1'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																														
												</td>											
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[nbreFractions1]['.$i.']';?>" value="<?php echo $prescription['nbreFractions1'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>							
												</td>
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[dosePerFraction1]['.$i.']';?>" value="<?php echo $prescription['dosePerFraction1'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																												
												</td>				
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[doseTotale1]['.$i.']';?>" value="<?php echo $prescription['doseTotale1'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																											
												</td>
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[machine1]['.$i.']';?>" value="<?php echo $prescription['machine1'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>							
												</td>											
											</tr>	
											<tr>
												<td>
													PTV2											
												</td>
												<td>
													<input type="text" class="inputFieldMiddle" name="<?php echo 'prescription[ptvName2]['.$i.']';?>" value="<?php echo $prescription['ptvName2'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																														
												</td>											
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[nbreFractions2]['.$i.']';?>" value="<?php echo $prescription['nbreFractions2'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>							
												</td>
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[dosePerFraction2]['.$i.']';?>" value="<?php echo $prescription['dosePerFraction2'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																												
												</td>				
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[doseTotale2]['.$i.']';?>" value="<?php echo $prescription['doseTotale2'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																											
												</td>
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[machine2]['.$i.']';?>" value="<?php echo $prescription['machine2'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>							
												</td>											
											</tr>	
											<tr>
												<td>
													PTV3												
												</td>
												<td>
													<input type="text" class="inputFieldMiddle" name="<?php echo 'prescription[ptvName3]['.$i.']';?>" value="<?php echo $prescription['ptvName3'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																														
												</td>											
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[nbreFractions3]['.$i.']';?>" value="<?php echo $prescription['nbreFractions3'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>							
												</td>
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[dosePerFraction3]['.$i.']';?>" value="<?php echo $prescription['dosePerFraction3'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																												
												</td>				
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[doseTotale3]['.$i.']';?>" value="<?php echo $prescription['doseTotale3'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>																											
												</td>
												<td>	
													<input type="text" class="inputFieldSmall" name="<?php echo 'prescription[machine3]['.$i.']';?>" value="<?php echo $prescription['machine3'][$i]; ?>" <?php echo $enablingActionForAll;?>></input>							
												</td>											
											</tr>																																									
										</table>
										<br>
									<?php } ?>	
									</td>
									<td valign="top" align="right" width="100px">
										<table>
											<tr>
												<td>
													Simulation:
												</td>
												<td>
													<?php 
													//Date display as JJ/MM/AAAA in place of the timestamp																																				
													$coordPat[dateSim]=date("d/m/Y", $coordPat[dateSim]);
													?>
													<input type="text" class="inputFieldMiddle" name="dateSim" id="dateSim" value="<?php echo $coordPat[dateSim];?>" <?php echo $enablingActionForAll;?> onChange="check_date('dateSim')">
												</td>
											</tr>
											<tr>
												<td>
													Start:
												</td>
												<td>
													<?php 
													//Date display as JJ/MM/AAAA in place of the timestamp																																				
													$coordPat[startDate]=date("d/m/Y", $coordPat[startDate]);
													?>
													<input type="text" class="inputFieldMiddle" name="startDate" id="startDate" value="<?php echo $coordPat[startDate];?>" <?php echo $enablingActionForAll;?> onChange="check_date('startDate')">
												</td>												
											</tr>
											<tr>
												<td>
													PTV2:
												</td>
												<td>
													<?php 
													//Date display as JJ/MM/AAAA in place of the timestamp																																				
													$coordPat[datePTV2]=date("d/m/Y", $coordPat[datePTV2]);
													?>
													<input type="text" class="inputFieldMiddle" name="datePTV2" id="datePTV2" value="<?php echo $coordPat[datePTV2];?>" <?php echo $enablingActionForAll;?> onChange="check_date('datePTV2')">
												</td>
											</tr>
											<tr>
												<td>
													End:
												</td>
												<td>
													<?php 
													//Date display as JJ/MM/AAAA in place of the timestamp																																				
													$coordPat[endDate]=date("d/m/Y", $coordPat[endDate]);
													?>
													<input type="text" class="inputFieldMiddle" name="endDate" id="endDate" value="<?php echo $coordPat[endDate];?>" <?php echo $enablingActionForAll;?> onChange="check_date('endDate')">
												</td>											
											</tr>											
											<tr>
												<td colspan="2">&nbsp;</td>
											</tr>
											<tr>
												<td colspan="2" align="right">
													<a href="index.php?toload=generatedStep&numSite=<?php echo $numSite+1; ?>" >Ajouter un site</a>
												</td>		    																			
											</tr>											
										</table>									
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<em>Résumé clinique:</em>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<textarea name='historical' cols='100' rows='5' <?php echo $enablingActionForAll;?>><?php echo $coordPat[historical];?></textarea>
									</td>
								</tr>							 				
							<tr>
								<hr>
								<td colspan="2" style="border-top: 1px solid #618C04;">
									<br>
									<table>
										<tr>
											<td width="100px">
												Rue, avenue:
											</td>
											<td width="160px">
												<input type="text" class="inputFieldMiddle" name="address" value="<?php echo $coordPat[address];?>" <?php echo $enablingActionForAll;?>>
											</td>
											<td width="120px">
												Code postal:
											</td>
											<td width="230px">
												<input type="text" class="inputFieldMiddle" name="zip" value="<?php echo $coordPat[zip];?>" <?php echo $enablingActionForAll;?>>
											</td>
										</tr>
										<tr>
											<td>
												Ville:
											</td>
											<td>
												<input type="text" class="inputFieldMiddle" name="city" value="<?php echo $coordPat[city];?>" <?php echo $enablingActionForAll;?>>
											</td>
											<td>
												Pays:
											</td>
											<td>
												<input type="text" class="inputFieldMiddle" name="country" value="<?php echo $coordPat[country];?>" <?php echo $enablingActionForAll;?>>
											</td>									
										</tr>
										<tr>
											<td>
												Tél. fixe:
											</td>
											<td>
												<input type="text" class="inputFieldMiddle" name="phone" value="<?php echo $coordPat[phone];?>" <?php echo $enablingActionForAll;?>>
											</td>
											<td>
												GSM:
											</td>
											<td>
												<input type="text" class="inputFieldMiddle" name="cellphone" value="<?php echo $coordPat[cellphone];?>" <?php echo $enablingActionForAll;?>>
											</td>
										</tr>
										<tr>
											<td>
												Divers:
											</td>
											<td>
												<input type="text" class="inputFieldMiddle" name="divers" value="<?php echo $coordPat[divers];?>" <?php echo $enablingActionForAll;?>>
											</td>
											<td>
												Date de naissance:
											</td>
											<td>
												<?php 
												//Date display as JJ/MM/AAAA in place of the timestamp																								
												$age=(date("Y",time())-date("Y",$coordPat[birthdate]));
												$coordPat[birthdate]=date("d/m/Y", $coordPat[birthdate]);
												?>
												<input type="text" class="inputFieldMiddle" name="birthdate" id="birthdate" value="<?php echo $coordPat[birthdate];?>" <?php echo $enablingActionForAll;?>  onChange="check_date('birthdate')"> <?php echo $age; ?> ans
											</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>																														
									</table>											 
								</td>								
							<tr>
								<td colspan="2" style="border-top: 1px solid #618C04;">
									&nbsp;
								</td>
							</tr>																								
							<tr>													
								<td>
									<table>
										<?php 
										//Get limit step fro creating VolCible, PTV or Plan
										$myquery = "SELECT * FROM general_settings WHERE conf_id='0';";
										$Resultat = mysql_query($myquery);
										for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++) {										
											$general_data = mysql_result($Resultat , $Compteur , "general_data");
										}									
										$general_data = unserialize($general_data);		
										
										$queryLimitVolCible="SELECT * from step_list WHERE id=$general_data[limitVolCible] ";				
										$resultLimitVolCible=mysql_query($queryLimitVolCible);
										while ($limitVolCible=mysql_fetch_array($resultLimitVolCible)) {
											$maxVolCible=$limitVolCible[number];
										}
	
										$queryLimitPTV="SELECT * from step_list WHERE id=$general_data[limitPTV] ";				
										$resultLimitPTV=mysql_query($queryLimitPTV);
										while ($limitPTV=mysql_fetch_array($resultLimitPTV)) {
											$maxPTV=$limitPTV[number];
										}
	
										$queryLimitPlan="SELECT * from step_list WHERE id=$general_data[limitPlan] ";				
										$resultLimitPlan=mysql_query($queryLimitPlan);
										while ($limitPlan=mysql_fetch_array($resultLimitPlan)) {
											$maxPlan=$limitPlan[number];
										}									
																														
										?>
										<tr>
											<td align="right">				
												ajouter un site d'irradiation en étape:
											</td>
											<td>									 
												<select name="stepNewVolCible" onchange="addNewVolCible.style.visibility = 'visible'; " <?php echo $enablingActionForAll;?>>
												<option value=""></option>
													<?php							
													//Display of the steps where the new VolCible is able to be inserted to
													$queryAddVolCible="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' AND number<='$stepName[number]' AND number<='$maxVolCible' ORDER by number";
													$resultAddVolCible=mysql_query($queryAddVolCible);	  
									    			while ($stepAddVolCible=mysql_fetch_array($resultAddVolCible)){ 
									    				?>	
														<option value="<?php echo $stepAddVolCible[id]; ?>"><?php echo $stepAddVolCible[number].' / '.$stepAddVolCible[name]; ?></option>			          						        	
										    		<?php } ?>
												</select>
												<input class="inputButton" type="submit" border="0" name="addNewVolCible" value="Créer" style="visibility:hidden;" >
											</td>
										</tr>
										<tr>
											<td align="right">				
												ajouter un PTV en étape:
											</td>
											<td>									
												<select name="stepNewPTV" onchange="addNewPTV.style.visibility = 'visible'; " <?php echo $enablingActionForAll;?>>
												<option value=""></option>
													<?php							
													//Display of the steps where the new PTV is able to be inserted to
													$queryAddPTV="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' AND number<='$stepName[number]' AND number<='$maxPTV' ORDER by number";
													$resultAddPTV=mysql_query($queryAddPTV);	  
									    			while ($stepAddPTV=mysql_fetch_array($resultAddPTV)){ 
									    				?>	
														<option value="<?php echo $stepAddPTV[id]; ?>"><?php echo $stepAddPTV[number].' / '.$stepAddPTV[name]; ?></option>			          						        	
										    		<?php } ?>
												</select>
												<input class="inputButton" type="submit" border="0" name="addNewPTV" value="Créer" style="visibility:hidden;" >
											</td>
										<tr>
											<td align="right">				
												ajouter un plan en étape:
											</td>
											<td>									
												<select name="stepNewPlan" onchange="addNewPlan.style.visibility = 'visible'; " <?php echo $enablingActionForAll;?>>
												<option value=""></option>
													<?php
													//Display of the steps where the new Plan is able to be inserted to													
													$queryAddPlan="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' AND number<='$stepName[number]' AND number<='$maxPlan' ORDER by number";
													$resultAddPlan=mysql_query($queryAddPlan);	  
									    			while ($stepAddPlan=mysql_fetch_array($resultAddPlan)){ ?>	
														<option value="<?php echo $stepAddPlan[id]; ?>"><?php echo $stepAddPlan[number].' / '.$stepAddPlan[name]; ?></option>			          						        	
										    		<?php } ?>
												</select>
												<input class="inputButton" type="submit" border="0" name="addNewPlan" value="Créer" style="visibility:hidden;" >
											</td>																						
										</tr>	
										<tr>
											<td align="right">				
												introduire le patient dans un autre process:
											</td>
											<td>									
												<select name="newProcessID" onchange="gotoNewProcess.style.visibility = 'visible'; " <?php echo $enablingActionForAll;?>>
													<option value=""></option>
													<?php 
													$queryProcess="SELECT * from process ORDER by id";
													$resultProcess=mysql_query($queryProcess);	  
												   	while ($stepProcess=mysql_fetch_array($resultProcess)) {
												   		echo '<option value='.$stepProcess[id].'>'.$stepProcess[processName].'</option>';
												   	}
													?>
												</select>
												<input class="inputButton" type="submit" border="0" name="gotoNewProcess" value="Créer" style="visibility:hidden;" >
											</td>																						
										</tr>									
									</table>								
								</td>
								<td valign="bottom" align="right">
									<?php 
									//Only a physician, supervisor or normal is able to delete (as well as admin)
									if (($access_admin=="2") 
										OR (($access_admin=="1") AND ($access_fonction=="1") AND ($access_level=="1")) 
										OR (($access_admin=="1") AND ($access_fonction=="1") AND ($access_level=="2"))
									) {
									?>
										<a href="javascript:if(confirm('Etes vous sûr de vouloir supprimer ce patient : <? echo $coordPat[firstname]." ".$coordPat[lastname];?>')) document.location.href='index.php?toload=deletepatient' "><IMG src='images/delete.jpg' alt='Effacer' title='Effacer' width='16px' height='16px'></a>
									<?php } ?>
									<br><br>
									Date d'introduction: <?php echo date("d/m/Y", $coordPat[introDate]);?>
								</td>					
							</tr>
							<tr>
								<td colspan="3" align="right">
									<!-- It's only when logged correctly that we can save modifications  -->
									<input class="inputButton" type="submit" border="0" name="ok" value="<?php echo $savedButton; ?>" title="<?php echo $savedButton; ?>" <?php echo $enablingActionForAll;?>>
								</td>
							</tr>																							
						</table>
					</td>
				</tr>
				<!-- End of the modular area -->
									
			</table>
			<?php
			//We will check if the step value stored in the DB is equal or not to the SESSION		
			//If not then update
			if ($_SESSION[idstepNumber]!=$stepName[id]) {
				//Update of the Session
				$_SESSION[idstepNumber]=$stepName[id];
				//No need for refresh here
			}					
			?>			
		</td>		
		<!-- Area table step -->
		<td width="250" rowspan="2" valign="top" align="right" >
			<!-- Liste des Etapes du processus -->		
			<table width="250" border="0" cellspacing="1" cellpadding="1" style="border-right: 2px dotted #618C04;">			
			    <tr>
					<td colspan="3" align="center"><a href="index.php?toload=workflow">Retour au suivi des patients</a></td>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
				<?php				
/*				//D'abord reprendre la liste des étapes venant du process propre au patient (variable togo)	
				$queryStepUsed="SELECT * FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
				$resultStepUsed=mysql_query($queryStepUsed);
				$listStepUsed=mysql_fetch_array($resultStepUsed);
				//Ensuite, récupération des actions de l'étape depuis togo				
				$actionsDeStep=unserialize($listStepUsed[togo]);
*/
				//First we get the list of this step where the patient is from $togo 
				$actionsDeStep=unserialize($coordPat[togo]);
//				echo "ACTIONS DE STEP: <pre>"; print_r($actionsDeStep); echo "</pre>";
		
				//We have to order this table in different step (if not we have 1, 1, 4, 4, 4, 2, ...)
				$i=0;
				foreach($actionsDeStep as $cle0 => $val) {
					$listStepTMP[$i]=$val[idStep];
//					echo "listStepTMP: <pre>"; print_r($listStepTMP); echo "</pre>";			
					$i++;		
				}
				//Delete of the duplicate
				//$listStep is the table which contains the list of the steps 
				$listStep=array_unique($listStepTMP);
//				echo "listStep: <pre>"; print_r($listStep); echo "</pre>";					

				$y=0;
				//Introduce of the list of action in the same table:  [1][1,2], [4][4,6,7], [3][5], ...
				//iDAction = Action ID to use
				//Status = patient status
				//obligation = mandatory step
				//type = action type (checkbox, ...)
				//stepNumber = step in the workflow where the action is
								
				foreach($listStep as $idEtape) {
					$listStepActions[$y][idStep]=$idEtape;
					$p=0;
					foreach ($actionsDeStep as $val) {				
						if ($val[idStep]==$idEtape) {
//							echo "Val: <pre>"; print_r($val); echo "</pre>";
							$listStepActions[$y][idAction][$p]=$val[idAction];
							$listStepActions[$y][status][$p]=$val[status];
							$listStepActions[$y][obligation][$p]=$val[obligation];
							$listStepActions[$y][type][$p]=$val[type];
							$listStepActions[$y][stepNumber][$p]=$val[stepNumber];
							//Next action $p for step $y
							$p++;
						}			
					}
					$y++;
				}	
//				echo "listStepAct: <pre>"; print_r($listStepActions); echo "</pre>";
								
				//Retreive the process from which the step belongs to			
				$queryProcess="SELECT processName FROM `process` INNER JOIN `step_list` ON step_list.process=process.id WHERE step_list.id=$listStepUsed[actual_step] ";
				$resultProcess=mysql_query($queryProcess);
				$reqProcess=mysql_fetch_row($resultProcess);					
				?>
			    <tr>
					<td colspan="3" align="center">
						<u>PROCESS:</u>
						<?php echo $reqProcess[0]; ?>
					</td>
				</tr>	
			    <tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>	
				<tr>
		  	 		<td>&nbsp;</td>
		          	<td align="center"><b>Etape</b></td>
			        <td align="center"><b>Légende</b></td>
			    </tr>
			    <tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>	
				<?php
				//Loop to define the background color
				foreach ($listStep as $etpPatient) {						
					$query="SELECT * from step_list WHERE id=$etpPatient";
					$result=mysql_query($query);	  			
		    		while ($stepList=mysql_fetch_array($result)) {
//			    		echo $stepList[number]."-".$stepName[number]."-".$stepActu[number]."<br>";
			    		//On divise par 1 pour qu'ils soient interprétés comme des nombres ...
			    		if (($stepList[number]/1) < ($stepActu[number]/1)) {
			    			$backColor="#DCDCDC";
			    		}
			    		else { $backColor="#FFFFFF"; }		
			    		if (($stepList[number]/1) == ($stepName[number]/1)) {
			    			$backColor="#A52A2A";
			    		} 											    		
						?>	
						<tr>
				       		<td bgcolor="<?php echo $stepList[color]; ?>">&nbsp;&nbsp;&nbsp;</td>
				       		<td align="center" bgcolor="<?php echo $backColor; ?>"><?php echo $stepList[number]; ?></td>
				        	<td align="center" bgcolor="<?php echo $backColor; ?>"><a href="index.php?toload=generatedStep&stepSelected=<?php echo $stepList[id]; ?>"><?php echo $stepList[name]; ?></a></td>
					   	</tr>
			    <?php } } ?>	
			    <tr>
					<td>&nbsp;</td>
					<td></td>
					<td></td>
				</tr>					
			</table>						
		</td>
	</tr>
	<tr valign="top">
		<td>
			<!-- "Case" tableau suivi -->			
			<table width="800" style="border-bottom: 1px solid #618C04;">
			<tr>
				<td width="300"><b>Action</b></td>
				<td width="250"><b>Action à réaliser</b></td>
				<td width="250"><b>Réalisée par ... le ...</b></td>
					<?php				
					//Vérification de l'étape dans laquelle se trouve le patient
					//Il y a bien la variable 'actual_step' dans la DB, celle-ci permet de réduire le temps d'affichage sur le listing suivi,
					//mais il faut pouvoir la mettre à jour automatiquement.
					//On va donc reprendre chaque étape/action du workflow et si pour une étape toutes les actions sont complétées,
					//alors on passe à la suivante et ainsi de suite ...
					//C'est ici aussi que l'on va retourner en arrière si refus
					//Ou que l'on adapte la variable togo (=processus) en fonction des réponses
					
					//Et maintenant le formulaire ...		
					
					//Used to manage the tabulation in the form
					$tabindex=0;
					
					//A enlever: AND status='$_SESSION[statusPat]'
					$queryActionUsed="SELECT * FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";
					$resultActionUsed=mysql_query($queryActionUsed);
					$listActionUsed=mysql_fetch_array($resultActionUsed);
					
					$actionsDuJour=unserialize($listActionUsed[togo]);
//echo "TOGO: <pre>"; print_r($actionsDuJour); echo "</pre>";
					
//unset($nbreActionsPerStep);
					//For each action inside the step
					foreach($actionsDuJour as $cle1 => $val) {
//						echo "---STEP° ".$actionsDuJour[$cle1][idStep]."<br>";
//						echo "ACT° ".$actionsDuJour[$cle1][idAction]."<br>";
//						echo "Test: ".$val[idStep]."-".$_SESSION[idstepNumber];

						//Si on se trouve dans l'étape dans laquelle se trouve le patient (ou celle que l'on a sélectionnée)
						//et que l'action soit bien active (Disable si on n'était pas dans la bonne branche du process)
						
						//??NOT NECESSARY??
						
//Calculate the number of actions "Disable" per step 
//echo $actionsDuJour[$cle1][idStep]."=".$actionsDuJour[$cle1-1][idStep]."<br>";
//If idStep is the same as before, that means there is one action more
/*	if (($actionsDuJour[$cle1][idStep]==$actionsDuJour[$cle1-1][idStep]) AND ($actionsDuJour[$cle1][status]=="Disable")) {
		$nbreActionsPerStep[$val[idStep]][actionAmount]++;	
	}
*/						
//If not, there is at least one action in this step
//else { $nbreActionsPerStep[$val[idStep]][actionAmount]=0; }
						
//echo $val[idStep]."-".$nbreActionsPerStep[$val[idStep]][actionAmount]."<br>";
//echo "<pre>"; print_r($nbreActionsPerStep); echo "</pre>";
						
						//Save data from the future
						if ($pastOrFuture=="Future") {
//							echo 'UPDATE<br>';
							if ( (($_POST[$valeur]!="") AND ($_POST[$valeur]!=$listCheckFilledUp[0])) OR (($_POST[$valeur]=="") AND ($listCheckFilledUp[0]!=""))	) {
				  				$sqlinsertFuture="UPDATE `step_$_SESSION[idstepNumber]` SET `actionId_$listAction[id]`='$_POST[$valeur]', `timeId_$listAction[id]`='$timeSaved', `userId_$listAction[id]`='$_SESSION[user]' 
				  					WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";									
								echo $sqlinsertFuture."<br>";
//				  				mysql_query($sqlinsertFuture);
							}
		  				}
						
						
						//In this condition, a step which contains only one action "Disable" will block the process ... 
						//For this special step we have to force the next step on line +/- 1670						
						if (($val[idStep]==$_SESSION[idstepNumber]) AND ($val[status]=="Enable")) {					
//							echo "Status 2:".$val[idStep]."-".$val[idAction]."-".$val[status]."<br>";												
							//Recherche de l'id de cette dernière étape
							$queryLastStep="SELECT id FROM step_list WHERE state='Enabled' AND process='$_SESSION[processID]' ORDER by number";
							$resultLastStep=mysql_query($queryLastStep);
							while ($stepLastNumber=mysql_fetch_array($resultLastStep)) {
								$lastStep=$stepLastNumber[0];
//								echo "<br>last: ".$lastStep."<pre>"; print_r($stepLastNumber); echo "</pre>";
							}							
//							echo "last step".$lastStep."<br>";

							//Archive:
							//Si le patient est dans une étape pour laquelle l'IDAction n'exsite pas dans la table mais que tous les IDAction de cette étape sont remplis, 
							//et que le patient est dans la dernière étape, alors GoTo Archive et étape=blanc
							if (($val[type]=="Archivage") AND ($val[idStep]==$lastStep)) {
//								echo "Test: ".$val[idStep]."-".$_SESSION[idstepNumber]." avant archive<br>";
//								echo "TOGO: <pre>"; print_r($actionsDuJour); echo "</pre>";
//								echo "listStepAct: <pre>"; print_r($val); echo "</pre>";
								//On recherche tous les IDactions de cette étape dans la variable ToGo portant le idStep actuel
								$nbreIdActions=0;
								$rempli=0;
								//Vu qu'il y a une action "none", il faut "1" d'écart pour archiver								
								foreach ($actionsDuJour as $key => $value) {		
									if (($value[idStep]==$val[idStep]) AND ($value[status]=="Enable")) {
										//Pour tous les idActions de cette idStep (normalement dernière étape), check si c'est différent de "none"														
//										echo $value[idAction]." IDACTION ".$nbreIdActions."<br>";
										if ($value[idAction]!="none") {				
											$nbreIdActions++;
											//Si c'est un entier (le contraire serait "none") requête pour savoir si rempli dans l'étape
											$queryCheck="SELECT `actionId_$value[idAction]` FROM `step_$value[idStep]` WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";
//											echo "Check: ".$queryCheck."<br>";
											$resultCheck=mysql_query($queryCheck);
											$check=mysql_fetch_array($resultCheck);
											//Si rempli, next, sinon break
											if ($check[0]!="") { 					
												$rempli++;
//												echo "rempli: ".$rempli."<br>";
											}
											else { break; }				
										}
									}
								}
//								echo "nbre IDaction".$nbreIdActions."-".$rempli."<br>";	
								if ($nbreIdActions==$rempli) {
//									echo "Archive<br>";
							  		$updateArchive="UPDATE patient_treat SET status='Archive', actual_step='' 
							  		WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
//									echo "ARCHIVAGE: ".$updateArchive;
							  		mysql_query($updateArchive);  				
								}							  								  								
							}							
														
//							echo "<br>idstepnumSESSION ".$_SESSION[idstepNumber];
//							echo "<br>idstepDeActionsduJour ".$val[idAction];
							
							//Récupérer toutes actions réalisées/à réaliser du patient (id est ici incrémenté)
							$queryAction="SELECT * FROM step_action WHERE id='$val[idAction]'";
//							echo "QueryAction: ".$queryAction."<br>";
							$resultAction=mysql_query($queryAction);		
							while ($listAction=mysql_fetch_array($resultAction)) {
								//Insertion (action par action) des données modifiées dans la DB
								if (isset($_POST["ok"])) {							
									
									//Save data from the actual_step
									//Pour permettre d'utiliser des apostrophes dans le texte									
									$valeur=$listAction[id];
									$_POST[$valeur]=mysql_real_escape_string($_POST[$valeur]);								
									//Update de la réponse à l'action dans la DB
									//On prend $listAction[ID] pour avoir le bon ID de l'action en cours de parcours
									//Request on the DB of all the eventual previous data saved
									$queryCheckFilledUp="SELECT `actionId_$valeur`, `timeId_$valeur`, `userId_$valeur` FROM `step_$val[idStep]` 
										WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";
//									echo $queryCheckFilledUp."<br>";
									$resultCheckFilledUp=mysql_query($queryCheckFilledUp);
									$listCheckFilledUp=mysql_fetch_array($resultCheckFilledUp);
									//Enregistrement du Timestamp ssi on a répondu et que l'on doit sauver l'heure (pas après 15 sec, surement si vide ou nul)
								  	$timeSaved=time();
								 	//Insertion du user et de l'heure de validation								 	
								  	
								 	//($_POST[$valeur]!=$listCheckFilledUp[0]) du IF sert à ne pas remplacer les initiales pré-enregistrées. 
								  	//La valeur postée ne doit pas être vide et doit être différente de ce qui existe dans la DB
								  	//Donc nouvelles initiales si modification de la valeur postée
							  		//Mais pour faire un reset de bullet, checkbox, string, ... il faut autoriser de renvoyer du vide si c'était rempli avant.
							  		if ( (($_POST[$valeur]!="") AND ($_POST[$valeur]!=$listCheckFilledUp[0])) OR (($_POST[$valeur]=="") AND ($listCheckFilledUp[0]!=""))	) {
							  			$sqlinsertTime="UPDATE `step_$_SESSION[idstepNumber]` SET `actionId_$listAction[id]`='$_POST[$valeur]', `timeId_$listAction[id]`='$timeSaved', `userId_$listAction[id]`='$_SESSION[user]' 
							  				WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";									
//						  				echo $sqlinsertTime."<br>";
							  			mysql_query($sqlinsertTime);
					  				}
//					  				echo "<br>I".$listCheckFilledUp[0]." INSERTTime: ".$sqlinsertTime."<br>"; 					  																																
																
									//Vérifier que pour chaque étape, toutes les actions soient toutes remplies, sinon mise à jour de actual_step là où il se trouve
									//Doit se trouver dans la boucle isset(POST=ok)		
									//Boucle sur les étapes
									foreach ($listStepActions as $key1 => $stepId) {																				
//										echo "<br>Boucle 1"; echo "<pre><br>"; print_r($stepId); echo "</pre><br>";										
										$nbreActions=0;
										$fillUp=0;										
				
										//Boucle sur les actions									
										foreach ($stepId[idAction] as $key2 => $actionList) {																			
											//Il faut vérifier que l'action soit bien active (Status=Enable) et obligatoire											
//											echo "<br>Status: <pre>"; print_r($stepId[status][$key2]); echo "</pre><br>";
//											echo "<br>Obligation: <pre>"; print_r($stepId[obligation][$key2]); echo "</pre><br>";
											if (($stepId[status][$key2]=="Enable") AND ($stepId[obligation][$key2]=="Oui")) {												
//												echo "TEST".$stepId[obligation][$key2]."<br>";
												//On doit comptabiliser le nombre d'actions dont le status est "Enable"
												//On n'utilise pas count sur stepId car il ne fait pas de différence sur le status Enable ou Disable ...
												$nbreActions++;																		
//												echo " Boucle2: ".$stepId[status][$key2]."<br>";
												//Requête à faire sur la DB pour s'assurer que l'étape est bien remplie
												unset($listCheckFilledUp); //On remet la variabe à zéro pour éviter de trainer des valeurs ...
												$queryCheckFilledUp="SELECT `actionId_$actionList`, `timeId_$actionList`, `userId_$actionList` FROM `step_$stepId[idStep]` 
													WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";
//												echo $stepId[type][$key2]."QueryCheckFillup: ".$queryCheckFilledUp."<br>";
												$resultCheckFilledUp=mysql_query($queryCheckFilledUp);
												$listCheckFilledUp=mysql_fetch_row($resultCheckFilledUp);
//												echo $actionList."<pre> "; print_r($listCheckFilledUp);echo "<pre>";
												
												//If a step is refused (type Radio and answer: Refus (in place of Non))												
												//Refus and go back to a previous step defined during the process creation. Everything is deleted between the previous and the actual step to start again
												if (($stepId[type][$key2]=="radio") AND ($listCheckFilledUp[0]=="Refus")) {
													//Get number of Source Step
													$querynumStepSrc="SELECT number FROM step_list WHERE id='$_SESSION[idstepNumber]'";
//													echo 'test'.$p." ".$querynumStepSrc."<br>";
													$p++; //Used in line 1038
													$resultnumStepSrc=mysql_query($querynumStepSrc);
													$numStepSource=mysql_fetch_row($resultnumStepSrc);
													$numStepSource=$numStepSource[0];
													
													//We need to get the rigth refusGoTo, not the one from the Wile loop which has a "loop" delay due to a previous while belonging
													$queryActionBis="SELECT * FROM step_action WHERE id='$actionList'";
//													echo $queryActionBis."<br>";
													$queryResultActionBis=mysql_query($queryActionBis);											
													$idRefus=mysql_fetch_array($queryResultActionBis);
//													echo "<pre>"; print_r($idRefus); echo "</pre>";
													$idRefusGoTo=$idRefus[refusGoTo];
													
													//Retreive number of refusGoTo
													$querynumRefus="SELECT number FROM step_list WHERE id='$idRefusGoTo'";	
//													echo $querynumRefus."<br>";
													$resultnumRefus=mysql_query($querynumRefus);
													$numRefusGoTo=mysql_fetch_row($resultnumRefus);
													$numRefusGoTo=$numRefusGoTo[0];																					
//													echo $listAction[refusGoTo]."-Refus: ".$numRefusGoTo."<br>";
//													echo "<pre>"; print_r($listAction); echo "</pre>";
													//Update only if really a Refus value
													//If the type in the DB would have been INTEGER, default value would be 0, and so we would try to delete everything till ID=0
													if ($numRefusGoTo!="") {
														//Browse step by number and not by ID to find the list of the ones to be deleted
														//We sort the table in reverse order to decrease the step and delete the actual one till the defined one in the refusGoTo
														$reverseListStepActions=array_reverse($listStepActions);
//														echo "<pre>"; print_r($reverseListStepActions); echo "</pre>";
														foreach ($reverseListStepActions as $cle2 => $stp) {
//														 	echo "Step: <pre>"; print_r($stp); echo "</pre>";
	//														echo $stp[stepNumber][0];
															//So long we are between the step where the refus come from and the step refus GoTo, then ...
															if (($stp[stepNumber][0]<=$numStepSource) AND ($numRefusGoTo<=$stp[stepNumber][0])) {
	//															echo "stpsrc: ".$stepSource."--stpIdStp: ".$stp[idStep]."--refustogo: ".$listAction[refusGoTo]."<br>";
	//															echo "<pre>"; print_r($stp[idAction]); echo "</pre>";
																foreach ($stp[idAction] as $cle3) {
	//																echo "I".$stp[idStep]."-".$cle2[idAction]."I <br> ";
																	//Effacer les données liées à ce patient dans l'étape se trouvant dans l'intervalle décrit
																	$actionNow=$cle3;
														  			$sqlinsertGoBack="UPDATE `step_$stp[idStep]` SET `actionId_$actionNow`='', `timeId_$actionNow`='', `userId_$actionNow`='' 
														  				WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";									
//																  	echo "Go Back: ".$sqlinsertGoBack."<br><br>";
															  		mysql_query($sqlinsertGoBack);
																}
													  			
															  	//Sauver ID+time ainsi que From+To
																
															  	//Remplacer actual_step dans patient_treat
																$sqlinsertActuStep="UPDATE `patient_treat` SET `actual_step`='$stp[idStep]' WHERE idStluc='$_SESSION[idPatStluc]' AND volcible='$_SESSION[volcible]' AND req='$_SESSION[req]' AND PTV='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
//																echo $sqlinsertActuStep."<br>";
																mysql_query($sqlinsertActuStep);

																//Reload	
																//On doit indiquer que l'on vient d'un refus ...												 	
																$refus="on";												
																//On fait un "faut" POST[ok] pour repasser dans l'analyse de l'étape actuelle (while, if ...)
																?><input type="hidden" value="Sauver" name="ok"><?php 
																$toReload="Yes";
															} //END intervalle
														}
													}	
													
												} //END IF POST "goBACK" ou Type=RADIO et Réponse=Refus
																															
												if ($listCheckFilledUp[0]!="") {
													//On augmente le nombre de données remplies de 1						
													$fillUp++; 
												}
																								
											} //End if action est enable et obligatoire

										} //End foreach action

//										echo $fillUp."-".$nbreActions."<br>";

										//If the number of elements/actions is equal to the result of $fillup, then NextStep
										//But this is not check after a refus
										if (($fillUp==$nbreActions) AND ($refus!="on")) {
											$nextKey=$key1+1;
											$nextStep=$listStepActions[$nextKey];	
											$sqlinsert2="UPDATE `patient_treat` SET `actual_step`='$nextStep[idStep]' WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND PTV='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
//											echo "<br>--2: ".$sqlinsert2;
											mysql_query($sqlinsert2);
											//$toReload="Yes"; //Si Reload ici, alors on quitte trop vite le processus et on ne peut plus rien enregistrer dès la seconde étape
											//break; //Si Reload ici, alors on quitte trop vite le processus et on ne peut plus rien enregistrer dès la seconde étape
										}
										//If not, go back to the first step where everything is not filled up
										//But this is not check after a refus
										elseif (($fillUp<$nbreActions) AND ($refus!="on")) {
											$actualStep=$listStepActions[$key1];
//											echo "ActualStep: ".$actualStep[idStep];
											$sqlinsert3="UPDATE `patient_treat` SET `actual_step`='$actualStep[idStep]' WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND PTV='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
//											echo "<br>----3: ".$sqlinsert3;
											mysql_query($sqlinsert3);
											//And we have to leave the loop
											break;											
										}
	

									} //End foreach step

//									echo 'A/ NextStep: '.$nextStep[idStep].'-'.$stepName[id].'<br>';	
									
									if (empty($nextStep[idStep])) {
//										echo 'First IDStep: '.$listStepActions[0][idStep].'<br>';										
										//Give the ID of the first step in the workflow to be equal at the next condition IF.
										//If not, it is impossible to save data in this first step
										$nextStep[idStep]=$listStepActions[0][idStep];
									}
									
//									echo 'B/ NextStep: '.$nextStep[idStep].'-'.$stepName[id].'<br>';	
									
									//Way to go to the next step automatically (the nextstep is not the same than the one displayed on top of the demogrpahic part)
									if ($nextStep[idStep]!=$stepName[id]) {
//										echo 'reload';
										$toReload="Yes";
									}

									//Check des éventuelles données à ne pas prendre, donc au final, 
									//modification de la variable togo de la table patient_treat avec enregistrement des modifications effectuées
									$queryActionAvoid="SELECT * FROM step_action_avoid WHERE stepId='$val[idStep]' AND actionId='$val[idAction]'";
									$resultActionAvoid=mysql_query($queryActionAvoid);										
									//Boucle pour vérifier si il faut éviter une action ou non	
									$flagEnDis=0;																		
									while ($listActionAvoid=mysql_fetch_array($resultActionAvoid)) {										
//										echo "resultAvoid: <pre>"; print_r($listActionAvoid); echo "</pre>";
										$repToAvoid=$listActionAvoid[selectedAnswer];	
//										echo "<br>RepAvoid: ".$repToAvoid."-";													
										//Faire une requête sur la réponse réellement sélectionnée par l'utilisateur   AND `actionId_$val[idAction]`='$repToAvoid'
										$queryReponse="SELECT `actionId_$val[idAction]` FROM `step_$val[idStep]` WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";										
										$resultReponse=mysql_query($queryReponse);												
										$repResult=mysql_fetch_array($resultReponse);					
//										echo "resultReponse: <pre>"; print_r($repResult); echo "</pre>";
//										echo "repResult: ".$repResult[0]."<br>";
									
										//Modification de la variable toGo que le choix ait ou non un impact sur la suite du process (on enlève les avoid si impact, on les rajoute si pas d'impact)
										$togoAvoid=unserialize($listActionAvoid[togoAvoid]);

										//On va parcourir la variable togoAvoid	pour rajouter/enlever ou non des actions-étapes dans la variable togo
										//de la table patient_treat selon le choix fait par l'utilisateur lors du select

										//Si la réponse repResult a un impact: alors DISABLE des actions-étapes ToGoAvoid
										if ($repResult[0]==$repToAvoid) {	
//											echo "ON Y GO!!!";
											//On parcourt d'abord la liste des actions à suivre
											foreach ($actionsDeStep as $keyAction=>$actDeStp) {
												//Dans cette boucle, nous allons parcourir la liste des actions à éviter
//												echo "<br>ActionsDeStep: <pre>"; print_r($actionsDeStep); echo "</pre><br>";
//												echo "<br>ToGoAvoid: <pre>"; print_r($togoAvoid); echo "</pre><br>";																																	
												foreach ($togoAvoid as $keyAvoid=>$toAvoid) {
													//Si égalité, alors on dés-active
													if ( ($toAvoid[idStep]==$actDeStp[idStep]) AND ($toAvoid[idAction]==$actDeStp[idAction]) ) {													
														//On va désactiver l'action en question dans la variable ToGo; on ne fait pas de Unset pour pouvoir revenir en arrière et ré-activer si on change d'avis
														$actionsDeStep[$keyAction][status]="Disable";	
														$flagEnDis=1; //Si le flag est à 1 on peut Disable, pas Enable. Sinon peut Enable.																										
														//On sauvegarde la réponse qui a engendrée la dés-activation															
														$actionsDeStep[$keyAction][source]=$repResult[0];	
														//echo "ActiondeStepNew: "." ".$actionsDeStep[$keyAction][idStep]." ".$actionsDeStep[$keyAction][idAction]." ".$actionsDeStep[$keyAction][status]." ".$actionsDeStep[$keyAction][source]."<br>";																																			
													} //Fin du if			
												} //Fin du ForEach $togoAvoid																																								
											} //Fin du ForEach actionDeStep	
										} //Fin du if																			
/*										
										//On n'active pas si on ne retrouve pas d'égalité, c'est une sorte de fusion, le "moins l'emporte".
										//Si non, on active - ENABLE
										elseif ($flagEnDis==0) {
											//On parcourt d'abord la liste des actions à suivre
											foreach ($actionsDeStep as $keyAction=>$actDeStp) {																																																									
												//Dans cette boucle, nous allons parcourir la liste des actions à éviter
//												echo "<br>ActionsDeStep: <pre>"; print_r($actionsDeStep); echo "</pre><br>";																																	
												foreach ($togoAvoid as $keyAvoid=>$toAvoid) {
													//Si égalité, alors on ré-active
													if ( ($toAvoid[idStep]==$actDeStp[idStep]) AND ($toAvoid[idAction]==$actDeStp[idAction]) ) {													
														//On va désactiver l'action en question dans la variable ToGo; on ne fait pas de Unset pour pouvoir revenir en arrière et ré-activer si on change d'avis
														$actionsDeStep[$keyAction][status]="Enable";			
														//On sauvegarde la réponse qui a engendrée la dés-activation															
														$actionsDeStep[$keyAction][source]=$repResult[0];	
														//echo "ActiondeStepNew: "." ".$actionsDeStep[$keyAction][idStep]." ".$actionsDeStep[$keyAction][idAction]." ".$actionsDeStep[$keyAction][status]." ".$actionsDeStep[$keyAction][source]."<br>";																																			
													} //Fin du if													
												} //Fin du ForEach $togoAvoid																																								
											} //Fin du ForEach actionDeStep																							
										} //Fin du else	
*/

										
//										echo "<pre>"; print_r($actionsDeStep); echo "</pre>";
										//Et on peut alors updater la DB et la nouvelle variable ToGo
										$actionsDeStepSerialized=serialize($actionsDeStep);
										$sqlinsertTogoAvoid="UPDATE `patient_treat` SET `togo`='$actionsDeStepSerialized' WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND PTV='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";										
										mysql_query($sqlinsertTogoAvoid);	
										//On ne recharge pas la page car on n'est pas censé avoir une influence sur une action de l'étape en cours.	
//										$flagEnDis=0; //Si le flag est à 1 on peut Disable, pas Enable. Sinon peut Enable.																													
									} //Fin du While lisActionAvoid
								}	//END IF POST "OK"
							
								//Récupérer toutes les informations sur les données des actions réalisées/à réaliséer du patient
								$queryActionValue="SELECT `actionId_$listAction[id]`, `timeId_$listAction[id]`, `userId_$listAction[id]` FROM `step_$_SESSION[idstepNumber]` 
									WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
								$resultActionValue=mysql_query($queryActionValue);
//								echo $queryActionValue;			
																
								while ($actionValue=mysql_fetch_row($resultActionValue)) {																	

									//Affichage d'une petite * pour les actions obligatoires et le texte en rouge si obligatoire et pas rempli et que l'on vient de sauver
									$oblig="";
									if ($listAction[obligation]=="Oui") {
										$oblig="*";
										if ($actionValue[0]=="" and isset($_POST[ok])) {
											$classe="class='mustFillTR'";
										}
										else {
											$classe="";
										}
									}							
									echo "<tr ".$classe."><td>".$listAction[name]." ".$oblig."</td>";
									echo "<td>";									
	
//									echo "<pre>"; print_r($actionValue); echo "</pre>";
//									echo $listAction[obligation]."TYPE";
//									echo "<pre>"; print_r($listAction); echo "</pre>";

									//Activation ou non d'une action selon le niveau d'accès, si pas le bon niveau alors DISABLE
									if ( (($listAction[valid_level]==$_SESSION[access_chain]) OR ($listAction[valid_level]=='0.0.0')) AND (isset($_SESSION['user'])) )  {
										$enablingAction='';	
									}
									else {
										$enablingAction='disabled';
									}																								
																		
									//STRIPSLACHES pour enlever les / dans le texte
									$actionValue[0]=htmlspecialchars_decode(stripslashes($actionValue[0]));
									//Affichage différent selon le type
									
									//CHECKBOX
									if ($listAction[type]=="checkbox") {
										if ($actionValue[0]=="on") {
											echo "<input type=CHECKBOX tabindex='$tabindex' name='$listAction[id]' checked ".$enablingAction.">";								
										}
										else {
											echo "<input type=CHECKBOX tabindex='$tabindex' name='$listAction[id]' ".$enablingAction.">";								
										}
																				
									}
									
									//RADIO
									elseif ($listAction[type]=="radio") {
										$listeDesActions=explode(',', $listAction[content]);					
										foreach($listeDesActions as $cle4 => $val)
										{
											$val=trim($val); //On enlève les espaces apparus à l'explode
											if ($actionValue[0]==$val) {
												echo "<input type='radio' tabindex='$tabindex' name='$listAction[id]' value='$val' checked ".$enablingAction.">".$val; 
											}
											else {
												echo "<input type='radio' tabindex='$tabindex' name='$listAction[id]' value='$val' ".$enablingAction.">".$val; 
											}
										}
										echo "<input type='radio' tabindex='$tabindex' name='$listAction[id]' value='' ".$enablingAction.">Reset"; 
									}

									//REFUS
									elseif ($listAction[type]=="refus") {
										$listeDesActions=explode(',', $listAction[content]);					
										foreach($listeDesActions as $cle5 => $val)
										{
											$val=trim($val); //On enlève les espaces apparus à l'explode
											if ($actionValue[0]==$val) {
												echo "<input type='radio' tabindex='$tabindex' name='$listAction[id]' value='$val' checked ".$enablingAction.">".$val; 
											}
											else {
												echo "<input type='radio' tabindex='$tabindex' name='$listAction[id]' value='$val' ".$enablingAction.">".$val; 
											}
										}
										echo "<input type='radio' tabindex='$tabindex' name='$listAction[id]' value='' ".$enablingAction.">Reset";								 
									}								
	
									//SELECT
									elseif ($listAction[type]=="select") {
										$listeDesActions=explode(',', $listAction[content]);
										echo "<select tabindex='$tabindex' name='$listAction[id]' ".$enablingAction.">";
										echo "<option value='$actionValue[0]'>$actionValue[0]</option>";
										echo "<option value=''></option>"; 
										foreach($listeDesActions as $cle6 => $val)
										{
											$val=trim($val); //On enlève les espaces apparus à l'explode
											//Le $val n'est pas entre "" pour pouvoir utiliser des espaces
											//FCTIONNEecho "<option value=".$val.">".$val."</option>";
											?><option value="<?php echo $val;?>"><?php echo $val;?></option><?php 
										}
										echo "</select>";				
									}

									//TEXTEAREA
									elseif ($listAction[type]=="textarea") {
										echo "<textarea tabindex='$tabindex' name='$listAction[id]' cols='30' rows='2' ".$enablingAction.">$actionValue[0]</textarea>";
									}

									//STRING ou INFORMATION
									elseif ($listAction[type]=="textchain") {																											
										?>
										
										<!-- Mise en place des conditions sur les encodages -->
										<script type="text/javascript">
										//Vérification du format d'encodage d'une date
										//Le nom de la fonction varie selon l'ID du champ à remplir (sinon le nom aura toujours le dernier ID
										function verif_date_<?php echo $listAction[id] ;?>() {
											//alert('Je suis un témoin que la fonction verif date se lance...!!');	
											var nom_du_champ=<?php echo $listAction[id] ;?>;
											//alert('TEST' + nom_du_champ);											
											// !! avec un chiffre il prend l'ID mais pas la valeur du champ ... donc on utilise getElementsById et non getElementsByTagName										
											mot=document.getElementById('<?php echo $listAction[id] ;?>');											
											//alert('TEST' + mot.value);
										    erreur=false;
										    if (mot.value.length!=10){alert("Veuillez introduire la date au format JJ/MM/AAAA (exemple : 27/01/1979)"); mot.value = ""; mot.focus(); Erreur=true;return;}
										    else{
										    motjour=mot.substring(0,2);motmois=mot.substring(3,5);
										    motan=mot.substring(6,10);motsep=mot.charAt(2)+mot.charAt(5);}
										    if (isNaN(motjour+motmois+motan)|| motan>3000 ||motan<1900 || motsep!="//"){alert("Veuillez introduire la date de traitement au format JJ/MM/AAAA (exemple : 27/01/1979)");mot.value = ""; mot.focus(); Erreur=true;return;}
										    else {choix="";
										    if (motan-(parseInt(motan/4)*4)==0){choix="bi"};
										    if (motan-(parseInt(motan/4)*4)==0&&motan-(parseInt(motan/100)*100)==0)
										    {choix=""};
										    if (motan-(parseInt(motan/4)*4)==0&&motan-(parseInt(motan/400)*400)==0)
										    {choix="bi"}
										    switch (motmois){
										    case "01":if(motjour<1 || motjour>31){alert("Le mois de Janvier comporte 31 jours, veuillez choisir une date de naissance comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case"02":if(choix=="bi"){if(motjour<1 || motjour>29){alert("Le mois de Février comporte 29 jours car l'année choisie est bissextile.\nVeuillez choisir une date comprise en 1 et 29.");mot.value = ""; mot.focus(); Erreur=true;return;}}
										    else{if(motjour<1 || motjour>28){alert("Le mois de Février comporte 28 jours car l'année choisie n'est pas bissextile.\nVeuillez choisir une date comprise en 1 et 28.");mot.value = ""; mot.focus(); Erreur=true;return;}};
										    break;
										    case "03":if(motjour<1 || motjour>31){alert("Le mois de Mars comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "04":if(motjour<1 || motjour>30){alert("Le mois de Avril comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "05":if(motjour<1 || motjour>31){alert("Le mois de Mai comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "06":if(motjour<1 || motjour>30){alert("Le mois de Juin comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "07":if(motjour<1 || motjour>31){alert("Le mois de Juillet comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "08":if(motjour<1 || motjour>31){alert("Le mois de Aout comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "09":if(motjour<1 || motjour>30){alert("Le mois de Septembre comporte 30 jours, veuillez choisir une date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "10":if(motjour<1 || motjour>31){alert("Le mois de Octobre comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "11":if(motjour<1 || motjour>30){alert("Le mois de Novembre comporte 30 jours, veuillez choisirune date comprise en 1 et 30.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    case "12":if(motjour<1 || motjour>31){alert("Le mois de Décembre comporte 31 jours, veuillez choisir une date comprise en 1 et 31.");mot.value = ""; mot.focus(); Erreur=true;return;};
										    break;
										    default:alert("Le mois que vous avez entré n'est pas valide. Choisissez un mois compris entre 1 et 12.");mot.value = ""; mot.focus(); Erreur=true;return;}
										    }
										}
										</script>
										
										<!-- Test de la validité d'un mail -->										
										<script type="text/javascript">
										//Vérification du format d'encodage d'une date

										/*
											Via ce script vous spécifiez que l'email doit :
											- contenir une arobase et un point
											- avant la présence de l'arobase nous pouvons trouver, des lettres quelconques
											(en minuscule ou majuscule), n'importe quel chiffre, et les caractères "-" ou "_" ou "."
											- aprés l'arobase, la vérification reste la même mais on interdit la présence de "_"
											et il faut impérativement au moins de caractères entre l'arobase et le point
											- aprés le point, nous devons une succession de 2 ou 3 caractères doivent être
											présentes afin de pouvoir valider l'adresse email.
										*/
										function verif_mail_<?php echo $listAction[id] ;?>() {
											//Le nom de la fonction varie selon l'ID du champ à remplir (sinon le nom aura toujours le dernier ID)											
											var email = document.getElementById('<?php echo $listAction[id] ;?>');
											//alert(email.value);
											//var verif = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9-]{2,}[.][a-zA-Z]{2,3}$/
											var verif = /^[-_\.0-9a-zA-Z]{1,}@[-_\.0-9a-zA-Z]{1,}[\.][0-9a-zA-Z]{2,}$/
											if (verif.exec(email.value) == null)
											{
												alert("Votre email est incorrect");
												email.value="";
												return false;
											}
										} 										
										</script>
										
										<!-- //Bizarerie informatique pour les apostrophes ,,, 	 -->
										<input type=text size='30' maxlength='50' name="<?php echo $listAction[id]; ?>" id="<?php echo $listAction[id]; ?>" 
											<?php //Ajout d'un onchange fonction du type de vérification demandé à l'insertion de l'action		echo "onChange=verif_date_<?php echo $listAction[id] ;
											if($listAction[verifType]=="Date") {
												echo "onChange=verif_date_".$listAction[id]."()";
											}	
											elseif($listAction[verifType]=="Email") {
												echo "onChange=verif_mail_".$listAction[id]."()";
											}											
											?> value="<?php echo $actionValue[0]; ?>" <?php echo $enablingAction; ?> >										
										
										<?php //INFORMATION
									}
									elseif ($listAction[type]=="information") {
										//Aller chercher l'information liée à l'action ID ...										
										//Récupérer l'étape dans laquelle ça se trouve
										$queryStepInfo="SELECT step_link FROM step_action WHERE id='$listAction[content]'";										
										$resultStepInfo=mysql_query($queryStepInfo);
										$repStepInfo=mysql_fetch_array($resultStepInfo);
										
										//Récupérer l'info sur la réponse										
										$queryInfo="SELECT `actionId_$listAction[content]` FROM `step_$repStepInfo[0]` WHERE 
										idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";		
										$resultInfo=mysql_query($queryInfo);
										$repInfo=mysql_fetch_array($resultInfo);
										//Affichage de "NA" si pas d'information donnée précédemment	
										if ($repInfo[0]!="") {									
											?><input type=text tabindex='$tabindex' size='30' maxlength='50' name="<?php echo $listAction[id]; ?>" value="<?php echo $repInfo[0]; ?>" <?php echo $enablingAction; ?> READONLY><?php
										}
										else {
											?><input type=text tabindex='$tabindex' size='30' maxlength='50' name="<?php echo $listAction[id]; ?>" value="NA" <?php echo $enablingAction; ?> READONLY><?php
										}
									}
									//Affichage ssi différent de vide et de zéro pour éviter l'affichage du 1/1/1970
									if (($actionValue[1]!="") AND ($actionValue[1]!="0")) {																			
										echo "<td>".$actionValue[2]." - ".date("l d/m/Y - H:i", $actionValue[1])."</td>";
									}	
									
									//TabIndex number
									$tabindex++;
									
								} //End WHILE
								echo "</td></tr>";
										
							} //End WHILE
							
						} //End IF line +/- 1137
/*						
						//In this condition, a step which contains only one action "Disable" will block the process ... following the line 1137 
						//For this special step we have to force the next step.	
						//If in the right step
						//If action disable
						//If only one action disable means never leave the IF condition from line 1137			

//AND ($nbreActionsPerStep[$val[idStep]][actionAmount]==1)
						elseif (($val[idStep]==$_SESSION[idstepNumber]) AND ($val[status]=="Disable") ) {
							$cletmp=$cle1+1;
							$nextStep=$actionsDuJour[$cle1+1][idStep];														
//							echo " ActualStep: ".$val[idStep]." NextStep: ".$nextStep." Cle:".$cle1." cle+1:".$cletmp."<br>";
//							echo "<pre>"; print_r($actionsDuJour); echo "</pre>";		
							$sqlinsert22="UPDATE `patient_treat` SET `actual_step`='$nextStep' WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND PTV='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
//							echo $sqlinsert22;
//							mysql_query($sqlinsert22);	
//							$toReload="Yes";
						}
*/
						//Check pour savoir si on recharge ou pas la page
						if ($toReload=="Yes") {
							die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=generatedStep'>"); 												
						}
									
					} //End FOREACH			
				
					?>
			</tr>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>			
			<tr>
				<td colspan="3">* : étapes obligatoires</td>
			</tr>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>						
			<tr>
				<td colspan="3">Commentaires:</td>
			</tr>			
			<tr>
				<td colspan="3">
					<!-- 770px de large pour être en-dessous des 800 du tableau-les marges et autres ... -->
					<textarea name="commentaires" style='width:890px;' rows="2" class="textarea"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<textarea style='width:890px;' rows="6" class="textarea" readonly="readonly"><?php echo stripcslashes($listActionUsed[comment]); ?></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<!--  //On ne peut sauver que si l'on est correctement connecté -->
						<input class="inputButton" tabindex="<?php echo $tabindex; ?>" type="submit" border="0" name="ok" value="<?php echo $savedButton; ?>" title="<?php echo $savedButton; ?>" <?php echo $enablingActionForAll;?>>
				</td>
			</tr>
			</table>
		
		</td>
		
	</tr>
</table>

<?php 
//<div id="patient_list">
?>
</form>

</div>