<h3>Insérer un nouveau document : </h3>

<?
if ((isset($_POST['titre']))&($_POST['titre'] != ""))
{
	include('docs_upload.php');
	$titre = $_POST['titre'];
	$doc = $fichier;
	$descr = $_POST['descr'];
	$cat = $_POST['cat'];
	$add_date = mktime();
	
	
	if($ok_mysql==1)
	{
		
		$myquery = "insert INTO docs_db (titre, doc, descr, cat, add_date) VALUES ('$titre', '$doc', '$descr', '$cat', '$add_date')" ;
		//echo "<br>", $myquery, "<br>" ;
		mysql_query($myquery); 
		
	}
		
}

if ((isset($_POST['new_cat']))&($_POST['new_cat'] != ""))
{
	
	$new_cat = $_POST['new_cat'];
	
	$myquery = "insert INTO docs_cat (cat) VALUES ('$new_cat')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	
		
}

?>

<br> 
<br>
<br>
<form action="index.php?toload=docs_new" method="POST" enctype="multipart/form-data">
Titre :<br>
<input type="text" name="titre" size="50"><br>
Fichier :<br>
<input type="hidden" name="MAX_FILE_SIZE" value="300000000">
<input type="file" name="doc"><br>
Description :<br>
<input type="text" name="descr" size="50"><br>
<br>
Catégorie :<br>
<Select name="cat">
<?

$Resultat = mysql_query("SELECT * FROM docs_cat ORDER BY cat;");

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
<form action="index.php?toload=docs_new" method="POST" enctype="multipart/form-data">
Nouvelle catégorie : <br>
<input type="text" name="new_cat"><br>
<input type="submit" value="Ajouter catégorie">
</form>
<br>
<a href="index.php?toload=docs_admin_list"> Retour à la liste </a>
<br>
<br>



<?php

?>