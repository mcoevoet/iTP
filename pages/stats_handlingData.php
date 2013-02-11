<?php
include("../_connexion.php");
header("Content-Type: text/plain"); // Utilisation d'un header pour spécifier le type de contenu de la page. Ici, il s'agit juste de texte brut (text/plain). 

$table = (isset($_GET["table"])) ? $_GET["table"] : NULL;
$field = (isset($_GET["field"])) ? $_GET["field"] : NULL;

$idfield = str_replace("actionId_", "", $field);

$myquery = "SELECT * FROM step_action WHERE id = $idfield ";
//echo "$myquery <br>";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$item = mysql_result($Resultat , $Compteur , "content");
	echo "$item";	
}

//echo "$table/$field";


?>

