<?php 
include("../_connexion.php");
header('Location: ../index.php?toload=user_admin_list'); 
include("_imgmenu.php");
$ID = $_GET['ID'];
include("_imgmenu.php");

$actif = "oui";
$myquery = "update users set actif='$actif' where ID='$ID'";
mysql_query($myquery); 
//echo "<br>", $myquery, "<br>" ;


?>
