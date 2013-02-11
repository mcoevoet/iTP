<br>
<br>
<h2 align="center"> Cahier de communication </h2>
<br>
<h3 align="center">Insérer une nouvelle communication : </h3>

<?

if ((isset($_POST['subject']))&($_POST['subject'] != ""))
{
	
	
	include('com_book_upload.php');
	
	$file_name_upload = $fichier;
//	echo "<br>filename : $file_name_upload <br>";
	$subject = mysql_real_escape_string($_POST['subject']);
	$text_com = mysql_real_escape_string($_POST['text_com']);
	$insert_date = mktime();
	
	$dest_fonction = $_POST['dest_fonction'];
//	echo "dest fct = ". $dest_fonction."<br>";
	$i = 0;
	$Resultat = mysql_query("SELECT * FROM users WHERE actif = 'oui'");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$init = mysql_result($Resultat , $Compteur , "initiales");
		$actif = mysql_result($Resultat , $Compteur , "actif");
		$access_chain = mysql_result($Resultat , $Compteur , "access_chain");
		$exploded_access_chain = explode(".",$access_chain);
		$access_fonction = $exploded_access_chain[1];
		//variable pour l'envoi du message
		$exp = $_SESSION[user];
		$link = "<a href:'index.php?toload=com_book_list'> Cahier de communication </a>";
		$message = "Bonjour,<br><br>Une nouvelle communication vient d'être postée par $exp <br> Cette communication se trouve dans le cahier de communication (Menu: Divers> Cahier de communication). <br> Merci de la lire et de la valider après compréhension";
		$message = mysql_real_escape_string($message);
		//$subject = mysql_real_escape_string($subject);
		$message_date = time();
		$read_item = "no";	
		//fin variable 
		
		if(($access_fonction == $dest_fonction)&($actif == "oui"))
		{
			$tab_unread[$i] = $init; 
			$i++;
			//envoi de message
//			echo "<br>filename : $file_name_upload <br>";
			$myquery = "insert INTO message (exp, dest, date, subject, message, read_item) VALUES ('$exp', '$init', '$message_date', '$subject', '$message', '$read_item')";
			//echo $myquery;
			mysql_query($myquery);
			//envoi de message
		}
		
	}
	
		
	$tab_read = array();
	
//	print_r($tab_unread);
	$sql_unread = serialize($tab_unread); 
	$sql_read = serialize($tab_read); 
	$myquery = "insert INTO com_book (subject, text_com, read_item, unread_item, insert_date, dest_fonction, file_name) VALUES ('$subject', '$text_com', '$sql_read', '$sql_unread', '$insert_date', '$dest_fonction', '$file_name_upload')" ;
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);
}


?>


<form action="index.php?toload=com_book_admin_new" method="POST" enctype="multipart/form-data">

<table align="center" class="tabstd">
<tr> <td> Titre : </td> <td> <input type="text" name="subject" size="50"> </td> </tr>
<tr> <td colspan='2'> <textarea name="text_com" cols="62" rows="10" wrap="on"> </textarea> </td> </tr>

<tr> <td colspan="2">Fichier :<input type="hidden" name="MAX_FILE_SIZE" value="300000000">
<input type="file" name="doc"></td> </tr>
<tr> <td colspan='2'> Destiné à : 
<Select name="dest_fonction">
<?
$Resultat = mysql_query("SELECT * FROM users_fonction ORDER BY id;");

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$id = mysql_result($Resultat , $Compteur , "id");
	$descFct = mysql_result($Resultat , $Compteur , "descFct");
	?>
	<option value="<? echo $id ?>"><? echo $descFct;?></option>
	<?
}
?>
</Select>
<input type="submit" Value="Envoyer"></td> </tr>
</table>
</form>
