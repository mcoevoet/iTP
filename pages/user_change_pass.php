<?
session_start();
?>
<html>

<head>
</head>

<body>


<?
//echo "test".$_SESSION['user'];
include('../_connexion.php');
$ID = $_GET['ID'];
//echo $ID;
if (isset($_POST['old']))
{
	//recup de données
	$user = $_SESSION['user'];
	
	$Resultat = mysql_query("SELECT * FROM users WHERE ID = '$ID';");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$oldpass1 = mysql_result($Resultat , $Compteur , "password");
		//echo "oldpass1".$oldpass1;
	}
	$oldpass2 = $_POST['old'];
	$oldpass2 = md5($oldpass2);
	//echo "oldpass2".$oldpass2;
	$newpass1 = $_POST['new1'];
	$newpass2 = $_POST['new2'];
	$newpass1 = md5($newpass1);
	$newpass2 = md5($newpass2);


	if (isset($_SESSION['user']))
	{
		//echo "test";
		if ($oldpass1 == $oldpass2) 
		{
			if ($newpass1 == $newpass2)
			{
				$myquery = "UPDATE users SET PASSWORD = '$newpass1' WHERE ID = '$ID'" ;
				//echo "<br>", $myquery, "<br>" ;
				mysql_query($myquery); 
				echo "<br> Votre mot de passe a été correctement modifié";
			}
			else
			{
				echo "La confirmation du mot de passe ne correspond pas avec le mot de passe introduit.";
			}
		}
		else
		{
			echo "Votre ancien mot de passe est incorrect";
		}
	}
}
?>
<form action="user_change_pass.php?ID=<? echo $ID ?>" method="POST">

<br>

<div align='center'>
<table>
	<tr> <td colspan='2'> Changement de password </td></tr>
	<tr>
		<TD> USER :</TD> 
		<TD> <? echo $_SESSION['user'] ?></TD> 
	</tr>
	<tr>
		<TD> ANCIEN PASSWORD:</TD> 
		<TD> <input type="password" name="old"> </TD> 
	</tr>
	<tr>
		<TD> NEW PASSWORD</TD> 
		<TD> <input type="password" name="new1"> </TD> 
	</tr>
	<tr>
		<TD> CONFIRM NEW PASSWORD :</TD> 
		<TD> <input type="password" name="new2"> </TD> 
	</tr>	
</table>

<input type="submit" value="Modifier!">
</div>
</form>

</body>
</html>
