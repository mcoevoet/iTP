
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

//fonction de tri 
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
//fin fonction

include("../_connexion.php");

$calend = $_GET['calend'];

//affichage du titre
echo "<h2 align='center'> $calend  </h2>";

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






$calend = $_GET['calend'];

//echo "calend = $calend <br>";

//choix de la semaine à afficher

include ("_today_date.php");

if((isset($_GET[week_rel]))&($_GET[week_rel] != ""))
	{
		$week_rel = $_GET[week_rel];
//		echo "week rel 0 = ".$_GET[week_rel];
//		echo "test ok 2<br>";
	}
	else
	{
		$week_rel = 0;
	}

//echo "week rel = $_SESSION[week_rel] <br>";

$todaystamp = $timestamp_today + $_SESSION[week_rel]*604800;

//echo "today stamp".$todaystamp;

$todaymonth = date("m", $todaystamp);
$todayyear = date("y", $todaystamp);

//echo "today month".$todaymonth;

$jmonth1 = mktime(0,0,0,$todaymonth,0,$todayyear);

//echo "<br>jmonth1 = $jmonth1";
$startstamp=$mondaystamp;



for($tid=0; $tid <= $nb_display; $tid++)
{
	
	$searchmonth = date("m",$jmonth1)+$tid+1;
	$searchyear = date("y",$jmonth1);
	$searchstamp[$tid] = mktime(0,0,0,$searchmonth,0,$searchyear);
	
//	echo "test searchstamp = ".$searchstamp[$tid]."<br>";
	$myquery = "SELECT * FROM `calend_$calend` WHERE start_time = '$searchstamp[$tid]';";
//	echo "$myquery<br>";
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		
		for($i=0; $i < $nb_item; $i++)
		{
			$item_name = $data[$i]['item_name'];
//			echo "item name $item_name<br>";
			$tab[$item_name]['date'.$tid] = mysql_result($Resultat , $Compteur , "item$i");
		}
	}
}

//print_r($tab);
//print_r($data2);
$data = subval_sort($data,'order'); 
$data2 = subval_sort($data2,'sub_tab_order'); 

//print_r($data2);
//echo "<br>";


?>

<br>
<?
	//echo $nb_sub_tab;
	for($uu = 0;$uu < $nb_sub_tab; $uu++)
	{
		echo "<table class='tabstd' align='center'>";
		echo "<tr>";			
//		echo $data2[0]['sub_tab'];
		echo "<td width='120' class='td5'> <h3>".$data2[$uu]['sub_tab_name']."</h3></td>";
		
		
		for($ia = 1;$ia < $nb_display+1; $ia++)
		{
			 $aff_month = date("M-Y",$searchstamp[$ia]); 
			//$display_date_month = (($todaymonth+$ia)%12)+1;
			//$display_date_year = (($todaymonth+$ia)/12);
			echo "<td align='center'class='td5'> <br> <b> $aff_month  </b> </td>";
		}
		?>
		
		
		
	</tr>	
	<?	
		for($ii = 0;$ii < $nb_item; $ii++)
		{
			
			$tab_index = 1;
//			echo "test nb:".$data2[$uu]['sub_tab_id']."<br>";
			if($data[$ii]['sub_tab'] == $data2[$uu]['sub_tab_id'])
//back			if($data[$ii]['sub_tab'] == $uu)
			{	
				if(($i_col % 2)==1)
				{
					$cell_color = "#C0C0C0 ";
				}
				else
				{
					$cell_color = "white";
				}
				$i_col++;
			//
			echo "<tr>";
			echo "<td bgcolor='$cell_color' class='td5'>";
			echo $data[$ii]['item_name']."<br>";
			$item_name = $data[$ii]['item_name'];
			echo "</td>";
			//echo "<td>";
			//echo $data[$ii]['order'];
			//echo "</td>";
			for($iii = 0;$iii < $nb_display; $iii++)
			{
				
				$savestamp = $searchstamp[$iii];
				echo "<td bgcolor='$cell_color' class='td5'>";
				echo $tab[$item_name]['date'.$iii];
				echo "</td>";
				$tab_index ++;
			}
			echo "</tr>";
			}
			
			
		} 
	echo "</table> <br>";
	}
		?>
		

<br>

<div align="center">
<a href="javascript:window.print()">Imprimer cette page</a>
</div>
