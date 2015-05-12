<?php
//print_r(array_keys($_POST));
$calend = $_GET['calend'];
$saved_week = $_POST['saved_week'];
echo "saved week = $saved_week <br>";
header("Location: ../index.php?toload=calend_edit&calend=$calend&saved_week=$saved_week");
include("../_connexion.php");



$myquery = "SELECT * FROM calend_struct WHERE name = '$calend';";
echo "$myquery<br>";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	echo "time unit = $time_unit<br>";
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	$nb_item = count($data);
	
	//print_r($data);
	
	echo "nb item = $nb_item<br>";
}

foreach ($_POST as $key => $val) 
{

	echo "<br>Clé :  $key =>";
	echo " valeur : $val <br>";
	
	$exploded_key = explode(',',$key);
	echo "Clé explosée 0 :  $exploded_key[0] <br>";
	echo "Clé explosée 1 :  $exploded_key[1] <br>";
	echo "Clé explosée 2 :  $exploded_key[2] <br>";
	echo "Clé explosée 3 :  $exploded_key[3] <br> ";

	$save_time = $exploded_key[1];

	echo "<br> test a : ".$exploded_key[2]."<br>";

	$exploded_key[2] = str_replace("_", " ", $exploded_key[2]);

	echo "test b : ".$exploded_key[2];

	for($i=0; $i < $nb_item; $i++)
	{
		$test_value = "item$i";
		
		echo "<br>test = ".$test_value."?=".$exploded_key[3];
		if($test_value==$exploded_key[3])
		{
			$item_id = $i;
		}
	}

	echo "<br>save time = $save_time <br>";	
	$file_name = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS verif_exist FROM `calend_$calend` WHERE start_time='$save_time'"));
  
   	if($file_name['verif_exist'] > 0) {$ex_test=1;}elseif($file_name['verif_exist'] == 0){$ex_test=0;}
   	echo "ex test = $ex_test <br>";
    	
	if($ex_test==0)
	{
		echo "new";
		$myquery = "insert INTO `calend_$calend` (start_time) VALUES ('$save_time')" ;
		echo "<br>", $myquery, "<br>" ;
		mysql_query($myquery); 
		
		$val = mysql_real_escape_string($val);
		
		$myquery = "update `calend_$calend` set item$item_id='$val' where start_time='$save_time'";	
		mysql_query($myquery);
		echo "<br>", $myquery, "<br>" ;
		
		//rajouter idem que pour update	
		
		
	}
	elseif($ex_test==1)
	{
		echo "update";
		$val = mysql_real_escape_string($val);	
		$myquery = "update `calend_$calend` set item$item_id='$val' where start_time='$save_time'";	
		mysql_query($myquery);
		echo "<br>", $myquery, "<br>" ;
		
	}
	else
	{
		echo "error";
	}
echo "<br>item id : $item_id ";
echo "<br>";
}