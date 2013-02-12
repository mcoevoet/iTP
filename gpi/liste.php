<div align="center">
<h1> GPI </h1>
</div>

<table align="center">
	<tr> 
		<td> Localisation </td>
		<td> <a href="index.php?toload=gpi_main&site=all"> Liste complete </a> </td>
		<td> <a href="index.php?toload=gpi_main&site=St-Luc"> St-Luc </a> </td>
		<td> <a href="index.php?toload=gpi_main&site=SPO"> SPO </a> </td>
		<td> <a href="index.php?toload=gpi_main&site=St-Luc SIH"> St-Luc SIH </a> </td>
	</tr>
	<tr> 
		<td> Type : </td>
		<td> <a href="index.php?toload=gpi_main&type=all"> Liste complete </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=serveur"> Serveur </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=workstation"> Workstation </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=laptop"> Laptop </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=printer"> Printer </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=periph. reseau"> Periph. reseau </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=telephone"> Telephone </a> </td>
		<td> <a href="index.php?toload=gpi_main&type=all"> Liste complete </a> </td>
	</tr>
	<tr> 
		<td> Tri par: </td>
		<td> <a href="index.php?toload=gpi_main&tri=nom"> Nom </a> </td>
		<td> <a href="index.php?toload=gpi_main&tri=IP"> IP </a> </td>
		<td> <a href="index.php?toload=gpi_main&tri=IP"> IP </a> </td>
	</tr>
	
</table>
<a href="index.php?toload=gpi_new"> Nouveau </a>
<br>
	<div align="center">
		<table id="liste">
			<tr>
				<td class="cell"> Nom </td>
				<td class="cell"> Type </td>
				<td class="cell"> Site </td>
				<td class="cell"> IP </td>
				<td class="cell"> Local </td>
				<td class="cell"> OS </td>
			</tr>
	
		<?php 

		//definit la requete en focntion des options choisies
		
		
		if(isset($_GET['type']))
		{
			$_SESSION['type_mach'] = $_GET['type'];
		}
		elseif(isset($_GET['site']))
		{
			$_SESSION['site'] = $_GET['site'];
		}
		elseif(isset($_GET['tri']))
		{
			$_SESSION['tri'] = $_GET['tri'];
		}
		
		elseif((!isset($_GET['type']))&(!isset($_GET['site']))&(!isset($_GET['tri'])))
		{
			$_SESSION['type_mach'] = "all";
			$_SESSION['site'] = "all";
			$_SESSION['tri'] = "nom";
			
		}
		
		
		$tri_aff = $_SESSION['tri'];
		//echo "test a:".$_SESSION['tri']."<br>";
		if(($_SESSION['type_mach']=="all")&($_SESSION['site']=="all"))
		{
			$Resultat = mysql_query("SELECT * FROM gpi ORDER BY $tri_aff;");
			//echo "resultat: ".$Resultat;
		}
		elseif(($_SESSION['type_mach']=="all")&($_SESSION['site']!="all"))
		{
			$site_search = $_SESSION['site'];
			$Resultat = mysql_query("SELECT * FROM gpi WHERE site='$site_search' ORDER BY $tri_aff;");
		}
		elseif(($_SESSION['type_mach']!="all")&($_SESSION['site']=="all"))
		{
			$type_search = $_SESSION['type_mach'];
			$Resultat = mysql_query("SELECT * FROM gpi WHERE type='$type_search' ORDER BY $tri_aff;");
		}
		elseif(($_SESSION['type_mach']!="all")&($_SESSION['site']!="all"))
		{
			$type_search = $_SESSION['type_mach'];
			$site_search = $_SESSION['site'];
			$Resultat = mysql_query("SELECT * FROM gpi WHERE type='$type_search' AND site='$site_search' ORDER BY $tri_aff;");
		}
		else
		{
			$Resultat = mysql_query("SELECT * FROM gpi ORDER BY $tri_aff;");
		}
		
					
		echo "site: ".$_SESSION['site']."<br>";
		echo "type: ".$_SESSION['type_mach']."<br>";
		
		//echo "resultat: ".$Resultat;
		
		// requete SQL et boucle d'affichage
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
    		
    		//conversion de l'IP
    		$ipArr    = explode('.',$IP);
			$ipArr[0] = $ipArr[0]*1;
			$ipArr[1] = $ipArr[1]*1;
			$ipArr[2] = $ipArr[2]*1;
			$ipArr[3] = $ipArr[3]*1;

			$ip_short = $ipArr[0].".".$ipArr[1].".".$ipArr[2].".".$ipArr[3];

    		echo "<tr>";
			?> <TD class='cell'> <a href="index.php?toload=gpi_info_pc&ID=<? echo $ID ?>"> <? echo $nom ?> </a> </TD> <?
			echo "<td class='cell'>".$type."</td>";	
			echo "<td class='cell'>".$site."</td>";				
			echo "<td class='cell'>".$ip_short."</td>";
			echo "<td class='cell'>".$data1['local']."</td>";
			echo "<td class='cell'>".$data1['OS']."</td>";
			echo"</tr>";
    	}

?>

</table>
</div>
