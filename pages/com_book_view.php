<br>
<br>
<h2 align="center"> Cahier de communication </h2>
<table align="center" class='tabstd'>

<br>
<br>
<div align="center"> 
<a href=index.php?toload=com_book_list>Retour à la liste</a>
</div>
<br>
<br>

<?

$ID = $_GET['com_book_ID'];

//echo "test acces fct = ".$access_fonction;
//echo "test user = ".$_SESSION[user];
$user = $_SESSION[user];


$myquery = "SELECT * FROM com_book WHERE ID = $ID";
//echo $myquery;
$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$subject = mysql_result($Resultat , $Compteur , "subject");
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$text_com = mysql_result($Resultat , $Compteur , "text_com");
		$file_name = mysql_result($Resultat , $Compteur , "file_name");
		
		$sql_unread = mysql_result($Resultat , $Compteur , "unread_item");
		$sql_read = mysql_result($Resultat , $Compteur , "read_item");
		$insert_date = mysql_result($Resultat , $Compteur , "insert_date");
		
		$text_com = nl2br($text_com);
		
		echo "<tr><td class='td1'> Sujet : $subject </td> </tr>";
		echo "<tr><td class='td1'> $text_com </td> </tr>";
		
		$read = unserialize($sql_read);
		$unread = unserialize($sql_unread);
		
		//print_r($unread);
		
		if (in_array ($_SESSION[user], $read)) {
		$read_ok = "Vous avez déjà  validé ce message";  
		}
		elseif (in_array ($_SESSION[user], $unread)) {
		$read_ok = "Vous devez valider ce message";  
		echo "<tr><td class='td1'> <a href='pages/com_book_valid.php?com_book_ID=$ID&user=$user'> Valider le sujet </a> </td> </tr>";
		}
		
//		echo "filenema: $file_name";
		if((isset($file_name))&($file_name!=''))
		{
			echo "<tr> <td class='td4'> <a target='_blank' href='dwld_files/com_book/$file_name'>$file_name</a></td></tr>";	
		}
		echo "<tr><td class='td1'>$read_ok </td> </tr>";
		
		
		
	}
?>
</table>