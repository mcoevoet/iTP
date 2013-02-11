<?php
header('Location: ../index.php?toload=settings');
include("../_connexion.php");
$mail_data['smtp'] = $_POST['mail_smtp'];
$mail_data['port'] = $_POST['mail_port'];
$mail_data['user_name'] = $_POST['mail_user_name'];
$mail_data['password'] = $_POST['mail_password'];
$mail_data['from_adress'] = $_POST['mail_from_adress'];
$mail_data['from_name'] = $_POST['mail_from_name'];

$mail_data = serialize($mail_data);

$myquery = "update general_settings set mail_data='$mail_data' where conf_id='0'";
mysql_query($myquery); 
//echo "<br>", $myquery, "<br>" ;

$general_data['language'] = $_POST['language'];
$general_data['refresh_time'] = $_POST['refresh_time'];
$general_data['emergency_delay'] = $_POST['emergency_delay'];

$general_data['limitVolCible'] = $_POST['limitVolCible'];
$general_data['limitPTV'] = $_POST['limitPTV'];
$general_data['limitPlan'] = $_POST['limitPlan'];

$general_data = serialize($general_data);

$myquery = "update general_settings set general_data='$general_data' where conf_id='0'";
mysql_query($myquery); 
//echo "<br>", $myquery, "<br>" ;

?>