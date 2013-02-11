<?php

$page_ID = $_GET['page_ID'];
$page_new = $_GET['page_new'];
$file_name = $_GET['file_name'];
$directory = $_GET['directory'];

$call_name=$_POST['call_name'];
$access=$_POST['access'];

if((isset($_POST['call_name']))&($_POST['call_name']!=""))
{
	$myquery = "update gestion_pages set call_name='$call_name' where ID='$page_ID'";
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	$myquery = "update gestion_pages set access='$access' where ID='$page_ID'";
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	$myquery = "update gestion_pages set directory='$directory' where ID='$page_ID'";
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
	
	//echo "<br>$myquery<br>";
}
$myquery = "SELECT * FROM gestion_pages WHERE ID='$page_ID';";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$ID = mysql_result($Resultat , $Compteur , "ID");
	$file_name = mysql_result($Resultat , $Compteur , "file_name");
	$call_name = mysql_result($Resultat , $Compteur , "call_name");
	$access = mysql_result($Resultat , $Compteur , "access");
	$directory = mysql_result($Resultat , $Compteur , "directory");
}	

?>
<div align="center">
<form action="index.php?toload=gestion_pages_mod&page_ID=<? echo $page_ID?>&page_new=yes&directory=<? echo $_GET['directory']?>" method="POST">
Nom du dossier : <? echo $_GET['directory'] ?> <br>
Nom du fichier : <? echo $file_name ?> <br>
Nom d'appel : <input type="text" name="call_name" value="<? echo $call_name ?>"> <br>
Accès : <input type="text" name="access" value="<? echo $access ?>"> <br> 
<input type="submit" value="Modifier">
<a href='index.php?toload=gestion_pages'> retour à la liste </a>
</form>
</div>