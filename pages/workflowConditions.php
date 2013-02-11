<!-- Popup de configuration des conditions -->

<?php
//Récupération du numéro de l'étape dans laquelle on se trouve pour n'afficher que la suite
$queryNumber="SELECT number from step_list WHERE `id`='$_SESSION[idstepNumber]'";
$resultNumber=mysql_query($queryNumber);
$stepNumber=mysql_fetch_row($resultNumber);
//echo "<pre>tepNum";  print_r($stepNumber); echo "</pre>";
$stepNumber=$stepNumber[0];
?>

<h2>Configuration des conditions fonctions<br>de la réponse à la question <?php echo $_SESSION[idstepNumber]." de l'étape ".$stepNumber ; ?></h2>

<form action="index.php?toload=workflowConditions" method="post">

<?php
if (isset($_POST["ok"])) {  
	$i=0;
	$p=0;
	//On doit recréer la variable togo pour chaque réponse proposée dans les bullets car on ne sait pas ce qui a été envoyé dans le POST
	foreach($_SESSION[actionBullet] as $val) {
		//On va remplacer la valeur du SELECT possible par un ID pour éviter les problèmes d'espace dans le nom du futur INPUT créé
		//Trim pour enlever l'espace devant la valeur
		$valeur[id]=$p;
		$valeur[val]=trim($val);
//		echo "<br>Val<pre>"; print_r($valeur); echo "</pre><br>";
		$queryList="SELECT * from step_list WHERE state='Enabled' ORDER by number";
		$resultList=mysql_query($queryList);	  
	   	while ($stepList=mysql_fetch_array($resultList)) {
	   		$queryAction="SELECT * from step_action WHERE step_link=$stepList[id] AND state='Enabled' ORDER by id";
			$resultAction=mysql_query($queryAction);	  
		   	while ($stepAction=mysql_fetch_array($resultAction)) {
		   		$togo=$stepList[id]."#".$stepAction[id];
		   		//Variable togo recréée.
//				echo "<pre>"; print_r($_SESSION[actionBullet]); echo "</pre>";
//				echo "Val".trim($val)."<br>";
				//Supprimer les espaces devant les noms
				$togo=$valeur[id]."#".$togo; 				
				if ($_POST[$togo]=="on") {
//		   			echo "OKI";
		   			$togoAvoidComplete[$i]=$togoAvoidComplete[$i].$togo;	
//		   			echo "<pre>togAvoidComplete"; print_r($togoAvoidComplete); echo "</pre>";

		   			//La variable togoAvoid est donc bien recréée, et nous connaissons les équivalences avec ce qui a été exporté.   
		   			//On va donc stocker cette variable dans la DB
				    //Il faut séparer la partie "réponse" de la partie "togo"
				    $splitVar=explode("#", $togoAvoidComplete[$i]);
//				    echo "test:".$splitVar[1];
//				    echo "<pre>SplitVar"; print_r($splitVar); echo "</pre>";
					//Séparation des Step et Action pour la DB
				    $togoAvoid[$i][idStep]=$splitVar[1];
				    $togoAvoid[$i][idAction]=$splitVar[2];
					$i++;	    
		   		}
	   		}
	   	}
//	   	if ($splitVar[0]!="") {
// 		echo "<pre>togoAvoid"; print_r($togoAvoid); echo "</pre>";
	   	$togoAvoid=serialize($togoAvoid);
	   	$sqlinsert="INSERT INTO step_action_avoid(stepId, actionId, selectedAnswer, togoAvoid) VALUES ('$_SESSION[idstepNumber]', '$_SESSION[idactionNumber]', '$valeur[val]', '$togoAvoid') ON DUPLICATE KEY UPDATE `togoAvoid`='$togoAvoid'";
//		echo $sqlinsert."<br>";
		mysql_query($sqlinsert);
		//Ne pas mettre de DIE, ça fait tout foirer

//		die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflowConditions'>"); 
   	 	
   	 	//On remet la variable à 0 pour ne pas cumuler ...
   	 	$togoAvoid="";
	   	 	
	   	//On remet la variable à 0 pour ne pas cumuler ...
		$togoAvoidComplete="";		
	   	 	
//	   	}
	$p++; //On incrémente les $p pour le tableau $valeur 
    }
}

?>

<br>

<?php
$queryAction="SELECT * from step_action WHERE id=$_SESSION[idactionNumber]";
$resultAction=mysql_query($queryAction);	  
while ($stepAction=mysql_fetch_array($resultAction)) {
	$actionName=$stepAction[name];
	$actionBullet=$stepAction[content];
}
//On va exploder la variable pour placer les différentes valeurs du contenu dans un tableau
$_SESSION[actionBullet]=explode(",", $actionBullet);
//echo "<pre>";  print_r($_SESSION[actionBullet]); echo "</pre>";

?>
	
<br>

<a href="index.php?toload=workflowManagement">Retour au Workflow</a>

<br><br>

<table width="800" border="0">
  
<?php
$i=1;
$r=0;
//Il faut boucler sur chacune des valeurs du contenu
foreach($_SESSION[actionBullet] as $val)
{
	//On va remplacer la valeur du SELECT possible par un ID pour éviter les problèmes d'espace dans le nom du futur INPUT créé
	//Trim pour enlever l'espace devant la valeur
	$valeur[id]=$r;
	$valeur[val]=trim($val);
//	echo "<br>Val<pre>"; print_r($valeur); echo "</pre><br>";
	?>
	<tr>
		<td colspan="2">
		&nbsp;
		</td>
	</tr>	
	<tr>
		<td colspan="2">
		Sélectionnez les actions à éviter si le choix de <b><u>"<?php echo $actionName; ?>"</u></b> se porte sur: <b><u><?php echo $valeur[val]; ?></u></b>.
		</td>
	</tr>
  	<tr>
		<td colspan="2">
		&nbsp;
		</td>
	</tr>
	<?php      	
	//Liste des étapes et de leurs actions
	//On doit tout lister pour pouvoir comparer et/ensuite remplir
	//On ne va afficher que les étapes dont le numéro de classement est supérieur à celle dans laquelle on se trouve
//	$queryList="SELECT * from step_list WHERE state='Enabled' ORDER by number";
	$queryList="SELECT * from step_list WHERE state='Enabled' AND number>'$stepNumber' AND process='$_SESSION[processID]' ORDER by number";	
	$resultList=mysql_query($queryList);	  
   	while ($stepList=mysql_fetch_array($resultList)) {
	?>	
		<tr>
		    <td width="10" bgcolor="<?php echo $stepList[color]; ?>">&nbsp;&nbsp;&nbsp;</td>
      		<td><?php echo $stepList[number]; ?> / <?php echo $stepList[name]; ?></td>
    	</tr>
    	<tr>
    		<td width="10" bgcolor="<?php echo $stepList[color]; ?>"></td>
    		<td align="left">
	    	<table width="450" border="0" text="#FFFFFF">	
		    	<tr align="left">
		       		<td width="400">Nom</td>
		      		<td width="50" align="center">Check</td>
		    	</tr>  
		    	<?php
				$queryAction="SELECT * from step_action WHERE step_link=$stepList[id] AND state='Enabled' ORDER by id";
				$resultAction=mysql_query($queryAction);	  
			   	while ($stepAction=mysql_fetch_array($resultAction)) {
				?>				
				<tr align="right">
		       		<td><?php echo $stepAction[name]; ?></td>
		        	<td align="center">
		        		<?php		        				        		
		        		$queryChecked="SELECT togoAvoid from step_action_avoid WHERE `stepId`='$_SESSION[idstepNumber]' AND `actionId`='$_SESSION[idactionNumber]' AND `selectedAnswer`='$valeur[val]'";
//						echo "Query".$queryChecked;
						$resultChecked=mysql_query($queryChecked);
						$stepChecked=mysql_fetch_array($resultChecked);
//						while ($stepChecked=mysql_fetch_array($resultChecked)) {
//				   			echo "<pre>EDC"; print_r($stepChecked); echo "</pre>";								
						$stepChecked=unserialize($stepChecked[0]);							
//				   		echo "<pre>EDC"; print_r($stepChecked); echo "</pre>";	

						//Le nom de la variable sera l'id de la valeur du SELECT, suivi par # et l'idStep et # et l'idAction
						$nameVar=$valeur[id]."#".$stepList[id]."#".$stepAction[id];
//						//Vérification du fait que ce soit déjà validé ou pas
//						$totstepChecked=count($stepChecked[idStep]);
//						echo "nbre:".$totstepChecked;
							//On passe à 1 de total pour au moins passer dans la boucle si rien n'a été coché auparavant.
/*							if ($totstepChecked==0) { 
//								echo "nbre:".$totstepChecked."-".$i."<br>";
								$totstepChecked++;
								echo "I<input type=CHECKBOX name=$nameVar>I";}; 							
							$i=0;
*/						$nada="yes"; //Pour éviter de passer dans l'affichage suivant
						//C'est ici que l'on va cocher si l'action doit être sautée ou non en cas de réponses X à la
						//Pour chaque valeur du listing step-action on va vérifier qu'il ait été séléectionné auparavant.
						foreach ($stepChecked as $IdStepAction) {
//						for ($i=0; $i=$totstepChecked; $i++) {
//							echo "BORDEL".$i.$nameVar;
//							echo "test<pre>"; print_r($IdStepAction); echo "<pre>";
//							echo "Valeur i: ".$i." idStep: ".$IdStepAction[idAction];
//							echo "test".$i."<pre>"; print_r($stepChecked[$i]); echo "<pre>";
//							echo "steplistid: ".$stepList[id]."=".$IdStepAction[idStep]."//stepactionid: ".$stepAction[id]."=".$IdStepAction[idAction];
//							echo "<input type=CHECKBOX name=$nameVar";
							if ($IdStepAction[idStep]==$stepList[id] AND $IdStepAction[idAction]==$stepAction[id]) {
//							if ($i<1) {
								echo "<input type=CHECKBOX name=$nameVar Checked >";
								//Pour éviter de passer dans l'affichage suivant					
								$nada="no"; 
								//On sort de la boucle tout de suite pour ne pas multiplier les checkbox inutiles
								break;									
							}
							else {
								//Pour éviter de passer dans l'affichage suivant
								$nada="yes";
							}
						}
						if ($nada=="yes") {
							echo "<input type=CHECKBOX name=$nameVar>";
						}
			   		}
		        	?>
		        	</td>
		    	</tr>  
		    </table>
		    </td>
		</tr>	
    <?php } //Fin de boucle step_list
    ?>
   	<tr>
		<td colspan="2" align="center">
		&nbsp;
	    </td>
	</tr>
   	<tr>
		<td colspan="2" align="center" bgcolor="#000000" height="3px">		
		</td>
	</tr>
	<?php 
	$i++;
	$r++; 
	} //Fin de la boucle ForEach
	?>
    <tr>
    	<td colspan="2" align="right">
    		<input class="inputButton" type="submit" border="0" name="ok" value="Valider">
    	</td>
    </tr>
    
</table>

</form>