<?
session_id(); 
session_start();
//$_SESSION['user'] = "SVD";
//echo "test :".$_SESSION[user];
?>
<html>

<head>
</head>

<body>


<?
include('../_connexion.php');
$ID = $_GET['ID'];
//echo $ID;
$Resultat = mysql_query("SELECT * FROM users WHERE ID = '$ID';");
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
						
			//récupération des données
			$ID = mysql_result($Resultat , $Compteur , "ID");
			$init = mysql_result($Resultat , $Compteur , "INITIALES");
			$nom = mysql_result($Resultat , $Compteur , "NOM");
			$prenom = mysql_result($Resultat , $Compteur , "PRENOM");
			$fonction = mysql_result($Resultat , $Compteur , "fonction");
			$phone = mysql_result($Resultat , $Compteur , "phone");
			$bip = mysql_result($Resultat , $Compteur , "bip");
			$mail = mysql_result($Resultat , $Compteur , "mail");
			$gsm = mysql_result($Resultat , $Compteur , "gsm");
			$priv_phone = mysql_result($Resultat , $Compteur , "priv_phone");
			$image_name = mysql_result($Resultat , $Compteur , "image_name");
			$photo = "../dwld_files/user_images/".$image_name;
		}
?>

<table>
	<tr>
		<td> <image src='<? echo $photo?>' height='150' width='150'></td>
	</tr>
	<tr>
		<td colspan=2><? echo $prenom ?> <? echo $nom ?></td>
	</tr>
	<tr>
		<td>Initiales: </td> <td> <? echo $init ?></td>
	</tr>
	<tr>
		<td>Téléphone: </td> <td> <? echo $phone ?></td>
	</tr>
	<tr>
		<td>Bip/portable: </td> <td> <? echo $bip ?></td>
	</tr>
	<tr>
		<td>GSM: </td> <td> <? echo $gsm ?></td>
	</tr>
	<tr>
		<td>Email: </td> <td> <? echo $mail ?></td>
	</tr>
	<?
	if ($_SESSION['user']==$init)
	{
		?>
		<tr>
			<td><a href='user_change_pass.php?ID=<? echo $ID ?>'>Changer de password</a> </td>
		</tr>
	<?
	}
	?>

</table>

</body>
</html>