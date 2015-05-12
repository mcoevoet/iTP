<?
include ("../_connexion.php");
$calend = $_GET['calend'];
$item_id = $_GET['item_id'];
$item_name = $_GET['item_name'];
$year = $_GET['year'];

$janu_1_stamp = mktime(0,0,0,1,1,$year);

//chargement de la structure
$myquery = "SELECT * FROM calend_struct WHERE name = '$calend';";

$Resultat = mysql_query($myquery);
for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
{
	$name = mysql_result($Resultat , $Compteur , "name");
	$time_unit = mysql_result($Resultat , $Compteur , "time_unit");	
	$nb_display = mysql_result($Resultat , $Compteur , "nb_display");
	$sqldata = mysql_result($Resultat , $Compteur , "data");
	$data = unserialize($sqldata);
	$sqldata2 = mysql_result($Resultat , $Compteur , "data2");
	$data2 = unserialize($sqldata2);
	$nb_item = count($data);
	$nb_sub_tab = count($data2);
}

include("../../phpToPDF/phpToPDF.php");

$orientation = 'L';

$PDF=new phpToPDF();
$PDF->AddPage($orientation);



//Generation du tableau


for($m_init = 0 ; $m_init <=3 ; $m_init++)
{
	$PDF->Image("../images/logo_stluc.jpg", 10, 10, 38, 15);
$PDF->SetFont('Arial','B',10);
$text_a = "Date : ".date("d-m-Y")."\n";
$PDF->setXY(260,8);
$PDF->MultiCell(50,5,$text_a,0,1,'C');

//Sélection de la police
$PDF->SetFont('Arial','B',18);

$PDF->setXY(15,15);
$PDF->Cell(55);
//Texte centré dans une cellule 20*10 mm encadrée et retour à la ligne
$PDF->Cell(150,10,utf8_decode($calend.": ".$item_name),1,1,'C'); 

$PDF->SetFont('Arial','B',10);



$newY = 29;

$newX = 10;
$PDF->setXY($newX,$newY);
	include('calend_year_overview_pdf_tab.php');
	$PDF->drawTableau($PDF, $proprietesTableau, $proprieteHeader, $contenuHeader, $proprieteContenu, $contenuTableau);
	//fin du tableau
	if($m_init < 3)
	{
		$PDF->AddPage($orientation);
	}
}



$doc_name = $calend." ".$year;
$PDF->Output($doc_name,I);
//$PDF->Output();

?>

