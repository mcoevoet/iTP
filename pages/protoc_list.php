<h2 align="center"> Protocoles </h2>
<br><br>
<div align="center">
<?php


$select_cat = $_GET['select_cat'];
$selected_cat = $_GET['selected_cat'];

//echo "test";
	
	$Resultat = mysql_query("SELECT * FROM protoc_cat ORDER BY cat;");
	?>
	<a href="index.php?toload=protoc_list&selected_cat=all&select_cat=oui">ALL</a>
	<?	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$cat = mysql_result($Resultat , $Compteur , "cat");
		?>
		<a href="index.php?toload=protoc_list&selected_cat=<? echo $cat; ?>&select_cat=oui"><? echo $cat;?></a>
		<?
	}
if($select_cat != "oui")
{
	$selected_cat = "all";
}

	?>
</div>
	<br>
	<br>
	<table align="center">
		<tr>
			<th>Titre</th>
			<th>Fichier:</th>
			<th>Description</th>
			<th>Catégorie</th>
			<th>Date d'ajout</th>
		</tr> 
	<?
	
	//echo "test ".$selected_cat;
	
	if ($selected_cat =="all")
	{
		$Resultat = mysql_query("SELECT * FROM protoc_db ORDER BY cat ASC;");	
	}
	else
	{
	$Resultat = mysql_query("SELECT * FROM protoc_db WHERE cat='$selected_cat';");
	}	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		$ID = mysql_result($Resultat , $Compteur , "ID");
		$titre = mysql_result($Resultat , $Compteur , "titre");
		$doc = mysql_result($Resultat , $Compteur , "doc");
		$descr = mysql_result($Resultat , $Compteur , "descr");
		$cat = mysql_result($Resultat , $Compteur , "cat");
		$add_date = mysql_result($Resultat , $Compteur , "add_date"); 
	
		?>
		<tr>
			<td><? echo $titre ?></td>
			<td> <a href="dwld_files/protoc_docs/<?echo $doc ?>"><?echo $doc ?></a></td>
			<td><? echo $descr ?></td>
			<td><? echo $cat ?></td>
			<td><? echo date("d-m-Y",$add_date) ?></td>
		</tr>
	
		<?
	
	}

?>
</table>
<br>