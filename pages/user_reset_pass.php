<?
session_start();
$ID = $_GET['user_ID'];
$Resultat = mysql_query("SELECT * FROM users WHERE ID = '$ID';");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$init = mysql_result($Resultat , $Compteur , "init");
		$nom = mysql_result($Resultat , $Compteur , "nom");
		$prenom = mysql_result($Resultat , $Compteur , "prenom");
	}
//echo $ID;
if (isset($_POST['validate']))
{
	if($_POST['validate']=='oui')
	{
		$newpass = md5("changeme");
		$myquery = "UPDATE users SET PASSWORD = '$newpass' WHERE ID = '$ID'" ;
		//echo "<br>", $myquery, "<br>" ;
		mysql_query($myquery); 
		echo "<br> Le mot de passe a été correctement réinitialisé";
	}
}		
?>
<form action="index.php?toload=user_reset_pass&user_ID=<? echo $ID ?>" method="POST">

<br>

Confirmer que vous voulez réinitialiser le mot de passe de <?echo $nom." ".$prenom?> :
<br>
<br>
<INPUT TYPE=RADIO NAME="validate" VALUE="oui">Oui<BR>
<INPUT TYPE=RADIO NAME="validate" VALUE="non">Non<BR>
<br>

<input type="submit" value="Reset!">
<br><br><br>
</form>
<a href="index.php?toload=user_admin_list"> Retour à la liste </a>
