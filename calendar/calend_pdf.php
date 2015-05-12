<?
session_start();
$calend = $_GET['calend'];
$nb_display = $_GET['nb_display'];
$nb_item = $_GET['nb_item'];
$nb_sub_tab = $_GET['nb_sub_tab']; 
$monday_date = $_GET['monday_date'];

$data = $_SESSION['data'];
$data_pdf = $_SESSION['data_pdf'];
$data2 = $_SESSION['data2'];
$tab = $_SESSION['tab'];

if($nb_display == 5)
{
	$orientation = 'P';
}
elseif($nb_display == 7)
{
	$orientation = 'L';
}
else
{
	$orientation = 'L';
}



include("../../phpToPDF/phpToPDF.php");

$PDF=new phpToPDF();
$PDF->AddPage($orientation);
$PDF->Image("../images/logo_stluc.jpg", 10, 10, 65, 28);


$PDF->SetFont('Arial','B',10);

$text_a = "Date : ".date("d-m-Y")."\n";

if($orientation == 'P')
{
	$PDF->setXY(160,10);
}
elseif($orientation == 'L')
{
	$PDF->setXY(260,10);
}
else
{
	$PDF->setXY(260,10);
}

	


$PDF->MultiCell(50,5,$text_a,0,1,'C');



//Sélection de la police
$PDF->SetFont('Arial','B',18);


if($orientation == 'P')
{
	$PDF->setXY(10,40);
	$PDF->Cell(50);
}
elseif($orientation == 'L')
{
	$PDF->setXY(10,40);
	$PDF->Cell(80);
}
else
{
	$PDF->setXY(10,40);
	$PDF->Cell(80);
}

//Texte centré dans une cellule 20*10 mm encadrée et retour à la ligne
$PDF->Cell(100,10,utf8_decode($calend),1,1,'C'); 

$PDF->SetFont('Arial','B',10);



$newY = 60;

$PDF->setXY(10,$newY);
//Generation du tableau

include('calend_pdf_tab.php');


//fin du tableau

$PDF->drawTableau($PDF, $proprietesTableau, $proprieteHeader, $contenuHeader, $proprieteContenu, $contenuTableau);

$monday_display_date = date("Y-m-d", $monday_date);
$doc_name = $calend." ".$monday_display_date.".pdf";

$PDF->Output($doc_name,I);
//$PDF->Output();

?>
