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

<?
$calend = $_GET['calend'];

//chargement de la structure
$myquery = "SELECT * FROM calend_struct WHERE name = '$calend';";

$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	$sqldata2 = mysql_result($Resultat , $Compteur , "data2");
	$data2 = unserialize($sqldata2);
	$nb_item = count($data);
	$nb_sub_tab = count($data2);

	
}

if($time_unit == "d")
{
	include('calendar/calend_view_d.php');
}
elseif($time_unit == "w")
{
	include('calendar/calend_view_w.php');
}
elseif($time_unit == "m")
{
	include('calendar/calend_view_m.php');
}


?>