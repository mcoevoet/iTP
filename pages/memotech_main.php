<?
$date = date("d-m-Y");
$dateY = date("Y");
$dateM = date("m");
$dateD = date("d"); 
$date_today = mktime (0,0,0,$dateM,$dateD,$dateY );
$memotech_user = $_GET['user'];

?>


<h1 align="center"> Memo Tech </h1>

<table align="center">
	<tr>
		<td colspan=2></td>
	</tr>
	<tr>
		<td> <a href="index.php?toload=memotech_new"> New item </a> </td>
		<td> <a href="index.php?toload=memotech_main&user=ALL"> ALL </a> </td>

	</tr>
</table>

<h3 align="center">items :</h3>

<table align="center">
	<tr> 
		<td> Item </td> 
		<td> Date limite </td>
		<td> Statut </td>
		
	</tr>
	<?php 
	
	if (($memotech_user == "ALL")|($memotech_user == ""))
	{
		$Resultat = mysql_query("SELECT * FROM memotech WHERE archive='non' ORDER BY date_limit;");
	}
	elseif ($memotech_user == "common")
	{
		$Resultat = mysql_query("SELECT * FROM memotech WHERE archive='non' AND user='ALL' ORDER BY date_limit;");
	}
	elseif (($memotech_user != "ALL")&($user != ""))
	{
		$Resultat = mysql_query("SELECT * FROM memotech WHERE archive='non' AND user='$memotech_user' ORDER BY date_limit;");
	}
	
	
	
	
	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		//r�cup�ration des donn�es
	    $ID = mysql_result($Resultat , $Compteur , "ID");
	    $item = mysql_result($Resultat , $Compteur , "item");
	    $date_limit = mysql_result($Resultat , $Compteur , "date_limit");
	    $pris_en_charge = mysql_result($Resultat , $Compteur , "pris_en_charge");
	    $statut = mysql_result($Resultat , $Compteur , "statut");
	    $recurence = mysql_result($Resultat , $Compteur , "recurence");
	    
		if (($date_today == $date_limit) | ($date_limit < $date_today))
		{
			$line_color="red";
			$text_color="black";
		}
		elseif (($date_limit - $date_today) < 2*24*60*60)
		{
			$line_color="yellow";
			$text_color="grey";
		}
		else
		{
			$line_color="white";
			$text_color="#77B003";
		}
	    ?>
	    
	    <tr bgcolor="<? echo $line_color ?>">
	    	<td style="color:<? echo $text_color ?>;"> <a style="color:<? echo $text_color ?>;" href="index.php?toload=memotech_mod&ID=<? echo $ID ?>"><? echo $item ?>  </a> </td>
	    	<td style="color:<? echo $text_color ?>;"> <? echo date("d-m-Y",$date_limit); ?> </td>
	    	<td style="color:<? echo $text_color ?>;"> <? echo $statut;?> </td>
	    	<td>
	   		<?
	    	if ($recurence == "oui")
	    	{
	    		?>
	    		<form action="pages/memotech_reset_item.php" method="POST">
				<input type="hidden" name="ID_reset" value="<? echo $ID ?>">
				<input type="submit" value="r a z"> 
				</form>
				<?
	    	}
	    	?>
	    	</td>
	    	
	    </tr>
	    <?
	}
	?>
</table>
