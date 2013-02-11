<?

$user_search = $_SESSION['user'];
//echo $user_search;
$myquery = "SELECT * FROM message WHERE dest='$user_search';";
//echo $myquery;
$Resultat = mysql_query($myquery);
$count_new_mess = 0;

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//echo "test";
	//récupération des données
	$ID = mysql_result($Resultat , $Compteur , "ID");
	$dest = mysql_result($Resultat , $Compteur , "dest");
	$read_item = mysql_result($Resultat , $Compteur , "read_item");
	//$datePosted = mysql_result($Resultat , $Compteur , "date");
	
	if($read_item == 'no')
	{
		$count_new_mess++;
		if ($datePosted=="") { // To store only the oldest message posted date
			$datePosted = mysql_result($Resultat , $Compteur , "date");
		}
		
		//echo "<br> count : ".$count_new_mess;
	}
}
if(isset($_SESSION['user']) AND $_SESSION[logged]=="ok")
{
	if ($count_new_mess > 0)
	{
		echo "<a href='index.php?toload=message_inbox'>Vous avez ".$count_new_mess." nouveau(x) messages.</a>";
	}
	elseif 
	($count_new_mess == 0)
	{
		echo "Pas de nouveau message";	
	}
}
echo " | ";
?>