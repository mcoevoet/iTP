<table align='center' class='tabstd'>
<tr> 
<td width="150" align='center'> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_moins=1" > -1 semaine </a> </td>
<td width="150" align='center'> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_now=1" > Cette semaine </a> </td>
<td width="150" align='center'> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_plus=1" > +1 semaine </a> </td>
</tr>
<tr>
<td colspan='3' align="center">
<form method="POST" action="index.php?toload=calend_edit&calend=<? echo $calend ?>">
<input type="text" class='datepick' name="gotodate">
<input type="submit" value="Aller à">
</form>
</td>
</tr>
</table>


<div align="center">

</div>

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
	
//	echo "test today stamp $todaystamp";
	
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


$todaystamp_d = date("d", $todaystamp);
$todaystamp_m = date("m", $todaystamp);
$todaystamp_y = date("Y", $todaystamp);

$todaystamp = mktime(0,0,0,$todaystamp_m,$todaystamp_d,$todaystamp_y);

$testdate = date("d-m-Y h:i", $todaystamp);

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

$startstamp=$mondaystamp;

//fin choix de la semaine


for($tid=0; $tid <= $nb_display; $tid++)
{
	
	$searchstamp = $startstamp + ($tid*60*60*24);
	$myquery = "SELECT * FROM `calend_$name` WHERE start_time = '$searchstamp';";
	//echo "$myquery<br>";
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		for($i=0; $i < $nb_item; $i++)
		{
			$item_name = $data[$i]['item_name'];
			$item_number = $data[$i]['item_number'];
			$data[$i]['item_number'] = "item$i";
			//echo "item name $item_name<br>";
			//echo "item number $item_number<br>";			
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
//			echo $data2[0]['sub_tab'];
			echo "<td width='120' class='td5'>".$data2[$uu]['sub_tab_name']."</td>";
		
		
			for($ia = 1;$ia < $nb_display+1; $ia++)
			{
				$affstamp_tab = $startstamp +(($ia-1)*60*60*24);
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
//				$display_date = date("d-m-Y H:i", $affstamp_tab);
				echo "<td align='center'class='td5'> <b> $dow_fr <br> $display_date </b> </td>";
			}
			?>
		
		
		
			</tr>	
			<?
			for($ii = 0;$ii < $nb_item; $ii++)
			{
			
				$tab_index = 1;
//				echo "test nb:".$data2[$uu]['sub_tab_id']."<br>";
				if($data[$ii]['sub_tab'] == $data2[$uu]['sub_tab_id'])
//back				if($data[$ii]['sub_tab'] == $uu)
				{	
					if(($i_col % 2)==1)
					{
					$cell_color = "#C0C0C0";
					}
					else
					{
						$cell_color = "white";
					}
					$i_col++;
			
					echo "<tr>";
					echo "<td bgcolor='$cell_color' class='td5'>";
					$item_number = $data[$ii]['item_number'];
					echo $data[$ii]['item_name'];
//					echo $data[$ii]['item_number']."<br>";
					$item_name = $data[$ii]['item_name'];
					$item_number = $data[$ii]['item_number'];
//					echo " item_number = $item_number <br>";
					echo "</td>";
					//echo "<td>";
					//echo $data[$ii]['order'];
					//echo "</td>";
					for($iii = 0;$iii < $nb_display; $iii++)
					{
				
						$savestamp = $startstamp + ($iii*60*60*24);
						echo "<td bgcolor='$cell_color' class='td5'>  ";
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
<input type="hidden" name="saved_week" value="<? echo $_SESSION[week_rel]; ?>">
<div align="center">
<?
$final_index = $tab_index++;
?>
<input type="submit" tabindex='$final_index' value="enregistrer">

</div>
</form>

<!-- remplir champ par vague -->


<br>

<form action="calendar/calend_add_wave_d.php?calend=<? echo $calend?>" method="POST">
<input type="hidden" name="saved_week" value="<? echo $_SESSION[week_rel]; ?>">
<table align="center" class='tabstd'>
<tr> <td align="center"> </td> <td align="center"> Date de début :</td> <td align="center"> Date de fin </td> <td align="center"> Item </td> <td align="center"> Item Value </td> <td> </td></tr>
<tr> <td> Enregistrement par vague</td><td> <input type="text" size='8' class='datepick' name="wave_date_1"> </td>
<td><input type="text" class='datepick' size='8' name="wave_date_2"></td>
<td>
<select name='wave_item'>
<?
//$nb_sub_tab = 0;
//print_r($data2);
for($uu = 0;$uu < $nb_sub_tab; $uu++)
{
	$sub_tab = $data2[$uu]['sub_tab_name'];
	$sub_tab_name =  $data2[$uu]['sub_tab_name'];
	for($ii=0;$ii < $nb_item;$ii++)
	{
		
		if($data[$ii]['sub_tab'] == $data2[$uu]['sub_tab_id'])

		{
			$aff_data = $data[$ii]['item_name'];
			$item_val = $data[$ii]['item_number'];
			
			echo "<option value='$item_val'> $sub_tab_name / $aff_data </option> "; 
			$nb_sub_tab++;
		}
	}
}

?>
</select></td>
<td><input type="text" size='14' name="wave_item_value"></td></tr>
<tr>
<?
$dow = array(1 => "Lundi", 2 => "Mardi", 3 => "Mercredi", 4 => "Jeudi", 5 => "Vendredi", 6 => "Samedi", 7 => "Dimanche");   
echo "<td colspan='4'>";
for($i=1;$i <= $nb_display;$i++)
{
	echo " $dow[$i] : <input type='checkbox' name='dow_$i' value='yes' checked='checked'> |";
}
echo "</td>";	
?>

<td>
<input type="hidden" name="nb_display" value="<? echo $nb_display ?>">
<input type="submit" value="enregistrer vague"></td>
</tr>
</table>
</form>
<br>
<table align='center' class='tabstd'>
<tr> 
<td width="150" align='center'> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_moins=1" > -1 semaine </a> </td>
<td width="150" align='center'> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_now=1" > Cette semaine </a> </td>
<td width="150" align='center'> <a href="index.php?toload=calend_edit&calend=<? echo $calend ?>&week_plus=1" > +1 semaine </a> </td>
</tr>
<tr>
<td colspan='3' align="center">
<form method="POST" action="index.php?toload=calend_edit&calend=<? echo $calend ?>">
<input type="text" class='datepick' name="gotodate">
<input type="submit" value="Aller à">
</form>
</td>
</tr>
</table>