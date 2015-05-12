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
		$_SESSION[week_rel] = $_SESSION[week_rel] + 1;
	}
	elseif((isset($_GET[week_moins]))&($_GET[week_moins] == 1))
	{
		$_SESSION[week_rel] = $_SESSION[week_rel] - 1;
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


$startstamp = $mondaystamp;


//fin choix de la semaine


for($tid=0; $tid <= $nb_display; $tid++)
{
	
	$searchstamp = $startstamp + ($tid*60*60*24*7);
	$myquery = "SELECT * FROM `calend_$name` WHERE start_time = '$searchstamp';";
	//echo "$myquery<br>";
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		for($i=0; $i < $nb_item; $i++)
		{
			$item_name = $data[$i]['item_name'];
			//echo "item name $item_name<br>";
			$tab[$item_name]['date'.$tid] = mysql_result($Resultat , $Compteur , "item$i");
		}
	}
}

$data = subval_sort($data,'order'); 
$data2 = subval_sort($data2,'sub_tab_order'); 



?>

<br>
<?
		//echo $nb_sub_tab;
		for($uu = 0;$uu < $nb_sub_tab; $uu++)
		{
			echo "<table class='tabstd' align='center'>";
			echo "<tr>";			
//			echo $data2[0]['sub_tab'];
			echo "<td width='120' class='td5'>".$data2[$uu]['sub_tab_name']."</td>";
		
		
		for($ia = 1;$ia < $nb_display+1; $ia++)
		{
			$affstamp_tab = $startstamp +(($ia-1)*60*60*24*7);
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
				
				$savestamp = $startstamp + ($iii*60*60*24*7);
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
<?
$final_index = $tab_index++;
?>

</div>
</form>

<div width="930" align="left"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_moins=1" > -1 semaine </a></div>
<div width="930" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_now=1" > Cette semaine </a></div>
<div width="930" align="right"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_plus=1" > +1 semaine </a></div>
<br></br>
<div align="center">
<a target="_blank" href="calendar/calend_print_w.php?calend=<? echo $calend ?>&week_rel= <? echo $_SESSION[week_rel] ; ?>" > Version imprimable </a>
</div>
