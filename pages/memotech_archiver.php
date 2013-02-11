<?php
header('Location: ../index.php?toload=memotech_main'); 
include ("../_connexion.php");
$ID = $_POST['ID_archive'];

$archive = "oui";
$myquery = "update memotech set archive='$archive' where ID='$ID'";
echo "<br>", $myquery, "<br>" ;
mysql_query($myquery);
?>
