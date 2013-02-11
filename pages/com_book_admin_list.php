<br>
<br>
<h2 align="center"> Cahier de communication </h2>

<br>
<br>
<div align="center"> 
<a href=index.php?toload=com_book_admin_new>Insérer une nouvelle communication</a>
</div>
<br>
<br>

<table align="center" class='tabstd'>
<tr><td class='td4'> Sujet </td> <td class='td4'> Date </td> <td class='td4'> Destiné à </td> <td class='td4'> Pourcentage de validation</td></tr>
<?
//echo "test acces fct = ".$access_fonction;
$Resultat = mysql_query("SELECT * FROM com_book ORDER BY insert_date DESC");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$subject = mysql_result($Resultat , $Compteur , "subject");
		$insert_date = mysql_result($Resultat , $Compteur , "insert_date");
		$insert_date=date("d-m-Y", $insert_date);
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$dest_fonction = mysql_result($Resultat , $Compteur , "dest_fonction");
		
		$sql_unread = mysql_result($Resultat , $Compteur , "unread_item");
		$sql_read = mysql_result($Resultat , $Compteur , "read_item");
		$read = unserialize($sql_read);
		$unread = unserialize($sql_unread);
		$file_name = mysql_result($Resultat , $Compteur , "file_name");
		
		$count_read = count($read);
		$count_unread = count($unread);
		
		$read_ratio = ($count_read/($count_read+$count_unread));
		$read_ratio = round($read_ratio*100);
		
		echo "<tr>";
		
		echo "<td class='td4'> <a href='index.php?toload=com_book_admin_view&com_book_ID=$ID'> $subject </a> </td>";
		
		echo "<td class='td4'> $insert_date </td>";
		
		$Resultat1 = mysql_query("SELECT * FROM users_fonction WHERE id=$dest_fonction");
		for ($Compteur1=0 ; $Compteur1 < mysql_numrows($Resultat1) ; $Compteur1++)
		{
			$descFct = mysql_result($Resultat1 , $Compteur1 , "descFct");
		}
		echo "<td class='td4'> $descFct </td>";
		
		
		
		
		echo "<td class='td4'> $read_ratio % </td>";
		
		if((isset($file_name))&($file_name!=''))
		{
			echo "<td class='td4'> <a target='_blank' href='dwld_files/com_book/$file_name'><image height=24 width=24 SRC='images/attachment-icon.png'></a></td></tr>";	
		}
		
		echo "</tr>";
		
	}
?>
</table>
