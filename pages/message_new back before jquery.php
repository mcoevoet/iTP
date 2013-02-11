<?
if(isset($_POST['dest']))
{
	//include('_connexion.php');
	//echo "test";
	$exp = $_POST['exp'];
	$dest = $_POST['dest'];
	
//	echo "dest : $dest<br>";
	$exploded_dest = explode(";", $dest);
	
	$dest = $exploded_dest[1];
	
	$dest_mail = $exploded_dest[1];
	
//	echo "dest_mail = $dest_mail <br>";
	
	$dest_type = $exploded_dest[0];
	
	
//	echo "dest : $dest_mail<br>";
	$message = $_POST['message'];
	$message_rec = mysql_real_escape_string($_POST['message']);
	$subject = mysql_real_escape_string($_POST['subject']);
	$message_date = time();
	$read_item = "no";	
	$message_patient_data = mysql_real_escape_string($_POST['message_patient_data']);
	$send_email_copy = $_POST['send_email_copy'];
	
	
	if($dest_type == "pers")
	{
		$myquery = "insert INTO message (exp, dest, date, subject, message, read_item, message_patient_data) VALUES ('$exp', '$dest_mail', '$message_date', '$subject', '$message_rec', '$read_item', '$message_patient_data')";
//		echo $myquery;
		mysql_query($myquery);
//		echo "dest : ".$dest_mail;
		echo "Votre message à bien été envoyé à ".$dest_mail; 
		if ($send_email_copy == "yes")
		{
			include('message_email_copy.php');
		}		
	}
	elseif($dest_type == "group")
	{
		$Resultat = mysql_query("SELECT * FROM users WHERE actif = 'oui'");
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			$init = mysql_result($Resultat , $Compteur , "initiales");
			$actif = mysql_result($Resultat , $Compteur , "actif");
			$access_chain = mysql_result($Resultat , $Compteur , "access_chain");
			$exploded_access_chain = explode(".",$access_chain);
			$access_fonction = $exploded_access_chain[1];
			//variable pour l'envoi du message
			
//			echo "access fonction = $access_fonction <br>";
	
//			echo "dest fonction = $dest_mail<br>";
			//fin variable 
		
			if($access_fonction == $dest_mail)
			{
				//envoi de message
//				echo "<br>filename : $file_name_upload <br>";
				$myquery = "insert INTO message (exp, dest, date, subject, message, read_item, message_patient_data) VALUES ('$exp', '$init', '$message_date', '$subject', '$message', '$read_item', '$message_patient_data')";
//				echo "$myquery<br>";
				mysql_query($myquery);
			}
			echo "Votre message à bien été envoyé à ".$dest_mail; 
		}
		
	}
	
	
		
}

include('message_js_func.php');

?>

<div align="center">
<form action="index.php?toload=message_new" method="POST" name="new_mess_form" onsubmit="return verif_form()">
Sujet : <input type="text" name="subject" <? if(isset($_GET['subject'])){echo "value=".$_GET['subject'];} ?>>
<br>
Envoyer info patient en cours : <input type="checkbox" name="send_data_pat" value="yes" onChange="message_js_func()"/>
<br>
<textarea name="message_patient_data" cols="50" rows="5" wrap="on">
<?
if(isset($_GET['message_patient_data']))
{
	echo nl2br($_GET['message_patient_data']);
}
else
{}
echo "Info patient";
?>

</textarea>
<br>
<textarea name="message" cols="50" rows="10" wrap="on">

</textarea>
<br>
Destinataire :
<select name="dest" onChange="mail_enable()">
<option value=""> </option> 
<?


if(isset($_GET['dest']))
{
$dest_search = $_GET['dest'];
$Resultat = mysql_query("SELECT * FROM users WHERE INITIALES='$dest_search' ORDER BY FONCTION;");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
			
		//récupération des données
		$actif = mysql_result($Resultat , $Compteur , "actif");
		if ($actif == "oui")
		{
			$dest_type = "pers";
			$init = mysql_result($Resultat , $Compteur , "initiales");
			$mail_dest = mysql_result($Resultat , $Compteur , "MAIL");
			$mail_dest_act = mysql_result($Resultat , $Compteur , "mail_act");
			echo "<option value='".$dest_type.";".$init.";".$mail_dest_act.";".$mail_dest."'>".$init."</OPTION>";
		}
	}	
}	


$Resultat = mysql_query("SELECT * FROM users ORDER BY SUBSTRING(access_chain,2,3) DESC;");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$actif = mysql_result($Resultat , $Compteur , "actif");
	if ($actif == "oui")
	{
		$dest_type = "pers";
		//$fonction = mysql_result($Resultat , $Compteur , "FONCTION");
		$access_chain = mysql_result($Resultat , $Compteur , "access_chain");
		$exploded_access_chain = explode(".",$access_chain);
		$access_fonction = $exploded_access_chain[1];
		$fonction = $access_fonction;
//		echo $fonction;
		$Resultatb = mysql_query("SELECT * FROM users_fonction WHERE id='$fonction';");
		for ($Compteurb=0 ; $Compteurb < mysql_numrows($Resultatb) ; $Compteurb++)
		{
			$colorGroup = mysql_result($Resultatb , $Compteurb , "colorGroup");
		}
		$init = mysql_result($Resultat , $Compteur , "initiales");
		$mail_dest = mysql_result($Resultat , $Compteur , "MAIL");
		$mail_dest_act = mysql_result($Resultat , $Compteur , "mail_act");
		echo "<option style='background-color:".$colorGroup.";' value='".$dest_type.";".$init.";".$mail_dest_act.";".$mail_dest."'>".$init."</OPTION>";
	}
}


$Resultat = mysql_query("SELECT * FROM users_fonction ORDER BY FONCTION DESC;");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$dest_type = "group";
	$id = mysql_result($Resultat , $Compteur , "id");
	$descFct = mysql_result($Resultat , $Compteur , "descFct");
	$colorGroup = mysql_result($Resultat , $Compteur , "colorGroup");
//	$init = mysql_result($Resultat , $Compteur , "initiales");
	$mail_dest = $id;
	echo "<option style='background-color:".$colorGroup.";' value='".$dest_type.";".$mail_dest."'>".$descFct."</OPTION>";
	
}

?>
	
	
</select>
<!-- envoi des infos patients via form  -->
<?
//recup info patient pour envoyr dans le JS
$search_id = $_SESSION['idPatStluc'];
//echo $search_id;
$Resultat = mysql_query("SELECT * FROM patient_admin WHERE idStluc='$search_id';");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$firstname = mysql_result($Resultat , $Compteur , "firstname");
	//echo "firstname : ".$firstname;
	$lastname = mysql_result($Resultat , $Compteur , "lastname");
}

//echo "firstname : ".$firstname;

//echo "test";

$req = $_SESSION[req];
$ptv = $_SESSION[ptv];
$volcible = $_SESSION[volcible];
$plan = $_SESSION[plan];


$Resultat = mysql_query("SELECT * FROM patient_treat WHERE idStluc='$search_id' AND ptv='$ptv' AND plan='$plan' AND volcible='$volcible' AND req='$req';");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$planName = mysql_result($Resultat , $Compteur , "planName");
	$volcibleName = mysql_result($Resultat , $Compteur , "volcibleName");
	$ptvName = mysql_result($Resultat , $Compteur , "ptvName");
}


?>

<input type="hidden" name="req" value="<? echo $req; ?>">
<input type="hidden" name="ptv" value="<? echo $ptv; ?>">
<input type="hidden" name="ptvName" value="<? echo $ptvName; ?>">
<input type="hidden" name="volcible" value="<? echo $volcible; ?>">
<input type="hidden" name="volcibleName" value="<? echo $volcibleName; ?>">
<input type="hidden" name="plan" value="<? echo $plan; ?>">
<input type="hidden" name="planName" value="<? echo $planName; ?>">

<input type="hidden" name="idPatStluc" value="<? echo $_SESSION['idPatStluc']; ?>">
<input type="hidden" name="firstname" value="<? echo $firstname; ?>">
<input type="hidden" name="lastname" value="<? echo $lastname; ?>">

<input type="hidden" name="exp" value="<? echo $_SESSION['user']; ?>">
<br>
Envoyer une copie à l'adresse email : <input type="checkbox" name="send_email_copy" value="yes"/>
<input type="submit" value="envoyer">
</form>
</div>