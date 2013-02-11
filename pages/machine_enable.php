<?php 
include("../_connexion.php");
header('Location: ../index.php?toload=machine_list'); 
$ID = $_GET['ID'];
$actif = "oui";
$myquery = "update machine set actif='$actif' where ID='$ID'";
mysql_query($myquery); 
//echo "<br>", $myquery, "<br>" ;
?>
