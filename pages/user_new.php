

<?

include ("user_func_verif.php");

if(isset($_POST['nom']))
{
	
	include("user_recup_image.php");

	$user = $_POST['post_user'];
	$nom = $_POST['nom'];
	$prenom = $_POST['prenom'];
	
	$admin = $_POST['admin'];
	$fonction = $_POST['fonction'];
	$level = $_POST['level'];
	$access_chain = $admin.".".$fonction.".".$level;
	
	$phone = $_POST['phone'];
	$mail = $_POST['mail'];
	$priv_phone = $_POST['priv_phone'];
	$gsm = $_POST['gsm'];
	$bip = $_POST['bip'];
	$aff_list = $_POST['aff_list'];
	$mail_act = $_POST['mail_act'];

	$ddn = $_POST['ddn'];
	$ddnsplit = explode("/",$ddn);
	$ddnstamp = mktime(0,0,0,$ddnsplit[1],$ddnsplit[0],$ddnsplit[2]);


	
	$mail_act = $_POST['mail_act'];
	$passwordA = $_POST['passwordA'];
	$passwordB = $_POST['passwordB'];
	$passwordA = md5($passwordA);
	$passwordB = md5($passwordB);


	
	if ($passwordA == $passwordB)
	{
		$myquery = "insert INTO users (INITIALES, NOM, PRENOM, PASSWORD, PHONE, MAIL, GSM, BIP, access_chain, image_name, PRIV_PHONE, aff_list, mail_act, ddn) VALUES ('$user', '$nom', '$prenom', '$passwordA','$phone', '$mail', '$gsm', '$bip', '$access_chain', '$image_name', '$privphone', '$aff_list', '$mail_act', '$ddnstamp')" ;
		//echo "<br>", $myquery, "<br>" ;
		mysql_query($myquery); 
		echo '<br>', $nom, " a été correctment ajouté à la liste d'utilisateurs";
	}
	else
	{
		echo 'Erreur dans l\'encodage du mot de passe';
	}


}


?>	


	
	<form action="index.php?toload=user_new" name="formulaire" method="POST" enctype="multipart/form-data" onsubmit="return verif_form()">
	
	
	<table align="center">
		<tr>
			<td> Nom d'utilisateur : </td>
			<td> <input type="text" name="post_user">  </td>
		</tr>
		<tr>
			<td> Nom : </td>
			<td> <input type="text" name="nom"> </td>
		</tr>
		<tr>
			<td> Prénom : </td>
			<td> <input type="text" name="prenom"> </td>
		</tr>
		<tr>
			<td> Admin : <? echo $access_chain ?></td>
			<td>
			 <select name="admin">
			 	
				<?
				$Resultat = mysql_query("SELECT * FROM users_admin;");
				for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
				{
					$id = mysql_result($Resultat , $Compteur , "id");
					$admin = mysql_result($Resultat , $Compteur , "admin");
					
					?>
					<option value='<? echo $id; ?>'> <? echo $id." ".$admin; ?> </option>
					<?
				}
				?>
			</select> </td>
		</tr>
		<tr>
			<td> Fonction </td>
			<td>
			 <select name="fonction">
			 	
			 	<?
				$Resultat = mysql_query("SELECT * FROM users_fonction;");
				for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
				{
					$id = mysql_result($Resultat , $Compteur , "id");
					$fonction = mysql_result($Resultat , $Compteur , "fonction");
					$descFct = mysql_result($Resultat , $Compteur , "descFct");
					?>
					<option value='<? echo $id; ?>'> <? echo $id." ".$descFct; ?> </option>
					<?
				}
				?>
			</select> </td>
		</tr>
		<tr>
			<td> Niveau : </td>
			<td>
			 <select name="level">
			 	
				<?
				$Resultat = mysql_query("SELECT * FROM users_level;");
				for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
				{
					$level = mysql_result($Resultat , $Compteur , "level");
					$intitule = mysql_result($Resultat , $Compteur , "intitule");
					?>
					<option value='<? echo $level; ?>'> <? echo $level." ".$intitule; ?> </option>
					<?
				}
				?>
			</select> </td>
		</tr>
		<tr>
			<td> Telephone : </td>
			<td> <input type="text" name="phone"> </td>
		</tr>
		<tr>
			<td> Bip/portable : </td>
			<td> <input type="text" name="bip"> </td>
		</tr>
			<tr>
			<td> Mail : </td>
			<td> <input type="text" name="mail" size=35> </td>
		</tr>
			<tr>
			<td> GSM : </td>
			<td> <input type="text" name="gsm"> </td>
		</tr>
		<tr>
			<td> Tel. Privé : </td>
			<td> <input type="text" name="priv_phone"> </td>
		</tr>
		
		
		<tr>
			<td> Image : </td>
			<td> <input type="file" name="new_image"></td>
		</tr>
		
		<tr>
			<td> Date de naissance : </td>
			<td> <input type="text" name="ddn" onChange="verif_date()"> </td>
		</tr>
		<tr>
			<td> Afficher dans liste</td>
			<td> <select name="aff_list">
				<option value='oui'> Oui </option>
				<option value='non'> Non </option>
				</select> </td>
		</tr>	
			
		<tr>
			<td> Mailing actif</td>
			<td> <select name="mail_act">
				<option value='non'> Non </option>
				<option value='oui'> Oui </option>
				</select> </td>
		</tr>	
		<tr>
			<td> Mot de passe : </td>
			<td> <input type="password" name="passwordA"></td>
		</tr>
		<tr>
			<td> Confirmez le mot de passe </td>
			<td> <input type="password" name="passwordB"></td>
		</tr>		
			
	</table>
	<div align="center">
	
	<input type='submit' value='Enregistrer'>
	</div>
	</form>
	<br>
<a href="index.php?toload=user_admin_list"> Retour à la liste </a>

