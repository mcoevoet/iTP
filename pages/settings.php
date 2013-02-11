<!-- Génération automatique de l'étape X,X -->

<?
$myquery = "SELECT * FROM general_settings WHERE conf_id='0';";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$mail_data = mysql_result($Resultat , $Compteur , "mail_data");
	$general_data = mysql_result($Resultat , $Compteur , "general_data");
}
$mail_data = unserialize($mail_data);
$general_data = unserialize($general_data);

?>

<h2 align="center">Configurations générales d'iTP</h2>

<br><br><br>

<form action="pages/settings_save.php" method="POST" name="settings_form">
<table align="center" class="tab_settings">
	<tr>
		<td class="td1" colspan=2 align='center'> <b> Messagerie </b> </td>
	</tr>
	<tr>
		<td class="td1"> SMTP : </td>
		<td class="td1"> <input type="text" name="mail_smtp" value="<? echo $mail_data['smtp'] ?>"></td>
	</tr>
	<tr>
		<td class="td1"> Port : </td>
		<td class="td1"> <input type="text" name="mail_port" value="<? echo $mail_data['port'] ?>"></td>
	</tr>
	<tr>
		<td class="td1"> User name : </td>
		<td class="td1"> <input type="text" name="mail_user_name" value="<? echo $mail_data['user_name'] ?>"></td>
	</tr>
	<tr>
		<td class="td1"> Password : </td>
		<td class="td1"> <input type="text" name="mail_password" value="<? echo $mail_data['password'] ?>"></td>
	</tr>
	<tr>
		<td class="td1"> Mail from : </td>
		<td class="td1"> <input type="text" name="mail_from_adress" value="<? echo $mail_data['from_adress'] ?>"></td>
	</tr>
	<tr>
		<td class="td1"> Nom from : </td>
		<td class="td1"> <input type="text" name="mail_from_name" value="<? echo $mail_data['from_name'] ?>"></td>
	</tr>
	<tr>
		<td class="td1" colspan=2 > &nbsp; </td>
	</tr>
	<tr>
		<td class="td1" colspan=2 align='center'> <b> Divers </b> </td>
	</tr>
	<tr>
		<td class="td1"> Langue : </td>
		<td class="td1"> <select name="language">
			<option value="<? echo $general_data['language'] ?>"> <? echo $general_data['language'] ?> </option>
			<option value="fr"> fr </option>
			<option value="en"> en </option>
			<option value="nl"> nl </option>
			</select>
			</td>
	</tr>
	<tr>
		<td class="td1"> Temps de rafraichissement : </td>
		<td class="td1"> <input type="text" size="4" name="refresh_time" value="<? echo $general_data['refresh_time'] ?>"> Minutes</td>
	</tr>
	
	<tr>
		<td class="td1"> Délais Urgence : </td>
		<td class="td1"> <input type="text" size="4" name="emergency_delay" value="<? echo $general_data['emergency_delay'] ?>"> Jours </td>
	</tr>
	
	<tr>
		<td class="td1" colspan=2 > &nbsp; </td>
	</tr>	
	<tr>
		<td class="td1" colspan=2 align='center'> <b> Création de plusieurs PTV, Plan, Sites d'irradiation. </b> </td>
	</tr>
	
	<tr>
		<td class="td1"> Etape limite pour la création/dédoublement du Site d'irradiation : </td>
		<td class="td1"> 
		     <select name="limitVolCible" >
	     		<?php      	
				//Liste des étapes et de leurs actions
	     		$queryLimitVolCible="SELECT * from step_list WHERE id=$general_data[limitVolCible] ";				
				$resultLimitVolCible=mysql_query($queryLimitVolCible);
				while ($limitVolCible=mysql_fetch_array($resultLimitVolCible)) {
					?>
					<option value="<?php echo $limitVolCible[id]; ?>"><?php echo $limitVolCible[number]."/".$limitVolCible[name]; ?></option>
					<option value=""></option>
					<?php 
				}
				$queryList="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' ORDER by number";				
				$resultList=mysql_query($queryList);	  
	   			while ($stepList=mysql_fetch_array($resultList)) {
				?>	
					<option value="<?php echo $stepList[id]; ?>"><?php echo $stepList[number]."/".$stepList[name]; ?></option>
	   			<?php 
	   			}
	   			//Fin de boucle step_list ?>     		
     		</select>
		</td>
	</tr>

	<tr>
		<td class="td1"> Etape limite pour la création/dédoublement du PTV : </td>
		<td class="td1"> 
		     <select name="limitPTV" >
	     		<?php      	
				//Liste des étapes et de leurs actions
	     		$queryLimitPTV="SELECT * from step_list WHERE id=$general_data[limitPTV] ";				
				$resultLimitPTV=mysql_query($queryLimitPTV);
				while ($limitPTV=mysql_fetch_array($resultLimitPTV)) {
					?>
					<option value="<?php echo $limitPTV[id]; ?>"><?php echo $limitPTV[number]."/".$limitPTV[name]; ?></option>
					<option value=""></option>
					<?php 
				}
				$queryList="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' ORDER by number";				
				$resultList=mysql_query($queryList);	  
	   			while ($stepList=mysql_fetch_array($resultList)) {
				?>	
					<option value="<?php echo $stepList[id]; ?>"><?php echo $stepList[number]."/".$stepList[name]; ?></option>
	   			<?php 
	   			}
	   			//Fin de boucle step_list ?>     		
     		</select>
		</td>
	</tr>

	<tr>
		<td class="td1"> Etape limite pour la création/dédoublement du Plan : </td>
		<td class="td1"> 
		     <select name="limitPlan" >
	     		<?php      	
				//Liste des étapes et de leurs actions
	     		$queryLimitPlan="SELECT * from step_list WHERE id=$general_data[limitPlan] ";				
				$resultLimitPlan=mysql_query($queryLimitPlan);
				while ($limitPlan=mysql_fetch_array($resultLimitPlan)) {
					?>
					<option value="<?php echo $limitPlan[id]; ?>"><?php echo $limitPlan[number]."/".$limitPlan[name]; ?></option>
					<option value=""></option>
					<?php 
				}
				$queryList="SELECT * from step_list WHERE state='Enabled' AND process='$_SESSION[processID]' ORDER by number";				
				$resultList=mysql_query($queryList);	  
	   			while ($stepList=mysql_fetch_array($resultList)) {
				?>	
					<option value="<?php echo $stepList[id]; ?>"><?php echo $stepList[number]."/".$stepList[name]; ?></option>
	   			<?php 
	   			}
	   			//Fin de boucle step_list ?>     		
     		</select>
		</td>
	</tr>			
	<tr>
		<td class="td1" colspan="2" aling="right"> <input type="submit" value="Enregistrer"></td>
	</tr>

</table>
</form>




<ul>
	<li>Choix de la langue:</li>
	<li>Range d'IP autorisées:</li>
	<li>Gestion des process:</li>
	<li>Gestion des différentes fonctions (nom, description, couleur):</li>
	<li>Gestion des différents niveau d'accès:</li>
	<li>Etape de renvoi du dossier patient lors de la création d'un nouveau PTV ou Volume cible:</li>

	<li></li>
</ul>