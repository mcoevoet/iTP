<?php 
include("../_connexion.php");
header('Location: ../index.php?toload=user_admin_list'); 

$ID = $_GET['ID'];

echo $ID;
// Connexion

$actif = "non";
$myquery = "update users set mail_act='$actif' where ID='$ID'";
mysql_query($myquery); 
?>
