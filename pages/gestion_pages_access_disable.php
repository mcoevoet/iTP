<?php
include("../_connexion.php");
header("Location: ../index.php?toload=gestion_pages_access&acc_chain=$_GET[acc_chain]&acc_folder=$_GET[acc_folder]#$_GET[file_name]"); 

$call_name = $_GET['call_name'];

$myquery = "SELECT * FROM gestion_pages WHERE call_name='$call_name';";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$access = mysql_result($Resultat , $Compteur , "access");
}

$exploded_access = explode(",",$access);
print_r($exploded_access);

$i=0;
while($i<count($exploded_access)) 
{
	echo "$exploded_access[$i] ?= $_GET[acc_chain] <br>";
	if($exploded_access[$i]==$_GET[acc_chain])
	{
    	echo "1 $exploded_access[$i]<br>";
		$exploded_access[$i] = "";
		echo "2 $exploded_access[$i]<br>";
    }
    $i++;
}

print_r($exploded_access);

$new_chain = implode(",",$exploded_access);
$new_chain = str_replace(",,",",",$new_chain);

echo "new_chain $new_chain";

$myquery = "update gestion_pages set access='$new_chain' where call_name='$call_name'";
mysql_query($myquery); 
//echo "<br>", $myquery, "<br>" ;

?>
