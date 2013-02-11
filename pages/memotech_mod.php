<?

if(isset($_POST['item']))
{
	$ID = $_POST['ID'];

	//recupération des données

	$date = date("d-m-Y");
	$dateY = date("Y");
	$dateM = date("m");
	$dateD = date("d"); 
	
	$item = $_POST['item'];
	
	$item = mysql_escape_string($item);

	$date_limit = mktime (0,0,0,$_POST['date_limit_M'],$_POST['date_limit_D'],$_POST['date_limit_Y']);
	$recurence = $_POST['recurence'];
	$user = $_POST['memotech_user'];
	$period = $_POST['period'];
	$date_entree = mktime (0,0,0,$_POST['dateM'],$_POST['dateD'],$_POST['dateY']);
	$statut = $_POST['statut'];

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

	//$sqldata2 = mysql_escape_string($sqldata2);

	$myquery = "update memotech set item='$item' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);
	
	$myquery = "update memotech set date_limit='$date_limit' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);

	$myquery = "update memotech set user='$user' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);
	
	$myquery = "update memotech set recurence='$recurence' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);

	$myquery = "update memotech set period='$period' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);

	$myquery = "update memotech set statut='$statut' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);

	$myquery = "update memotech set commentaire='$commentaire' where ID='$ID'";
//	echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery);
	
}



$ID = $_GET['ID'];
$date = date("d-m-Y");
$dateY = date("Y");
$dateM = date("m");
$dateD = date("d"); 


$Resultat = mysql_query("SELECT * FROM memotech WHERE ID='$ID'");
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$item = mysql_result($Resultat , $Compteur , "item");
	$period = mysql_result($Resultat , $Compteur , "period");
	$date_limit = mysql_result($Resultat , $Compteur , "date_limit");
	$statut = mysql_result($Resultat , $Compteur , "statut");
	$commentaire = mysql_result($Resultat , $Compteur , "commentaire");
	$commentaire = str_replace('\\','',$commentaire);
	$period = mysql_result($Resultat , $Compteur , "period");
	$recurence = mysql_result($Resultat , $Compteur , "recurence");
	$memotech_user = mysql_result($Resultat , $Compteur , "user");
	
	$date_lim_D = date("d",$date_limit);
	$date_lim_Y = date("Y",$date_limit);
	$date_lim_M = date("m",$date_limit);
}

?>



<h1> Memo tech : Item</h1>

<form action="index.php?toload=memotech_mod&ID=<? echo $ID ?>" method="POST">


		<table border="1">
		<tr>
			<td colspan="2" align="center"> Main </td>
		</tr>
		<tr>
			<td> Item : </td> <td> <input type="text" name="item" size=20 value="<? echo $item;?>"> </td>
		</tr>
		<tr>
			<td> Date Limite </td> 
			<td>
				<input type="text" name="date_limit_D" value="<? echo $date_lim_D; ?>" size="2">
	 			<input type="text" name="date_limit_M" value="<? echo $date_lim_M; ?>" size="2"> 	 
				<input type="text" name="date_limit_Y" value="<? echo $date_lim_Y; ?>" size="4">
			</td>
		</tr>
		<tr>
			<td> Recurence </td> 
			<td>
				<select name="recurence"> 
					<option value="<? echo $recurence?>"><? echo $recurence?></option> 
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
					<option value="<? echo $memotech_user?>"><? echo $memotech_user?></option> 
					<option value="ALL">ALL</option>
					<option value="GD">GD</option> 
					<option value="MC">MC</option>
					<option value="SVD">SVD</option>					
					<option value="LC">LC</option>
				</select>
			</td>
		</tr>
		<tr>
			<td> Periode (si recurence positive) </td> <td> <input type="text" name="period" value="<? echo $period;?>"> jours </td>
		</tr>
		<tr>
			<td> Statut </td> <td> <select name="statut"> 
					<option value="<? echo $statut?>"><? echo $statut?></option>
					<option value="a faire">a faire</option>
					<option value="en cours">en cours</option> 
					<option value="fait">fait</option>
				</select> </td>
		</tr>
		
		<tr>
			<td> Commentaires : </td>
			<td> <textarea name="commentaire" cols="50" rows="10" ><? echo $commentaire;?></textarea> </td>
		</tr>
		
		
</table>
<input type="hidden" name="ID" value="<? echo $ID; ?>" >
<input type="submit" value="Modifier">
</form>
<a href="index.php?toload=memotech_main"> retour a la liste </a>
<form action="pages/memotech_archiver.php" method="POST">
<input type="hidden" name="ID_archive" value="<? echo $ID ?>">
<input type="submit" value="Archiver"> 
</form>
