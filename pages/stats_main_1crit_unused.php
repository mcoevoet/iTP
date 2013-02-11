<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-fr.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css"/>

<script src="js/ui/js/jquery-ui-1.9.1.custom.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="js/ui/css/ui-lightness/jquery-ui-1.9.1.custom.css" type="text/css"/>

<script>
$(document).ready(function(){
    $("#validate_form").validationEngine();
    $( ".datepick" ).datepicker({ dateFormat: 'dd/mm/yy' });   
    //alert('test');
   });
	var dateFormat = $( ".datepick" ).datepicker( "option", "dateFormat" );
</script>

<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css"/>
<?
include('js/oXHR.js');
?>
<script type="text/javascript">
<!--
	function load_data() {		
		//alert('Je suis un témoin que la fonction se lance...!!');
		
		var datatoexplode = $('#crit1').val();
		var splitted_data = datatoexplode.split("/");
		
		//alert(datatoexplode + ' test 1!!');
		
		var table = splitted_data[1];
		var field = splitted_data[2];
		
		//alert(table + ' test 2!!');
		
		jQuery.ajax({
			type: 'GET', // Le type de ma requete
			url: 'pages/stats_handlingData.php', // L'url vers laquelle la requete sera envoyee
			data: {
				table: table, // Les donnees que l'on souhaite envoyer au serveur au format JSON
				field: field
				}, 
				success: function(data, textStatus, jqXHR) {
					
					//alert(data + ' test 2!!');
					
					var tab_new = data.split(", ");
					
					var newOptions = tab_new;
									
					
					//var selectedOption = 'green';

					var select = $('#crit1_val');
					if(select.prop) {
						var options = select.prop('options');
					}
					else {
						var options = select.attr('options');
					}
					$('option', select).remove();

					$.each(newOptions, function(val, text) {
						options[options.length] = new Option(text, text);
					});
				select.val(selectedOption);
					
				},
				error: function(jqXHR, textStatus, errorThrown) {
					// Une erreur s'est produite lors de la requete
				}
			});
		
			
		//alert('Je suis un témoin que la fonction se termine...!!');
		
	}
		
-->

</script>	

<h2 align="center"> Modules de statistiques </h2>

<form action="index.php?toload=stats_main" method="POST" name="form_data">
Time 1 :<input class='datepick' type="text" name="time1" value=<? echo $_POST['time1']; ?> > <br>
Time 2 :<input class='datepick' type="text" name="time2" value=<? echo $_POST['time2']; ?>> <br>

Critère 1 : <select name="crit1" id="crit1" onChange="load_data()">
<option value=<? echo $_POST['crit1'] ?> > <? echo $_POST['crit1'] ?> </option>
<?
$myquery = "SELECT * FROM reqOnItem";
echo "$myquery <br>";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$lookfor = mysql_result($Resultat , $Compteur , "lookFor");
	$tableFrom = mysql_result($Resultat , $Compteur , "tableFrom");
	$fieldFrom = mysql_result($Resultat , $Compteur , "fieldFrom");
	echo "<option value='$lookfor/$tableFrom/$fieldFrom' > $lookfor </option>";
}

?>
</select>
Critère 1 : <select name="crit1_value" id="crit1_val" >
<option value=<? echo $_POST['crit1_value'] ?> > <? echo $_POST['crit1_value'] ?> </option>

</select>

<?
$ui = 0;
$myquery = "SELECT * FROM reqOnItem";
echo "$myquery <br>";
$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$lookfor = mysql_result($Resultat , $Compteur , "lookFor");
	$tableFrom = mysql_result($Resultat , $Compteur , "tableFrom");
	$fieldFrom = mysql_result($Resultat , $Compteur , "fieldFrom");
	//echo "test yu".$_POST["display$ui"];
	
	if($_POST["display$ui"] != "")
	{
		echo "$lookfor: <input type='checkbox' name='display$ui' checked='checked' value='$lookfor/$tableFrom/$fieldFrom'> <br>";
	}
	else
	{
		echo "$lookfor: <input type='checkbox' name='display$ui' value='$lookfor/$tableFrom/$fieldFrom'> <br>";
	}
	$ui++;
}

?>
<input type="hidden" value="<? echo $ui ?>" name="nb_display" > 
<input type="submit" value="envoyer">
</form>

<?
$nb_display = $_POST['nb_display'];




$crit1_value = $_POST['crit1_value'];
$crit1 = $_POST['crit1'];
$expl_crit1 = explode('/',$crit1);

$lookfor = $expl_crit1[0];
$tableFrom = $expl_crit1[1];
$fieldFrom = $expl_crit1[2];

echo "Valeur critère 1 = $crit1_value ";

$time1 = $_POST['time1'];

$expl_time1 = explode('/',$time1);
$time1_d = $expl_time1[0];
$time1_m = $expl_time1[1];
$time1_y = $expl_time1[2];
$time1_stamp = mktime(0,0,0,$time1_m,$time1_d,$time1_y);


$time2 = $_POST['time2'];

$expl_time2 = explode('/',$time2);
$time2_d = $expl_time2[0];
$time2_m = $expl_time2[1];
$time2_y = $expl_time2[2];
$time2_stamp = mktime(0,0,0,$time2_m,$time2_d,$time2_y);


$temp_query = "SELECT * FROM patient_treat pt";
$temp_query = $temp_query." INNER JOIN patient_admin pa ON (pt.idStluc = pa.idStluc)";
$temp_query = $temp_query." INNER JOIN $tableFrom tx ON (pt.idStluc = tx.idStluc AND pt.req = tx.req AND pt.volcible = tx.volcible AND pt.ptv = tx.ptv AND pt.plan = tx.plan)";

for($uii=0; $uii < $nb_display ; $uii++)
{
	$display[$uii] = $_POST["display$uii"];
	if($_POST["display$uii"] != "")
	{
		//echo "<br>test $display[$uii]";
		$temp_string = $display[$uii];
		$display = explode('/',$temp_string);
		$lookfor_display = $display[0];
		$tableFrom_display = $display[1];
		$fieldFrom_display = $display[2];
		$temp_query = $temp_query." INNER JOIN $tableFrom_display t$uii ON (pt.idStluc = t$uii.idStluc AND pt.req = t$uii.req AND pt.volcible = t$uii.volcible AND pt.ptv = t$uii.ptv AND pt.plan = t$uii.plan)";
		
	}
	
}

$temp_query = $temp_query." WHERE pt.startDate > $time1_stamp AND pt.startDate < $time2_stamp AND tx.$fieldFrom = '$crit1_value';";

$myquery = $temp_query;

echo "<br> $myquery <br>";
$counter = 0 ; 

echo "<table>";
echo "<tr>";
echo "<td> ID </td> <td> Nom </td> <td> Date </td> <td> Req </td> <td> PTV </td> <td> Volcible </td> <td> Plan </td> <td> $lookfor </td>";
for($uii=0; $uii < $nb_display ; $uii++)
	{
		$display[$uii] = $_POST["display$uii"];
		if($_POST["display$uii"] != "")
		{
			$temp_string = $display[$uii];
			$display = explode('/',$temp_string);
			$lookfor_display = $display[0];
			echo "<td> $lookfor_display </td>";
		}
	
	}
echo "</tr>";

$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	echo "<tr>";
	$idStluc = mysql_result($Resultat , $Compteur , "pt.idStluc");
	$ptv = mysql_result($Resultat , $Compteur , "pt.ptv");
	$startDate = mysql_result($Resultat , $Compteur , "pt.startDate");
	$req = mysql_result($Resultat , $Compteur , "pt.req");
	$volcible = mysql_result($Resultat , $Compteur , "pt.volcible");
	$plan = mysql_result($Resultat , $Compteur , "pt.plan");
	$lastname = mysql_result($Resultat , $Compteur , "pa.lastname");
	$val1 = mysql_result($Resultat , $Compteur , "tx.$fieldFrom");
	for($uii=0; $uii < $nb_display ; $uii++)
	{
		$display[$uii] = $_POST["display$uii"];
		if($_POST["display$uii"] != "")
		{
			//echo "<br>test $display[$uii]";
			$temp_string = $display[$uii];
			$display = explode('/',$temp_string);
			$lookfor_display = $display[0];
			$tableFrom_display = $display[1];
			$fieldFrom_display = $display[2];
			$display_value[$uii] = mysql_result($Resultat , $Compteur , "t$uii.$fieldFrom_display");
			//echo "<br> test uii $display_value[$uii]";
		}
	
	}
	
	
//	echo "$idStluc $lastname PTV:$ptv<br>";
	echo "<td> $idStluc </td>"; 
	echo "<td> $lastname </td>";
	echo "<td>".date("d-m-Y",$startDate)."</td>";
	echo "<td> $req </td>";
	echo "<td> $ptv </td>";
	echo "<td> $volcible </td>";
	echo "<td> $plan </td>";
	echo "<td> $val1 </td>";
	for($uii=0; $uii < $nb_display ; $uii++)
	{
		$display[$uii] = $_POST["display$uii"];
		if($_POST["display$uii"] != "")
		{
			echo "<td> $display_value[$uii] </td>";
		}
	
	}
echo "</tr>";
	
	$counter++;
	echo "</tr>";
}

echo "total =  $counter <br>";

?>
