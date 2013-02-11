<?
$ID_users = array();
$nom = array();
$prenom = array();
$phone = array();
$fonction = array();
$photo = array();
$tab_ii=0;

$search_cat = ".".$list;

$myquery = "SELECT * FROM users WHERE SUBSTRING(access_chain,2,3) = $search_cat ORDER BY SUBSTRING(access_chain,4,5) ;";
//echo $myquery;
$Resultat = mysql_query($myquery);
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			//$test = mysql_result($Resultat , $Compteur , "SUBSTRING(access_chain,3,3)");
//			echo "test<br>";
			$aff_list = mysql_result($Resultat , $Compteur , "aff_list");
			$actif = mysql_result($Resultat , $Compteur , "actif");
			//echo $actif;
			//$fonction = mysql_result($Resultat , $Compteur , "fonction");
			if(($aff_list=="oui")&($actif=="oui"))
			{
			$tab_ii++;
			//récupération des données
			$ID_users[$tab_ii] = mysql_result($Resultat , $Compteur , "ID");
			//echo $ID_users[$tab_ii]."<br>";
			
			$nom[$tab_ii] = mysql_result($Resultat , $Compteur , "nom");
			//echo $nom[$tab_ii];
			$fonction[$tab_ii] = mysql_result($Resultat , $Compteur , "fonction");
			//echo $fonction[$tab_ii];
			$prenom[$tab_ii] = mysql_result($Resultat , $Compteur , "prenom");
			$phone[$tab_ii] = mysql_result($Resultat , $Compteur , "phone");
			$image_name = mysql_result($Resultat , $Compteur , "image_name");
			$photo[$tab_ii] = "dwld_files/user_images/".$image_name;
			}
		}	
	$nb_colonne = 5;
	$nb_ligne = (floor($Compteur/$nb_colonne))+1;
	
?>
<table>
<?
$tab_i=1;
for($ligne_i=1; $ligne_i <= $nb_ligne; $ligne_i++)
{
	
	echo "<tr>";
	for($col_i=1; $col_i <= $nb_colonne ; $col_i++)
	{	
		//echo "test".$fonction[$tab_ii];
		//echo "test2".$list;
		//if(($fonction[$tab_ii]==$list)&($ID_users[$tab_i]!=''))
		//{
			echo "<td width='200'>";
			echo "<a href='pages/contacts_info.php?ID=".$ID_users[$tab_i]."'onClick='showPopup(this.href);return(false);'> <image src='".$photo[$tab_i]."' height='150' width='150'> </a><br>";
			echo "<a href='pages/contacts_info.php?ID=".$ID_users[$tab_i]."'onClick='showPopup(this.href);return(false);'>".$nom[$tab_i]." ".$prenom[$tab_i]."</a>";
			echo "<br>";
			echo $phone[$tab_i];
			echo "</td>";;
			$tab_i++;
		//}		
		
	}
	echo "</tr>";
}

?>	
</table>
