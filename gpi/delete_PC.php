<?php
if(isset($_POST['ID']))
{
	$ID = $_POST['ID'];
}
else
{
	$ID = $_GET['ID'];
}
include ("../_connexion.php");
echo $ID;
header("Location: ../index.php?toload=gpi_main");
$myquery = "DELETE FROM gpi where ID='$ID'";
echo $myquery;
mysql_query($myquery);  
?>