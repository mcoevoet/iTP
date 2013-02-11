<?php 
include("../_connexion.php");
header('Location: ../index.php?toload=lien_admin_liste');  
$ID = $_GET['ID'];
$actif = "oui";
$myquery = "update lien set actif='$actif' where ID='$ID'";
mysql_query($myquery); 
//echo "<br>", $myquery, "<br>" ;
?>
