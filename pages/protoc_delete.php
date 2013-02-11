<?php
include("../_connexion.php");
header('Location: ../index.php?toload=protoc_admin_list'); 
$ID = $_GET['ID'];
echo $ID;
$actif = "non";
$myquery = "DELETE FROM protoc_db where ID='$ID'";
mysql_query($myquery); 
?>
