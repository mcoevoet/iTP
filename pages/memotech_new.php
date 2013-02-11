<?
$date = date("d-m-Y");
$dateY = date("Y");
$dateM = date("m");
$dateD = date("d"); 

if(isset($_POST['item']))
{
	$memotech_user = $_POST['memotech_user'];
	$item = $_POST['item'];
	$date_limit = mktime (0,0,0,$_POST['date_limit_M'],$_POST['date_limit_D'],$_POST['date_limit_Y']);
	$recurence = $_POST['recurence'];
	$period = $_POST['period'];
	$date_entree = mktime (0,0,0,$_POST['dateM'],$_POST['dateD'],$_POST['dateY']);
	$statut = $_POST['statut'];
	$archive = "non";
	

	if(date('w',$date_limit) == 0)
	{
		$date_limit = $date_limit + (1*24*60*60);
	}
	elseif(date('w',$date_limit) == 6)
	{
		$date_limit = $date_limit + (2*24*60*60);
	}

	$commentaire = $_POST['commentaire'];
	$commentaire = mysql_escape_string($commentaire);
	
	$myquery = "insert INTO memotech (item, date_limit, recurence, period, date_entree, statut, commentaire, archive, user) VALUES ('$item', '$date_limit','$recurence', '$period', '$date_entree', '$statut', '$commentaire', '$archive', '$memotech_user')";
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
}

?>

<h2> Memo tech : New Item</h2>

<form action="index.php?toload=memotech_new" method="POST">


		<table border="1">
		<tr>
			<td colspan="2" align="center"> Main </td>
		</tr>
		<tr>
			<td> Item : </td> <td> <input type="text" name="item" size=20 > </td>
		</tr>
		<tr>
			<td> Date Limite </td> 
			<td>
				<input type="text" name="date_limit_D" value="<? echo $dateD; ?>" size="2">
	 			<input type="text" name="date_limit_M" value="<? echo $dateM; ?>" size="2"> 	 
				<input type="text" name="date_limit_Y" value="<? echo $dateY; ?>" size="4">
			</td>
		</tr>
		<tr>
			<td> Recurence </td> 
			<td>
				<select name="recurence"> 
					<option value=""></option>
					<option value="oui">oui</option> 
					<option value="non">non</option>
				</select>
			</td>
			
		</tr>
		<tr>
			<td> User </td> 
			<td>
				<select name="memotech_user"> 
					<option value="ALL">ALL</option>
					<?
					$Resultat = mysql_query("SELECT * FROM users WHERE FONCTION='tech' AND actif='oui' ORDER BY NOM;");
					for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
					{
			
					//récupération des données
						
						$init = mysql_result($Resultat , $Compteur , "initiales");
						
						echo "<option value='".$init."'>".$init."</OPTION>";
						
					}	
					?>
										
				</select>
			</td>
			
		</tr>
		<tr>
			<td> Periode (si recurence positive) </td> <td> <input type="text" name="period"> jours </td>
		</tr>
		<tr>
			<td> Statut </td> <td> <select name="statut"> 
					<option value="a faire">a faire</option>
					<option value="en cours">en cours</option> 
					<option value="fait">fait</option>
				</select> </td>
		</tr>
		
		<tr>
			<td> Commentaires : </td>
			<td> <textarea name="commentaire" cols="20" rows="4"></textarea> </td>
		</tr>
		<tr>
		<td> Date insertion </td>
		<td> <? echo $date; ?> <input type="hidden" name="date_entree" value="<? echo $date; ?>" > </td>
		</tr>	
		
</table>
<input type="submit" value="Envoyer">
</form>
<a href="index.php?toload=memotech_main"> retour a la liste </a>
