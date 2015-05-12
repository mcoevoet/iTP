<?
// Définition des propriétés du tableau.
$proprietesTableau = array(
	'TB_ALIGN' => 'L',
	'L_MARGIN' => 30,
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

$month_tab = array(1=> "Janvier", 2=> "Février", 3=> "Mars", 4=> "Avril", 5=> "Mai", 6=> "Juin", 7=> "Juillet", 8=> "Aout", 9=> "Septembre",10=> "Octobre",11=> "Novembre",12=> "Décembre");
   
for($x = 0; $x <= 5 ; $x++)
{
	if($x == "0")
	{
		array_push($contenuHeader, "30");	
	}
	elseif($x == "1")
	{
		array_push($contenuHeader, "40");	
	}
	elseif($x == "2")
	{
		array_push($contenuHeader, "30");	
	}
	elseif($x == "3")
	{
		array_push($contenuHeader, "40");
	}
	elseif($x == "4")
	{
		array_push($contenuHeader, "30");
	}
	elseif($x == "5")
	{
		array_push($contenuHeader, "40");	
	}
	
}
for($x = 0; $x <= 5 ; $x++)
{
	if($x == "0")
	{
		$display = utf8_decode("Mois : ".$month_tab[1+($m_init*3)]);
		array_push($contenuHeader, $display);	
	}
	elseif($x == "1")
	{
		$display = "COLSPAN2";
		array_push($contenuHeader, $display);	
	}
	elseif($x == "2")
	{
		$display = utf8_decode("Mois : ".$month_tab[2+($m_init*3)]);
		array_push($contenuHeader, $display);	
	}
	elseif($x == "3")
	{
		$display = "COLSPAN2";
		array_push($contenuHeader, $display);	
	}
	elseif($x == "4")
	{
		$display = utf8_decode("Mois : ".$month_tab[3+($m_init*3)]);
		array_push($contenuHeader, $display);	
	}
	elseif($x == "5")
	{
		$display = "COLSPAN2";
		array_push($contenuHeader, $display);	
	}
	
}

$display="";

// Définition des propriétés du reste du contenu du tableau.	
$proprieteContenu = array(
	'T_COLOR' => array(0,0,0),
	'T_SIZE' => 8,
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


//echo "$teststamp<br>";

for($m = 1+($m_init*3) ; $m <= 3+($m_init*3) ; $m++)
{
	
	
	$teststamp = (mktime(0,0,0,$m,1,$year)+43200);
	for($ligne = 0; $ligne < 31; $ligne++)
	{
		
		$test_d = date("d",$teststamp);
		$test_m = date("m",$teststamp);
		$test_y = date("Y",$teststamp);
		$teststamp_normalized = mktime(0,0,0,$test_m,$test_d,$test_y);
//		echo "$teststamp_normalized<br>";
//		echo date("d-m-Y H:i",$teststamp_normalized)."item_id=$item_id ";
		$display="";
		
		$myquery = "SELECT * FROM `calend_$calend` WHERE start_time = '$teststamp_normalized';";
//		echo "$myquery<br>";
		$Resultat = mysql_query($myquery);
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{		
			$display = mysql_result($Resultat , $Compteur , "item$item_id");
//			echo "test $display";
		}
		
		$e = ($ligne*6) + (($m-($m_init*3))*2) - 2;
//echo "e= $e => ";		

		if(date("m", $teststamp_normalized) == $m)
		{
			$contenuTableau[$e] = date("d-m-Y D", $teststamp_normalized)." ";
			$contenuTableau[$e+1] = $display;
		}
		else
		{
			$contenuTableau[$e] = " ";
			$contenuTableau[$e+1] = " ";	
		}
//echo $contenuTableau[$e+1]."<br>";
		
		$teststamp = $teststamp + 86400;
		
//		print_r($contenuTableau);
	}
}
?>
