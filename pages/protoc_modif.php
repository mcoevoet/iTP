<h3 align="center">Modifier un Protocole : </h3>

<?

$ID=$_GET['ID'];

if ((isset($_POST['titre']))&($_POST['titre'] != ""))
{
	$change_file = $_POST['change_file'];
	$ID = $_POST['ID_posted'];
	
	//echo "change_file??".$change_file;
	
	if ($change_file == "ok")
	{
		include('protoc_upload.php');
	}
	else
	{
		$ok_mysql = 1;
	}
		
	$titre = $_POST['titre'];
	$doc = $fichier;
	$descr = $_POST['descr'];
	$cat = $_POST['cat'];
	$add_date = mktime();
	
	
	if($ok_mysql==1)
	{
		
		
		$myquery = "update protoc_db set titre='$titre' where ID='$ID'";
		mysql_query($myquery); 
		$myquery = "update protoc_db set descr='$descr' where ID='$ID'";
		mysql_query($myquery); 
		$myquery = "update protoc_db set cat='$cat' where ID='$ID'";
		mysql_query($myquery); 
		if ($change_file == "ok")
		{
			$myquery = "update protoc_db set doc='$doc' where ID='$ID'";
			mysql_query($myquery);
		} 
		$myquery = "update protoc_db set add_date='$add_date' where ID='$ID'";
		mysql_query($myquery); 
		
		mysql_query($myquery); 
		
	}
	$delete_record = "ok";
}

if ((isset($_POST['new_cat']))&($_POST['new_cat'] != ""))
{
	
	$new_cat = $_POST['new_cat'];
	$myquery = "insert INTO protoc_cat (cat) VALUES ('$new_cat')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	
		
}

?>
<br> 
<br>
<br>



<?

//echo "delete? ".$delete_record;


$ID = $_GET['ID'];
$Resultat = mysql_query("SELECT * FROM protoc_db WHERE ID=$ID;");

if($delete_record != "ok")
{
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$titre = mysql_result($Resultat , $Compteur , "titre");
		//$doc = mysql_result($Resultat , $Compteur , "doc");
		$descr = mysql_result($Resultat , $Compteur , "descr");
		$cat = mysql_result($Resultat , $Compteur , "cat");
		//$add_date = mysql_result($Resultat , $Compteur , "add_date"); 	
	}

?>
<table align="center">
<tr>
<td>
<br>
<form action="index.php?toload=protoc_modif" method="POST" enctype="multipart/form-data">
Titre :<br>
<input type="text" name="titre" size="50" value="<? echo $titre ?>"><br>
Changer le fichier?
<input type="checkbox" name="change_file" value="ok">
<br>
Fichier :<br>
<input type="hidden" name="MAX_FILE_SIZE" value="300000000">
<input type="file" name="doc"><br>
Description :<br>
<input type="text" name="descr" size="50" value="<? echo $descr ?>"><br>
<input type="hidden" name="ID_posted" value="<? echo $ID ?>">
<br>
Catégorie :<br>
<Select name="cat">
<option><? echo $cat ?> </option>
<?

$Resultat = mysql_query("SELECT * FROM protoc_cat ORDER BY cat;");

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$cat = mysql_result($Resultat , $Compteur , "cat");
	?>
	<option><? echo $cat;?></option>
	<?
}


?>
</Select> 
<input type="submit" Value="Envoyer">
</form>
<form action="index.php?toload=protoc_modif&ID=<?echo $ID?>" method="POST" enctype="multipart/form-data">
Nouvelle catégorie : <br>
<input type="text" name="new_cat"><br>
<input type="submit" value="Ajouter catégorie">
</form>
<br>
<br>
<br>
</td>
</tr>
</table>


<?php
}
elseif($delete_record == "ok")
{
	echo "Modifications effectuées";
	echo "<br><a href='index.php?toload=protoc_admin_list'> Retour à la liste </a>";
}
?>