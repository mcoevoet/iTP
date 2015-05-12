<?
// Définition des propriétés du tableau.
$proprietesTableau = array(
	'TB_ALIGN' => 'L',
	'L_MARGIN' => 10,
	'BRD_COLOR' => array(0,0,0),
	'BRD_SIZE' => '0.3',
	);

// Définition des propriétés du header du tableau.	
$proprieteHeader = array(
	'T_COLOR' => array(0,0,0),
	'T_SIZE' => 12,
	'T_FONT' => 'Arial',
	'T_ALIGN' => 'C',
	'V_ALIGN' => 'T',
	'T_TYPE' => 'B',
	'LN_SIZE' => 5,
	'BG_COLOR_COL0' => array(255,255,255),
	'BG_COLOR' => array(255,255,255),
	'BRD_COLOR' => array(0,0,0),
	'BRD_SIZE' => 0.2,
	'BRD_TYPE' => '1',
	'BRD_TYPE_NEW_PAGE' => '',
	);

// Contenu du header du tableau.	

$contenuHeader = array();


for($x = 0; $x <= $nb_display ; $x++)
{
	if($x == "0")
	{
		array_push($contenuHeader, "42");	
	}
	else
	{
		array_push($contenuHeader, "25");	
	}
}
for($x = 0; $x <= $nb_display ; $x++)
{
	if($x == "0")
	{
		array_push($contenuHeader, "Date : ");	
	}
	else
	{	
		$y = $x - 1 ;
		$display_date = date("D d-m-Y",($monday_date + ($y*86400)));
		array_push($contenuHeader, "$display_date");
	}	
}
	

// Définition des propriétés du reste du contenu du tableau.	
$proprieteContenu = array(
	'T_COLOR' => array(0,0,0),
	'T_SIZE' => 10,
	'T_FONT' => 'Arial',
	'T_ALIGN_COL0' => 'L',
	'T_ALIGN' => 'R',
	'V_ALIGN' => 'M',
	'T_TYPE' => '',
	'LN_SIZE' => 5,
	'BG_COLOR_COL0' => array(255, 255, 255),
	'BG_COLOR' => array(255,255,255),

	'BRD_COLOR' => array(0,0,0),
	'BRD_SIZE' => 0.1,
	'BRD_TYPE' => '1',
	'BRD_TYPE_NEW_PAGE' => '',
	);	

// Contenu du tableau.	
$contenuTableau = array();
$e = 0; 
for($xx = 0; $xx <= $nb_item ; $xx++)
{
	$contenuTableau[$e] = utf8_decode($data[$xx]['item_name']);
	$e++;
	for($x = 0; $x < $nb_display ; $x++)
	{
		$contenuTableau[$e] = utf8_decode($data_pdf[$xx][$x]);
		$e++;
	}	
}
/*
$contenuTableau = array(
	"champ 1", 1, 2,
	"champ 2", 3, 4,
	"champ 3", 5, 6,
	"champ 4", 7, 8,
	);
*/
?>
