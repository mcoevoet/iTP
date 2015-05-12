<?
if(isset($_POST['calend_name']))
{
	$calend_name = $_POST['calend_name'];
	$time_unit = $_POST['time_unit'];
	$nb_display = $_POST['nb_display'];
	$nb_item = $_POST['nb_item'];
	$nb_sub_tab = $_POST['nb_sub_tab'];
	
	$myquery = "CREATE TABLE if not exists `calend_$calend_name` (ID int(11)primary key NOT NULL auto_increment, start_time int(20))";
	//echo $myquery."<br>";
	mysql_query($myquery);
	
	for($i = 0; $i < $nb_item; $i++)
	{
		$data[$i]['item_id'] = "item$i";
		$data[$i]['item_name'] = "item$i";
		$data[$i]['item_number'] = "item$i";
		$data[$i]['order'] = "$i";
		$write_data = "item$i";
		$myquery = "ALTER TABLE `calend_$calend_name` ADD $write_data VARCHAR( 100 );";
//		echo $myquery."<br>";
		mysql_query($myquery);	
	}
	
	for($u = 0; $u < $nb_sub_tab; $u++)
	{
		$data2[$u]['sub_tab_id'] = "$u";
		$data2[$u]['sub_tab_name'] = "sub_tab_$u";
		$data2[$u]['sub_tab_order'] = "$u";
	}
	
	$sqldata = serialize($data);
	$sqldata = mysql_escape_string($sqldata);
	$sqldata2 = serialize($data2);
	$sqldata2 = mysql_escape_string($sqldata2);
	$myquery = "insert INTO calend_struct (name, time_unit, nb_display, data, data2) VALUES ('$calend_name', '$time_unit', '$nb_display', '$sqldata', '$sqldata2')";
//	echo $myquery."<br>";
	mysql_query($myquery);
	$start_time = mktime(0,0,0,date("m"),date("d"),date("Y"));
	$myquery = "insert INTO `calend_$calend_name` (start_time) VALUES ('$start_time')";
//	echo $myquery."<br>";
	mysql_query($myquery);

}
?>

<h2> Nouveau Calendrier </h2>
<br>
<form action="index.php?toload=calend_new" method="POST">
Nom du calendrier : <input type="text" name="calend_name"><br>
Unité temporelle : <select name="time_unit">
<option value="d"> Jour </option>
<option value="w"> Semaine </option>
<option value="m"> Mois </option>

</select><br>
Durée à afficher: <input type="text" name="nb_display">nombre d'unités<br>
Nombre d'items : <input type="text" name="nb_item"><br>
Nombre de sous tableaux : <input type="text" name="nb_sub_tab"><br>
<input type="submit" value="enregistrer">
</form>