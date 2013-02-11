<?php
$file_name = $_GET['file_name'];
$call_name = $_POST['call_name'];
$access = $_POST['access'];
$file_name = $_GET['file_name'];
$directory = $_GET['directory'];

$file_name = str_replace("'","",$file_name);



if((isset($_POST['call_name']))&($_POST['call_name']!=""))
{
	?>
	<div align="center">
	<?
//	header("Location: index.php?toload=gestion_pages_access&acc_folder=$directory");
	$myquery = "INSERT INTO `gestion_pages` (`file_name`, `call_name`, `access`, `directory`) VALUES ('$file_name', '$call_name', '$access', '$directory')" ;
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);
	echo "<br> La page $file_name a bien été enregistrée <br> <a href='index.php?toload=gestion_pages_access&acc_folder=$directory'> retour à la liste </a>" ;
	
	?>
	</div>
	<?
	
}
else
{
?>
	<div align="center">
	<form action="index.php?toload=gestion_pages_new&file_name='<? echo $file_name?>'&directory=<? echo $directory?>" method="POST">
	Dossier : <? echo $directory ?> <br>
	Nom du fichier : <? echo $file_name ?> <br>
	Nom d'appel : <input type="text" name="call_name"> <br>
	Accès : <input type="text" name="access"> <br>
	<input type="submit" value="Modifier">
	</form>
	</div>
<?php
}
?>
