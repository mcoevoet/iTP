<h3>Insérer une nouvelle machine : </h3>

<?
if ((isset($_POST['nom']))&($_POST['nom'] != ""))
{
	include("machine_recup_image.php");
	$nom = $_POST['nom'];
	$actif = "non";
	$constructeur = $_POST['constructeur'];
	$descr = $_POST['descr'];
	$invivo = $_POST['invivo'];
	$date_install = $_POST['date_install'];
		
	$myquery = "insert INTO machine (nom, actif, constructeur,descr,date_install,image_name, invivo) VALUES ('$nom', '$actif', '$constructeur', '$descr', '$date_install', '$image_name', '$invivo')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	echo $nom." a bien été inséré dans la base de données";
		
}
		
?>


<br>
<form action="index.php?toload=machine_new" enctype="multipart/form-data" method="POST">
Nom :<br>
<input type="text" name="nom" size="20"><br>
Constructeur :<br>
<input type="text" name="constructeur" size="20"><br>
Date installation:<br>
<input type="text" name="date_install" size="20"><br>
Description :<br>
<input type="text" name="descr" size="20"><br>
<input type="file" name="new_image">
Image : 
<input type="file" name="new_image">
<br>
Invivo	 <select name="invivo">
			<option value='oui'> Oui </option>
			<option value='non'> Non </option>
		</select> 
<br>
<input type="submit" Value="Envoyer">

</form>
