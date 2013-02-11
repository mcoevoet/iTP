<H2> Pannes de <? echo $_GET['machine'];  ?> </H2>

<?php

$seek_machine = $_GET['machine'];
//echo $seek_machine;
$Resultat = mysql_query("SELECT * FROM pannes WHERE machine='$seek_machine' ORDER BY timestamp DESC;");
	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$id = mysql_result($Resultat , $Compteur , "id");
		$timestamp = mysql_result($Resultat , $Compteur , "timestamp");
		$intervenant = mysql_result($Resultat , $Compteur , "intervenant");
		$type = mysql_result($Resultat , $Compteur , "type");
		$h = mysql_result($Resultat , $Compteur , "h");
		$symptome = mysql_result($Resultat , $Compteur , "symptome");
		$machine = mysql_result($Resultat , $Compteur , "machine");
		$min = mysql_result($Resultat , $Compteur , "min");
		$jour = mysql_result($Resultat , $Compteur , "jour");
		$mois = mysql_result($Resultat , $Compteur , "mois");
		$annee = mysql_result($Resultat , $Compteur , "annee");
		$perturbation = mysql_result($Resultat , $Compteur , "perturbation");
		$downtime_h = mysql_result($Resultat , $Compteur , "downtime_h");
		$downtime_min = mysql_result($Resultat , $Compteur , "downtime_min");
		$actions = mysql_result($Resultat , $Compteur , "actions");
		
		
		?>
		<table class="tab_pannes" align="center">
			<tr>
				<td class="cell_pannes_1"> Machine : </td>
				<td class="cell_pannes_1"> <? echo $machine?> </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_2"> Date : </td>
				<td class="cell_pannes_2"> <? echo $jour."/".$mois."/".$annee?> </td>
			</tr>
			<tr>
				<td class="cell_pannes_1"> Symptome : </td>
				<td class="cell_pannes_1"> <? echo $symptome?> </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_2"> Heure : </td>
				<td class="cell_pannes_2"> <? echo $h.":".$min?> </td>
			</tr>		
			<tr>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_2"> Downtime : </td>
				<td class="cell_pannes_2"> <? echo $downtime_h.":".$downtime_min?> </td>
			</tr>	
			<tr>
				<td class="cell_pannes_1"> Intervenant : </td>
				<td class="cell_pannes_1"> <? echo $intervenant?> </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_2"> Perturbation : </td>
				<td class="cell_pannes_2"> <? echo $perturbation?> </td>
			</tr>
			<tr>
				<td class="cell_pannes_1"> Type : </td>
				<td class="cell_pannes_1"> <? echo $type?> </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_4"> &nbsp </td>
				<td class="cell_pannes_4"> &nbsp </td>
			</tr>
			<tr>
				<td class="cell_pannes_4" colspan="5">&nbsp</td>
			</tr>
			<tr>
				<td class="cell_pannes_3"> Action : </td>
				<td class="cell_pannes_3" colspan="3"> <? echo $actions?> </td>
				
			</tr>
			
		</table>
		<table class="tab_pannes2" align="center">
		<tr>
			<td align="left"> <a href="index.php?toload=pannes_menu"> Retour au menu des pannes</a> </td>
			</tr>
		</table>

		
		<br>
		<?
		
	}
?>

 