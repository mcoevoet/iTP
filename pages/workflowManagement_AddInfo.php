<!-- Ajouter une information dans une étape -->

<form action="index.php?toload=workflowManagement_AddInfo" method="post">

<?php
	//Récupération des infos sur l'étape avant update

//echo "<br>Test".$_SESSION[idstepNumber];

	if (isset($_POST["ok"])) {  
		$_POST[actionName]=addslashes($_POST[actionName]);
  		$sqlinsert1="INSERT INTO step_action(name, type, content, obligation, state, step_link) VALUES('$_POST[actionName]', 'information', '$_POST[listAction]', '$_POST[actionObligation]', 'Enabled', '$_SESSION[idstepNumber]')";
//		echo $sqlinsert1."<br>";
 		mysql_query($sqlinsert1);
  		//Récupération du dernier ID donné par la dernière requête SQL
 		$idActionNumber =  mysql_insert_id(); 
//  		echo "TEST: ".$idActionNumber."<br>";
  		$tableStepName="step_".$_SESSION[idstepNumber];
//	 		echo "TableStepName: ".$tableStepName."<br>";
  		//$nomDuChamp=addslashes(mysql_real_escape_string($_POST[actionName]));
  		$nomDuChamp="actionId_".$idActionNumber;
  		$timeDuChamp="timeId_".$idActionNumber;
  		$userDuChamp="userId_".$idActionNumber;  		
//			echo "TEST: ".$nomDuChamp;
		
  		$sqlinsert2="ALTER TABLE `$tableStepName` ADD `$nomDuChamp` VARCHAR(15)";  		
  		$sqlinsert3="ALTER TABLE `$tableStepName` ADD `$timeDuChamp` INT";
  		$sqlinsert4="ALTER TABLE `$tableStepName` ADD `$userDuChamp` VARCHAR(5)";
  		
	  	mysql_query($sqlinsert2);
 		mysql_query($sqlinsert3);
  		mysql_query($sqlinsert4); 		

//	  	echo  $sqlinsert2."<br>";
//	  	echo  $sqlinsert3."<br>";		  		
    	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflowManagement#$_SESSION[Balise]'>"); 
    	
  	}
  	
   	$query="SELECT * from step_list WHERE (id=$_SESSION[idstepNumber]) ";
	$result=mysql_query($query);	  
   	while ($step=mysql_fetch_array($result)) {
		$stepName=$step[name];
		$stepNumber=$step[number];		
   	}

?>

<h2>Ajout d'une information dans l'étape <b><?php echo $stepNumber ;?> (<?php echo $stepName; ?>)</b> du processus</h2>
<br><br>

<table width="800" border="0">

	<tr>
 	 	<td>Nom (sans apostrophe!)</td>
        <td>Type</td>
        <td>Réponse de l'action ...</td>
        <td>Obligatoire</td>
        <td>Liée à l'étape</td>
    </tr>	

   	<tr>
   	   	<td>
      		<input type="text" size="30" name="actionName">
   		</td>
		<td>
			Information
	    </td>
	  	<td>
     		Liste des actions précédentes ...<br>
     		<select name="listAction" >
     			<option value="">
	     		<?php      	
				//Liste des étapes et de leurs actions
				$queryList="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' AND number<'$stepNumber' ORDER by number";				
				$resultList=mysql_query($queryList);	  
	   			while ($stepList=mysql_fetch_array($resultList)) {
				?>	
					<option value=""></option>
					<option value="<?php echo $stepList[id]; ?>">---<?php echo $stepList[number]."/".$stepList[name]; ?>---</option>
		    		<?php
					$queryAction="SELECT * from step_action WHERE step_link=$stepList[id] AND state='Enabled' ORDER by classement";
					$resultAction=mysql_query($queryAction);	  
			   		while ($stepAction=mysql_fetch_array($resultAction)) {
						?>				
						<option value="<?php echo $stepAction[id]; ?>"><?php echo $stepAction[name]; ?></option>
    				<?php 
			   		}
	   			}
	   			//Fin de boucle step_list ?>     		
     		</select>     		   	     		
	    </td>
   		<td align="left">
   			<input type="radio" name="actionObligation" value="Oui"> Oui <br>
   			<input type="radio" name="actionObligation" value="Non"> Non 
		</td>
	  	<td align="center">
     		<?php echo $stepNumber; ?>
	    </td>
	</tr>	

  	<tr>
  		<td colspan="5" align="right">
  			&nbsp;
  		</td>
   	</tr>
  	<tr>
  		<td colspan="5" align="right">
  			<input class="inputButton" type="submit" border="0" name="ok" value="Envoyer">
  		</td>
   	</tr>	
</table>

</form>
