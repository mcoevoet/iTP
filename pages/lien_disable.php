<?php
include("../_connexion.php");
header('Location: ../index.php?toload=lien_admin_liste'); 
$ID = $_GET['ID'];
echo $ID;
$actif = "non";
$myquery = "update lien set actif='$actif' where ID='$ID'";
mysql_query($myquery); 
?>
