<?
$calend = $_GET['calend'];
$nb_display = $_POST['nb_display'];
echo $nb_display."<br>";
$saved_week = $_POST['saved_week'];
echo "saved_week = $saved_week";

header("Location: ../index.php?toload=calend_edit&calend=$calend&saved_week=$saved_week");
include("../_connexion.php");
$date1 = $_POST['wave_date_1'];
echo $date1."<br>";
$date2 = $_POST['wave_date_2'];
echo $date2."<br>";
$wave_item = $_POST['wave_item'];
echo $wave_item."<br>";
$wave_item_value = $_POST['wave_item_value'];
echo $wave_item_value."<br>";

for($i=1;$i <= $nb_display;$i++)
{
	$dow[$i] = $_POST["dow_$i"];
	echo " dow $i =".$dow[$i]."<br>";
	
}

$date1_s = explode("/",$date1);
$date1_stamp = mktime(0,0,0,$date1_s[1],$date1_s[0],$date1_s[2]);

$date2_s = explode("/",$date2);
$date2_stamp = mktime(0,0,0,$date2_s[1],$date2_s[0],$date2_s[2]);

$interv_d = ($date2_stamp - $date1_stamp)/86400;
echo "intervalle jour $interv_d<br>";


for($ii=0; $ii <= $interv_d; $ii++)
{
	$time_1 = $date1_stamp+43200+($ii*86400);
	
	$time_1_d = date("d",$time_1);
	$time_1_m = date("m",$time_1);
	$time_1_y = date("Y",$time_1);
	
	$time_1 = mktime(0,0,0,$time_1_m,$time_1_d,$time_1_y);
	
	echo "<br>time1 = $time_1 <br>";
	
	$time_aff_1 = date("d-m-Y H:i",$time_1);
	echo "time1 = $time_aff_1 <br>";
	
	$requete="select * from `calend_$calend` where start_time='".mysql_real_escape_string($time_1)."'";
	
	
	
	if(mysql_num_rows(mysql_query($requete))>0)
	{
		$data_tab_temp = mysql_fetch_array(mysql_query($requete)); 
		
		//print_r($data_tab_temp);
		
		
		
		for($i=1;$i <= $nb_display;$i++)
		{
			$dow[$i] = $_POST["dow_$i"];
			echo " dow $i =".$dow[$i]."<br>";
			
			echo "test".date('N',$time_1)." ?= $dow[$i]";
			
			if((date("N",$time_1)==$i)&($dow[$i]=='yes'))
			{
				$init_value = $data_tab_temp[$wave_item];
				if($init_value == "")
				{
					$wave_item_value_up = $wave_item_value;
				}
				else
				{
					$wave_item_value_up = $init_value.", ".$wave_item_value;
				}
				echo "<br> initvalue $init_value<br>";
				
				
				echo " | l'adresse existe déjà dans la base de données <br>" ;
				$myquery = "update `calend_$calend` set $wave_item='$wave_item_value_up' where start_time='$time_1'";	
				echo "<br> $myquery";
				mysql_query($myquery);
			}
			
		}
		
		$wave_item_value_up = "";
		
		
	}
	else
	{
		for($i=1;$i <= $nb_display;$i++)
		{
			
			$dow[$i] = $_POST["dow_$i"];
			echo " dow $i =".$dow[$i]."<br>";
			
			echo "test".date('N',$time_1)." ?= $dow[$i]";
			if((date("N",$time_1)==$i)&($dow[$i]=='yes'))
			{
				echo " | existe pas <br>";
				echo "new";
				$myquery = "insert INTO `calend_$calend` (start_time) VALUES ('$time_1')" ;
				echo "<br> $myquery" ;
				mysql_query($myquery); 
		
				$myquery = "update `calend_$calend` set $wave_item='$wave_item_value' where start_time='$time_1'";	
				echo "<br> $myquery";
				mysql_query($myquery);
			}
		}
	}
}
?>
