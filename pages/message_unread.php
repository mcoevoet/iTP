<?php
header('Location: ../index.php?toload=message_inbox');
include('../_connexion.php');
$message_ID = $_GET['message_ID'];
$read_item = "no";

$myquery = "update message set read_item='$read_item' where ID='$message_ID'";

echo $myquery;
mysql_query($myquery); 	
?>