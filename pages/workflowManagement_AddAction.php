<!-- Ajouter une action dans une étape -->

<form action="index.php?toload=workflowManagement_AddAction#<?php echo $_SESSION[Balise]; ?>" method="post">

<?php
	//Récupération des infos sur l'étape avant update

//echo "<br>Test".$_SESSION[idstepNumber];

	if (isset($_POST["ok"])) {  
		$_POST[actionName]=addslashes($_POST[actionName]);
  		$sqlinsert1="INSERT INTO step_action(name, type, content, refusGoTo, valid_level, verifType, obligation, state, step_link) 
  			VALUES('$_POST[actionName]', '$_POST[actionType]', '$_POST[actionContent]', '$_POST[refusGoTo]', '$_POST[levelH]', '$_POST[verifType]', '$_POST[actionObligation]', 'Enabled', '$_SESSION[idstepNumber]')";
  		mysql_query($sqlinsert1);
  		//Récupération du dernier ID donné par la dernière requête SQL
  		$idActionNumber =  mysql_insert_id(); 

  		//Création de tables dans la DB
  		$tableStepName="step_".$_SESSION[idstepNumber];
// 		echo "TableStepName: ".$tableStepName."<br>";
  		//$nomDuChamp=addslashes(mysql_real_escape_string($_POST[actionName]));
  		$nomDuChamp="actionId_".$idActionNumber;
  		$timeDuChamp="timeId_".$idActionNumber;
  		$userDuChamp="userId_".$idActionNumber;
//echo "TEST: ".$nomDuChamp;
  		// Insertion différente selon le type de champ: si INPUT TEXT et TEXTAREA alors plus de place dans la DB
  		// Utiliser l'apostrophe foireuse pour permettre d'insérer des noms de table avec espace: ` (ou ALT GR + 7)
  		if ($_POST[actionType]=="textchain") {
  		  	$sqlinsert2="ALTER TABLE `$tableStepName` ADD `$nomDuChamp` VARCHAR(100)";
  		}
  		elseif ($_POST[actionType]=="textarea") {
  			$sqlinsert2="ALTER TABLE `$tableStepName` ADD `$nomDuChamp` TEXT";
  		}
  		else {
  			$sqlinsert2="ALTER TABLE `$tableStepName` ADD `$nomDuChamp` VARCHAR(15)";
  		}
  		$sqlinsert3="ALTER TABLE `$tableStepName` ADD `$timeDuChamp` INT";
  		$sqlinsert4="ALTER TABLE `$tableStepName` ADD `$userDuChamp` VARCHAR(5)";
  		
  		mysql_query($sqlinsert2);
  		mysql_query($sqlinsert3);
  		mysql_query($sqlinsert4);
//  	echo  "SQL: ".$sqlinsert3;
		  		
    	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflowManagement#$_SESSION[Balise]'>"); 
    	
  	}  	
  	
   	$query="SELECT * from step_list WHERE (id=$_SESSION[idstepNumber]) ";
	$result=mysql_query($query);	  
   	while ($step=mysql_fetch_array($result)) {
		$stepName=$step[name];
		$stepNumber=$step[number];		
   	}

?>

<h2>Ajout d'une action dans l'étape <b><?php echo $stepNumber ;?> (<?php echo $stepName; ?>)</b> du processus</h2>
<br><br>

<table width="600" border="0" cellspacing="1" cellpadding="1">
	<tr>
 	 	<td>Nom</td>
   	   	<td>
      		<input type="text" size="30" name="actionName">
   		</td>       
    </tr>	
   	<tr>
   		<td>Type</td>
		<td>
			<select name="actionType" >
	 			<option value="">
				<option value="checkbox">Checkbox
				<option value="radio">Bouton radio
				<option value="select">Menu déroulant
				<option value="textarea">Textarea
				<option value="textchain">String
				<option value="refus">Refus
		  	</select>
	    </td>
	</tr>
	<tr>
        <td>Contenu</td>	
	  	<td>
     		<input type="text" size="30" name="actionContent">
	    </td>
	</tr>
	<tr>
   		<td>Si refus (Réponse Non), GoTo:</td>
		<td>
			<select name="refusGoTo" >
     			<option value="">
	     		<?php      	
				//Liste des étapes et de leurs actions
				$queryList="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' AND number<'$stepNumber' ORDER by number";			
				$resultList=mysql_query($queryList);	  
	   			while ($stepList=mysql_fetch_array($resultList)) {
				?>	
					<option value="<?php echo $stepList[id]; ?>"><?php echo $stepList[number]."/".$stepList[name]; ?></option>
	   			<?php }
	   			//Fin de boucle step_list ?>     		
     		</select>
	    </td>
	</tr>
	<tr>
		<td>Niveau de validation</td>
		<td>
			<select name="levelH">
			 	<option value=""></option>
				<?php 
					$queryH="SELECT * FROM users_level;";
					$resultH=mysql_query($queryH);
					while ($level=mysql_fetch_array($resultH)) {						
						?><option value="<? echo $level[level]; ?>"><? echo $level[level]." ".$level[intitule]; ?> </option>
				<?php  }  ?>				
			</select>
		</td>		
	</tr>
	<tr>
		<td>Type de vérification à faire</td>
		<td>
			<select name="verifType">				
				<option value="Aucune">Aucune</option>
				<option value="Date">Date</option>			
			 	<option value="Email">Email</option>				
			</select>
		</td>		
	</tr>	
	<tr>
        <td>Obligatoire</td>	
   		<td>
   			<input type="radio" name="actionObligation" value="Oui"> Oui <br>
   			<input type="radio" name="actionObligation" value="Non"> Non 
		</td>
	</tr>
	<tr>
        <td>Liée à l'étape</td>
	  	<td>
     		<?php echo $stepNumber; ?>
	    </td>
	</tr>	
  	<tr>
  		<td colspan="2">
  			&nbsp;
  		</td>
   	</tr>
  	<tr>
  		<td colspan="2">
  			<input class="inputButton" type="submit" border="0" name="ok" value="Envoyer">
  		</td>
   	</tr>	
</table>

</form>
