<br>
<br>
<h2 align="center"> Cahier de communication </h2>
<br>
<br>
<table class="tabstd" align="center">

<?
//echo "test acces fct = ".$access_fonction;

$Resultat = mysql_query("SELECT * FROM com_book WHERE dest_fonction = $access_fonction ORDER BY insert_date");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$subject = mysql_result($Resultat , $Compteur , "subject");
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$insert_date = mysql_result($Resultat , $Compteur , "insert_date");
		$insert_date=date("d-m-Y", $insert_date);
		
		$sql_unread = mysql_result($Resultat , $Compteur , "unread_item");
		$sql_read = mysql_result($Resultat , $Compteur , "read_item");
		
		echo "<tr>";
		echo "<td class='td4'>";
		echo "<a href='index.php?toload=com_book_view&com_book_ID=$ID'> $subject </a>";
		echo "</td>";
		echo "<td class='td4'> $insert_date </td>";
		
		
		$read = unserialize($sql_read);
		$unread = unserialize($sql_unread);
		
		//print_r($unread);
		
		if (in_array ($_SESSION[user], $read)) 
		{
		echo "<td class='td4'> <IMG height='16' width='16' SRC='images/enable.jpg'> </td> ";
		}
		elseif (in_array ($_SESSION[user], $unread)) 
		{
		echo "<td class='td4'> <IMG height='16' width='16' SRC='images/disable.jpg'> </td> ";
		}
		echo "</tr>";
		
//				
	}
?>
</table>