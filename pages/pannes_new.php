<?php

include ("pannes_func_verif.php");

if(isset($_POST['date']))
{
	
	$date = $_POST['date'];
	
	$exploded_date = explode("/", $date);
	
	$jour = $exploded_date[0];
	$mois = $exploded_date[1];
	$annee = $exploded_date[2];
	$timestamp = mktime(0,0,0,$mois,$jour,$annee);
	
	//echo "<br>jour".$jour;
	//echo "<br>mois".$mois;
	//echo "<br>annee".$annee;
	
	//echo "<br>".$date;
	
	
	$h = $_POST['h'];
	$min = $_POST['min'];
	
	$machine = $_POST['machine'];
	$symptome = $_POST['symptome'];
	$type = $_POST['type'];
	$intervenant = $_POST['intervenant'];
	$actions = $_POST['actions'];
	$hfin = $_POST['hfin'];
	$minfin = $_POST['minfin'];
	$downtime_h = $_POST['downtime_h'];
	$downtime_min = $_POST['downtime_min'];
	$perturbation = $_POST['perturbation'];

	//echo $intervenant;
	
	$myquery = "insert INTO pannes (jour, mois, annee, h, min, machine, symptome, type, intervenant, actions, hfin, minfin, downtime_h, downtime_min, perturbation, timestamp) VALUES ('$jour', '$mois', '$annee', '$h', '$min','$machine', '$symptome', '$type', '$intervenant', '$actions', '$hfin', '$minfin', '$downtime_h', '$downtime_min', '$perturbation', '$timestamp')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	echo '<br>', "la panne du ".$date." a été correctement ajouté à la base de données";
}




?>	
<noscript>
<div align="center">
Veuillez activer le Javascript pour que cette page fonctionne correctement!!!
</div>
</noscript> 

	
	<form action="index.php?toload=pannes_new" name="formulaire" method="POST" enctype="multipart/form-data" onsubmit="return verif_form()">
	
	
	<table align="center">
		<tr>
			<td> Date (jj/mm/aaaa): </td>
			<td> <input type="text" name="date" onChange="verif_date()">  </td>
		</tr>
		<tr>
			<td> Heure : </td>
			<td> <input type="text" name="h" onChange="verif_h()" size=2>:<input type="text" name="min" onChange="verif_min()" size=2> </td>
		</tr>
		<tr>
			<td> Machine</td>
			<td> <select name="machine">
				<?
				if(isset($_POST['machine']))
				{
					echo "<option value=".$_POST['machine'].">".$_POST['machine']."</option>";
				}
								
				$Resultat = mysql_query("SELECT * FROM machine;");
				for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
				{
					$machine = mysql_result($Resultat , $Compteur , "nom");
					$actif = mysql_result($Resultat , $Compteur , "actif");
					if($actif == 'oui')
					{
						?>
						<option value='<? echo $machine; ?>'> <? echo $machine; ?> </option>
						<?
					}
				}
				?>
			</select> </td>
		</tr>
		<tr>
			<td> Symptome: </td>
			<td> <input type="text" name="symptome" size=50>  </td>
		</tr>
		<tr>
			<td> Type : </td>
			<td> 
				<select name="type">
				<option value='recoverable'> Recoverable  </option>
				<option value='unrecoverable'> Unrecoverable  </option>
				<option value='machine'> Machine  </option>
				<option value='informatique'> informatique  </option>
				</select> 
			</td>
		</tr>
		<tr>
			<td> Intervenant : </td>
			<td> <select name="intervenant">
				<?
				$Resultat = mysql_query("SELECT * FROM users WHERE FONCTION='tech';");
				for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
				{
					$initiales = mysql_result($Resultat , $Compteur , "INITIALES");
					$actif = mysql_result($Resultat , $Compteur , "actif");
					if($actif == 'oui')
					{
						?>
						<option value='<? echo $initiales; ?>'> <? echo $initiales; ?> </option>
						<?
					}
				}
				?>
				<option value='Elekta'> Elekta  </option>
				<option value='Accuray'> Accuray  </option>
				<option value='Physique'> Physique  </option>
						
			</select> </td>
		</tr>
			<tr>
			<td> Actions : </td>
			<td> <TEXTAREA rows="3" name="actions">Actions effectuées</TEXTAREA> </td>
		</tr>
			<tr>
			<td> Heure de fin : </td>
			<td> <input type="text" name="hfin" onChange="verif_hfin()" size=2>:<input type="text" name="minfin" onChange="verif_minfin()" size=2> </td>
		</tr>
		<tr>
			<td> Downtime : </td>
			<td> <input type="text" name="downtime_h" onChange="verif_downtime_h()" size=2>:<input type="text" name="downtime_min" onChange="verif_downtime_min()" size=2> </td>
		</tr>
		
		
		<tr>
			<td> Perturbation : </td>
			<td> <select name="perturbation">
				<option value='oui'> Oui  </option>
				<option value='non'> Non </option>
				</select> </td>
		</tr>
					
	</table>
	<div align="center">
	
	<input type='submit' value='Enregistrer'>
	</div>
	</form>
	<br>
<a href="index.php?toload=pannes_menu"> Retour au menu pannes </a>

