<? session_start(); 
include("_connexiondblogin.php");
include("_imgmenu.php");


?>
<html>
<? $tps1 = microtime();  ?>
<head>
<link rel="stylesheet" type="text/css" href="style/style.css" /> 
<title> Login </title>
<? include ("_affichage.php"); ?>

</head>
<body>

<div align="center">
<IMG src="images/titre.jpg">

<h1 align="center"> Login </h1>
</div>

<?
include("_infolog.php");
?>

<table align="center">
	<tr>
	<td class="menu" background="<? echo $imgmenu ?>"> Menu  </td>
	</tr>
	<tr>
	<td class="menu" background="<? echo $imgmenu ?>"> <a href="liste.php" > Liste des postes </a> </td>
	</tr>
</table>


<? 
$user = $_POST['user'];
$password1 = $_POST['password'];

//echo $user;
//echo $password1;

$zero ="";
$Resultat = mysql_query("SELECT * FROM users WHERE INITIALES='$user' ORDER BY ID;");

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
    
	
	$nom= mysql_result($Resultat , $Compteur , "NOM");
	$user= mysql_result($Resultat , $Compteur , "INITIALES");
	$password2 = mysql_result($Resultat , $Compteur , "PASSWORD");
	$fonction = mysql_result($Resultat , $Compteur , "FONCTION");

}


?> 
<br>
<div align="center"> <?
//echo '<br>', $user, '<br>';
//echo $nom, '<br>';
//echo $fonction, '<br>';

$password1 = md5($password1);


if ($password1 == $password2)
{
	echo '<br> Vous êtes correctement loggé';
	$_SESSION['user'] = $user;
	$_SESSION['nom'] = $nom;
	$_SESSION['pass'] = $password2;
	
	
	
	if ($fonction == 'superuser')
	{
		$_SESSION['type'] = 1;
		echo ' en tant qu\'administrateur <br>';
	}
	elseif ($fonction == 'med')
	{
		$_SESSION['type'] = 2;
		echo ' en tant que membre du corps médical <br>';
	}
	elseif ($fonction == 'tech')
	{
		$_SESSION['type'] = 3;
		echo ' en tant que membre du personnel technique <br>';
	}
	elseif ($fonction == 'phys')
	{
		$_SESSION['type'] = 4;
		echo ' en tant Physicien <br>';
	}
elseif ($fonction == 'dosi')
	{
		$_SESSION['type'] = 5;
		echo ' en tant que dosimétriste <br>';
	}
	else
	{
		echo 'Votre fonction n\'est pas connue par le programme, Veuillez contacter votre administarteur réseau';
	}
}
else
{
echo 'Votre password est incorrect';
}

//echo session_save_path();
//echo $_SESSION['user'];

?>
</div>


</body>

</html>