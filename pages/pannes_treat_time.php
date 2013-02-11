<?
if(isset($_GET['year']))
{
	$year = $_GET['year'];
	if($_POST['record']=='yes')
	{
		$myquery = "SELECT * FROM treat_time ;";
		$Resultat = mysql_query($myquery);
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			$machine = mysql_result($Resultat , $Compteur , "machine");	
			if($_POST['record'] == "yes")
			{
				for ($i = 1 ; $i <= 12 ; $i++)
				{
					$tab_time_rec[$machine][$i] = $_POST["tab_time$machine$i"];
				}
				//print_r($tab_time_rec);
			
				$sql_tab_time_rec = serialize($tab_time_rec);
				$myquery = "update treat_time set y$year='$sql_tab_time_rec' where machine='$machine'";
				//echo "<br>$myquery<br>";
				mysql_query($myquery); 	
			}
		}
	}
	
}
else
{
	$year = date("Y");
}






//affiche année

echo "<table align='center'>";
echo "<tr>";
$reponse2 = mysql_query('SHOW COLUMNS FROM treat_time') or die(mysql_error());
while ($donnees2 = mysql_fetch_array($reponse2))
{
	//print_r($donnees2);
	//echo $donnees2['Field'];
	$test = $donnees2['Field'];
	$test[0];
	if($test[0] == 'y')
	{
		
		$year_sel = str_replace('y','', $test);
		echo "<td> <a href='index.php?toload=pannes_treat_time&year=$year_sel'>$year_sel</a></td>";
		
		
	}

  
}
echo "</tr>";
echo "</table>";

?>
<form action="index.php?toload=pannes_treat_time&year=<? echo $year ?>" method="POST">
<table align="center" class="tabstd">
<?

echo "<tr>";
echo "<td> </td>";
$a_mois = array ( '1' => 'Janvier', '2' => 'Fevrier', '3' => 'Mars', '4' => 'Avril', '5' => 'Mai', '6' => 'Juin', '7' => 'Juillet', '8' => 'Août', '9' => 'Septembre', '10' => 'Octobre', '11' => 'Novembre', '12' => 'Décembre');
for ($i = 1 ; $i <= 12 ; $i++)
{
	echo "<td>".$a_mois[$i]."</td>";	
}
echo "</tr>";
$myquery = "SELECT * FROM treat_time ;";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	echo "<tr>";
	//récupération des données
	$ID = mysql_result($Resultat , $Compteur , "ID");
	$machine = mysql_result($Resultat , $Compteur , "machine");
	
	$sql_tab_time = mysql_result($Resultat , $Compteur , "y$year");
	$tab_time = unserialize($sql_tab_time);
	
	echo "<td> $machine </td>";
	
	for ($i = 1 ; $i <= 12 ; $i++)
	{
		echo "<td> <input size='4' type='text' name='tab_time$machine$i' value='".$tab_time[$machine][$i]."'></td>";
				
	}
	
	echo "</tr>";
	
	
}

?>
</table>
<input type="hidden" name="record" value="yes">
<input type="submit" value="enregistrer">
</form>

<form action="pages/pannes_treat_time_new_year.php" method="POST">
Année à ajouter : <input type="text" name="add_year"><br>
<input type="submit" value="ajouter">
</form>

