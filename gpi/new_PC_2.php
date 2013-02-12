<?php 
//$ID = $_POST['ID'];
header("Location: ../index.php?toload=gpi_main"); 
include ("../_connexion.php");

//recupération des données


$nom = $_POST['nom'];
$type = $_POST['type'];
$site = $_POST['site'];

$IP= $_POST['IP_a'].".".$_POST['IP_b'].".".$_POST['IP_c'].".".$_POST['IP_d'];
$data1['local'] = $_POST['local'];
$data1['num_local'] = $_POST['num_local'];
$data1['marque'] = $_POST['marque'];
$data1['CPU'] = $_POST['CPU'];
$data1['RAM'] = $_POST['RAM'];
$data1['disque_dur'] = $_POST['disque_dur'];
$data1['OS'] = $_POST['OS'];
$data1['OS_version'] = $_POST['OS_version'];
$data1['mac_adress'] = $_POST['mac_adress_a'].":".$_POST['mac_adress_b'].":".$_POST['mac_adress_c'].":".$_POST['mac_adress_d'].":".$_POST['mac_adress_e'].":".$_POST['mac_adress_f'];
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



$sqldata1 = serialize($data1);
$sqldata1 = mysql_escape_string($sqldata1);

//$myquery = "insert INTO inventaire (nom, type, IP, local, num_local, marque, CPU, RAM, disque_dur, OS, OS_version, mac_adress, num_serie, commentaire, VNC, VNC_pass, h_start, h_stop, usage, num_prise, num_baie) VALUES ('$nom', '$type', '$IP', '$local', '$num_local', '$marque', '$CPU', '$RAM', '$disque_dur','$OS', '$OS_version', '$mac_adress', '$num_serie', '$commentaire', '$VNC', '$VNC_pass', '$h_start', '$h_stop', '$usage', '$num_prise', '$num_baie')" ;
$myquery = "insert INTO gpi (nom, type, site,IP, data1) VALUES ('$nom', '$type','$site', '$IP', '$sqldata1')";
//echo "<br>", $myquery, "<br>" ;
mysql_query($myquery); 

