<form action="index.php?toload=pannes_stats" method="POST">
Année :<input type="text" name="annee" <? if(isset($_POST['annee'])){echo "value=".$_POST['annee'];}?>><br>

Machine :
<select name="machine">
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
			</select>

Tableau <input type="checkbox" name="tableau_check" value="oui" <? if((isset($_POST['tableau_check']))&($_POST['tableau_check']=="oui")){echo "checked";}?>>
<input type="submit" value="Calculer">
</form>

<?

//$nb_pannes_mois[1]=0;
//$nb_pannes_mois[2]=0;

if(isset($_POST['annee']))
{
	$annee_seek = $_POST['annee'];
	//echo $annee_seek;
	$machine_seek = $_POST['machine'];
	//echo $machine_seek;
	$tableau_check = $_POST['tableau_check'];
	//echo $machine_seek;
	
	$myquery1 = "SELECT * FROM treat_time WHERE machine = '$machine_seek' ;";
	//echo $myquery1;
	$Resultat1 = mysql_query($myquery1);
	for ($Compteur1=0 ; $Compteur1 < mysql_numrows($Resultat1) ; $Compteur1++)
	{
		$sql_tab_time = mysql_result($Resultat1 , $Compteur1 , "y$annee_seek");
		$tab_time = unserialize($sql_tab_time);	
		//print_r($tab_time);
	}
	
	
	$Resultat = mysql_query("SELECT * FROM pannes WHERE machine='$machine_seek' AND annee='$annee_seek';");
	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$temp_mois = ((float)mysql_result($Resultat , $Compteur , "mois"));
		//echo $temp_mois."<br>";
		$temp_downtime_h = mysql_result($Resultat , $Compteur , "downtime_h");
		//echo $temp_downtime_h."<br>";
		$temp_downtime_min = mysql_result($Resultat , $Compteur , "downtime_min");
		//echo $temp_downtime_min."<br>";
		$downtime_mois[$temp_mois] = ($downtime_mois[$temp_mois]*60+($temp_downtime_h*60)+$temp_downtime_min)/60;
		//$downtime_mois_percent[$temp_mois] = $downtime_mois[$temp_mois]/$tab_time[$Compteur];
	//	echo $tab_time[$Compteur];
		//echo $downtime_mois[$temp_mois]."<br><br>";
		//echo "test".$downtime_mois_percent[$temp_mois]."<br>";
		$nb_pannes_mois[$temp_mois]++;
		$tps_pannes_mois[$temp_mois] = ($downtime_mois[$temp_mois]*60)/$nb_pannes_mois[$temp_mois];
	}
	
}

$downtime_tot = 0;
$nb_pannes_tot = 0;
$tps_trait_tot = 0;


for ($rrr=1 ; $rrr <= 12 ; $rrr++)
	{
		$nb_pannes_mois[$rrr] = number_format($nb_pannes_mois[$rrr],2);
		$downtime_mois[$rrr] = number_format($downtime_mois[$rrr],2);
		//echo "$downtime_mois[$rrr]<br>";
		$tps_pannes_mois[$rrr] = number_format($tps_pannes_mois[$rrr],2);
		//echo $tab_time[$machine_seek][$rrr];
		$downtime_mois_percent[$rrr] = ($downtime_mois[$rrr]/$tab_time[$machine_seek][$rrr])*100;
		$downtime_mois_percent[$rrr] = number_format($downtime_mois_percent[$rrr],2);
		//calcul des totaux annuels
		$downtime_tot = $downtime_tot + $downtime_mois[$rrr];
		$tps_trait_tot = $tps_trait_tot + $tab_time[$machine_seek][$rrr];
		$nb_pannes_tot = $nb_pannes_tot + $nb_pannes_mois[$rrr];
		
	}
	
	$downtime_procent_tot = ($downtime_tot/$tps_trait_tot)*100;
	$downtime_procent_tot = number_format($downtime_procent_tot,2);
	$tps_moy_tot = $downtime_tot/$nb_pannes_tot;
	
	ksort($nb_pannes_mois);
	ksort($downtime_mois);
	ksort($tps_pannes_mois);
	
	//print_r($nb_pannes_mois);

$_SESSION['machine_nom']=$machine_seek;


//$downtime_mois = number_format($downtime_mois,2);

$_SESSION['histo_downtime_array']=$downtime_mois;
$_SESSION['histo_downtime_nom']= "Downtime par mois (h)";
$_SESSION['histo_nb_pannes_array']=$nb_pannes_mois;
$_SESSION['histo_nb_pannes_nom']= "Nombre de pannes par mois";
$_SESSION['histo_tps_pannes_array']=$tps_pannes_mois;
$_SESSION['histo_tps_pannes_nom']= "Temps par pannes par mois";
$_SESSION['histo_downtime_procent_array']=$downtime_mois_percent;
$_SESSION['histo_downtime_procent_nom']= "Downtime par mois (%)";

if(isset($_POST['annee']))
{
?>
<table>
<?

echo "<tr> <td> Downtime (h) </td> <td> $downtime_tot </td> </tr>";
echo "<tr> <td> Temps trait total (h) </td> <td> $tps_trait_tot </td> </tr>";
echo "<tr> <td> Nombre total de pannes (h) </td> <td> $nb_pannes_tot </td> </tr>";
echo "<tr> <td> Downtime (%) </td> <td> $downtime_procent_tot </td> </tr>";
echo "<tr> <td> Temps moyen total (h) </td> <td> $tps_moy_tot </td> </tr>";

?>

</table>

<table>
	<tr>
		<td> <IMG SRC="pages/pannes_graph_nb_pannes.php"> </td>
		<td> <IMG SRC="pages/pannes_graph_downtime.php"> </td> 
	</tr>
	<tr>
		<td> <IMG SRC="pages/pannes_graph_tps_pannes.php"> </td>
		<td> <IMG SRC="pages/pannes_graph_downtime_procent.php"> </td>
	</tr>
	<tr>
		<td> <? include('pannes_stats_tab.php');?></td>
</tr>
</table>
<?
}
?>
