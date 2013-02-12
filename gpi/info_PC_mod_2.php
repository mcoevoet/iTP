<?php 
$ID = $_POST['ID'];
header("Location: ../index.php?toload=gpi_info_PC_mod&ID=$ID"); 
include ("../_connexion.php");


$nom = $_POST['nom'];
$type = $_POST['type'];
$IP = $_POST['IP'];
$data1['local'] = $_POST['local'];
$data1['num_local'] = $_POST['num_local'];
$data1['marque'] = $_POST['marque'];
$data1['CPU'] = $_POST['CPU'];
$data1['RAM'] = $_POST['RAM'];
$data1['disque_dur'] = $_POST['disque_dur'];
$data1['OS'] = $_POST['OS'];
$data1['OS_version'] = $_POST['OS_version'];
$data1['mac_adress'] = $_POST['mac_adress'];
$data1['num_serie'] = $_POST['num_serie'];
$data1['commentaire'] = $_POST['commentaire'];
$data1['VNC'] = $_POST['VNC'];
$data1['VNC_pass'] = $_POST['VNC_pass'];
$data1['h_start'] = $_POST['h_start'];
$data1['h_stop'] = $_POST['h_stop'];
$data1['usage'] = $_POST['usage'];
$data1['num_prise'] = $_POST['num_prise'];
$data1['num_baie'] = $_POST['num_baie'];
$data1['serveur_web'] = $_POST['serveur_web'];
$data1['ecran'] = $_POST['ecran'];
$site = $_POST['site'];

//$sqldata2 = mysql_escape_string($sqldata2);

$myquery = "update gpi set nom='$nom' where ID='$ID'";
echo "<br>", $myquery, "<br>" ;
mysql_query($myquery);

$myquery = "update gpi set type='$type' where ID='$ID'";
echo "<br>", $myquery, "<br>" ;
mysql_query($myquery);

$myquery = "update gpi set site='$site' where ID='$ID'";
echo "<br>", $myquery, "<br>" ;
mysql_query($myquery);

$myquery = "update gpi set IP='$IP' where ID='$ID'";
echo "<br>", $myquery, "<br>" ;
mysql_query($myquery);

$sqldata1 = serialize($data1);
$sqldata1 = mysql_escape_string($sqldata1);

$myquery = "update gpi set data1='$sqldata1' where ID='$ID'";
echo "<br>", $myquery, "<br>" ;
mysql_query($myquery);

?>


	
