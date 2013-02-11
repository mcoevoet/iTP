<?

$photo = array();
$nom = array();
$link = array();
$image_name = array();

$tab_ii = 0;

$Resultat = mysql_query("SELECT * FROM lien ORDER BY nom;");
	
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$ID = mysql_result($Resultat , $Compteur , "ID");
	
	$actif = mysql_result($Resultat , $Compteur , "actif");
	
	//echo $link;
		
	if ($actif == "oui")
	{
		$tab_ii++;
		$link[$tab_ii] = mysql_result($Resultat , $Compteur , "link");
		$nom[$tab_ii] = mysql_result($Resultat , $Compteur , "nom");
		$image_name[$tab_ii] = mysql_result($Resultat , $Compteur , "image_name");
		$photo[$tab_ii] = "dwld_files/link_images/".$image_name[$tab_ii];
		
	}
		
}
$nb_colonne = 5;
$nb_ligne = (floor($Compteur/$nb_colonne))+1;

?>

<table align="center">
<?
$tab_i=1;
$tab_ib=1;
for($ligne_i=1; $ligne_i <= $nb_ligne; $ligne_i++)
{
	
		
	echo "<tr>";
	for($col_i=1; $col_i <= $nb_colonne ; $col_i++)
	{	
		
		
		echo "<td align='center' width='180'>";
		echo "<a target='_blank' href='".$link[$tab_i]."'> <image src='".$photo[$tab_i]."' width='150'> </a><br>";
//		echo "<a href='".$link[$tab_i]."'>".$nom[$tab_i]."</a><br>";
		echo "</td>";;
		$tab_i++;
			
		
	}
	echo "</tr>";
	echo "<tr>";
	for($col_i=1; $col_i <= $nb_colonne ; $col_i++)
	{	
		
		
		echo "<td align='center' width='180'>";
//		echo "<a href='".$link[$tab_i]."'> <image src='".$photo[$tab_i]."' width='150'> </a><br>";
		echo "<a target='_blank' href='".$link[$tab_ib]."'>".$nom[$tab_ib]."</a><br>";
		echo "<br>";
		echo $phone[$tab_ib];
		echo "</td>";;
		$tab_ib++;
			
		
	}
	echo "</tr>";
	
}

?>	
</table>

