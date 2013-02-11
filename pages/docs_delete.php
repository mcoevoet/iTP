<?php
include("../_connexion.php");
header('Location: ../index.php?toload=docs_admin_list'); 
$ID = $_GET['ID'];
echo $ID;
$actif = "non";
$myquery = "DELETE FROM docs_db where ID='$ID'";
mysql_query($myquery); 
?>
