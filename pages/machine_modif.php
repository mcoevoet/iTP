<h3>Modifier une machine : </h3>

<?


if(isset($_POST['ID_posted']))
{
	$ID = $_POST['ID_posted'];
	//echo "test post ".$ID;
}
elseif(isset($_GET['ID']))
{
	$ID = $_GET['ID'];
	//echo "test get ".$ID;
}

if ((isset($_POST['nom']))&($_POST['nom'] != ""))
{
	include("machine_recup_image.php");
	$ID = $_POST['ID_posted'];
	
	$nom = $_POST['nom'];
	$date_install = $_POST['date_install'];
	$descr = $_POST['descr'];
	$invivo = $_POST['invivo'];
	$constructeur = $_POST['constructeur'];
	
	$change_image = $_POST['change_image'];
	//echo "change image = ".$change_image;
	
	if ($change_image == 'yes')
	{
	$myquery = "update machine set image_name='$image_name' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	}
	$myquery = "update machine set nom='$nom' where ID='$ID'";
	mysql_query($myquery); 
	$myquery = "update machine set descr='$descr' where ID='$ID'";
	mysql_query($myquery); 
	$myquery = "update machine set date_install='$date_install' where ID='$ID'";
	mysql_query($myquery); 
	$myquery = "update machine set invivo='$invivo' where ID='$ID'";
	mysql_query($myquery);
	$myquery = "update machine set constructeur='$constructeur' where ID='$ID'";
	mysql_query($myquery); 
}

//$ID = $_GET['ID'];
$Resultat = mysql_query("SELECT * FROM machine WHERE ID=$ID;");

	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$nom = mysql_result($Resultat , $Compteur , "nom");
		$constructeur = mysql_result($Resultat , $Compteur , "constructeur");
		$descr = mysql_result($Resultat , $Compteur , "descr");
		$date_install = mysql_result($Resultat , $Compteur , "date_install");
		$image_name = mysql_result($Resultat , $Compteur , "image_name");
		$photo = "dwld_files/machine_images/".$image_name;
		$invivo = mysql_result($Resultat , $Compteur , "invivo");
		
	}

?>
<br>
<form action="index.php?toload=machine_modif" enctype="multipart/form-data" method="POST">
Nom :<br>
<input type="text" name="nom" size="50" value="<? echo $nom ?>"><br>
Constructeur :<br>
<input type="text" name="constructeur" size="50" value="<? echo $constructeur ?>"><br>
Année installation :<br>
<input type="text" name="date_install" size="50" value="<? echo $date_install ?>"><br>
Description :<br>
<input type="text" name="descr" size="50" value="<? echo $descr ?>"><br>
Photo : <br> 
Changer Photo? <input type="checkbox" name="change_image" value="yes"> 
<br>	
<IMG src="<?echo $photo?>" width=100 height=100 alt="<? echo $photo; ?>" > 
<br>
<input type="file" name="new_image">
<br>
Invivo	 <select name="invivo">
			<option value='<? echo $invivo ?>'> <? echo $invivo ?> </option>
			<option value='oui'> Oui </option>
			<option value='non'> Non </option>
		</select> 
<br>	
<input type="hidden" name="ID_posted" value="<? echo $ID ?>">
<br>

<input type="submit" Value="Envoyer">
</form>

