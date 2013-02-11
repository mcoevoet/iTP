<?php
if(isset($_POST['message']))
{
	
	$exp = "Admin";

	$message = mysql_real_escape_string($_POST['message']);
	
	$subject = mysql_real_escape_string($_POST['subject']);
	$message_date = time();
	$read_item = "no";	
	//$message_patient_data = $_POST['message_patient_data'];
	$myquery = "SELECT * FROM users WHERE actif = 'oui' ;";
	//echo $myquery;
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$dest = mysql_result($Resultat , $Compteur , "INITIALES");
		$myquery = "insert INTO message (exp, dest, date, subject, message, read_item, message_patient_data) VALUES ('$exp', '$dest', '$message_date', '$subject', '$message', '$read_item', '$message_patient_data')";
		//echo $myquery;
		mysql_query($myquery);
	}
}

include('message_js_func.php');

?>

<div align="center">
<form action="index.php?toload=admin_mail" method="POST" name="new_mess_form" onsubmit="return verif_form()">
Sujet : <input type="text" name="subject">
<br>

<br>
<textarea name="message" cols="50" rows="10" wrap="on">

</textarea>
<br>

<input type="submit" value="envoyer">
</form>
</div>
