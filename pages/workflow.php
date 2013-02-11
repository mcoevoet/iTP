<!-- Patient list on which we can work -->
<?php
//Get the number of "emergency day"
$myquery = "SELECT * FROM general_settings WHERE conf_id='0';";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$general_data = mysql_result($Resultat , $Compteur , "general_data");
}
$general_data = unserialize($general_data);
$aff_delay = $general_data['emergency_delay']*24;

//Function to get the table/action where the selected machine for each patient is saved
function machineTableQuery() {
	global $tableMach;
	global $fieldMach;
	$queryTableMachine="SELECT * FROM reqOnItem WHERE lookFor='Machine' ";
	$resultTableMachine=mysql_query($queryTableMachine);
	while ($machine=mysql_fetch_array($resultTableMachine)) {		
		$tableMach=$machine[tableFrom];
		$fieldMach=$machine[fieldFrom];
//		echo $tableMach." ".$fieldMach."TEST";
	}
}

//Function to get the table/action where the selected urgence for each patient is saved
function urgenceTableQuery() {
	global $tableUrgence;
	global $fieldUrgence;
	$queryTableUrgence="SELECT * FROM reqOnItem WHERE lookFor='Urgence' ";
	$resultTableUrgence=mysql_query($queryTableUrgence);
	while ($urgence=mysql_fetch_array($resultTableUrgence)) {		
		$tableUrgence=$urgence[tableFrom];
		$fieldUrgence=$urgence[fieldFrom];
	}
}

//Function to get the table/action where the selected pathologie for each patient is saved
function pathologieTableQuery() {
	global $tablePatho;
	global $fieldPatho;
	$queryTablePatho="SELECT * FROM reqOnItem WHERE lookFor='Pathologie' ";
	$resultTablePatho=mysql_query($queryTablePatho);
	while ($pathologie=mysql_fetch_array($resultTablePatho)) {		
		$tablePatho=$pathologie[tableFrom];
		$fieldPatho=$pathologie[fieldFrom];
	}
}

//Function to get the machine from the right table for each patient
function machineQuery($tableMach, $fieldMach, $idStluc, $req, $volcible, $ptv, $plan) {
	$queryMachPat="SELECT $fieldMach FROM $tableMach WHERE idStluc='$idStluc' AND req='$req' AND volcible='$volcible' AND ptv='$ptv' AND plan='$plan' ";
//	echo $queryMachPat."<br>";
	$resultMachPat=mysql_query($queryMachPat);
	$machinePatient=mysql_fetch_array($resultMachPat);
	echo $machinePatient[0];
}

//Function to get the urgence from the right table for each patient
function urgenceQuery($tableUrgence, $fieldUrgence, $idStluc, $req, $volcible, $ptv, $plan) {
	$queryUrgPat="SELECT $fieldUrgence FROM $tableUrgence WHERE idStluc='$idStluc' AND req='$req' AND volcible='$volcible' AND ptv='$ptv' AND plan='$plan' ";
	$resultUrgPat=mysql_query($queryUrgPat);
	$urgencePatient=mysql_fetch_array($resultUrgPat);
	echo $urgencePatient[0];
}

//Function to get the pathologie from the right table for each patient
function pathologieQuery($tablePathologie, $fieldPathologie, $idStluc, $req, $volcible, $ptv, $plan) {
	$queryPathoPat="SELECT $fieldPathologie FROM $tablePathologie WHERE idStluc='$idStluc' AND req='$req' AND volcible='$volcible' AND ptv='$ptv' AND plan='$plan' ";
	$resultPathoPat=mysql_query($queryPathoPat);
	$pathoPatient=mysql_fetch_array($resultPathoPat);
	echo $pathoPatient[0];
}

//Load of the function machineTableQuery, urgenceTableQuery, pathologieTableQuery which can be used for all this page
machineTableQuery();
urgenceTableQuery();
pathologieTableQuery();

?>

<!--
<br>
<div align="center">
<u>Les perles du Service:</u><br>
<a href="/iTP/images/perles/2012-11-27.jpg" target="_target"><img src="/iTP/images/perles/2012-11-27small.jpg"></img></a>&nbsp;
<a href="/iTP/images/perles/DSCF1471.jpg" target="_target"><img src="/iTP/images/perles/DSCF1471small.jpg"></img></a>
</div>
<br>
-->

<div id="patient_list">
	<!-- Patient list in emergency -->
	<h3 align="left">URGENCE sous <? echo $aff_delay; ?>h</h3>
	<table width="930" border="0" cellspacing="1" cellpadding="1" class="workflowTable">
    	<tr bgcolor="#cccccc"> 
      		<td width="50">Process</td>
      		<td width="50">Etape</td>
      		<td width="120">Nom</td>
      		<td width="120">Prénom</td>
			<td width="100">Med/Ass/Phys</td>      		
      		<td width="30">Req</td>    
      		<td width="50">Site</td>  		
      		<td width="50">PTV</td>
      		<td width="50">Plan</td>
      		<td width="75">Start PTV1</td>      		      		
      		<td width="75">Start PTV2</td>
      		<td width="90">Machine</td>
    	</tr>
    	<tr> 
      	     <td colspan="10"><br></td> 		
    	</tr>    	   

		<!-- Boucle de création du tableau des couleurs de fond des noms des patients -->		
		<?php
		$queryColor="SELECT id, color FROM step_list ORDER by id";
		$resultColor=mysql_query($queryColor);
		$i=0;
		while ($listColor=mysql_fetch_array($resultColor)) {
			$color[$i] = array('step' => $listColor[0], 'color' => $listColor[1]);
			$i++;
		}		

		//Gestion timing "urgent" en mode dynamique
		//We need just the montah, day, year at 00:00:00
		$now=time();
		$dayNow=date("m, d, y", time());
		$today=mktime(0, 0, 0, $dayNow);
//		echo 'Test: '.$dayNow.' I '.date('d-m-y-H:i:s', $today).'<br>';
		$nextDay=$today;
			
		for($ii_emer = 0; $ii_emer < $general_data['emergency_delay']; $ii_emer++)
		{
			$nextDay = $nextDay+86400;
			$day_now2 = date("w",$nextDay);
			if(($day_now2 == 6)|($day_now2 == 0))
			{
				$ii_emer = $ii_emer-1;
			}
		}		
		//$now=$now-86400/2;
		
//		echo "I ".$dayNow.' I '.' today = '.date('d-m-y-H:i:s', $today).'<br>';
//		echo "nextDay = ".date("l d-m-y-H:i:s",$nextDay)." ".$_SESSION[processID];		

		//Tri des patients
		if ($_SESSION[processID]!="") { $searchProcessID="patient_treat.actual_process='$_SESSION[processID]' AND " ; }
		else { $searchProcessID=""; }
		if ($_SESSION[status]!="") { $searchStatus="patient_treat.status='$_SESSION[status]' AND " ; }
		else { $searchStatus=""; }
		if ($_SESSION[triMed]!="") { $searchSuperviseur="patient_treat.superviseur='$_SESSION[triMed]' AND " ; }
		else { $searchSuperviseur=""; }
		if ($_SESSION[triAss]!="") { $searchAssistant="assistant='$_SESSION[triAss]' AND " ; }
		else { $searchAssistant=""; }
		if ($_SESSION[triPhys]!="") { $searchPhysicien="physicien='$_SESSION[triPhys]' AND " ; }
		else { $searchPhysicien=""; }
		if ($_SESSION[selectStep]!="") { $searchSelectStep="patient_treat.actual_step='$_SESSION[selectStep]' AND " ; }
		else { $searchSelectStep=""; }
		if ($_SESSION[triTeam]!="") {
			//Recherche des étapes du corps de métier choisi
			$queryStepTri="SELECT id FROM step_list WHERE profession='$_SESSION[triTeam]'";
			$resultStepTri=mysql_query($queryStepTri);
			while ($listStep=mysql_fetch_array($resultStepTri)) {				
				$searchtriTeam=$searchtriTeam." patient_treat.actual_step=".$listStep[id]." OR";
			}
		$searchtriTeam="(".rtrim($searchtriTeam, " OR").") AND";
		}
		else { $searchtriTeam=""; }
		if ($_SESSION[subProcessID]!="") {
			//Recherche des étapes du sous-process choisi
			$querySubProcessTri="SELECT id FROM step_list WHERE subProcess='$_SESSION[subProcessID]'";
			$resultSubProcessTri=mysql_query($querySubProcessTri);
			while ($listSubProcess=mysql_fetch_array($resultSubProcessTri)) {				
				$searchSubProcessID=$searchSubProcessID." patient_treat.actual_step=".$listSubProcess[id]." OR";
			}
		$searchSubProcessID="(".rtrim($searchSubProcessID, " OR").") AND ";
		}
		else { $searchSubProcessID=""; }			
					
		//ON tronque le dernier AND
		$totalRequest=substr($searchProcessID.$searchSubProcessID.$searchStatus.$searchSuperviseur.$searchAssistant.$searchPhysicien.$searchSelectStep.$searchtriTeam, 0, -4);
	
		$queryPatient="SELECT * from patient_admin INNER JOIN patient_treat ON patient_admin.idStluc=patient_treat.idStluc WHERE 
			$totalRequest AND patient_treat.startDate>=$today AND patient_treat.startDate<=$nextDay
		ORDER by lastname, req, volcible, ptv, plan";
		
//		echo "<br>".$queryPatient;		

		//Affichage de la liste des patients
		$resultPatient=mysql_query($queryPatient);	  
		$totalPatient=mysql_num_rows($resultPatient);
    	while ($listPatient=mysql_fetch_array($resultPatient)) {    
    		//Si il y a plus de 100 jours d'écart, alors pas d'intérêts    		
    		$jour=round(($now- $listPatient[startDate])/(3600*24), 0);
    		if ($jour>0) { 
    			$jour='+'.$jour; 
    		}
			$heure=abs(($now-$listPatient[startDate]) % (24));
    		if (abs($jour)>100) { 
    			$dateDebut='...'; 
    		}
    		else {
    			$dateDebut=$jour.' j, '.$heure.' h';
    		}
    	    $jour=round(($now- $listPatient[datePTV2])/(3600*24), 0);
			$heure=abs(($now-$listPatient[datePTV2]) % (24));
    		if (abs($jour)>100) { 
    			$datePTV2='...'; 
    		}
    		else {
    			$datePTV2=$jour.' j, '.$heure.' h';
    		}    
			?>
	    	<tr class="workflow" 
	    	<?php // Choix de la couleur de fond du nom du patient   		
	    		$Etape=$listPatient[actual_step];
				foreach($color as $cle => $val)
				{
					if ($val[step]==$Etape) {
						$bgcolor=$val[color];
					}
					//Si aucune étape n'est référencée, alors le fond est blanc (typiquement: archive)			
					if ($Etape=="0") {
						$bgcolor='#FFFFFF';
					}						
				}
	      		?>bgcolor="<?php echo $bgcolor;?>"       		
				onclick="document.location='index.php?toload=generatedStep&idPatStluc=<?php echo $listPatient[idStluc]; ?>&volcible=<?php echo $listPatient[volcible];?>&req=<?php echo $listPatient[req];?>&ptv=<?php echo $listPatient[ptv];?>&plan=<?php echo $listPatient[plan];?>&statusPat=Treatment&stepID=<?php echo $listPatient[actual_step];?> '"
	      		class="linkPatient"      		
	      		> 
	      		<td>
	      			<?php 
    				$queryProcess="SELECT * from process WHERE id=$listPatient[actual_process]";
					$resultProcess=mysql_query($queryProcess);	  					
			   		while ($stepProcess=mysql_fetch_array($resultProcess)) {
			   			echo substr($stepProcess[processName], 0, 5).".";
				   	}
	      			?>
	      		</td>
	      		<td align="center"><?php 
	      		   	$query="SELECT number from step_list WHERE (id=$listPatient[actual_step]) ";
					$result=mysql_query($query);	  
				   	$step=mysql_fetch_row($result);  		
		      		echo $step[0]; ?>
		      	</td>
	      		<td><a href="index.php?toload=generatedStep&idPatStluc=<?php echo $listPatient[idStluc]; ?>&volcible=<?php echo $listPatient[volcible];?>&req=<?php echo $listPatient[req];?>&ptv=<?php echo $listPatient[ptv];?>&plan=<?php echo $listPatient[plan]; ?>&stepID=<?php echo $listPatient[actual_step];?>" class="linkPatient"><?php echo ucfirst(strtolower($listPatient[lastname])); ?>
	      			<!-- To give more info on the patient, as InfoBulle. Must be on a link "a href" -->
	      			<span>
	      				<?php
	      					echo ucfirst(strtolower($listPatient[firstname])).' '.ucfirst(strtolower($listPatient[lastname]).' - '.ucfirst(strtolower($listPatient[idStluc]))); 
	      					echo '<br>Course: '.$listPatient[req].' - Vol. cible: '.$listPatient[volcible].' - PTV: '.$listPatient[ptv].' - Plan: '.$listPatient[plan];
	      					echo '<br>Pathologie: '; pathologieQuery($tablePatho, $fieldPatho, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );
	      					echo '<br>Machine: '; machineQuery($tableMach, $fieldMach, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );
	      					echo '<br>Urgence: '; urgenceQuery($tableUrgence, $fieldUrgence, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );
	      				?>
	      			</span>
	      			</a>
	      		</td>
	      		<td><?php echo ucfirst(strtolower($listPatient[firstname])); ?></td>
	      		<td><?php echo $listPatient[superviseur]." / ".$listPatient[assistant]." / ".$listPatient[physicien]; ?></td>
	      		<td align="center"><?php echo $listPatient[req];?></td>
	      		<td align="center"><?php echo $listPatient[volcible];?></td>  
	      		<td align="center"><?php echo $listPatient[ptv]; ?></td>
	      		<td align="center"><?php echo $listPatient[plan]; ?></td>
				<td><?php echo $dateDebut; ?></td>      		
	      		<td><?php echo $datePTV2; ?></td>
	      		<td><?php machineQuery($tableMach, $fieldMach, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] ); ?></td>
	    	</tr>
    	<?php } ?>
<!-- Fin de la boucle -->
		<tr>
			<td colspan="11">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="11" align="right">Nombre de patients: <?php echo $totalPatient; ?></td>
		</tr>
		<tr>
			<td colspan="11">&nbsp;</td>
		</tr>
	</table>

	
<!-- Tableau des patients "pas urgents" -->
	<h3 align="left">Patients en cours de préparation de traitement</h3>
	<table width="930" border="0" cellspacing="1" cellpadding="1" class="workflowTable">
    	<tr bgcolor="#cccccc"> 
      		<td width="50">Process</td>
      		<td width="50">Etape</td>
      		<td width="120">Nom</td>
      		<td width="120">Prénom</td>
			<td width="100">Med/Ass/Phys</td>      		
      		<td width="30">Req</td>    
      		<td width="50">Site</td>  		
      		<td width="50">PTV</td>
      		<td width="50">Plan</td>
      		<td width="75">Start PTV1</td>      		      		
      		<td width="75">Start PTV2</td>
      		<td width="90">Machine</td>
    	</tr>
    	<tr> 
      	     <td colspan="10"><br></td> 		
    	</tr>    	   

		<!-- Boucle de création du tableau des couleurs de fond des noms des patients -->		
		<?php
		$queryColor="SELECT id, color FROM step_list ORDER by id";
		$resultColor=mysql_query($queryColor);
		$i=0;
		while ($listColor=mysql_fetch_array($resultColor)) {
			$color[$i] = array('step' => $listColor[0], 'color' => $listColor[1]);
			$i++;
		}		
		//Tri des patients
		if ($_SESSION[processID]!="") { $searchProcessID="patient_treat.actual_process='$_SESSION[processID]' AND " ; }
		else { $searchProcessID=""; }	
		if ($_SESSION[status]!="") { $searchStatus="patient_treat.status='$_SESSION[status]' AND " ; }
		else { $searchStatus=""; }
		if ($_SESSION[triMed]!="") { $searchSuperviseur="patient_treat.superviseur='$_SESSION[triMed]' AND " ; }
		else { $searchSuperviseur=""; }
		if ($_SESSION[triAss]!="") { $searchAssistant="assistant='$_SESSION[triAss]' AND " ; }
		else { $searchAssistant=""; }
		if ($_SESSION[triPhys]!="") { $searchPhysicien="physicien='$_SESSION[triPhys]' AND " ; }
		else { $searchPhysicien=""; }
		if ($_SESSION[selectStep]!="") { $searchSelectStep="patient_treat.actual_step='$_SESSION[selectStep]' AND " ; }
		else { $searchSelectStep=""; }
		if ($_SESSION[triTeam]!="") {
			//Recherche des étapes du corps de métier choisi
			$queryStepTri="SELECT id FROM step_list WHERE profession='$_SESSION[triTeam]'";
			$resultStepTri=mysql_query($queryStepTri);
			while ($listStep=mysql_fetch_array($resultStepTri)) {				
				$searchtriTeam=$searchtriTeam." patient_treat.actual_step=".$listStep[id]." OR";
			}
		$searchtriTeam="(".rtrim($searchtriTeam, " OR").") AND";
		}
		else { $searchtriTeam=""; }
		if ($_SESSION[subProcessID]!="") {
			//Recherche des étapes du sous-process choisi
			$querySubProcessTri="SELECT id FROM step_list WHERE subProcess='$_SESSION[subProcessID]'";
			$resultSubProcessTri=mysql_query($querySubProcessTri);
			while ($listSubProcess=mysql_fetch_array($resultSubProcessTri)) {				
				$searchSubProcessID=$searchSubProcessID." patient_treat.actual_step=".$listSubProcess[id]." OR";
			}
		$searchSubProcessID="(".rtrim($searchSubProcessID, " OR").") AND ";
		}
		else { $searchSubProcessID=""; }		
					
		//ON tronque le dernier AND
		$totalRequest=substr($searchProcessID.$searchSubProcessID.$searchStatus.$searchSuperviseur.$searchAssistant.$searchPhysicien.$searchSelectStep.$searchtriTeam, 0, -4);
	
		$queryPatient="SELECT * from patient_admin INNER JOIN patient_treat ON patient_admin.idStluc=patient_treat.idStluc WHERE 
			$totalRequest
		ORDER by lastname, req, volcible, ptv, plan";
		
//		echo $queryPatient;		
					
		//Recherche de l'id de cette dernière étape
		$queryLastStep="SELECT id FROM step_list WHERE state='Enabled' AND process='$_SESSION[processID]' ORDER by number";
		$resultLastStep=mysql_query($queryLastStep);
		while ($stepLastNumber=mysql_fetch_array($resultLastStep)) {
			$lastStep=$stepLastNumber[0];
		}
//		echo "<br>lastStep: ".$lastStep;			
		
		//Affichage de la liste des patients
		$resultPatient=mysql_query($queryPatient);	  
		$totalPatient=mysql_num_rows($resultPatient);
    	while ($listPatient=mysql_fetch_array($resultPatient)) {

			//Get info back in each different patient
//			machineQuery($tableMach, $fieldMach, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );

    		/*
    		//Récupération de la variable ToGo pour modifier le idStep de la dernière étape
    		// 11/07/2012
    		$togo1=unserialize($listPatient[togo]);
    		echo "<pre>";     	
//    		print_r($togo1); 
    		echo "</pre>";
    		//Remplacer idStep37 par idStep 35
    		foreach ($togo1 as $k => $v) {    			
        		if (($v[idStep]=="37") AND ($v[type]=="Archivage")) {
//    				echo $k."ICI ON CHANGE<br>";
		    		//On doit virer cette action de cette étape et la mettre dans la dernière    				
//    				$togo1[$i] = array('idStep' => $v[id], 'idAction' => $v[id], 'status' => 'Enable', 'obligation' => $v[obligation], 'type' => $v[type], 'stepNumber' => $v[number]);
//					echo "AVANT: ".$togo1[$k][idStep];
    				$togo1[$k][idStep]=$lastStep;
//    				$togo1[$k][$lastStep]=$togo1[$k];
//					echo " - APRES: ".$togo1[$k][idStep]."-".$togo1[$k][type];
				    		
//		    		unset($togo1[$k]);
		    		
    				echo "<pre>";     	
//		    		print_r($togo1); 
		    		echo "</pre>";			    					    		
        		}	
    		} 
//    		echo $togo1[$u][idStep]."-".$togo1[$u][type];   
    		$u++;		
    		echo "<pre>"; 
//    		print_r($togo1); 
    		echo "</pre>";    		
    		$togo1=serialize($togo1);
    		$update1="UPDATE patient_treat SET `togo`='$togo1'
    			WHERE idStluc='$listPatient[idStluc]' AND req='$listPatient[req]' AND volcible='$listPatient[volcible]' AND ptv='$listPatient[ptv]' AND plan='$listPatient[plan]' ";
//			echo $update1;
//			echo "WHERE idStluc='$listPatient[idStluc]' AND req='$listPatient[req]' AND volcible='$listPatient[volcible]' AND ptv='$listPatient[ptv]' AND plan='$listPatient[plan]' <br>";
//	   		mysql_query($update1);
			*/
    		    		
    		//Si il y a plus de 100 jours d'écart, alors pas d'intérêts  
    		$jourStart=0;
    		$heureStart=0;
    		$jourPTV2=0;
    		$heurePTV2=0;	
    		$jourStart=round(($now-$listPatient[startDate])/(3600*24), 0);
        	if ($jourStart>0) { 
    			$jourStart='+'.$jourStart; 
    		}    		
			$heureStart=abs(($now-$listPatient[startDate]) % (24));
    		if (abs($jourStart)>100) { 
    			$dateDebut='...'; 
    		}
    		else {
    			$dateDebut=$jourStart.' j, '.$heureStart.' h';
    		}
    	    $jourPTV2=round(($now- $listPatient[datePTV2])/(3600*24), 0);
			$heurePTV2=abs(($now-$listPatient[datePTV2]) % (24));
    		if (abs($jourPTV2)>100) { 
    			$datePTV2='...'; 
    		}
    		else {
    			$datePTV2=$jourPTV2." j, ".$heurePTV2." h";
    		}    		    	
			?>			
	    	<tr class="workflow"
	    	<?php // Choix de la couleur de fond du nom du patient   		
	    		$Etape=$listPatient[actual_step];
				foreach($color as $cle => $val)
				{
					if ($val[step]==$Etape) {
						$bgcolor=$val[color];
					}	
					//Si aucune étape n'est référencée, alors le fond est blanc (typiquement: archive)			
					if ($Etape=="0") {
						$bgcolor='#FFFFFF';
					}						
				}
	      		?>bgcolor="<?php echo $bgcolor;?>"       		
				onclick="document.location='index.php?toload=generatedStep&idPatStluc=<?php echo $listPatient[idStluc]; ?>&volcible=<?php echo $listPatient[volcible];?>&req=<?php echo $listPatient[req];?>&ptv=<?php echo $listPatient[ptv];?>&plan=<?php echo $listPatient[plan];?>&statusPat=Treatment&stepID=<?php echo $listPatient[actual_step];?> '"
	      		class="linkPatient"      		
	      		>
            	<td>
	      			<?php 
    				$queryProcess="SELECT * from process WHERE id=$listPatient[actual_process]";
					$resultProcess=mysql_query($queryProcess);	  					
			   		while ($stepProcess=mysql_fetch_array($resultProcess)) {
			   			echo substr($stepProcess[processName], 0, 5).".";
				   	}
	      			?>
	      		</td>
	      		<td align="center"><?php 
	      		   	$query="SELECT number from step_list WHERE (id=$listPatient[actual_step]) ";
					$result=mysql_query($query);	  
				   	$step=mysql_fetch_row($result);  		
		      		echo $step[0]; ?>
		      	</td>
	      		<td><a href="index.php?toload=generatedStep&idPatStluc=<?php echo $listPatient[idStluc]; ?>&volcible=<?php echo $listPatient[volcible];?>&req=<?php echo $listPatient[req];?>&ptv=<?php echo $listPatient[ptv];?>&plan=<?php echo $listPatient[plan]; ?>&stepID=<?php echo $listPatient[actual_step];?>" class="linkPatient"><?php echo ucfirst(strtolower($listPatient[lastname])); ?>
	      			<!-- To give more info on the patient, as InfoBulle. Must be on a link "a href" -->
	      			<span>
	      				<?php
	      					echo ucfirst(strtolower($listPatient[firstname])).' '.ucfirst(strtolower($listPatient[lastname]).' - '.ucfirst(strtolower($listPatient[idStluc]))); 
	      					echo '<br>Course: '.$listPatient[req].' - Vol. cible: '.$listPatient[volcible].' - PTV: '.$listPatient[ptv].' - Plan: '.$listPatient[plan];
	      					echo '<br>Pathologie: '; pathologieQuery($tablePatho, $fieldPatho, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );
	      					echo '<br>Machine: '; machineQuery($tableMach, $fieldMach, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );
	      					echo '<br>Urgence: '; urgenceQuery($tableUrgence, $fieldUrgence, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] );
	      				?>
	      			</span></a></td>
	      		<td><?php echo ucfirst(strtolower($listPatient[firstname])); ?></td>
	      		<td><?php echo $listPatient[superviseur]." / ".$listPatient[assistant]." / ".$listPatient[physicien]; ?></td>
	      		<td align="center"><?php echo $listPatient[req];?></td>
	      		<td align="center"><?php echo $listPatient[volcible];?></td>  
	      		<td align="center"><?php echo $listPatient[ptv]; ?></td>
	      		<td align="center"><?php echo $listPatient[plan]; ?></td>
				<td><?php echo $dateDebut; ?></td>      		
	      		<td><?php echo $datePTV2; ?></td>
	      		<td><?php machineQuery($tableMach, $fieldMach, $listPatient[idStluc], $listPatient[req], $listPatient[volcible], $listPatient[ptv], $listPatient[plan] ); ?></td>   				
	    	</tr>
    	<?php } ?>
<!-- Fin de la boucle -->
		<tr>
			<td colspan="11">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="11" align="right">Nombre de patients: <?php echo $totalPatient; ?></td>
		</tr>
		<tr>
			<td colspan="11">&nbsp;</td>
		</tr>
	</table>

</div>

<!-- Liste des Etapes du processus -->

<div id="step_list">
	<table width="225" align="right" border="0">
		<tr>
			<td>
				<table width="225" align="right" border="0" cellspacing="1" cellpadding="1" style="border-bottom: 3px solid #618C04; border-right: 3px solid #618C04;">
					<tr>
						<td align="center" colspan="3"><b>Tri par corps de métier</b></td>
					</tr>
				    <tr>
				    	<td>&nbsp;</td>
				    	<td></td>	    	
				    </tr>		
					<tr>
						<td align="center" colspan="3">
							<form action="index.php?toload=workflow" method="post">							
								<?php 									
								//On utilise un form ici pour imposer un reload de la page avec alors la variable du process en POST
								$queryTeam="SELECT * FROM users_fonction ORDER by descFct";
								$resultTeam=mysql_query($queryTeam);
								while ($listTeam=mysql_fetch_array($resultTeam)) {
									$team[$i]=$listTeam;
									$i++;
								}					
								echo '<table>';
								echo '<tr>';
								foreach ($team as $num => $equipe) {		
									//Ne fonctionne pas sous Chromium ...
									//echo "<td width='90px' bgcolor=".$team[$num][colorGroup]." align='center'> <INPUT TYPE='submit' onClick='javascript:this.form.submit();' NAME='triTeam' VALUE=".$team[$num][fonction]." >"."</td>";
									echo "<td width='90px' bgcolor=".$team[$num][colorGroup]." align='center'> <a href='index.php?toload=workflow&triTeam=".$team[$num][fonction]."' class='triTeam' >".$team[$num][fonction]."</a></td>";
									if ($num %2 != 0) {
										echo '</tr><tr>';
									}			
								}				
								echo '</tr>';	
								echo '</table>';					
						   		?>			   		   									
							</form>			
						</td>									
					</tr>
				    <tr>
				    	<td align="left" colspan="3"><b>Tri par utilisateur:</b></td>
				    </tr>
				    <form action="index.php?toload=workflow" method="post">
				   		<tr>
				    		<td align="right">							
								<select name="triMed" onChange='javascript:this.form.submit();'>	
									<?php if ($_SESSION[triMed]=="") { ?>
										<option value="">Med</option>
									<?php } else { ?>
										<option value="<?php echo $_SESSION[triMed]; ?>"><?php echo $_SESSION[triMed]; ?></option>
										<option value="">---</option>
										<option value="">Tous</option>
										<option value="">---</option>
									<?php } ?>										
									
									<?php 
									//On utilise un form ici pour imposer un reload de la page avec alors la variable du process en POST
//									$queryMed="SELECT * FROM users INNER JOIN users_level ON users.H=users_level.level WHERE users.fonction='med' AND users_level.level='1' AND actif='oui' ORDER by H, nom";						
									$queryMed="SELECT * FROM users WHERE access_chain LIKE '%.1.1' ORDER by nom";
									$resultMed=mysql_query($queryMed);
									while ($listMed=mysql_fetch_array($resultMed)) {
										echo $listMed[INITIALES];
							   			echo '<option value='.$listMed[INITIALES].'>'.$listMed[INITIALES].'</option>';
							   		}
							   		?>
								</select>								    	
				    		</td>
				    		<td align="right">							
								<select name="triAss" onChange='javascript:this.form.submit();'>	
									<?php if ($_SESSION[triAss]=="") { ?>
										<option value="">Ass</option>
									<?php } else { ?>
										<option value="<?php echo $_SESSION[triAss]; ?>"><?php echo $_SESSION[triAss]; ?></option>
										<option value="">---</option>
										<option value="">Tous</option>
										<option value="">---</option>
									<?php } ?>										
									
									<?php 
									//On utilise un form ici pour imposer un reload de la page avec alors la variable du process en POST
									//Select intitulé sur Superviseur (1) tant que pas corrigé la gestion des users
//									$queryAss="SELECT * FROM users INNER JOIN users_level ON users.H=users_level.level WHERE users.fonction='med' AND users_level.level='1' AND actif='oui' ORDER by H, nom";						
									$queryAss="SELECT * FROM users WHERE access_chain LIKE '%.1.2' ORDER by nom";
									$resultAss=mysql_query($queryAss);
									while ($listAss=mysql_fetch_array($resultAss)) {
										echo $listAss[INITIALES];
							   			echo '<option value='.$listAss[INITIALES].'>'.$listAss[INITIALES].'</option>';
							   		}
							   		?>
								</select>								    	
				    		</td>	
				    		<td align="right">							
								<select name="triPhys" onChange='javascript:this.form.submit();'>	
									<?php if ($_SESSION[triPhys]=="") { ?>
										<option value="">Phys</option>
									<?php } else { ?>
										<option value="<?php echo $_SESSION[triPhys]; ?>"><?php echo $_SESSION[triPhys]; ?></option>
										<option value="">---</option>
										<option value="">Tous</option>
										<option value="">---</option>
									<?php } ?>									
									
									<?php 
									//On utilise un form ici pour imposer un reload de la page avec alors la variable du process en POST
//									$queryPhys="SELECT * FROM users INNER JOIN users_level ON users.H=users_level.level WHERE users.fonction='phys' AND actif='oui' ORDER by H, nom";						
									$queryPhys="SELECT * FROM users WHERE access_chain LIKE '%.2.%' ORDER by nom";
									$resultPhys=mysql_query($queryPhys);
									while ($listPhys=mysql_fetch_array($resultPhys)) {
										echo $listPhys[INITIALES];
							   			echo '<option value='.$listPhys[INITIALES].'>'.$listPhys[INITIALES].'</option>';
							   		}
							   		?>
								</select>								    	
				    		</td>					    		
				 	   </tr>
				 	   <tr>
				 	   		<td align="center" colspan="3">
				 	   		<br><a href="index.php?toload=workflow&noSelection=yes">TOUS</a>
				 	   		</td>
				 	   </tr>
				    </form>						    
				</table>
			</td>
		</tr>
		<tr>
			<td>	
				<div align="right">
					<br>Afficher tous les patients ...
					<br><?php if ($_SESSION[status]=="Treatment") { echo "<b>=></b>"; } ?><a href="index.php?toload=workflow&status=Treatment" class="lienEtp">... en traitement</a>
					<br><?php if ($_SESSION[status]=="Archive") { echo "<b>=></b>"; } ?><a href="index.php?toload=workflow&status=Archive" class="lienEtp">... archivés</a><br><br>
				</div>	
			</td>
		</tr>
		<tr>
			<td>	
				<table width="225" align="right" border="0" cellspacing="1" cellpadding="1" style="border-bottom: 3px solid #618C04; border-right: 3px solid #618C04;">
				
					<tr>
				 	 	<td width="10">&nbsp;</td>
				        <td width="15" align="center"><b>Etape</b></td>
				        <td width="200" align="center"><b>Légende</b></td>
				    </tr>
				    <tr>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					
					<?php 
					//On ne recherche plus la liste des process, on prend celui qui a été sélectionné dans le select
					
					//NOT TO BE USED: Recherche de la liste des process
					//$queryProcess="SELECT * from process ORDER by id";
					//echo $queryProcess."<br>";
					//$resultProcess=mysql_query($queryProcess);	  
					//while ($stepProcess=mysql_fetch_array($resultProcess)) {
					?>
					<tr>
						<td colspan="3" height="40">
							<form action="index.php?toload=workflow" method="post">
								<select name="processID" onChange='javascript:this.form.submit();'>
									<?php if ($_GET[selectStep]=="All") { ?>
									<option value="">Tous process confondus</option>
									<?php } else { ?>
									<option value="<?php echo $_SESSION['processID']; ?>"><?php echo $_SESSION[processName]; ?></option>												
									<?php } ?>
									<option value="">---</option>
									<?php 
									//On utilise un form ici pour imposer un reload de la page avec alors la variable du process en POST
									$queryProcess="SELECT * from process ORDER by id";
									$resultProcess=mysql_query($queryProcess);	  
							   		while ($stepProcess=mysql_fetch_array($resultProcess)) {
							   			echo '<option value='.$stepProcess[id].'>'.$stepProcess[processName].'</option>';
							   		}
									//echo $stepProcess['processName'];
							   		?>
								</select>				
							</form>										
						</td>
					</tr>
					<?php 
					//Recherche de la liste des SubProcess			
					$querySub="SELECT * FROM processSub WHERE linkToProcess='$_SESSION[processID]' ORDER by id";			
					$resultSub=mysql_query($querySub);
					while ($resultSubList=mysql_fetch_array($resultSub)) {  			
						?> 
						<tr>
							<td colspan="3" height="40" align="right">
								<em><a href="index.php?toload=workflow&subProcessID=<?php echo $resultSubList['id']; ?>">
								<?php 
								//echo "<pre>"; print_r($resultSub); echo "</pre>";
								echo $resultSubList['nameSubProcess']; ?>
								</a></em>
							</td>
						</tr>			
						<?php
						//Recherche de la liste des étapes
						$queryStp="SELECT * from step_list WHERE subProcess='$resultSubList[id]' AND state='Enabled' ORDER by number";
						$resultStp=mysql_query($queryStp);	
					   	while ($stepList=mysql_fetch_array($resultStp)){
						?>	
							<tr>
				         		<td bgcolor="<?php echo $stepList['color']; ?>">&nbsp;&nbsp;&nbsp;</td>
				         		<td align="center"><?php echo $stepList['number']; ?></td>
				        		<td align="center"><a href="index.php?toload=workflow&selectStep=<?php echo $stepList['id']; ?>" class="lienEtp"><?php echo $stepList['name']; ?></a></td>
				    		</tr>
				    <?php } }
				    // } //Fin du while qui n'est plus utilisé
				    ?>	
				    <tr>
				    	<td>&nbsp;</td>
				    	<td></td>
				    	<td></td>
				    </tr>
					<tr>
						<td>&nbsp;</td>
						<td></td>
					</tr>	
				</table>				
			</td>
		</tr>
	</table>	
</div>



