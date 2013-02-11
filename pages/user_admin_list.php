<div align="center"> 
		<a href=index.php?toload=user_new><img src="images/add.jpg" alt="adduser" height=32 width=32></a>
		<a href=index.php?toload=user_settings><img src="images/settings.png" alt="settings" height=32 width=32></a>
		</div>
<div align="center">


<?
	$nb_actif = 0;
	$Resultat = mysql_query("SELECT * FROM users ORDER BY nom;");
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			$actif = mysql_result($Resultat , $Compteur , "actif");
			if ($actif == "oui")
				{
				$nb_actif++;
				}
			
		}
?>

Nombre d'utilisateurs actifs : <? echo $nb_actif ?>
<br>
<br>
Tri par :
<a href=index.php?toload=user_admin_list&sortby=name> Nom </a>&nbsp 
<a href=index.php?toload=user_admin_list&sortby=user> User </a>&nbsp
<a href=index.php?toload=user_admin_list&sortby=fonction> Fonction </a>&nbsp			
				

		<table align="center">
		<tr> <th colspan="13"> Users </th> </tr>
		<tr>
			<th> ID </th>	
			<th> Initiales </th>	
			<th> Nom </th>
			<th> Prenom </th>			
			<th> Fonction </th>	
			<th> Telephone </th>	
			<th> Mail </th>	
			<th> GSM </th>	
			<th> Tel. Privé </th>
			<th witdh=20> Modifier</th>
			<th witdh=20> Actif </th>		
			<th witdh=20> Mail actif</th>
			<th witdh=20> reset Password</th>
			
		</tr>
		
		<?
		
		if($_GET['sortby']==name)
		{
			$Resultat = mysql_query("SELECT * FROM users ORDER BY nom;");
		}
		elseif($_GET['sortby']==user)
		{
			$Resultat = mysql_query("SELECT * FROM users ORDER BY initiales;");
		}
		elseif($_GET['sortby']==fonction)
		{
			$Resultat = mysql_query("SELECT * FROM users ORDER BY fonction;");
		}
		else
		{
			$Resultat = mysql_query("SELECT * FROM users ORDER BY ID;");
		}
		
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
			//récupération des données
			$ID = mysql_result($Resultat , $Compteur , "ID");
			$init = mysql_result($Resultat , $Compteur , "initiales");
			$nom = mysql_result($Resultat , $Compteur , "nom");
			$prenom = mysql_result($Resultat , $Compteur , "prenom");
			$fonction = mysql_result($Resultat , $Compteur , "fonction");
			$phone = mysql_result($Resultat , $Compteur , "phone");
			$mail = mysql_result($Resultat , $Compteur , "mail");
			$gsm = mysql_result($Resultat , $Compteur , "gsm");
			$priv_phone = mysql_result($Resultat , $Compteur , "priv_phone");
			$aff_list = mysql_result($Resultat , $Compteur , "aff_list");
			$actif = mysql_result($Resultat , $Compteur , "actif");
			$mail_act = mysql_result($Resultat , $Compteur , "mail_act");
			$image_name = mysql_result($Resultat , $Compteur , "image_name");
			$photo = "dwld_files/user_images/".$image_name;
			//echo $aff_list;
			
			if ($aff_list == "oui")
			{
			?>
			<tr>
				<td> <? echo $ID ?> </td>
				<td> <? echo $init ?> </td>	
				<td> <? echo $nom ?> </td>
				<td> <? echo $prenom ?> </td>
				<td> <? echo $fonction ?> </td>	
				<td> <? echo $phone ?> </td>	
				<td> <? echo $mail ?> </td>	
				<td> <? echo $gsm ?> </td>	
				<td> <? echo $priv_phone ?> </td>
				<td align="center"> <a href=index.php?toload=user_modif&user_ID=<? echo $ID ?>> <img src="images/modify.gif" alt="modify"/></a></td>
				<?
				if ($actif == "oui")
				{
					?> <td align="center"><a href=pages/user_disable.php?ID=<? echo $ID ?>><img src="images/enable.jpg" alt="enable"/></a></td> <?
				}
				else
				{
					?> <td align="center"> <a href=pages/user_enable.php?ID=<? echo $ID ?>><img src="images/disable.jpg" alt="disable"/></a></td> <?
				}
				?>
				
				<?
				if ($mail_act == "oui")
				{
					?> <td align="center"><a href=pages/user_mail_disable.php?ID=<? echo $ID ?>><img src="images/enable.jpg" alt="enable"/></a></td> <?
				}
				else
				{
					?> <td align="center"> <a href=pages/user_mail_enable.php?ID=<? echo $ID ?>><img src="images/disable.jpg" alt="disable"/></a></td> <?
				}
				?>	
				<td align="center"> <a href=index.php?toload=user_reset_pass&user_ID=<? echo $ID ?>> <img height=16 width=16 src="images/reset.png" alt="modify"/></a></td>						
				</tr>
			<?}
		}
		?>
		</table>
		
		</div>
		<?

?>
		<div align="center"> 
		<a href=index.php?toload=user_new><img src="images/add.jpg" alt="adduser" height=32 width=32></a>
		</div>


