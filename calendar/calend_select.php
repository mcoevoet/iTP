<br>
<table align="center">
<tr> <td> Nom </td> <td> Unité </td> <td> Nombre à afficher </td> </tr>
<?
$Resultat = mysql_query("SELECT * FROM calend_struct ORDER BY ID;");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
	echo "<tr> <td><a href='index.php?toload=calend_view&calend=$name'> $name </a></td><td>$time_unit</td><td>$nb_display</td><td> <a href='index.php?toload=calend_edit&calend=$name'><img src='images/modify.gif' alt='modify'/></a> </td></tr>";
}
?>
</table>