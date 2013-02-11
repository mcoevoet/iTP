<?php

$myquery = "SELECT * FROM general_settings WHERE conf_id='0';";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$mail_data = mysql_result($Resultat , $Compteur , "mail_data");
}
$mail_data = unserialize($mail_data);

//$message = nl2br($message);
//$message = preg_replace('#(\\\r|\\\r\\\n|\\\n)#', '<br/>', $message);
//$message = htmlspecialchars(nl2br($message));
$message = str_replace("\r\n", "\n", $message);
$message_patient_data = str_replace("\r\n", "\n", $message_patient_data);


$user_search = $dest_mail;

//echo "<br> email : $user_search <br>";

$myquery = "SELECT * FROM users WHERE INITIALES='$user_search';";
$Resultat = mysql_query($myquery);


for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$email_dest = mysql_result($Resultat , $Compteur , "MAIL");
}
error_reporting(E_STRICT);
date_default_timezone_set('Europe/Paris');

require_once('../PHPMailer_v5.1/class.phpmailer.php');
require_once('../PHPMailer_v5.1/class.smtp.php');

$mail = new PHPMailer();
$mail->SetLanguage('fr');
$mail->IsSMTP();
$mail->SMTPDebug  = false;
$mail->SMTPAuth   = false;

//1and1 fonctionne en local
$mail->Host       = $mail_data['smtp'];
$mail->Port       = $mail_data['port'];
$mail->Username   = $mail_data['user_name'];
$mail->Password   = $mail_data['password'];
$mail->From       = $mail_data['from_adress'];
$mail->FromName   = $mail_data['from_name'];

//Caractéristiques du message
$mail->CharSet     = 'UTF-8';
$mail->ContentType = 'text/plain';
$mail->Encoding    = '8bit';

$mail->Subject    = "iTP Message :".$subject;

$mail->IsHTML(true);

if($message_patient_data == "Info patient")
{
	$mail->Body       = "<u>Envoyé par</u> : ".$exp."<br> <br> <u> Message</u> : <br><br>".nl2br($message);
}
else{
	$mail->Body       = "<u>Envoyé par</u> : ".$exp."<br> <br> <u>Info patient</u> : <br><br>".nl2br($message_patient_data)."<br><br><u> Message</u> : <br><br>".nl2br($message);
	
}
$mail->AltBody = "no html \n\nEnvoyé par: ".$exp."\n\nInfo patient : \n".$message_patient_data."\n\n\nMessage: \n".$message;
$mail->WordWrap   = 0;

//Ajout éventuel de destinataires
$mail->AddAddress($email_dest);

//Ajout éventuel de destinataires en copie
//$mail->AddCC("adresse de courriel", "Nom destinataire"winking smiley;
//Ajout éventule de destinataires en copie cachée
//$mail->AddBCC("adresse de courriel", "Nom destinataire"winking smiley;

if(!$mail->Send()) echo "<p class='erreur'>PHPMailer Erreur d'envoi : ".$mail->ErrorInfo."</p>\n";
else echo "<p class='noten'>PHPMailer : Le Message a été envoyé !</p>\n";
$mail->SmtpClose();
unset($mail);
?>