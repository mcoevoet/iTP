<table align="center">
<tr>
<?
$Resultat = mysql_query("SELECT * FROM machine ORDER BY nom;");
	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$nom = mysql_result($Resultat , $Compteur , "nom");
		$actif = mysql_result($Resultat , $Compteur , "actif");
		$image_name = mysql_result($Resultat , $Compteur , "image_name");
		$photo = "dwld_files/machine_images/".$image_name;
		if($actif == 'oui')
		{
			?>
			<td> 
			<a href="index.php?toload=pannes_liste&machine=<? echo $nom; ?>"> <IMG height="96" width="96" src="<? echo $photo ?>"> </a>
			<br>
			<a href="index.php?toload=pannes_liste&machine=<? echo $nom; ?>"> <? echo $nom ?> </a>
			</td>
			<?
		}
		
	}
?>
</tr>
<tr>
	<td> 
		<a href="index.php?toload=pannes_stats"> <IMG src="images/icon_stats.png" height=96 width=96> </a>
		<br>
		<a href="index.php?toload=pannes_stats"> Statistiques </a> 
	</td>
	<td> 
		<a href="index.php?toload=pannes_downtime"> <IMG src="images/downtime.png" height=96 width=96> </a>
		<br>
		<a href="index.php?toload=pannes_downtime"> Downtime </a> 
	</td>
	<!-- 
	<td> 
		<a href="index.php?toload=pannes_seek"> <IMG src="images/seek.png" height=96 width=96> </a>
		<br>
		<a href="index.php?toload=pannes_seek"> Rechercher une panne </a> 
	</td>
	 -->
	<td> 
		<a href="index.php?toload=pannes_new"> <IMG src="images/pannes_new.jpg" height=96 width=96> </a>
		<br>
		<a href="index.php?toload=pannes_new"> Insérer une panne </a> 
	</td>
	<td> 
		<a href="index.php?toload=pannes_treat_time"> <IMG src="images/icon_time.jpg" height=96 width=122> </a>
		<br>
		<a href="index.php?toload=pannes_treat_time"> Temps de traitements </a> 
	</td>
</tr>
</table>