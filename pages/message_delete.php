<?php
header('Location: ../index.php?toload=message_inbox');
include('../_connexion.php');
$message_ID = $_GET['message_ID'];

$myquery = "DELETE FROM message where ID='$message_ID'";

echo $myquery;
mysql_query($myquery); 	
?>