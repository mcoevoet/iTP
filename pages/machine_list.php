	<table align="center">
		<tr>
			<td>Machine :</td>
			<td>Constructeur :</td>
			<td>Année installation</td>
			<td>Description</td> 
			<td>Actif :</td>
			
		</tr> 
	<?

	$Resultat = mysql_query("SELECT * FROM machine ORDER BY nom;");
		
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$nom = mysql_result($Resultat , $Compteur , "nom");
		$constructeur = mysql_result($Resultat , $Compteur , "constructeur");
		$date_install = mysql_result($Resultat , $Compteur , "date_install");
		$descr = mysql_result($Resultat , $Compteur , "descr");
		
		$actif = mysql_result($Resultat , $Compteur , "actif");
			
		?>
		<tr>
			<td><? echo $nom ?></td>
			<td><? echo $constructeur ?></td>
			<td><? echo $date_install ?></td>
			<td><? echo $descr ?></td>
			<?
			if ($actif == "oui")
			{
				?> <td align="center"><a href=pages/machine_disable.php?ID=<? echo $ID ?>><img src="images/enable.jpg" alt="enable"/></a></td> <?
			}
			else
			{
				?> <td align="center"> <a href=pages/machine_enable.php?ID=<? echo $ID ?>><img src="images/disable.jpg" alt="disable"/></a></td> <?
			}
			?>
			<td> <a href="index.php?toload=machine_modif&ID=<? echo $ID; ?>"><img src="images/modify.gif" alt="mod"/></a></td>
	
		</tr>
	
		<?
	
	}

?>
</table>
<br>
<div align="center"> 

<a href=index.php?toload=machiner_new><img src="images/add.jpg" alt="addmachine" height=32 width=32></a>
</div>