<?php
$user_search = $_SESSION['user'];
$today_ddn_day = date("d");
$today_ddn_month = date("m");
$today_ddn_year = date("Y");

echo $today_ddn_day."/".$today_ddn_month."/".$today_ddn_year." ";

//Recherche dans la DB des Users
//echo $user_search;
$myquery = "SELECT * FROM users;";
//echo $myquery;
$Resultat = mysql_query($myquery);

$timestampOH=mktime(0, 0, 0, date("m"), date("d"), date("Y"));

$timestamp24H=mktime(23, 59, 59, date("m"), date("d"), date("Y"));

//Recherche dans la DB des patients
$queryPatientBD="SELECT civilite, lastname, firstname FROM patient_admin WHERE birthdate>=$timestampOH and birthdate<=$timestamp24H";
//echo $queryPatientBD;
$resultPatientBD=mysql_query($queryPatientBD);
echo "Anniversaire de: ";
while ($patList=mysql_fetch_array($resultPatientBD)) {
	echo $patList[civilite]." ".$patList[lastname]." ".$patList[firstname];
}

$bday_test = 0;

for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	//echo "test";
	//Récupération des données
	$ID = mysql_result($Resultat , $Compteur , "ID");
	$ddn = mysql_result($Resultat , $Compteur , "ddn");
	$ddn_month = date("m",$ddn);
	$ddn_day = date("d",$ddn);
	$nom = mysql_result($Resultat , $Compteur , "NOM");
	$prenom = mysql_result($Resultat , $Compteur , "PRENOM");
	
	if(($ddn_day == $today_ddn_day)&($ddn_month == $today_ddn_month))
	{
		$bday_test++;
		
		if ($bday_test == 1)
		{
			echo " - et de: ".$prenom." ".$nom;
		}
		elseif ($bday_test > 1)
		{
			echo ", ".$prenom." ".$nom;
		}
		echo " <img src='../iTP/images/gateau_annif.png' height='25px' width='25px'>";
		//echo $prenom." ".$nom;
	}
}
?>