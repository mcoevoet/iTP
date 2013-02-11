<?php
session_start();
 /*
     Example1 : A simple line chart
 */

 // Standard inclusions      
 include("../../pChart/pChart/pData.class");   
 include("../../pChart/pChart/pChart.class");   
 
 $array_to_display = $_SESSION['histo_nb_pannes_array'];
 
 //$array_to_display = round($array_to_display);
 
 $name_to_display = $_SESSION['histo_nb_pannes_nom'];
 $machine_to_display = $_SESSION['machine_nom'];
 
 // Dataset definition    
 $DataSet = new pData;   
 $DataSet->AddPoint(($array_to_display),"Serie1"); 
 $DataSet->AddPoint(array("Jan","Fev","Mars","Avril","Mai","Juin","Juillet","Aout","Sept.","Oct.","Nov.","Dec."),"Serie2");
 $DataSet->AddAllSeries();   
 $DataSet->SetAbsciseLabelSerie("Serie2");   
 $DataSet->SetSerieName("$machine_to_display","Serie1");   
 
 $DataSet->SetXAxisName("Mois");

 
 $DataSet->SetYAxisName("Nombre pannes");
 $DataSet->SetYAxisUnit(" ");
  
 // Initialise the graph   
 $Test = new pChart(500,250);
 $Test->setFontProperties("../../pChart/Fonts/tahoma.ttf",10);   
 $Test->setGraphArea(70,30,480,200);   
 $Test->drawFilledRoundedRectangle(7,7,493,243,5,240,240,240);   
 $Test->drawRoundedRectangle(5,5,495,225,5,230,230,230);   
 $Test->drawGraphArea(255,255,255,TRUE);
 $Test->drawScale($DataSet->GetData(),$DataSet->GetDataDescription(),SCALE_NORMAL,150,150,150,TRUE,0,2);   
 $Test->drawGrid(4,TRUE,230,230,230,50);
  
 // Draw the 0 line   
 $Test->setFontProperties("../../pChart/Fonts/tahoma.ttf",10);   
 $Test->drawTreshold(0,143,55,72,TRUE,TRUE);   
  
 // Draw the line graph
 $Test->drawLineGraph($DataSet->GetData(),$DataSet->GetDataDescription());   
 $Test->drawPlotGraph($DataSet->GetData(),$DataSet->GetDataDescription(),3,2,255,255,255);   
 $Test->writeValues($DataSet->GetData(),$DataSet->GetDataDescription(),"Serie1"); 
 
 // Finish the graph   
 $Test->setFontProperties("../../pChart/Fonts/tahoma.ttf",8);   
 //$Test->drawLegend(75,35,$DataSet->GetDataDescription(),255,255,255);   
 $Test->setFontProperties("../../pChart/Fonts/tahoma.ttf",10);   
 $Test->drawTitle(60,22,"Nombre de pannes par mois",50,50,50,585);   
 //$Test->Render("example1.png");
$Test->stroke();
?>