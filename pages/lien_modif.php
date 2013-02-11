<h3>Modifier un lien : </h3>

<?

$ID=$_GET['ID'];
//echo $ID;
if ((isset($_POST['nom']))&($_POST['nom'] != ""))
{
	
	$nom = $_POST['nom'];
	$link = $_POST['link'];
	$change_image = $_POST['change_image'];
	
		
	$myquery = "update lien set nom='$nom' where ID='$ID'";
	mysql_query($myquery);
	
	$myquery = "update lien set link='$link' where ID='$ID'";
	mysql_query($myquery); 
	
	
	// Testons si le fichier a bien été envoyé et s'il n'y a pas d'erreur
	if (isset($_FILES['new_image']) AND $_FILES['new_image']['error'] == 0)
	{
		// Testons si le fichier n'est pas trop gros
		if ($_FILES['new_image']['size'] <= 1000000)
		{
			// Testons si l'extension est autorisée
			$infosfichier = pathinfo($_FILES['new_image']['name']);
			$extension_upload = $infosfichier['extension'];
			$extensions_autorisees = array('jpg', 'JPG', 'jpeg', 'gif', 'png');
			if (in_array($extension_upload, $extensions_autorisees))
			{
				// On peut valider le fichier et le stocker définitivement
				move_uploaded_file($_FILES['new_image']['tmp_name'], 'dwld_files/link_images/' . basename($_FILES['new_image']['name']));
				//echo "L'envoi a bien &eacute;t&eacute; effectu&eacute; !";
				$image_name = $_FILES['new_image']['name'];
				//echo $_FILES['new_image']['name'];
			}
		}
	}
	if ($change_image == 'yes')
	{
		$myquery = "update lien set image_name='$image_name' where ID='$ID'";
		mysql_query($myquery); 
		//echo "<br>", $myquery, "<br>" ;
	}
	
		
}

//echo $ID;

$Resultat = mysql_query("SELECT * FROM lien WHERE ID=$ID;");

	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$nom = mysql_result($Resultat , $Compteur , "nom");
		$link = mysql_result($Resultat , $Compteur , "link");
		$image_name = mysql_result($Resultat , $Compteur , "image_name");
		$photo = "dwld_files/link_images/".$image_name;
	}

?>
<br>
<div align="center">

<a href="index.php?toload=lien_admin_liste"> Retour à la liste </a>
<form action="index.php?toload=lien_modif&ID=<? echo $ID ?>" method="POST" enctype="multipart/form-data">
<table>
<tr> <td> Nom : </td> <td> <input type="text" name="nom" size="20" value="<? echo $nom ?>"> </td> </tr>
<tr> <td> Lien : </td> <td> <input type="text" name="link" size="50" value="<? echo $link ?>"> </td> </tr>
<tr colspan="2"> <td> Photo : </td> </tr>			
<tr> <td> Changer Photo? </td> <td> <input type="checkbox" name="change_image" value="yes"> 	</td> </tr>
<tr> <td colspan="2"> <IMG src="<?echo $photo?>" width=100 alt="<? echo $photo; ?>"> </td> </tr>
<tr> <td colspan="2"><input type="file" name="new_image"></td> </tr>
<tr> <td><input type="submit" Value="Envoyer"></td> </tr>
</table>
</form>
</div>


