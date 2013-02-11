<div class="inbox_area">

<br>
<div align="center">
	<a href="index.php?toload=message_new">Nouveau message</a>
</div>
<br>

<?php


//affichage de la liste des message

$user_search = $_SESSION['user'];
$myquery = "SELECT * FROM message WHERE dest='$user_search';";
$Resultat = mysql_query($myquery);
$count_new_mess = 0;

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//récupération des données
	$ID = mysql_result($Resultat , $Compteur , "ID");
	$dest = mysql_result($Resultat , $Compteur , "dest");
	$read_item = mysql_result($Resultat , $Compteur , "read_item");
	
	if($read_item == 'no')
	{
		$count_new_mess++;
	}
}

$myquery = "SELECT * FROM message WHERE dest='$user_search' ORDER BY ID DESC;";
//echo $myquery;
$Resultat = mysql_query($myquery);
?>
<table class="tab_inbox">
<tr>
	<td class="td4"> Date </td> 
	<td class="td4"> Heure </td> 
	<td class="td4"> Expéditeur </td>
	<td class="td4"> Sujet </td>
	<td colspan='2' class="td4"> &nbsp </td>
</tr>

<?

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$ID = mysql_result($Resultat , $Compteur , "ID");
	$exp = mysql_result($Resultat , $Compteur , "exp");
	$dest = mysql_result($Resultat , $Compteur , "dest");
	$read_item = mysql_result($Resultat , $Compteur , "read_item");
	$subject = mysql_result($Resultat , $Compteur , "subject");
	$message = mysql_result($Resultat , $Compteur , "message");
	$message_date = mysql_result($Resultat , $Compteur , "date");

	if($read_item=="no")
	{
		echo "<tr>";
		echo "<td> <b>".date("d-m-Y",$message_date)."</b></td>";
		echo "<td> <b>".date("H:m",$message_date)."</b></td>";
		echo "<td> <b>".$exp."</b></td>";
		echo "<td> <b> <a href='index.php?toload=message_inbox&message_ID=".$ID."'>".$subject."</a> </b></td>";
		echo "<td> <b> <a title='marquer comme non lu' href='pages/message_unread.php?message_ID=".$ID."'><IMG src='images/unread.png' width='16px' height='16px'></a> </b></td>";
		
		echo "</tr>";
	}
	else{
		echo "<tr>";
		echo "<td>".date("d-m-Y",$message_date)."</td>";
		echo "<td>".date("H:m",$message_date)."</td>";
		echo "<td>".$exp."</td>";
		echo "<td> <a href='index.php?toload=message_inbox&message_ID=".$ID."'>".$subject."</a></td>";
		echo "<td> <a title='marquer comme non lu' href='pages/message_unread.php?message_ID=".$ID."'><IMG src='images/unread.png' alt='unread' width='16px' height='16px'></a></td>";
		//
		echo "<td> <b> <a title='Supprimer' href='pages/message_delete.php?message_ID=".$ID."'><IMG src='images/delete.jpg' width='16px' height='16px'></a> </b></td>";
		//
		echo "</tr>";
	}

}

?>
</table>
</div>
<div class="read_message_area">
<?
//affichage d'un message

if(isset($_GET['message_ID']))
{
	$message_ID_inbox = $_GET['message_ID'];
	$myquery = "SELECT * FROM message WHERE ID=$message_ID_inbox;";
	$Resultat = mysql_query($myquery);

	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
	
		$message_ID_inbox = mysql_result($Resultat , $Compteur , "ID");
		$exp = mysql_result($Resultat , $Compteur , "exp");
		$dest = mysql_result($Resultat , $Compteur , "dest");
		$read_item = mysql_result($Resultat , $Compteur , "read_item");
		$subject = mysql_result($Resultat , $Compteur , "subject");
		$message = mysql_result($Resultat , $Compteur , "message");
		$message = stripslashes($message);
		
		$_SESSION['message_reponse'] = $message;
		
		
		$message_date = mysql_result($Resultat , $Compteur , "date");
		$message_patient_data = mysql_result($Resultat , $Compteur , "message_patient_data");
		$message_patient_data = stripslashes($message_patient_data);
		
		$_SESSION['message_reponse_patient_data'] = $message_patient_data;
		
	}
	?>
	<br>
	<br>
	<table class="tab_message_text">
	<tr>
		<td class="td_std"> Expéditeur: <? echo $exp ?></td><td> &nbsp </td><td>Date: <? echo date("d-m-Y",$message_date) ?></td>
	</tr>
	<tr>
		<td class="td_std"> &nbsp </td> <td>Sujet: <? echo $subject ?> </td><td>Date: <? echo date("H:m",$message_date) ?></td>
	</tr>
	
	</table>
	<?
	if($message_patient_data != "Info patient")
	{
	?>

	<br>
	<table class="tab_message_text">
	<tr>
		<td class="td_std" > <?echo nl2br($message_patient_data) ?></td>
	</tr>
	</table>
	<?
	}
	?>	
	<br>
	<table class="tab_message_text">
	<tr>
		<td class="td_std"> <?echo nl2br($message) ?></td>
	</tr>	
	</table>
	<br>
	<a href="index.php?toload=message_new&response=yes&dest=<? echo $exp?>&subject='<? echo $subject?>'"> Répondre à ce message </a>

	<?
	$read_item = "yes";
	$myquery = "update message set read_item='$read_item' where ID='$message_ID_inbox'";
	mysql_query($myquery);
}
?>
</div>