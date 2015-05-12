<div>
<table align='center' class='tabstd'>
<tr> 
<td width="150" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_moins=1" > -1 semaine </a> </td>
<td width="150" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_now=1" > Cette semaine </a> </td>
<td width="150" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_plus=1" > +1 semaine </a> </td>
</tr>
<tr>
<td colspan="3" align="center">
<form method="POST" action="index.php?toload=calend_view&calend=<? echo $calend ?>">
<input type="text" class='datepick' name="gotodate">
<input type="submit" value="Aller à">
</form>
</td>
</tr>
</table>
</div>

<?php

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

//echo "week relative = ".$_SESSION[week_rel];

//Definition du lundi en jour 1
if((isset($_POST['gotodate']))&($_POST['gotodate'] != ""))
{
	$gotodate = $_POST['gotodate'];
	$gotodate_s = explode("/",$gotodate);
	$todaystamp = mktime(0,0,0,$gotodate_s[1],$gotodate_s[0],$gotodate_s[2]);
	
	$test_dow = date ("w",$todaystamp);
//	echo "<br>test dow $test_dow <br>";
	
	if($nb_display == 5)
	{
		if($test_dow == 0)
		{
			$todaystamp = $todaystamp + 86400;	
		}
		elseif($test_dow == 6)
		{
			$todaystamp = $todaystamp + 2*(86400);	
		}
	}
	elseif($nb_display == 6)
	{
		if($test_dow == 0)
		{
			$todaystamp = $todaystamp + 86400;	
		}	
	}
	elseif($nb_display == 7)
	{
		if($test_dow == 0)
		{
			$todaystamp = $todaystamp - 518400;	
		}	
	}
	
	$delta_week = ($todaystamp - $timestamp_today)/604800;
	
//	echo "<br>delta_week = $delta_week";
	$delta_week = round($delta_week);
//	echo "<br>delta_week = $delta_week";
	$_SESSION[week_rel]= $delta_week;
	
}
else
{
	$todaystamp = $timestamp_today + $_SESSION[week_rel]*604800;
}

//echo "<br>week relative = ".$_SESSION[week_rel];

$todaystamp_d = date("d", $todaystamp);
$todaystamp_m = date("m", $todaystamp);
$todaystamp_y = date("Y", $todaystamp);

$todaystamp = mktime(0,0,0,$todaystamp_m,$todaystamp_d,$todaystamp_y);


$testdate = date("d-m-Y h:i", $todaystamp);

$current_year = date("Y", $todaystamp);

//echo "testdate = $testdate";

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
	
	$searchstamp = $mondaystamp + ($tid*60*60*24);
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

$_SESSION['data'] = $data;
$_SESSION['data2'] = $data2;
$_SESSION['tab'] = $tab;

//print_r($data);

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

			echo "<td width='120' class='td5'> <h3>".$data2[$uu]['sub_tab_name']."</h3></td>";
		
		for($ia = 1;$ia < $nb_display+1; $ia++)
		{
			$affstamp_tab = $mondaystamp +(($ia-1)*60*60*24);
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
			echo "<td class='td5'> <b> $dow_fr $display_date </b> </td>";
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
					$cell_color = '#eeeeee';
				}
				else
				{
					$cell_color = "white";
				}
				$i_col++;
				echo "<tr>";
				echo "<td  bgcolor='$cell_color' class='td5'>";
				
				$temp_item_id = str_replace("item","",$data[$ii]['item_number']);
				$temp_item_name = str_replace("item","",$data[$ii]['item_name']);
				
				echo "<a href='index.php?toload=calend_year_overview&year=$current_year&calend=$calend&item_id=$temp_item_id&item_name=$temp_item_name'>".$data[$ii]['item_name']."</a>";
//				echo $data[$ii]['item_number'];
				
				$item_name = $data[$ii]['item_name'];
				echo "</td>";
				for($iii = 0;$iii < $nb_display; $iii++)
				{
					$savestamp = $mondaystamp + ($iii*60*60*24);
				
					echo "<td  bgcolor='$cell_color' class='td5'>";
					echo $tab[$item_name]['date'.$iii];
					$data_pdf[$ii][$iii] = $tab[$item_name]['date'.$iii];
//					echo" time :".$savestamp;
					echo "</td>";
				}
				echo "</tr>";
			}
		} 
		
		echo "</table><br>";
		}
		$_SESSION['data_pdf'] = $data_pdf;
		?>


<table align='center' class='tabstd'>
<tr> 
<td width="150" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_moins=1" > -1 semaine </a> </td>
<td width="150" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_now=1" > Cette semaine </a> </td>
<td width="150" align="center"> <a href="index.php?toload=calend_view&calend=<? echo $calend ?>&week_plus=1" > +1 semaine </a> </td>
</tr>
<tr>
<td colspan="3" align="center">
<form method="POST" action="index.php?toload=calend_view&calend=<? echo $calend ?>">
<input type="text" class='datepick' name="gotodate">
<input type="submit" value="Aller à">
</form>
</td>
</tr>
<tr>
<td colspan="3" align="center">
<a target="_blank" href="calendar/calend_print_d.php?calend=<? echo $calend ?>&week_rel= <? echo $_SESSION[week_rel] ; ?>" > Version imprimable </a>
<a target="_blank" href="calendar/calend_pdf.php?calend=<? echo $calend ?>&nb_item=<? echo $nb_item ?>&nb_display=<? echo $nb_display ?>&nb_sub_tab=<? echo $nb_sub_tab ?>&monday_date=<? echo $mondaystamp ?>" > Version PDF </a>
</td>
</tr>
</table>
<div align="center">

</div>
