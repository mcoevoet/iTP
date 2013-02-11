<?


if(isset($_GET['user_ID']))
{
	$ID = $_GET['user_ID'];
	//echo "test get ".$ID;
}
elseif(isset($_POST['ID']))
{
	$ID = $_POST['user_ID'];
	//echo "test post ".$ID;
}
//echo $ID;



if(isset($_POST['ID']))
{
	$ID = $_POST['ID'];
	include("user_recup_image.php");

	$user = $_POST['post_user'];
	$nom = $_POST['nom'];
	$prenom = $_POST['prenom'];
	
	$admin = $_POST['admin'];
	$fonction = $_POST['fonction'];
	$level = $_POST['level'];
	$access_chain = $admin.".".$fonction.".".$level;
	
	//echo "new access_chain = ".$access_chain;

	
	$phone = $_POST['phone'];
	$mail = $_POST['mail'];
	$priv_phone = $_POST['priv_phone'];
	$gsm = $_POST['gsm'];
	$bip = $_POST['bip'];
	
	$aff_list = $_POST['aff_list'];
	$mail_phys = $_POST['mail_phys'];
	$mail_tech = $_POST['mail_tech'];
	$level = $_POST['level'];
	$ddn = $_POST['ddn'];
	$ddnsplit = explode("/",$ddn);
	$ddnstamp = mktime(0,0,0,$ddnsplit[1],$ddnsplit[0],$ddnsplit[2]);
	
	

	$change_image = $_POST['change_image'];
	//echo "change image = ".$change_image;


	$myquery = "update users set INITIALES='$user' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set NOM='$nom' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set PRENOM='$prenom' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
//	$myquery = "update users set FONCTION='$fonction' where ID='$ID'";
//	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set PHONE='$phone' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set MAIL='$mail' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set PRIV_PHONE='$priv_phone' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set GSM='$gsm' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set BIP='$bip' where ID='$ID'";
	mysql_query($myquery); 
	$myquery = "update users set access_chain='$access_chain' where ID='$ID'";
	mysql_query($myquery);
	//echo "<br>", $myquery, "<br>" ;
	if ($change_image == 'yes')
	{
	$myquery = "update users set image_name='$image_name' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	}
	$myquery = "update users set aff_list='$aff_list' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;

//	$myquery = "update users set H='$H' where ID='$ID'";
//	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
	$myquery = "update users set ddn='$ddnstamp' where ID='$ID'";
	mysql_query($myquery); 
	//echo "<br>", $myquery, "<br>" ;
}


//$Resultat = mysql_query("SELECT * FROM users AS u, users_fonction AS uf WHERE u.fonction = uf.fonction AND u.ID='$ID';");
$Resultat = mysql_query("SELECT * FROM users WHERE ID='$ID';");
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			//récupération des données
			$ID = mysql_result($Resultat , $Compteur , "ID");
			$init = mysql_result($Resultat , $Compteur , "initiales");
			$prenom = mysql_result($Resultat , $Compteur , "prenom");
			$nom = mysql_result($Resultat , $Compteur , "nom");
//			$fonction = mysql_result($Resultat , $Compteur , "fonction");
			
			$descFct = mysql_result($Resultat , $Compteur , "descFct");
			
			
			$phone = mysql_result($Resultat , $Compteur , "phone");
			$mail = mysql_result($Resultat , $Compteur , "mail");
			$gsm = mysql_result($Resultat , $Compteur , "gsm");
			$bip = mysql_result($Resultat , $Compteur , "bip");
			$access_chain = mysql_result($Resultat , $Compteur , "access_chain");
			
			$exploded_access_chain = explode(".",$access_chain);
			$access_admin = $exploded_access_chain[0];
			$access_fonction = $exploded_access_chain[1];
			$access_level = $exploded_access_chain[2];
			
			
			//recup de l'intitulé de admin via l'info de l'access_chain
			$Resultat0 = mysql_query("SELECT * FROM users_admin WHERE id='$access_admin';");
			for ($Compteur0=0 ; $Compteur0 < mysql_numrows($Resultat0) ; $Compteur0++)
			{
				//récupération des données
				$admin = mysql_result($Resultat0 , $Compteur0 , "admin");
			}
			
			//recup de l'intitulé de fonction via l'info de l'access_chain
			$Resultat1 = mysql_query("SELECT * FROM users_fonction WHERE ID='$access_fonction';");
			for ($Compteur1=0 ; $Compteur1 < mysql_numrows($Resultat1) ; $Compteur1++)
			{
				//récupération des données
				$descFct = mysql_result($Resultat1 , $Compteur1 , "descFct");
			}
			
			//recup de l'intitulé de level via l'info de l'access_chain
			$Resultat2 = mysql_query("SELECT * FROM users_level WHERE ID='$access_level';");
			for ($Compteur2=0 ; $Compteur2 < mysql_numrows($Resultat2) ; $Compteur2++)
			{
				//récupération des données
				$level = mysql_result($Resultat2 , $Compteur2 , "level");
				$level_int = mysql_result($Resultat2 , $Compteur2 , "intitule");
			}
			
			
			$image_name = mysql_result($Resultat , $Compteur , "image_name");
			//echo $image_name;
			$priv_phone = mysql_result($Resultat , $Compteur , "priv_phone");
			$aff_list = mysql_result($Resultat , $Compteur , "aff_list");
			$mail_tech = mysql_result($Resultat , $Compteur , "mail_tech");
			$mail_phys = mysql_result($Resultat , $Compteur , "mail_phys");
			$H = mysql_result($Resultat , $Compteur , "H");
			$ddn = mysql_result($Resultat , $Compteur , "ddn");
			$photo = "dwld_files/user_images/".$image_name;
			//echo $photo;
			//echo $aff_list;
			
		}
	
?>	
	
	<form action="index.php?toload=user_modif" method="POST" name="formulaire" enctype="multipart/form-data">
	
	
	<table align="center">
		<tr>
			<td> Nom d'utilisateur : </td>
			<td> <input type="text" name="post_user" <? if (isset($init)){?> value="<? echo $init ?>"<?}?>>  </td>
		</tr>
		<tr>
			<td> Nom : </td>
			<td> <input type="text" name="nom" <? if (isset($nom)){?> value="<? echo $nom ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> Prénom : </td>
			<td> <input type="text" name="prenom" <? if (isset($prenom)){?> value="<? echo $prenom ?>"<?}?>> </td>
		</tr>
		
		<tr>
			<td> Admin : <? echo $access_chain ?></td>
			<td>
			 <select name="admin">
			 	<option value='<? echo $access_admin; ?>'> <? echo $access_admin." ".$admin;?> </option>
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
			 	<option value='<? echo $access_fonction; ?>'> <? echo $access_fonction." ".$descFct; ?> </option>
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
			 	<option value='<? echo $access_level; ?>'> <? echo $access_level." ".$level_int;?> </option>
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
			<td> <input type="text" name="phone" <? if (isset($phone)){?> value="<? echo $phone ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> Bip/portable : </td>
			<td> <input type="text" name="bip" <? if (isset($bip)){?> value="<? echo $bip ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> Mail : </td>
			<td> <input type="text" size=35 name="mail" <? if (isset($mail)){?> value="<? echo $mail ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> GSM : </td>
			<td> <input type="text" name="gsm" <? if (isset($gsm)){?> value="<? echo $gsm ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> Tel. Privé : </td>
			<td> <input type="text" name="priv_phone" <? if (isset($priv_phone)){?> value="<? echo $priv_phone ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> Photo : </td>
			<td> Changer Photo? <input type="checkbox" name="change_image" value="yes"> <br> </td>		
		</tr>
		<tr>
			<td> </td>
			<td> <IMG src="<?echo $photo?>" width=100 height=100 alt="<? echo $photo; ?>" > </td>
		</tr>
		
		<tr>
			<td> </td>
			<td> <input type="file" name="new_image"></td>
		</tr>
		
			<tr>
			<td> Date de naissance: </td>
			<td> <input type="text" onChange="verif_date()" name="ddn" <? if (isset($ddn)){?> value="<? echo date("d/m/Y",$ddn) ?>"<?}?>> </td>
		</tr>
		<tr>
			<td> Afficher dans liste</td>
			<td> <select name="aff_list">
				<option value='<? echo $aff_list ?>'> <? echo $aff_list ?> </option>
				<option value='oui'> Oui </option>
				<option value='non'> Non </option>
				</select> </td>
		</tr>	
			
	</table>
	<div align="center">
	<input type="hidden" name="ID" value="<? echo $ID ?>">
	<input type='submit' value='Modifier'>
	</div>
	</form>
<a href="index.php?toload=user_admin_list"> Retour à la liste </a>

