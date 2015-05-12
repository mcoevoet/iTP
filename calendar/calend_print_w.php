
<style type="text/css">
 table {
    border: 1px solid grey;
    border-collapse:collapse;
    /*width: 250px;*/ }

 td {
   border: 1px solid grey;

   padding : 1px;
   margin: 0px;}    

  </style>
<?php

include("../_connexion.php");


$calend = $_GET['calend'];

//affichage du titre
echo "<h2 align='center'> $calend  </h2>";

//chargement de la structure
$myquery = "SELECT * FROM calend_struct WHERE name = '$calend';";

$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	$sqldata2 = mysql_result($Resultat , $Compteur , "data2");
	$data2 = unserialize($sqldata2);
	$nb_item = count($data);
	$nb_sub_tab = count($data2);
}

//fonction de tri de tableau
function subval_sort($a,$subkey) {
	foreach($a as $k=>$v) {
		$b[$k] = strtolower($v[$subkey]);
	}
	asort($b);
	foreach($b as $key=>$val) {
		$c[] = $a[$key];
	}
	return $c;
}
//fin fonction tri

//choix de la semaine à afficher
include ("_today_date.php");


	if((isset($_GET[week_rel]))&($_GET[week_rel] != ""))
	{
		$week_rel = $_GET[week_rel];
//		echo "week rel 0 = ".$_GET[week_rel];
//		echo "test ok 2";
	}
	else
	{
		$week_rel = 0;
	}

//echo "week rel = ".$week_rel;

//Definition du lundi en jour 1
$todaystamp = $timestamp_today + $week_rel*604800;

if(date("w",$todaystamp)=="1")
{
	$mondaystamp = $todaystamp;
}
elseif(date("w",$todaystamp)=="2")
{
	$mondaystamp = $todaystamp-60*60*24;
}
elseif(date("w",$todaystamp)=="3")
{
	$mondaystamp = $todaystamp-60*60*24*2;
}
elseif(date("w",$todaystamp)=="4")
{
	$mondaystamp = $todaystamp-60*60*24*3;
}
elseif(date("w",$todaystamp)=="5")
{
	$mondaystamp = $todaystamp-60*60*24*4;
}
elseif(date("w",$todaystamp)=="6")
{
	$mondaystamp = $todaystamp-60*60*24*5;
}
elseif(date("w",$todaystamp)=="7")
{
	$mondaystamp = $todaystamp-60*60*24*6;
}


//fin choix de la semaine






for($tid=0; $tid <= $nb_display; $tid++)
{
	
	$searchstamp = $mondaystamp + ($tid*60*60*24*7);
	$myquery = "SELECT * FROM `calend_$name` WHERE start_time = '$searchstamp';";
	//echo "$myquery<br>";
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		for($i=0; $i < $nb_item; $i++)
		{
			$item_name = $data[$i]['item_name'];
			
			$tab[$item_name]['date'.$tid] = mysql_result($Resultat , $Compteur , "item$i");
		}
	}
}

//tri des tableaux
$data = subval_sort($data,'order'); 
$data2 = subval_sort($data2,'sub_tab_order'); 



?>

<br>
<table class="tabstd" align="center">
<tr>
		
		
		<?
		$i_col = 0;
		for($uu = 0;$uu < $nb_sub_tab; $uu++)
		{
			echo "<table class='tabstd' align='center'>";
			echo "<tr>";			

			echo "<td width='150' class='td5'> <h3>".$data2[$uu]['sub_tab_name']."</h3></td>";
		
		for($ia = 1;$ia < $nb_display+1; $ia++)
		{
			$affstamp_tab = $mondaystamp +(($ia-1)*60*60*24*7);
			$dow = date("w", $affstamp_tab);
			if($dow == 1)
			{
				$dow_fr = "Lundi";
			}
			elseif($dow == 2)
			{
				$dow_fr = "Mardi";
			}
			elseif($dow == 3)
			{
				$dow_fr = "Mercredi";
			}
			elseif($dow == 4)
			{
				$dow_fr = "Jeudi";
			}
			elseif($dow == 5)
			{
				$dow_fr = "Vendredi";
			}
			elseif($dow == 6)
			{
				$dow_fr = "Samedi";
			}
			elseif($dow == 0)
			{
				$dow_fr = "Dimanche";
			}
			
			
			$display_date = date("d-m-Y", $affstamp_tab);
			$sundaystamp = $affstamp_tab+(6*60*60*24);
			$sunday_date = date("d-m-Y",$sundaystamp);
			echo "<td align='center'class='td5'> <b> Du $dow_fr <br> $display_date <br> au Dimanche <br> $sunday_date </b> </td>";
		}
		?>	
	</tr>	
		<?
		
		

		for($ii = 0;$ii < $nb_item; $ii++)
		{
			if($data[$ii]['sub_tab'] == $data2[$uu]['sub_tab_id'])			
			{	
				if(($i_col % 2)==1)
				{
					$cell_color = "white";
				}
				else
				{
					$cell_color = "#C0C0C0";
				}
				$i_col++;
				echo "<tr>";
				echo "<td  bgcolor='$cell_color' class='td5'>";
				echo $data[$ii]['item_name'];
				$item_name = $data[$ii]['item_name'];
				echo "</td>";
				for($iii = 0;$iii < $nb_display; $iii++)
				{
					$savestamp = $mondaystamp + ($iii*6*60*60*24);
				
					echo "<td  bgcolor='$cell_color' class='td5'>";
					echo $tab[$item_name]['date'.$iii];
					echo "</td>";
				}
				echo "</tr>";
			}
		} 
		
		echo "</table><br>";
		}

	
?>
<div align="center">
<a href="javascript:window.print()">Imprimer cette page</a>
</div>

