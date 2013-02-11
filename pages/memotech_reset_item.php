<?php
header('Location: ../index.php?toload=memotech_main'); 
include ("../_connexion.php");
$ID = $_POST['ID_reset'];

$Resultat = mysql_query("SELECT * FROM memotech WHERE ID='$ID'");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$period = mysql_result($Resultat , $Compteur , "period");
	$date_limit = mysql_result($Resultat , $Compteur , "date_limit");
}

$date_limit = $date_limit + ($period*24*60*60);

if(date('w',$date_limit) == 0)
{
	$date_limit = $date_limit + (1*24*60*60);
}
elseif(date('w',$date_limit) == 6)
{
	$date_limit = $date_limit + (2*24*60*60);
}

$myquery = "update memotech set date_limit='$date_limit' where ID='$ID'";
mysql_query($myquery);
echo $myquery;
?>
