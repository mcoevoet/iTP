	<table align="center">
		<tr>
			<td> &nbsp </td>
			<td>Lien :</td>
			<td>Actif :</td>
			
		</tr> 
	<?

	$Resultat = mysql_query("SELECT * FROM lien ORDER BY nom;");
		
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$link = mysql_result($Resultat , $Compteur , "link");
		$nom = mysql_result($Resultat , $Compteur , "nom");
		$actif = mysql_result($Resultat , $Compteur , "actif");
		$image_name = mysql_result($Resultat , $Compteur , "image_name");
		$photo = "dwld_files/link_images/".$image_name;
		//echo $link;
		?>
		<tr>
			
			<? if ($image_name !="")
			{
			?>
		
			<td> <IMG src="<?echo $photo?>" width=40 alt="<? echo $photo; ?>" > </td>
			
			<?
			}
			else
			{
				echo "<td> &nbsp </td>";
			}
			?>
			
			<td> <a href="<? echo $link?>"> <? echo $nom ?>  </a></td>
			<?
			if ($actif == "oui")
			{
				?> <td align="center"><a href=pages/lien_disable.php?ID=<? echo $ID ?>><img src="images/enable.jpg" alt="enable"/></a></td> <?
			}
			else
			{
				?> <td align="center"> <a href=pages/lien_enable.php?ID=<? echo $ID ?>><img src="images/disable.jpg" alt="disable"/></a></td> <?
			}
			?>
			<td> <a href=index.php?toload=lien_modif&ID=<? echo $ID ?>> <img src="images/modify.gif" alt="modify"/></a></td>
			</tr>
	
		<?
	
	}

?>
</table>
<br>

<div align="center"> 
<a href=index.php?toload=lien_new><img src="images/add.jpg" alt="addlien" height=32 width=32></a>
</div>