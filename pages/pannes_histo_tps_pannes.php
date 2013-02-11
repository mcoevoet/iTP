<?php
session_start();

$mois[0]="Janvier";
$mois[1]="Fevrier";
$mois[2]="Mars";
$mois[3]="Avril";
$mois[4]="Mai";
$mois[5]="Juin";
$mois[6]="Juillet";
$mois[7]="Aout";
$mois[8]="Septembre";
$mois[9]="Octobre";
$mois[10]="Novembre";
$mois[11]="Decembre";


include ("../../jpgraph-2.3.4/src/jpgraph.php");
include ("../../jpgraph-2.3.4/src/jpgraph_bar.php");



$hist_x = $_SESSION['histo_tps_pannes_array'];
$intitule = $_SESSION['histo_tps_pannes_nom'];



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
$bplot->value->SetFormat('%01.2f m');

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