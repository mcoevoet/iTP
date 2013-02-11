<?php
header('Location: ../index.php?toload=user_settings');
include('../_connexion.php');

echo "nbfonction = ".$_POST['nb_fonction'];
echo "nblevel = ".$_POST['nb_level'];

for($i = 0; $i <=$_POST['nb_fonction']+1; $i++)
{
	$id = $_POST['id'.$i];
	$fonction = $_POST['fonction'.$i];
	$descFct = $_POST['descFct'.$i];
	$colorGroup = $_POST['colorGroup'.$i];
	
	//echo $nom;
	$myquery = "update users_fonction set fonction='$fonction' where id='$id'";
	mysql_query($myquery); 
	echo "<br>", $myquery, "<br>";
	$myquery = "update users_fonction set descFct='$descFct' where id='$id'";
	mysql_query($myquery); 
	echo "<br>", $myquery, "<br>";
	$myquery = "update users_fonction set colorGroup='$colorGroup' where id='$id'";
	mysql_query($myquery); 
	echo "<br>", $myquery, "<br>";
}
if((isset($_POST['fonction_new']))&($_POST['fonction_new']!=""))
{
	$fonction = $_POST['fonction_new'];
	$descFct = $_POST['descFct_new'];
	$colorGroup = $_POST['colorGroup_new'];
	$myquery = "insert INTO users_fonction (fonction, descFct, colorGroup) VALUES ('$fonction', '$descFct', '$colorGroup')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
}

echo "nblevel = ".$_POST['nb_level'];

for($ia = 0; $ia <=$_POST['nb_level']+1; $ia++)
{
	$ida = $_POST['ida'.$ia];
	$level = $_POST['level'.$ia];
	$intitule = $_POST['intitule'.$ia];
		
	//echo $nom;
	$myquery = "update users_level set level='$level' where id='$ida'";
	mysql_query($myquery); 
	echo "<br>", $myquery, "<br>";
	$myquery = "update users_level set intitule='$intitule' where id='$ida'";
	mysql_query($myquery); 
	echo "<br>", $myquery, "<br>";
	
}
if((isset($_POST['level_new']))&($_POST['level_new']!=""))
{
	$level = $_POST['level_new'];
	$intitule = $_POST['intitule_new'];
	
	$myquery = "insert INTO users_level (level, intitule) VALUES ('$level', '$intitule')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
}
echo "nbadmin= ".$_POST['nb_admin'];

for($ib = 0; $ib <=$_POST['nb_admin']+1; $ib++)
{
	$idb = $_POST['idb'.$ib];
	$admin = $_POST['admin'.$ib];
	
		
	//echo $nom;
	$myquery = "update users_admin set admin='$admin' where id='$idb'";
	mysql_query($myquery); 
	echo "<br>", $myquery, "<br>";
	
	
}
if((isset($_POST['admin_new']))&($_POST['admin_new']!=""))
{
	$admin = $_POST['admin_new'];
	
	$myquery = "insert INTO users_admin (admin) VALUES ('$admin')" ;
	//echo "<br>", $myquery, "<br>" ;
	mysql_query($myquery); 
}
?>