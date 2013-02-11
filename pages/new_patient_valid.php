<div id="inclPat">
<br><br><br>
<!-- Rem: Action status: Enable in the ToGo var, but Enabled in the DB (action_list) -->
<h2>Validation des coordonnées du nouveau patient</h2>

<br>
Voulez-vous réellement introduire le patient suivant?
<br><br>

<form action="index.php?toload=new_patient_valid" method="post">	

<?php
//En venant de new_patient, il faut récupérer les infos dans le GET
if (isset($_GET[idStluc])) {
	$_POST[idStluc]=$_GET[idStluc];
	$_POST[lastname]=$_GET[lastname];
	$_POST[firstname]=$_GET[firstname];
}


//Si on arrive sur cette page depuis generatedStep (car introduction automatique du patient dans un autre process)
if ($_GET[origin]=="generatedStep") {
	$_POST[idStluc]=$_SESSION[idPatStluc];
}

//Recherche de l'existence de l'ID dans la DB
$queryPatient="SELECT * FROM patient_admin WHERE idStluc='$_POST[idStluc]' ";
//echo $queryPatient;
$resultPatient=mysql_query($queryPatient);
$existingPatient=mysql_fetch_array($resultPatient);
  	
//echo "test<pre>"; print_r($existingPatient); echo "</pre>";	

//Si ID nouveau, alors INSERT dans la DB
if ($existingPatient[idStluc]=="") {

	if (isset($_POST["validnew"])) {
		//Insertion dans la table des coordonnées administratives du patiet dans la table patient_admin
		$sqlinsert1="INSERT INTO patient_admin(lastname, firstname, idStluc) VALUES('$_POST[lastname]','$_POST[firstname]','$_POST[idStluc]')";
		mysql_query($sqlinsert1);
	 	
		//Insertion dans la table des patients le status et le processus (table patient_treat)
		$status="Treatment";
		//La première étape du processus est:
		$query1Step="SELECT id FROM step_list WHERE process='$_POST[processID]' ORDER by number";
		$result1Step=mysql_query($query1Step);
		$firstStep=mysql_fetch_array($result1Step);
			
		//Recherche de l'id de cette dernière étape
		$queryLastStep="SELECT id FROM step_list WHERE state='Enabled' AND process='$_POST[processID]' ORDER by number";
		$resultLastStep=mysql_query($queryLastStep);
		while ($stepLastNumber=mysql_fetch_array($resultLastStep)) {
			$lastStep=$stepLastNumber[0];
//			echo "<br>last: ".$lastStep."<pre>"; print_r($stepLastNumber); echo "</pre>";
		}

	 	//Remplissage de la variable togo qui contient le processus-workflow du patient par les ID des étapes et actions ACTIVES
		$queryStepTogo="SELECT id, number FROM step_list WHERE state='Enabled' AND process='$_POST[processID]' ORDER by number";
		$resultStepTogo=mysql_query($queryStepTogo);
		$i=0;
				
		while ($stepTogo=mysql_fetch_array($resultStepTogo)) {
//			echo "stepToGo: <pre>"; print_r($stepTogo); echo "</pre>";
			//L'action doit être active, mais peut ne pas être obligatoire
			$queryActionTogo="SELECT * FROM step_action WHERE (step_link='$stepTogo[0]' AND state='Enabled') ORDER by classement";
	//		echo "<br>Query: ".$queryActionTogo;
			$resultActionTogo=mysql_query($queryActionTogo);			
			while ($stepAction=mysql_fetch_array($resultActionTogo)) {				
//				echo "<br><pre>"; print_r($stepAction); echo "</pre>";
				//On place le numéro de l'étape, puis le numéro de l'action et enfin le status (Enable par defaut)
		  		$togo[$i] = array('idStep' => $stepTogo[id], 'idAction' => $stepAction[id], 'status' => 'Enable', 'obligation' => $stepAction[obligation], 'type' => $stepAction[type], 'stepNumber' => $stepTogo[number]);
//			  	echo "<br><pre>"; print_r($togo); echo "</pre>";
		  		$i++;
			}
			//Ajout d'une ligne action "none" pour la dernière étape
			//Si idAction=none => Go To Archive!
			$togo[$i] = array('idStep' => $lastStep, 'idAction' => none, 'status' => 'Enable', 'obligation' => 'Oui', 'type' => 'Archivage', 'stepNumber' => 'END');
		}
//		echo "TEST: <pre>"; print_r($togo); echo "</pre>";
		
		
		//Serializer le tableau ToGo avant insertion dans la DB
		$togo=serialize($togo);
		$dateintro=time();
	 	$sqlinsert2="INSERT INTO patient_treat(idStluc, req, volcible, ptv, plan, introDate, status, togo, actual_process, actual_step) 
	 		VALUES('$_POST[idStluc]', '$_POST[req]', 1, 1, 1, '$dateintro', '$status', '$togo', '$_POST[processID]', '$firstStep[0]')";
//	  	echo "TEST2: ".$sqlinsert2."<br>";
	 	mysql_query($sqlinsert2); 		
	
	 	//Remplissage de toutes les étapes ACTIVE du processus avec le nom, ptv et la req du patient		
		$i=0;
	 	$queryStep="SELECT id FROM step_list WHERE state='Enabled' ORDER by number";
		$resultStep=mysql_query($queryStep);
		while ($step=mysql_fetch_row($resultStep)) {
	//		echo "TESTSTEP: ".$step[0];
			$sqlinsert3="INSERT INTO `step_$step[0]` (idStluc, req, volcible, ptv, plan) VALUES('$_POST[idStluc]', '$_POST[req]', 1, 1, 1)";
//		 	echo "TEST3: ".$sqlinsert3."<br>";
	  		mysql_query($sqlinsert3);
	  		$i++;	  		
		}
		die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflow'>");
	}
	?>
<table width="400">
	<tr>
		<td>ID Stluc</td>
		<td><input type="text" name="idStluc" class="nameInput" maxlength="10" value="<?php echo $_POST[idStluc]; ?>"></td>
	<tr>
	<tr>
		<td>Nom</td>
		<td><input type="text" name="lastname" class="nameInput" value="<?php echo $_POST[lastname]; ?>"></td>
	</tr>
	<tr>
		<td>Prénom</td>
		<td><input type="text" name="firstname" class="nameInput" value="<?php echo $_POST[firstname]; ?>"></td>
	</tr>
	<tr>
		<td>Processus</td>
		<td>
			<select name="processID">
				<option value="<?php echo $_SESSION[processID]; ?>"><?php echo $_SESSION[processName]; ?></option>
				<option value="">---</option>
				<?php 
				$queryProcess="SELECT * from process ORDER by id";
				$resultProcess=mysql_query($queryProcess);	  
			   	while ($stepProcess=mysql_fetch_array($resultProcess)) {
			   		echo "<option value=".$stepProcess[id].">".$stepProcess[processName]."</option>";
			   	}
				?>
			</select>		
		</td>
	<tr>	
	<tr>
		<td>Course</td>
		<td><input type="text" name="req" class="nameInput" value="1" readonly="readonly"></td>
	</tr>
	<tr>
		<td>Site d'irradiation</td>
		<td><input type="text" name="volcible" class="nameInput" value="1" readonly="readonly"></td>
	</tr>
	<tr>
		<td>PTV</td>
		<td><input type="text" name="ptv" class="nameInput" value="1" readonly="readonly"></td>
	</tr>		
	<tr>
		<td>Plan</td>
		<td><input type="text" name="plan" class="nameInput" value="1" readonly="readonly"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td></td>
	</tr>	
	<tr>
		<td colpan="2"><input class="inputButton" type="submit" border="0" name="validnew" value="Valider"></td>
	</tr>		
</table>
					
<?php
}				

//Si ID existe déjà: affichge du numéro de requisition
if ($existingPatient[idStluc]!="") {
	$queryReq="SELECT * FROM patient_treat WHERE idStluc='$_POST[idStluc]' ORDER by id ";
//	echo $queryReq;
  	$resultReq=mysql_query($queryReq);
  	while ($reqPatient=mysql_fetch_array($resultReq)) {
//		echo "<br><pre>REQ: "; print_r($reqPatient[req]); echo "</pre>";  	
	  	$oldReq=$reqPatient[req];
	  	$newReq=$reqPatient[req]+1;
	  	$dateIn=$reqPatient[introDate];
//		echo "<br><br>NEW REQ: ".$newReq;
  	}
  	//Si la requisition du patient a été effacée, on recommence à 1
  	if ($newReq=="") {
  		$newReq=1;
  	}
	if (isset($_POST["validexisting"])) {		  	 	
	  	//Insertion dans la table des patients le status et le processus (table patient_treat)
	  	$status="Treatment";
	  	//La première étape du processus est:
	  	$query1Step="SELECT id FROM step_list WHERE process='$_POST[processID]' ORDER by number";
		$result1Step=mysql_query($query1Step);
		$firstStep=mysql_fetch_array($result1Step);
	
	  	//Remplissage de la variable togo qui contient le processus-workflow du patient par les ID des étapes et actions ACTIVES
		$queryStepTogo="SELECT id, number FROM step_list WHERE state='Enabled' AND process='$_POST[processID]' ORDER by number";
//		echo $queryStepTogo;
		$resultStepTogo=mysql_query($queryStepTogo);
		$i=0;
		
		//Recherche de l'id de cette dernière étape
		$queryLastStep="SELECT id FROM step_list";
		$resultLastStep=mysql_query($queryLastStep);
		while ($stepLastNumber=mysql_fetch_array($resultLastStep)) {
			$lastStep=$stepLastNumber[0];
//			echo "<br>last: ".$lastStep."<pre>"; print_r($stepLastNumber); echo "</pre>";
		}
	
		while ($stepTogo=mysql_fetch_array($resultStepTogo)) {
			//echo "steptogo:".$stepTogo[0]."<br>";
			$queryActionTogo="SELECT * FROM step_action WHERE (step_link='$stepTogo[id]' AND state='Enabled') ORDER by classement";
//			echo "<br>Query: ".$queryActionTogo;
			$resultActionTogo=mysql_query($queryActionTogo);			
			while ($stepAction=mysql_fetch_array($resultActionTogo)) {				
				//echo "stepaction:".$stepAction[0]."<br>";
				//On place le numéro de l'étape, puis le numéro de l'action et enfin le status (Enable par defaut)
		  		$togo[$i] = array('idStep' => $stepTogo[id], 'idAction' => $stepAction[0], 'status' => 'Enable', 'source' => 'none', 'obligation' => $stepAction[obligation], 'type' => $stepAction[type], 'stepNumber' => $stepTogo[number] );
//				echo "<br><pre>"; print_r($togo); echo "</pre>";
				$i++;
			}
			//Ajout d'une ligne action "none" pour la dernière étape
			//Si idAction=none => Go To Archive!
			$togo[$i] = array('idStep' => $lastStep, 'idAction' => none, 'status' => 'Enable', 'obligation' => 'Oui', 'type' => 'Archivage', 'stepNumber' => '');
		}
//		echo "TEST: <pre>"; print_r($togo); echo "</pre>";
				
		//Serializer le tableau ToGo avant insertion dans la DB
		$togo=serialize($togo);
		$dateintro=time();		
		$sqlinsert2="INSERT INTO patient_treat(idStluc, req, volcible, ptv, plan, introDate, status, togo, actual_process, actual_step) 
			VALUES('$_POST[idStluc]', '$_POST[req]', 1, 1, 1, '$dateintro', '$status', '$togo', '$_POST[processID]', '$firstStep[0]')";
//		echo "TEST2: ".$sqlinsert2."<br>";
	 	mysql_query($sqlinsert2); 		
		
		//Remplissage de toutes les étapes ACTIVE du processus avec le nom, ptv et la req du patient		
		$i=0;
  		$queryStep="SELECT id FROM step_list WHERE state='Enabled' ORDER by number";
		$resultStep=mysql_query($queryStep);
		while ($step=mysql_fetch_row($resultStep)) {
			//echo "TESTSTEP: ".$step[0];
			$sqlinsert3="INSERT INTO `step_$step[0]` (idStluc, req, volcible, ptv, plan) VALUES('$_POST[idStluc]', '$_POST[req]', 1, 1, 1)";
			//echo "TEST3: ".$sqlinsert3."<br>";
	  		mysql_query($sqlinsert3);
	  		$i++; 
		}
		die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflow'>"); 	
	}	
	
	//Proposition de valider le nom, la nouvelle req du patient avant insertion			
	?>
	<table width="450">
		<tr>
			<td colspan="2">Ce patient existe déjà dans la base de données, voici les informations retrouvées: </td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td>Nom</td>
			<td><input type="text" name="lastname" class="nameInput" maxlength="10" value="<?php echo $existingPatient[lastname]; ?>"></td>
		</tr>
		<tr>
			<td>Prénom</td>
			<td><input type="text" name="firstname" class="nameInput" value="<?php echo $existingPatient[firstname]; ?>"></td>
		</tr>
		<tr>
			<td>ID Stluc</td>
			<td><input type="text" name="idStluc" class="nameInput" value="<?php echo $existingPatient[idStluc]." ".$existingPatient[req]; ?>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>Processus</td>
			<td>
				<select name="processID">
					<option value="<?php echo $_SESSION[processID]; ?>"><?php echo $_SESSION[processName]; ?></option>
					<option value="">---</option>
					<?php 
					$queryProcess="SELECT * from process ORDER by id";
					$resultProcess=mysql_query($queryProcess);	  
				   	while ($stepProcess=mysql_fetch_array($resultProcess)) {
				   		echo "<option value=".$stepProcess[id].">".$stepProcess[processName]."</option>";
				   	}
					?>
				</select>		
			</td>
		<tr>			
		<tr>
			<td>Ancienne Requisition</td>
			<td><input type="text" name="req" class="nameInput" value="<?php echo $oldReq; ?>" readonly="readonly"></td>
		</tr>	
		<tr>
			<td>Date d'introduction</td>
			<td><input type="text" name="dateIntro" class="nameInput" value="<?php echo date('d/n/Y', $dateIn); ?>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>Nouvelle Requisition</td>
			<td><input type="text" name="req" class="nameInput" value="<?php echo $newReq; ?>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>Site d'irradiation</td>
			<td><input type="text" name="volcible" class="nameInput" value="1" readonly="readonly"></td>
		</tr>
		<tr>
			<td>PTV</td>
			<td><input type="text" name="ptv" class="nameInput" value="1" readonly="readonly"></td>
		</tr>		
		<tr>
			<td>Plan</td>
			<td><input type="text" name="plan" class="nameInput" value="1" readonly="readonly"></td>
		</tr>		
		<tr>
			<td>&nbsp;</td>
			<td></td>
		</tr>	
		<tr>
			<td colpan="2"><input class="inputButton" type="submit" border="0" name="validexisting" value="Valider"></td>
		</tr>		
	</table>
		 		
<?php
}
?>

</form>

</div>