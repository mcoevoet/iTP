<?
$calend = $_GET['calend'];
if(isset($_POST['limite1']))
{
	$limite1 = $_POST['limite1'];
}
else
{
	$limite1 = 2;
}
if(isset($_POST['limite2']))
{
	$limite2 = $_POST['limite2'];
}
else
{
	$limite2 = 3;
}

//$calend = "Calendrier physico-technique";

$item_id = $_GET['item_id'];
$item_name = $_GET['item_name'];
$year = $_GET['year'];


//echo "test <br>";


$janu_1_stamp = mktime(0,0,0,1,1,$year);

//chargement de la structure
$myquery = "SELECT * FROM calend_struct WHERE name = '$calend';";

$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
//	echo "nbdisplay = $nb_display <br>";
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	$sqldata2 = mysql_result($Resultat , $Compteur , "data2");
	$data2 = unserialize($sqldata2);
	$nb_item = count($data);
	$nb_sub_tab = count($data2);
}
?>
<form action="index.php?toload=calend_year_overview&year=<? echo $year ?>&calend=<? echo $calend ?>&item_id=<? echo $item_id ?>&item_name=<? echo $item_name ?>" method="POST">
Limite 1 : <input type="text" size='4' name='limite1' value='<? echo $limite1 ?>'><br>
Limite 2 : <input type="text" size='4' name='limite2' value='<? echo $limite2 ?>'>
<input type='submit' value='actualiser'>
<br>
<a href="calendar/calend_year_overview_pdf.php?item_id=<? echo $item_id ?>&item_name=<? echo $item_name ?>&year=<? echo $year ?>&calend=<? echo $calend ?>"> PDF </a>


</fom>

<?


echo "<h2 align='center'> $item_name $year</h2> <br>";

echo "<table align='center'>";
echo "<tr>";
for($m = 1 ; $m <=12 ; $m++)
{
	echo "<td valign='top'>";
	echo "<table class='tabstd'>";
	$teststamp = (mktime(0,0,0,$m,1,$year)+43200);
	echo "<tr> <th colspan='2'>".date("M",$teststamp)."</th> </tr>";
	while(date("m",$teststamp)==$m)
	{
		$test_d = date("d",$teststamp);
		$test_m = date("m",$teststamp);
		$test_y = date("Y",$teststamp);
		$teststamp_normalized = mktime(0,0,0,$test_m,$test_d,$test_y);
		$display="";
//		$tot_display = 0;
		
		$myquery = "SELECT * FROM `calend_$calend` WHERE start_time = '$teststamp_normalized';";
		//echo "$myquery<br>";
		$Resultat = mysql_query($myquery);
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			
			$display= mysql_result($Resultat , $Compteur , "item$item_id");
			$exploded_display = explode(",", $display);
			$tot_display = count($exploded_display);
			if($exploded_display[0]=="")
			{
				$tot_display = 0;
			}
		}
			if((date("w",$teststamp)==6)|(date("w",$teststamp)==0))
			{
				$cell_color = '#B5B5B5';
			}
			elseif(($tot_display >= $limite1)&($tot_display < $limite2))
			{
				$cell_color = '#FFF663';
			}
			elseif($tot_display >= $limite2)
			{
				$cell_color = '#FF7C7C';
			}
			
			else
			{
				$cell_color = 'white';
			}
		echo "<tr><td class='td1' bgcolor='$cell_color'>".date("d-m-Y D", $teststamp_normalized)."</td><td class='td1' bgcolor='$cell_color'> ".$display." </td></tr>";
		$teststamp = $teststamp + 86400;
				
	}	
	
	if($m==6)
	{
		echo "</table>";
		echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<td>";
		echo "</table>";
		echo "</td>";
		echo "<table align='center'>";
	}
	else
	{
		echo "</table>";
		echo "</td>";
	}
	
	
}
echo "</tr>";
echo "</table>";


?>
