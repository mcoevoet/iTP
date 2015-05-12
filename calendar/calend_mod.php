<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-fr.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css"/>

<script src="js/ui/js/jquery-ui-1.9.1.custom.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="js/ui/css/ui-lightness/jquery-ui-1.9.1.custom.css" type="text/css"/>

<script src="js/multiselect/src/jquery.multiselect.js" type="text/javascript" charset="utf-8"></script>
<script src="js/multiselect/src/jquery.multiselect.filter.js" type="text/javascript" charset="utf-8"></script> 
<link rel="stylesheet" href="js/multiselect/jquery.multiselect.css" type="text/css"/>

<script>
$(document).ready(function(){
//    alert('test start');
    $("#editby").multiselect({selectedList: 4});  
//    alert('test final');
   });
	var dateFormat = $( ".datepick" ).datepicker( "option", "dateFormat" );
</script>

<?
if((isset($_POST['new_item']))&($_POST['new_item']!=""))
{
	$new_item = $_POST['new_item'];
}



if((isset($_POST['calend_name']))&($_POST['calend_name']!="")&($new_item == "new_item"))
{
	$calend_name=$_POST['calend_name'];
	$nb_item=$_POST['nb_item'];
	$myquery = "SELECT * FROM calend_struct WHERE name = '$calend_name';";
	//echo $myquery;
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	}
	$data[$nb_item]['item_name']="item $nb_item";
//	print_r($data);
	$sqldata = serialize($data);
	$sqldata = mysql_escape_string($sqldata);
	$myquery = "update calend_struct set data='$sqldata' where name='$calend_name'";
	mysql_query($myquery);
	$nb_item_new = $nb_item;
	$new_field = "item$nb_item_new";
	$myquery = "ALTER TABLE `calend_$calend_name` ADD $new_field VARCHAR( 100 );";
//	$myquery = "update calend_struct set data='$sqldata' where name='$calend_name'";
	mysql_query($myquery);
	
}

elseif((isset($_POST['calend_name']))&($_POST['calend_name']!="")&($new_item == "new_sub_tab"))
{
	$calend_name=$_POST['calend_name'];
	$nb_sub_tab=$_POST['nb_sub_tab'];
	$myquery = "SELECT * FROM calend_struct WHERE name = '$calend_name';";
	//echo $myquery;
	$Resultat = mysql_query($myquery);
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
	$sqldata2 = mysql_result($Resultat , $Compteur , "data2");
	$data2 = unserialize($sqldata2);
	}
	$data2[$nb_sub_tab]['sub_tab_name']="sub_tab$nb_sub_tab";
	$data2[$nb_sub_tab]['sub_tab_id']="$nb_sub_tab";
//	print_r($data);
	$sqldata2 = serialize($data2);
	$sqldata2 = mysql_escape_string($sqldata2);
	$myquery = "update calend_struct set data2='$sqldata2' where name='$calend_name'";
	mysql_query($myquery);	
}

elseif(((isset($_POST['calend_name']))&($_POST['calend_name']!=""))&($new_item == "no"))
{
	$old_name=$_POST['old_name'];
	$calend_name=$_POST['calend_name'];
	$time_unit=$_POST['time_unit'];
	$nb_display=$_POST['nb_display'];
	$edit_by=$_POST['edit_by'];
//	echo "test :"; print_r($edit_by);
	$nb_item=$_POST['nb_item'];
	$nb_sub_tab=$_POST['nb_sub_tab'];
	$data = array();
	
	$sqledit_by = serialize($edit_by);
	$sqledit_by = mysql_escape_string($sqledit_by);
	
	for($i=0;$i < $nb_item;$i++)
	{
		$data[$i]['item_name']=$_POST['item'.$i];
		$data[$i]['item_number']="item$i";
		$data[$i]['order']=$_POST['order'.$i];
//		echo "test".$_POST['sub_tab'.$i];
		$data[$i]['sub_tab']=$_POST['sub_tab'.$i];
	}
	for($ii=0;$ii < $nb_sub_tab;$ii++)
	{
		$data2[$ii]['sub_tab_id']=$_POST['sub_tab_id'.$ii];
		$data2[$ii]['sub_tab_name']=$_POST['sub_tab_name'.$ii];	
		$data2[$ii]['sub_tab_order']=$_POST['sub_tab_order'.$ii];
	} 
	
	if($calend_name!=$old_name)
	{
//		echo "test changement de nom positif old= $old_name new=$calend_name <br>";
		$myquery = "update calend_struct set name='$calend_name' where name='$old_name'";
		
		mysql_query($myquery);
		$myquery = "ALTER TABLE `calend_$old_name` RENAME TO `calend_$calend_name` ;";
		//echo $myquery;
		mysql_query($myquery);
	}
	$myquery = "update calend_struct set time_unit='$time_unit' where name=`$calend_name`";
	mysql_query($myquery);
	$myquery = "update calend_struct set nb_display='$nb_display' where name='$calend_name'";
	mysql_query($myquery);
	$myquery = "update calend_struct set edit_by='$sqledit_by' where name='$calend_name'";
	mysql_query($myquery);
	$myquery = "update calend_struct set time_unit='$time_unit' where name='$calend_name'";
	mysql_query($myquery);
	
//	print_r($data);
//	print_r($data2);
	
	$sqldata = serialize($data);
	$sqldata = mysql_escape_string($sqldata);
	$myquery = "update calend_struct set data='$sqldata' where name='$calend_name'";
	//echo "$myquery <br>";
	mysql_query($myquery);
	
	$sqldata2 = serialize($data2);
	$sqldata2 = mysql_escape_string($sqldata2);
	$myquery = "update calend_struct set data2='$sqldata2' where name='$calend_name'";
	//echo "$myquery <br>";
	mysql_query($myquery);	
	
	
}
if((isset($_GET[calend]))&($_GET[calend]!=""))
{
$calend_name = $_GET[calend];
}
else
{
$calend_name = $_POST['calend_name'];
}

//print_r($data);

$myquery = "SELECT * FROM calend_struct WHERE name = '$calend_name';";
//echo $myquery;
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
	$sqledit_by = mysql_result($Resultat , $Compteur , "edit_by");
	$edit_by = unserialize($sqledit_by);
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	$sqldata2 = mysql_result($Resultat , $Compteur , "data2");
	$data2 = unserialize($sqldata2);
}
?>

<form action="index.php?toload=calend_mod" method="POST">

<table>
<tr> <td> Nom du calendrier : <input type="text" name="calend_name" value="<? echo $name?>"></td></tr>
<tr> <td>Unité temporelle :<select name="time_unit">
<option value="<? echo $time_unit?>"> <? echo $time_unit?> </option>
<option value="d"> Jour </option>
<option value="w"> Semaine </option>
<option value="m"> Mois </option>
</select>
</td></tr>
<tr> <td> Editable par :  

<select id="editby" name="edit_by[]" multiple="multiple">
	
 	<?
	$Resultat = mysql_query("SELECT * FROM users_fonction ORDER BY id;");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$id = mysql_result($Resultat , $Compteur , "id");
		$fonction = mysql_result($Resultat , $Compteur , "fonction");
		$descFct = mysql_result($Resultat , $Compteur , "descFct");
		?>
		<option value='<? echo $id; ?>' <? 
		for($i = 0; $i<count($edit_by); $i++) {
			if($edit_by[$i] == $id )
			{ 
				echo "selected='selected'";
			}
		
		}
		?>> <? echo $id." ".$descFct; ?> </option>
	<?
	}
	?>
</select>
</td></tr>
<tr> <td> Durée à afficher: <input type="text" name="nb_display" value="<? echo $nb_display?>">nombre d'unités<br> </td></tr>


<?

$nb_item = 0;
for($i=0;$i < count($data);$i++)
{
	echo "<tr>";
	echo "<td> item$i : <input type='text' name='item$i' value='".$data[$i]['item_name']."'></td>";
	echo "<td> sous tableau :  <input type='text' name='sub_tab$i' value='".$data[$i]['sub_tab']."'></td>";
	echo "<td> ordre :  <input type='text' name='order$i' value='".$data[$i]['order']."'></td>";
	echo "</tr>";
	$nb_item++;	
} 


?>
</table>
<br>
<table>
<tr> <td> ID : </td> <td> Nom : </td> <td> ordre :</td> </tr>


<?
$nb_sub_tab = 0;
//print_r($data2);
for($i=0;$i < count($data2);$i++)
{
	echo "<tr>";
	echo "<td> <input type='hidden' name='sub_tab_id$i' value='".$data2[$i]['sub_tab_id']."'>".$data2[$i]['sub_tab_id']."</td>";
	echo "<td> <input type='text' name='sub_tab_name$i' value='".$data2[$i]['sub_tab_name']."'></td>";
	echo "<td> <input type='text' name='sub_tab_order$i' value='".$data2[$i]['sub_tab_order']."'></td>";
	echo "</tr>";
	$nb_sub_tab++;	
} 


?>
</table>



<input type="hidden" name="nb_item" value="<? echo $nb_item?>" ></input>
<input type="hidden" name="nb_sub_tab" value="<? echo $nb_sub_tab?>" ></input>
<input type="hidden" name="old_name" value="<? echo $name?>" ></input>
<input type="hidden" name="new_item" value="no" ></input>
<input type="submit" value="enregistrer"></input>
</form>

<form action="index.php?toload=calend_mod" method="POST">
<input type="hidden" name="nb_item" value="<? echo $nb_item?>" ></input>
<input type="hidden" name="calend_name" value="<? echo $name?>" ></input>
<input type="hidden" name="new_item" value="new_item" ></input>
<input type="submit" value="ajouter champ"></input>
</form>

<form action="index.php?toload=calend_mod" method="POST">
<input type="hidden" name="nb_sub_tab" value="<? echo $nb_sub_tab?>" ></input>
<input type="hidden" name="calend_name" value="<? echo $name?>" ></input>
<input type="hidden" name="new_item" value="new_sub_tab" ></input>
<input type="submit" value="ajouter sous tableau"></input>
</form>

