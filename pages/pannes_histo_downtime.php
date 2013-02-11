<?php
session_start();

$mois[0]="Jan.";
$mois[1]="Fev.";
$mois[2]="Mars";
$mois[3]="Avril";
$mois[4]="Mai";
$mois[5]="Juin";
$mois[6]="Juil.";
$mois[7]="Aout";
$mois[8]="Sept.";
$mois[9]="Oct.";
$mois[10]="Nov.";
$mois[11]="Dec.";

$hist_x = $_SESSION['histo_downtime_array'];
$intitule = $_SESSION['histo_downtime_nom'];

// content="text/plain; charset=utf-8"
//require_once('../../jpgraph-3.0.7/src/jpgraph.php');
//require_once('../../jpgraph-3.0.7/src/jpgraph_bar.php');

require_once('../../jpgraph-3.5.0b1/src/jpgraph.php');
require_once('../../jpgraph-3.5.0b1/src/jpgraph_bar.php');

$data1y=$hist_x;

// Create the graph. These two calls are always required
$graph = new Graph(450,350,'auto');
$graph->SetScale("textlin");
$graph->img->SetMargin(40,30,50,180);

$theme_class=new UniversalTheme;
$graph->SetTheme($theme_class);

//$graph->yaxis->SetTickPositions(array(0,30,60,90,120,150), array(15,45,75,105,135));
$graph->SetBox(false);
$graph->xaxis->SetLabelAngle(90);

$graph->ygrid->SetFill(false);
$graph->xaxis->SetTickLabels($mois);
$graph->yaxis->HideLine(false);
$graph->yaxis->HideTicks(false,false);

// Create the bar plots
$b1plot = new BarPlot($data1y);
// Afficher les valeurs pour chaque barre
$b1plot->value->Show();
// Fixer l'aspect de la police
//$b1plot->value->SetFont(FF_ARIAL,FS_NORMAL,9);
// Modifier le rendu de chaque valeur
//$b1plot->value->SetFormat('h');

// Create the grouped bar plot
$gbplot = new GroupBarPlot(array($b1plot));

// ...and add it to the graPH
$graph->Add($gbplot);


$b1plot->SetColor("white");
$b1plot->SetFillColor("#cc1111");

$graph->title->Set($intitule);

// Display the graph
$graph->Stroke();
?>








// Construction du conteneur
// Spécification largeur et hauteur
$graph = new Graph(500,350);

// Réprésentation linéaire
$graph->SetScale("textlin");

// Ajouter une ombre au conteneur
$graph->SetShadow();

// Fixer les marges
$graph->img->SetMargin(40,30,50,80);

// Création du graphique histogramme
$bplot = new BarPlot($hist_x);

// Spécification des couleurs des barres
$bplot->SetFillColor(array('#77B003'));
// Une ombre pour chaque barre
$bplot->SetShadow();

// Afficher les valeurs pour chaque barre
$bplot->value->Show();
// Fixer l'aspect de la police
$bplot->value->SetFont(FF_ARIAL,FS_NORMAL,9);
// Modifier le rendu de chaque valeur
$bplot->value->SetFormat('%01.2f h');

// Ajouter les barres au conteneur
$graph->Add($bplot);

// Le titre
$graph->title->Set("Graphique 'HISTOGRAMME':$intitule");
$graph->title->SetFont(FF_FONT1,FS_BOLD);

// Titre pour l'axe horizontal(axe x) et vertical (axe y)
$graph->xaxis->title->Set("");
$graph->yaxis->title->Set("Downtime");

$graph->yaxis->title->SetFont(FF_FONT1,FS_BOLD);
$graph->xaxis->title->SetFont(FF_FONT1,FS_BOLD);

// Légende pour l'axe horizontal
$graph->xaxis->SetTickLabels($mois);
$graph->xaxis->SetLabelAngle(90);

// Afficher le graphique
$graph->Stroke();

?>