<?
$ID = $_GET['com_book_ID'];
header("Location: ../index.php?toload=com_book_view&com_book_ID=$ID");
include("../_connexion.php");
$ID = $_GET['com_book_ID'];
$user = $_GET['user'];

$myquery = "SELECT * FROM com_book WHERE ID = $ID";
echo $myquery;
$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$subject = mysql_result($Resultat , $Compteur , "subject");
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$text_com = mysql_result($Resultat , $Compteur , "text_com");
		$sql_unread = mysql_result($Resultat , $Compteur , "unread_item");
		$sql_read = mysql_result($Resultat , $Compteur , "read_item");
		$insert_date = mysql_result($Resultat , $Compteur , "insert_date");
		
		$read = unserialize($sql_read);
		$unread = unserialize($sql_unread);
		
		print_r($read);
		print_r($unread);
		
		$key = array_search($user,$unread);
		
		unset($unread[$key]);
		
		
		array_push($read,$user);
		
		print_r($read);
		print_r($unread);
		
		$sql_read = serialize($read);
		$sql_unread = serialize($unread);
	}

$myquery = "update com_book set read_item='$sql_read' where ID='$ID'";
mysql_query($myquery); 
echo "<br>", $myquery, "<br>" ;	
$myquery = "update com_book set unread_item='$sql_unread' where ID='$ID'";
mysql_query($myquery); 
echo "<br>", $myquery, "<br>" ;	


?>