<?
if(isset($_POST[ID]))
{
	$ID = $_POST[ID];
}
elseif(isset($_GET[ID]))
{
	$ID = $_GET[ID];
}
?>


<div align="center">

<h1> GPI : modification </h1>
</div>

<table align="center">
	 <tr> 
		<td class="menu"> <a href="index.php?toload=gpi_info_pc&ID=<? echo $ID ?>" > Retour </a> </td>
	</tr>
</table>

<? 
// requete SQL et boucle d'affichage
$Resultat = mysql_query("SELECT * FROM gpi WHERE ID=$ID;");

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
    $ID = mysql_result($Resultat , $Compteur , "ID");
    $nom = mysql_result($Resultat , $Compteur , "nom");
    $type = mysql_result($Resultat , $Compteur , "type");
    $site = mysql_result($Resultat , $Compteur , "site");
    $IP = mysql_result($Resultat , $Compteur , "IP");
    $sqldata1 = mysql_result($Resultat , $Compteur , "data1");
    $data1 = unserialize($sqldata1);
    ?>
<form action="gpi/info_PC_mod_2.php" method="POST">
<input type="hidden" name="ID" value="<?echo $ID?>">
<table>
	<tr> 
	<td>
		<table border="1">
		<tr>
			<td colspan="2" align="center"> Main </td>
		</tr>
		<tr>
			<td> Nom </td> <td><input type="text" name="nom" value="<? echo $nom?>"></td>
		</tr>
		<tr>
			<td> type </td> 
				<td>
				<select name="type"> 
					<option value="<? if (isset($type)){echo $type;} else {echo "";} ?>"> <? if (isset($type)){echo $type;} else {echo "";} ?> </option>
					<option value="">  </option>
					<option value="workstation">workstation</option> 
					<option value="laptop">laptop</option>
					<option value="serveur">serveur</option>  
					<option value="printer">printer</option>
					<option value="telephone">telephone</option>
					<option value="periph. reseau">periph. reseau</option>
				</select>
				</td>
		</tr>
		<tr>
			<td> Usage </td> <td><input type="text" name="usage" value="<? echo $data1['usage']?>"></td>
		</tr>
		<tr>
			<td> OS </td> <td>
				<select name="OS"> 
					<option value="<? if (isset($data1['OS'])){echo $data1['OS'];} else {echo "";} ?>"> <? if (isset($data1['OS'])){echo $data1['OS'];} else {echo "";} ?> </option>
					<option value="">  </option>
					<option value="windows">windows</option>
					<option value="linux">linux</option>
					<option value="mac">mac</option>    
				</select>
				</td>
		</tr>
		<tr>
			<td> version OS </td> <td><input type="text" name="OS_version" value="<? echo $data1['OS_version']?>"></td>
		</tr>
		</table>
	</td>
		
    <td>
    <table border="1">
    <tr>
		<td colspan="2" align="center"> Situation </td>
	</tr>
    <tr>
		<td> Site </td> <td>
				<select name="site"> 
					<option value="<? echo $site?>"><? echo $site?></option> 
					<option value=""></option> 
					<option value="St-Luc">St-Luc</option> 
					<option value="SPO">SPO</option>
					<option value="St-Luc SIH">St-Luc SIH</option>
				</select>
			</td>
	</tr>
	<tr>
		<td> Local </td> <td><input type="text" name="local" value="<? echo $data1['local']?>"></td>
	</tr>
	<tr>
		<td> N&deg; Local </td> <td><input type="text" name="num_local" value="<? echo $data1['num_local']?>"></td>
	</tr>
	</table>
</td>
	
<td>
	<table border="1">
	<tr>
		<td colspan="2" align="center"> Network </td>
	</tr>
	<tr>
	
		<td> IP </td> <td><input type="text" name="IP" value="<? echo $IP?>"></td>
	</tr>
	<tr>
		<td> Adresse MAC </td> <td><input type="text" name="mac_adress" value="<? echo $data1['mac_adress']?>"></td>
	</tr>
	<tr>
		<td> N&deg; prise </td> <td><input type="text" name="num_prise" value="<? echo $data1['num_prise']?>"></td>
	</tr>
	<tr>
		<td> N&deg; baie </td> <td><input type="text" name="num_baie" value="<? echo $data1['num_baie']?>"></td>
	</tr>
	<tr>
		<td> Serveur Web </td> <td><input type="text" name="serveur_web" value="<? echo $data1['serveur_web']?>"></td>
	</tr>
	</table>
</td>
<td>
	<table border="1">
	<tr>
		<td colspan="2" align="center"> Hardware </td>
	</tr>
	<tr>
		<td> Marque </td> <td><input type="text" name="marque" value="<? echo $data1['marque']?>"></td>
	</tr>
	<tr>
		<td> Processeur </td> <td><input type="text" name="CPU" value="<? echo $data1['CPU']?>"></td>
	</tr>
	<tr>
		<td> RAM </td> <td><input type="text" name="RAM" size=5 value="<? echo $data1['RAM']?>"> Go</td> 
	</tr>
	<tr>
		<td> disque dur </td> <td><input type="text" size=5 name="disque_dur" value="<? echo $data1['disque_dur']?>"> Go</td>
	</tr>
	<tr>
		<td> N&deg;serie </td> <td><input type="text" name="num_serie" value="<? echo $data1['num_serie']?>"></td>
	</tr>
	<tr>
		<td> Ecran </td> 
			<td>
				<select name="ecran"> 
					<option value="<? echo $data1['ecran']?>"><? echo $data1['ecran']?></option>
					<option value=""></option>
					<option value="15p">15p</option>
					<option value="17p">17p</option> 
					<option value="19p">19p</option>
					<option value="21p">21p</option>
					<option value="21p tablette">21p tablette</option>
					<option value="22p">22p</option>
					<option value="23p">23p</option>
					<option value="24p">24p</option>
				</select>
			</td>
	</tr>
	</table>
</td>
</tr>
<tr>
<td>
	 <table border="1">
	<tr>
		<td colspan="2" align="center"> Arret/demarrage </td>
	</tr>
	<tr>
		<td> Heure demarrage </td> <td><input type="text" name="h_start" value="<? echo $data1['h_start']?>"></td>
	</tr>
	<tr>
		<td> Heure d'arret </td> <td><input type="text" name="h_stop" value="<? echo $data1['h_stop']?>"></td>
	</tr>
	</table>
</td>
<td>	
	<table border="1">
	<tr>
		<td colspan="2" align="center"> VNC </td>
	</tr>
	<tr>
		<td> VNC </td> 
		<td>
			<select name="VNC"> 
				<option value="<? if (isset($data1['VNC'])){echo $data1['VNC'];} else {echo "";} ?>"> <? if (isset($data1['VNC'])){echo $data1['VNC'];} else {echo "";} ?> </option>
				<option value="">  </option>
				<option value="oui">oui</option> 
				<option value="non">non</option> 
			</select>
		</td>
	</tr>
	<tr>
		<td> password VNC </td> <td><input type="text" name="VNC_pass" value="<? echo $data1['VNC_pass']?>"></td>
	</tr>
	</table>
</td>
<td>
	<table border="1">
	<tr>
		<td align="center"> Commentaire </td>
	</tr>
	<tr>
		<td><textarea name="commentaire" cols="40" rows="5" value="<? echo $data1['commentaire'];?>"><? echo $data1['commentaire'] ?></textarea></td>
	</tr>
	
	</table>
</td>
</tr>
</table>

<input type="submit" value="modifier">

<a href="javascript:if(confirm('Etes vous sûr de vouloir supprimer cet item : <? echo $nom?>')) document.location.href='gpi/delete_PC.php?ID=<?echo $ID ?>' "><IMG src='images/delete.jpg' alt='Effacer' title='Effacer' width='16px' height='16px'></a> 
<?   
}