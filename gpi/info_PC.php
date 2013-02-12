<div align="center">
<h1> GPI </h1>
</div>

<table align="center">
	 <tr> 
		<td class="menu"> <a href="index.php?toload=gpi_main" > Liste </a> </td>
	</tr>
</table>


	
<?php 
$ID = $_GET['ID'];
// requete SQL et boucle d'affichage
$Resultat = mysql_query("SELECT * FROM gpi WHERE ID=$ID;");

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//r�cup�ration des donn�es
    $ID = mysql_result($Resultat , $Compteur , "ID");
    $nom = mysql_result($Resultat , $Compteur , "nom");
    $type = mysql_result($Resultat , $Compteur , "type");
    $site = mysql_result($Resultat , $Compteur , "site");
    $IP = mysql_result($Resultat , $Compteur , "IP");
    $sqldata1 = mysql_result($Resultat , $Compteur , "data1");
    $data1 = unserialize($sqldata1);
    
	$ipArr    = explode('.',$IP);
	$ipArr[0] = $ipArr[0]*1;
	$ipArr[1] = $ipArr[1]*1;
	$ipArr[2] = $ipArr[2]*1;
	$ipArr[3] = $ipArr[3]*1;

	$ip_short = $ipArr[0].".".$ipArr[1].".".$ipArr[2].".".$ipArr[3];
	//echo $ip_short;
    
    ?>

<table align="center">
<tr>
<td>
	<table>
	<tr>
		<th colspan="2" align="center"> Main </th>
	</tr>
	<tr>
		<td> Nom </td> <td><? echo $nom?></td>
	</tr>
	<tr>
		<td> type </td> <td><? echo $type?></td>
	</tr>
	<tr>
		<td> Usage </td> <td><? echo $data1['usage']?> </td>
	</tr>
	<tr>
		<td> OS </td> <td><? echo $data1['OS']?> <? echo $data1['OS_version']?> &nbsp</td>
	</tr>
	</table>
</td>
<td>
	<table>
	<tr>
		<th colspan="2" align="center"> Network </th>
	</tr>
	<tr>
		<td> IP </td> <td><? echo $ip_short ?></td>
	</tr>
	<tr>
		<td> Adresse MAC </td> <td><? echo $data1['mac_adress']?> &nbsp</td>
	</tr>
	<tr>
		<td> N&deg; prise </td> <td><? echo $data1['num_prise']?> &nbsp</td>
	</tr>
	<tr>
		<td> N&deg; baie </td> <td><? echo $data1['num_baie']?> &nbsp</td>
	</tr>
	<tr>
		<td> Serveur Web </td> <td><a href="<? echo $data1['serveur_web']?>"> <? echo $data1['serveur_web']?> &nbsp </a></td>
	</tr>
	</table>
</td>
<td>
	<table>
	<tr>
		<th colspan="2" align="center"> Arret/demarrage </th>
	</tr>
	<tr>
		<td> Heure demarrage </td> <td><? echo $data1['h_start']?>&nbsp</td>
	</tr>
	<tr>
		<td> Heure d'arret </td> <td><? echo $data1['h_stop']?>&nbsp</td>
	</tr>
	</table>
</td>
</tr>
<tr>
<td>
    <table>
	<tr>
		<th colspan="2" align="center"> Situation </th>
	</tr>
	<tr>
		<td> Site </td> <td><? echo $site?> &nbsp</td>
	</tr>
	<tr>
		<td> Local </td> <td><? echo $data1['local']?> &nbsp</td>
	</tr>
	<tr>
		<td> N&deg; Local </td> <td><? echo $data1['num_local']?> &nbsp</td>
	</tr>
	</table>
</td>
<td>
	<table id="liste2">
	<tr>
		<th colspan="2" align="center"> Hardware </th>
	</tr>
	<tr>
		<td> Marque </td> <td><? echo $data1['marque']?></td>
	</tr>
	<tr>
		<td> Processeur </td> <td><? echo $data1['CPU']?></td>
	</tr>
	<tr>
		<td> RAM </td> <td><? echo $data1['RAM']?>Go</td>
	</tr>
	<tr>
		<td> disque dur </td> <td><? echo $data1['disque_dur']?>Go</td>
	</tr>
	<tr>
		<td> N&deg;SIH </td> <td><? echo $data1['num_serie']?></td>
	</tr>
	<tr>
		<td> Ecran </td> <td><? echo $data1['ecran']?></td>
	</tr>
	</table>
</td>
<td>
	<table>
	<tr>
		<th colspan="2" align="center"> VNC </th>
	</tr>
	<tr>
		<td> VNC </td> <td><? echo $data1['VNC']?>&nbsp</td>
	</tr>
	<tr>
		<td> password VNC </td> <td><? echo $data1['VNC_pass']?>&nbsp</td>
	</tr>
	</table>
</td>
</tr>
<tr>
<td>
<table>
	<tr>
		<th align="center"> Commentaire </th>
	</tr>
	<tr>
		<td><? echo $data1['commentaire']?>&nbsp</td>
	</tr>
	
	</table>
</td>
<td>
	<table>
	<tr>
		<th align="center"> Check DNS </th>
	</tr>
	<tr>
		<?
		$dnsIP = gethostbyname($nom);
		if($dnsIP == $nom)
		{
			$dnsIP = "DNS IP error";
		}
		$dnshost = gethostbyaddr($ip_short);
		if($dnshost == $ip_short)
		{
			$dnshost = "DNS hostname error";
		}
		
		?>
		<td>IP DNS :<? echo $dnsIP ?>&nbsp<br>
		Nom DNS :<? echo $dnshost ?>&nbsp</td>
	</tr>
	
	</table>
</td>
<td>
<form action='index.php?toload=gpi_info_PC_mod' method="POST">
<input type="hidden" name="ID" value="<?echo $ID?>">
<input type="submit" value="Modifier">
</form>
<br>


<a target=_blank onClick='showPopup(this.href);return(false);' href="//<?echo $ip_short?>:5800"> VNC </a>&nbsp &nbsp
<a target=_blank onClick='showPopup(this.href);return(false);' href="gpi/ping.php?IP=<?echo $ip_short?>"> Ping </a>



<!--  <a target=_blank href="wol2.php?mac=<?echo $data1['mac_adress']?>"> WoL </a> -->
</td>
</tr>

	





	 
<?   
}
?>
