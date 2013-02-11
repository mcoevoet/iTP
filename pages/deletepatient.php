<!-- Effaçage un patient -->

<br><br>

<div align="center">
<?php

//WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
//echo "idStluc:".$_SESSION[idPatStluc]." req:".$_SESSION[req]." volcible:".$_SESSION[volcible]." ptv:".$_SESSION[ptv]." plan:".$_SESSION[plan];

//Parcours de toutes les étapes
$queryDel="SELECT id FROM step_list ORDER by number";
$resultDel=mysql_query($queryDel);
while ($listStep=mysql_fetch_array($resultDel)) {
	//echo "<pre>"; print_r($listStep); echo "</pre";
	//Effacement du patient dans chacune des tables step_id ...
	$queryPat1="DELETE FROM `step_$listStep[id]` WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";
//	echo $queryPat1."<br>";
	mysql_query($queryPat1);	
}

//Effacement du patient dans patient_treat
$queryPat2="DELETE FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]' ";
//echo $queryPat2."<br>";
mysql_query($queryPat2);

//Confirmation que le patient a été effacé.
echo "<br>Le patient dont l'ID est: ".$_SESSION[idPatStluc]." a été correctement effacé.";

?>

<br><br><br>

<a href="index.php?toload=workflow">Retour au workflow</a>

</div>