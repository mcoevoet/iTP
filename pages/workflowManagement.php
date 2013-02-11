<!-- Liste des Etapes du processus -->

<!--  Ce script pose des problèmes de mise en page du tableau. On ne voit pas les cellspacing et cellspading ... -->
<link rel="stylesheet" type="text/css" href="pages/ColorPicker/Css/ColorPicker.css" />
<script type="text/javascript" src="pages/ColorPicker/Js/CP_Class.js"></script>
<script type="text/javascript">
window.onload = function()
{
 fctLoad();
}
window.onscroll = function()
{
 fctShow();
}
window.onresize = function()
{
 fctShow();
}
</script>

<?php
if (isset($_GET[stateAction])) { 
  	$sqlinsert1="UPDATE step_action SET state='$_GET[stateAction]' WHERE id='$_GET[idAction]'";;
// 		echo $sqlinsert1;
	mysql_query($sqlinsert1);
    
    die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflowManagement#$_SESSION[Balise]'>"); 
  }	
  	
if (isset($_GET[stateStep])) {   		
  	$sqlinsert2="UPDATE step_list SET state='$_GET[stateStep]' WHERE id='$_GET[idStep]'";
// 		echo $sqlinsert2;
	mysql_query($sqlinsert2);
	
  	//Il faut aussi désactiver toutes les actions des cette étape	
	$queryNumberStep="SELECT number from step_list WHERE id='$_GET[idStep]'";
	$resultNumberStep=mysql_query($queryNumberStep);	  
   	while ($stepNumber=mysql_fetch_array($resultNumberStep)) {  		
  		$stepNumber=number_format($stepNumber[0], 1, '.', '');  			  			
//  		echo "Numero de step:".$stepNumber;  			
  		$queryActiondelaStep="SELECT id from step_action WHERE step_link='$stepNumber'";
//			echo $queryActiondelaStep."<br>";
		$resultActiondelaStep=mysql_query($queryActiondelaStep);	  
   		while ($stepToDisable=mysql_fetch_array($resultActiondelaStep)) {  		
  			$sqlinsert3="UPDATE step_action SET state='$_GET[stateStep]' WHERE id='$stepToDisable[id]'";;
// 				echo "<br>sql:".$sqlinsert3;
			mysql_query($sqlinsert3);
   		}  			
   	}	  					
    die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflowManagement#$_SESSION[Balise]'>"); 
}

//On récupère la balise pour le rechargement dans le FORM après avoir appuyé sur la disquette de sauvegarde
$balise=$_GET[Balise];

//Insertion du nouveau nom ou d'une nouvelle couleur d'une étape modifié dans la DB
if (isset($_POST["nameStepUpdate"])) {
	$_POST[stepName]=addslashes($_POST[stepName]);
	$sqlupdate="UPDATE `step_list` SET `name`='$_POST[stepName]', `color`='$_POST[stepColor]', `profession`='$_POST[stepProfession]' WHERE id='$_POST[stepID]' ";
//	echo "update: ".$sqlupdate;
	mysql_query($sqlupdate);

}
//Insertion du nouveau nom, content, tri et obligation d'action modifié dans la DB
if (isset($_POST["nameActionUpdate"])) {
	$_POST[actionName]=addslashes($_POST[actionName]);
	$sqlupdate="UPDATE `step_action` SET `name`='$_POST[actionName]', `content`='$_POST[actionContent]', `obligation`='$_POST[actionObligation]', `classement`='$_POST[actionClassement]', `valid_level`='$_POST[actionValid_level]', `refusGoTo`='$_POST[actionRefusGoTo]'  WHERE id='$_POST[actionID]' ";
//	echo "update: ".$sqlupdate;
	mysql_query($sqlupdate);
	
}
/*
//Insertion du nouveau content d'action modifié dans la DB
if (isset($_POST["nameActionUpdate"])) {
	$sqlupdate="UPDATE `step_action` SET `content`='$_POST[actionContent]' WHERE id='$_POST[actionID]' ";
//		echo "update: ".$sqlupdate;
	mysql_query($sqlupdate);
}		
*/
?>
	
<form action="index.php?toload=workflowManagement#<?php echo $balise ;?>" method="post">

<table width="1200" border="0">
	<tr>
		<td colspan="4" align="center">
			<h2><?php echo $_SESSION[processName]; ?></h2>
		</td>
	</tr>	
	<tr>
		<td colspan="4" align="right">
			Processus: 
			<select name="processID" onChange='javascript:this.form.submit();'>
				<option value="<?php echo $_SESSION['processID']; ?>"><?php echo $_SESSION[processName]; ?></option>
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
	</tr>
	<?php 
	//Liste des étapes et de leurs actions
	$queryList="SELECT * FROM step_list WHERE step_list.process='$_SESSION[processID]' ORDER by number";
	$resultList=mysql_query($queryList);	  
	   while ($stepList=mysql_fetch_array($resultList)) {    
	   	
	?>		
	<tr>
        <td colspan="2">Status</td>
 	 	<td>&nbsp;</td>
        <td>Etape / Légende</td>
    </tr>	
	<tr>
 	 	<td colspan="2">&nbsp;</td>
        <td></td>
        <td></td>
    </tr>
		<tr>
        	<td height="20" align="center">
        		<?php if($stepList[state]=="Enabled") { ?>
	           		<a href="index.php?toload=workflowManagement&idStep=<?php echo $stepList[id]; ?>&stateStep=Disabled&Balise=<?php echo $stepList[id]; ?>">
	        		<img style="width: 16px; height: 16px;" src="images/enable.jpg" title="Désactiver une étape" border="0">
	        		</a>
        		<?php } ?>
        		<?php if($stepList[state]=="Disabled") { ?>
	           		<a href="index.php?toload=workflowManagement&idStep=<?php echo $stepList[id]; ?>&stateStep=Enabled&Balise=<?php echo $stepList[id]; ?>">
	        		<img style="width: 16px; height: 16px;" src="images/disable.jpg" title="Activer une étape" border="0">
	        		</a>
        		<?php } ?>
        	</td>
        	<td>
           		<?php if(($stepList[id]!=$_GET[idStep])) { ?>
    	    		<a href="index.php?toload=workflowManagement&idStep=<?php echo $stepList[id]; ?>&updateStep=Modify&Balise=<?php echo $stepList[id]; ?>#<?php echo $stepList[id]; ?>">
        			<img style="width: 16px; height: 16px;" src="images/modify.gif" title="Modifier le nom" border="0">        		
        			</a>        		
        		<?php } ?>
           		<?php if(($_GET[updateStep]=="Modify") AND ($stepList[id]==$_GET[idStep])) { ?>
					<input type="submit" class="save" alt="Sauvegarder le nom" name="nameStepUpdate" value="_">
        		<?php } ?>       		
        	</td>
       		<td bgcolor="<?php echo $stepList[color]; ?>">&nbsp;&nbsp;&nbsp;</td>
      		<td <?php if($stepList[state]=="Disabled") { echo "style=text-decoration:line-through"; } ?>><?php echo $stepList[number]; ?> /       		
      		<?php       		
   				//Requête de la profession actuelle
				$queryActuProfession="SELECT * FROM users_fonction WHERE fonction='$stepList[profession]' ";						
				$resultActuProfession=mysql_query($queryActuProfession);
				while ($stepActuProfession=mysql_fetch_array($resultActuProfession)) {
					$actuFonction=$stepActuProfession[fonction];
					$actuDescFct=$stepActuProfession[descFct];
				}      		
		       	//Pour pouvoir modifier le nom d'une étape
	       		if (($_GET[updateStep]=="Modify") AND ($stepList[id]==$_GET[idStep])) {
	   				?>
	   				<input type="text" class="inputStepActionName" name="stepName" value="<?php echo $stepList[name];?>"> &nbsp; [ Color: <input type="text" size="10" name="stepColor" value="<?php echo $stepList[color]; ?>" maxlength="7" onClick="fctShow(this);"> ] 
	   				- Profession:
		       		<select name="stepProfession">
					 	<?php
					 	//Affichage de la profession actuellement sélectionnée
						echo "<option value=".$actuFonction.">".$actuDescFct."</option>";
						//Listing de toutes les professions en cas de modifications
						$queryProfession="SELECT * FROM users_fonction";
						$resultProfession=mysql_query($queryProfession);
	   					while ($stepProfession=mysql_fetch_array($resultProfession)) {
							echo "<option value=".$stepProfession[fonction].">".$stepProfession[descFct]."</option>";
	   					}   					
						?>
					</select> 
	   				<input type="text" name="stepID" value="<?php echo $stepList[id];?>" hidden>
	   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
    			}
      			else { echo $stepList[name]." - Profession: ".$actuDescFct; }

      			$querySubProcess="SELECT * from processSub WHERE id=$stepList[subProcess]";
				$resultSubProcess=mysql_query($querySubProcess);	 
			   	$stepSubProcess=mysql_fetch_row($resultSubProcess);
			   	echo " - ".$stepSubProcess[1];
       		?>       		
      		</td>
    	</tr>
    	<tr>
    		<td colspan="2"></td>
    		<td width="10" bgcolor="<?php echo $stepList[color]; ?>"></td>
    		<td>
	    	<table width="1100" border="0" text="#FFFFFF">	
	    		<balise id="<?php echo $stepList[id]; ?>"></balise>
		    	<tr align="right" style="background-color: #A4A4A4; color:#FFFFFF;">
		    		<!-- Style copy/page for IE ... -->	
		    		<td width="25" style="color:#FFFFFF;">ID</td>	    		
		       		<td width="300" style="color:#FFFFFF;">Nom</td>
		       		<td width="25" style="color:#FFFFFF;">Tri</td>
		      		<td width="100" style="color:#FFFFFF;">Type</td>
		      		<td width="250" style="color:#FFFFFF;">Contenu</td>
		      		<td width="25" style="color:#FFFFFF;">Accès</td>
		        	<td width="50" style="color:#FFFFFF;">Obligatoire?</td>
		        	<td width="75" align="center" style="color:#FFFFFF;">Refus To Go</td>
		        	<td width="25" style="color:#FFFFFF;"></td>
		        	<td width="25" style="color:#FFFFFF;"></td>		        	
		        	<td width="25" style="color:#FFFFFF;"></td>
		    	</tr>  

		    	<?php
				$queryAction="SELECT * from step_action WHERE step_link=$stepList[id] ORDER by classement";
				$resultAction=mysql_query($queryAction);
				$o=0;	  
			   	while ($stepAction=mysql_fetch_array($resultAction)) {
			   	$o++;
			   	if ($o % 2 != 0) {
			   		$backgroundColor="#EEEEEE";
			   	}
			   	else {
			   		$backgroundColor="#FFFFFF";
			   	}
				?>				
				<tr align="right" <?php 
					if($stepAction[state]=="Disabled") { ?> "style=text-decoration:line-through; background-color: " <?php $backgroundColor; } 
				 	if($stepList[state]=="Disabled") { ?> "style=text-decoration:line-through; background-color: " <?php $backgroundColor; } ?> 
				 	style="background-color: <?php echo $backgroundColor; ?>;">
				 	<td><?php echo $stepAction[id]; ?></td>
		       		<td>
			      		<?php 
					       	//Pour pouvoir modifier le nom d'une action
				       		if (($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) {
				   				?>
				   				<input type="text" class="inputStepActionName" name="actionName" value="<?php echo $stepAction[name];?>">
				   				<input type="text" name="actionID" value="<?php echo $stepAction[id];?>" hidden>
				   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
			    			}
			      			else { echo $stepAction[name]; }
			       		?>		       				       			
		       		</td>
		       		<td>
              			<?php 
					       	//Pour pouvoir modifier le classement d'une action
				       		if (($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) {
				   				?>
				   				<input type="text" class="inputStepActionNameSmall" name="actionClassement" value="<?php echo $stepAction[classement];?>">
				   				<input type="text" name="actionID" value="<?php echo $stepAction[id];?>" hidden>
				   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
			    			}
			      			else { echo $stepAction[classement]; }
			       		?>		       		
		       		</td>
		      		<td><?php echo $stepAction[type]; ?></td>
		      		<td>
		      			<?php 
					       	//Pour pouvoir modifier le contenu d'une action
				       		if (($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) {
				   				?>
				   				<input type="text" class="inputStepActionName" name="actionContent" value="<?php echo $stepAction[content];?>">
				   				<input type="text" name="actionID" value="<?php echo $stepAction[id];?>" hidden>
				   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
			    			}
			      			else { echo $stepAction[content]; }
			       		?>
		      		</td>
		      		<td><?php
					       	//Pour pouvoir modifier la hierarchie de signature d'une action
				       		if (($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) {
				   				?>
				   				<input type="text" class="inputStepActionNameSmall" name="actionValid_level" value="<?php echo $stepAction[valid_level];?>">
				   				<input type="text" name="actionID" value="<?php echo $stepAction[id];?>" hidden>
				   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
			    			}
			      			else { echo $stepAction[valid_level]; }
			       		?>		      		
		      		</td>
		        	<td>
              			<?php 
					       	//Pour pouvoir modifier le fait qu'une action soit obligatoire ou non
				       		if (($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) {
				   				?>
				   				<input type="text" class="inputStepActionNameSmall" name="actionObligation" value="<?php echo $stepAction[obligation];?>">
				   				<input type="text" name="actionID" value="<?php echo $stepAction[id];?>" hidden>
				   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
			    			}
			      			else { echo $stepAction[obligation]; }
			       		?>
		        	</td>
		        	<td>
              			<?php 
					       	//Pour pouvoir modifier le fait qu'une action soit obligatoire ou non
				       		if (($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) {
				   				?>
				   				<input type="text" class="inputStepActionNameSmall" name="actionRefusGoTo" value="<?php echo $stepAction[refusGoTo];?>">
				   				<input type="text" name="actionID" value="<?php echo $stepAction[id];?>" hidden>
				   				<?php //Le second champ passe l'ID de la session, raison pour laquelle il est caché
			    			}
			      			else { echo $stepAction[refusGoTo]; }
			       		?>		        	
		        	</td>
		        	<td>
		        		<?php
		        		//C'est ici qu'on fait le lien vers la page de conditions qui vont être appliquées en cas de bouton radio ou
		        		//de select. Seuls ces 2 types de "dialogues" vont avoir un impact sur la suite du workflow (typiquement Yes/No).		        		
		        		if ($stepAction[type]=="radio" OR $stepAction[type]=="select" OR $stepAction[type]=="confirm") { ?>
		        	   		<a href="index.php?toload=workflowConditions&stepID=<? echo $stepList[id]; ?>&actionID=<?php echo $stepAction[id]; ?>">
			       			<img style="width: 16px; height: 16px;" src="images/suiviImpact.png" title="Modifier les conditions de suivi" border="0"></a>
		        		<?php	}   ?>
		        	</td>
		        	<td>		        		
           				<?php 
           				//Pour pouvoir modifier le nom d'une action
           				// # pour avoir la liaison avec la balise
           				if(($stepAction[id]!=$_GET[idAction])) { ?>
    	    				<a href="index.php?toload=workflowManagement&idAction=<?php echo $stepAction[id]; ?>&updateAction=Modify&Balise=<?php echo $stepList[id]; ?>#<?php echo $stepList[id]; ?>">
        					<img style="width: 16px; height: 16px;" src="images/modify.gif" title="Modifier le nom" border="0">        		
        					</a>        		
        				<?php } ?>
           				<?php if(($_GET[updateAction]=="Modify") AND ($stepAction[id]==$_GET[idAction])) { ?>
							<input type="submit" class="save" alt="Sauvegarder le nom" name="nameActionUpdate" value="_">
        				<?php } ?> 		        			        	
		        	</td>
		        	<td>
		        		<?php if($stepList[state]=="Enabled") { 
		        		//On rajoute une condition pour que l'on ne puisse pas activer une action sans son étape 		        		
		        		?>
			        		<?php if($stepAction[state]=="Disabled") { ?>
			        		<a href="index.php?toload=workflowManagement&idAction=<?php echo $stepAction[id]; ?>&stateAction=Enabled&Balise=<?php echo $stepList[id]; ?>">
			        		<img style="width: 16px; height: 16px;" src="images/disable.jpg" title="Activer une action" border="0"></a>
			        		<?php } if($stepAction[state]=="Enabled") { ?>
			        		<a href="index.php?toload=workflowManagement&idAction=<?php echo $stepAction[id]; ?>&stateAction=Disabled&Balise=<?php echo $stepList[id]; ?>">
			        		<img style="width: 16px; height: 16px;" src="images/enable.jpg" title="Désactiver une action" border="0"></a>
			        		<?php } ?>
		        		<?php } ?>
		        	</td>
		    	</tr>  
		    	<?php  } // Fin de boucle step_action 
		    	$stepActionLinked=$stepList[id];
		    	?>
		    	<tr>
		    		<td colspan="12" align="center">		    			
		    			Ajouter une action <a href="index.php?toload=workflowManagement_AddAction&stepID=<?php echo $stepActionLinked; ?>">
		    				<img style="width: 18px; height: 18px;" src="images/add.jpg" border="0" title="Ajouter une action" >
		    			</a>
		    			&nbsp;&nbsp;&nbsp;
		    			<a href="index.php?toload=workflowManagement_AddInfo&stepID=<?php echo $stepActionLinked; ?>">
		    				<img style="width: 18px; height: 18px;" src="images/add.jpg" border="0" title="Ajouter une info" >
		    			</a> Ajouter une information 
		    			
		    		</td>
		    	</tr>
		    </table>
		    </td>
		</tr>	
    <?php } //Fin de boucle step_list
    ?>
   	<tr>
		<td colspan="5" align="center">
		&nbsp;
	    </td>
	</tr>
   	<tr>
		<td colspan="7" align="center">
		&nbsp;
		</td>
	</tr>
    <tr>
    	<td colspan="4" align="center">
    		<a href="index.php?toload=workflowManagement_AddStep&process=<?php echo $_POST['processID']; ?>"><img style="width: 60px; height: 60px;" src="images/addStep.jpg" title="Ajouter une étape" border="0"></a>
    	</td>
    </tr>
</table>

</form>