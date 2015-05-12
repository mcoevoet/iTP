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

$calend = $_GET['calend'];

//choix de la semaine à afficher
include ("calendar/_today_date.php");

	//recup de la semaine qui vient d'être sauvée
if(isset($_GET[saved_week]))
{
	$_SESSION[week_rel] = $_GET[saved_week];
}
else{

	if((isset($_GET[week_plus]))&($_GET[week_plus] == 1))
	{
		$_SESSION[week_rel] = $_SESSION[week_rel] + 4;
	}
	elseif((isset($_GET[week_moins]))&($_GET[week_moins] == 1))
	{
		$_SESSION[week_rel] = $_SESSION[week_rel] - 4;
	}
	elseif((isset($_GET[week_now]))&($_GET[week_now] == 1))
	{
		$_SESSION[week_rel] = 0;
	}
	else
	{
		$_SESSION[week_rel] = 0;
	}
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
	
	
	
	$myquery = "SELECT * FROM `calend_$name` WHERE start_time = '$searchstamp[$tid]';";
//	echo "$myquery<br>";
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		for($i=0; $i < $nb_item; $i++)
		{
			$item_name = $data[$i]['item_name'];
			$item_number = "item$i";
			$data[$i]['item_number'] = "item$i";
			//echo "item name $item_name<br>";
			//$tab[$item_name]['date'.$tid] = mysql_result($Resultat , $Compteur , "item$i");
			$tab[$item_number]['date'.$tid] = mysql_result($Resultat , $Compteur , "item$i");
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
<form action="calendar/calend_save.php?calend=<? echo $calend?>" method="POST">
<br>
<?
	//echo $nb_sub_tab;
	for($uu = 0;$uu < $nb_sub_tab; $uu++)
	{
		echo "<table class='tabstd' align='center'>";
		echo "<tr>";			
//		echo $data2[0]['sub_tab'];
		echo "<td width='120' class='td5'>".$data2[$uu]['sub_tab_name']."</td>";
		
		
		for($ia = 1;$ia < $nb_display+1; $ia++)
		{
			 $aff_month = date("M-Y",$searchstamp[$ia]); 
			//$display_date_month = (($todaymonth+$ia)%12)+1;
			//$display_date_year = (($todaymonth+$ia)/12);
			echo "<td align='center'class='td5'> <br> $aff_month  </b> </td>";
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
			$item_number = $data[$ii]['item_number'];
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
				echo "<input size='10' tabindex='$tab_index' type='text' name='save_data,$savestamp,$item_number,$item_number' value='".$tab[$item_number]['date'.$iii]."'";
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

<input type="hidden" name="saved_week" value="<? echo $_SESSION[week_rel]; ?>">
<div align="center">
<?
$final_index = $tab_index++;
?>
<input type="submit" tabindex='$final_index' value="enregistrer">
</div>
</form>

<div width="930" align="left"> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_moins=1" > -1 mois </a></div>
<div width="930" align="center"> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_now=1" > Cette semaine </a></div>
<div width="930" align="right"> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_plus=1" > +1 mois </a></div>
<br></br>