<h3>Insérer un nouveau lien : </h3>

<?

if ((isset($_POST['nom']))&($_POST['nom'] != ""))
{

	
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

	
	$nom= $_POST['nom'];
	$actif = "oui";
	$link= $_POST['link'];
		
	$myquery = "insert INTO lien (nom, actif, link, image_name) VALUES ('$nom', '$actif', '$link', '$image_name')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	echo "Le lien ".$nom." a bien été inséré dans la base de données.<br>";
		
}
		
?>


<br>

<div align="center">

<a href="index.php?toload=lien_admin_liste"> Retour à la liste </a>
<form action="index.php?toload=lien_new" method="POST" enctype="multipart/form-data">
<table>
<tr> <td> Nom : </td> <td> <input type="text" name="nom" size="20"> </td> </tr>
<tr> <td> Lien : </td> <td> <input type="text" name="link" size="50"> </td> </tr>
<tr colspan="2"> <td> Photo : </td> </tr>			
<tr> <td colspan="2"><input type="file" name="new_image"></td> </tr>
<tr> <td><input type="submit" Value="Envoyer"></td> </tr>
</table>
</form>
</div>
