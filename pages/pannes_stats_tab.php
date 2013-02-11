<?
if($tableau_check == "oui")
{
$mois[1]="Janvier";
$mois[2]="Fevrier";
$mois[3]="Mars";
$mois[4]="Avril";
$mois[5]="Mai";
$mois[6]="Juin";
$mois[7]="Juillet";
$mois[8]="Aout";
$mois[9]="Septembre";
$mois[10]="Octobre";
$mois[11]="Novembre";
$mois[12]="Decembre";
	?>
	<table>
		<tr>
		<td> Mois : </td>
		<? for ($ii=1 ; $ii <= 12 ; $ii++)
		{ echo "<td>".$mois[$ii]."</td>";}?>
		</tr>		
		<tr>
		<td> Downtime (heures) : </td>
		<? for ($ii=1 ; $ii <= 12 ; $ii++)
		{ echo "<td>".number_format($downtime_mois[$ii], 2, ',', ' ')."</td>";}?>
		</tr>
		<tr>
		<td> Nombre de pannes : </td>
		<? for ($ii=1 ; $ii <= 12 ; $ii++)
		{ echo "<td>".$nb_pannes_mois[$ii]."</td>";}?>
		</tr>
		<tr>
		<td> Temps moyen par panne (min): </td>
		<? for ($ii=1 ; $ii <= 12 ; $ii++)
		{ echo "<td>".number_format($tps_pannes_mois[$ii], 2, ',', ' ')."</td>";}?>
		</tr>
		<tr>
		<td> Downtime (%) : </td>
		<? for ($ii=1 ; $ii <= 12 ; $ii++)
		{ echo "<td>".number_format($downtime_mois_percent[$ii], 2, ',', ' ')."</td>";}?>
		</tr>
		<tr>
		<td> Tps trait planifié : </td>
		<? for ($ii=1 ; $ii <= 12 ; $ii++)
		{ echo "<td>".number_format($tab_time[$machine_seek][$ii], 2, ',', ' ')."</td>";}?>
		</tr>
	</table>
		<?
}
else
{
	echo "&nbsp";
}

?>

