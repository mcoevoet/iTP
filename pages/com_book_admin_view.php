<br>
<br>
<h2 align="center"> Cahier de communication </h2>

<br>
<br>
<div align="center"> 
<a href=index.php?toload=com_book_admin_list>Retour à la liste</a>
</div>
<br>
<br>

<table class="tabstd" align="center">



<?

$ID = $_GET['com_book_ID'];

//echo "test acces fct = ".$access_fonction;
//echo "test user = ".$_SESSION[user];
//$user = $_SESSION[user];


$myquery = "SELECT * FROM com_book WHERE ID = $ID";
//echo $myquery;
$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$subject = mysql_result($Resultat , $Compteur , "subject");
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$text_com = mysql_result($Resultat , $Compteur , "text_com");
		$sql_unread = mysql_result($Resultat , $Compteur , "unread_item");
		$sql_read = mysql_result($Resultat , $Compteur , "read_item");
		$insert_date = mysql_result($Resultat , $Compteur , "insert_date");
		$file_name = mysql_result($Resultat , $Compteur , "file_name");
		
		echo "<tr><td class='td4'> $subject </td> </tr>";
		echo "<tr><td class='td4'> $text_com </td> </tr>";
		
		$read = unserialize($sql_read);
		$unread = unserialize($sql_unread);
		
//		print_r($unread);
		
		if (in_array ($_SESSION[user], $read)) {
		$read_ok = "ok";  
		}
		elseif (in_array ($_SESSION[user], $unread)) {
		$read_ok = "nok";  
		}
		
		if((isset($file_name))&($file_name!=''))
		{
			echo "<tr> <td class='td4'> <a target='_blank' href='dwld_files/com_book/$file_name'>$file_name</a></td></tr>";	
		}
				
		echo "<tr><td class='td4'> Validé : ";
		foreach ($read as &$value)
		{
			echo $value.", ";
		}
		echo "</td> </tr>";
		
		echo "<tr><td class='td4'> Pas encore validé : ";
		foreach ($unread as &$value)
		{
			echo $value.", ";
		}
		echo "</td> </tr>";
		
			
	}
?>
</table>