<?php
include("../_connexion.php");
header("Location: ../index.php?toload=gestion_pages_access&acc_chain=$_GET[acc_chain]&acc_folder=$_GET[acc_folder]#$_GET[file_name]"); 

$call_name = $_GET['call_name'];

$myquery = "SELECT * FROM gestion_pages WHERE call_name='$call_name';";
echo $myquery."<br>";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$access = mysql_result($Resultat , $Compteur , "access");
	echo "testaaa<br>";
}

$exploded_access = explode(",",$access);
print_r($exploded_access);
$tabmax = count($exploded_access);

echo "tabmx : $tabmax";

$exploded_access[$tabmax+1] = $_GET[acc_chain];

print_r($exploded_access);

$new_chain = implode(",",$exploded_access);
$new_chain = str_replace(",,",",",$new_chain);
echo "new_chain $new_chain";

$myquery = "update gestion_pages set access='$new_chain' where call_name='$call_name'";
mysql_query($myquery); 
echo "<br>", $myquery, "<br>" ;

?>
