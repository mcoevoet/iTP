<?php
include("../_connexion.php");
header("Location: ../index.php?toload=pannes_treat_time"); 

$new_year = $_POST['add_year'];


$myquery = "ALTER TABLE `treat_time` ADD column `y$new_year` TEXT;";

mysql_query($myquery); 	

echo "<br>", $myquery, "<br>" ;

?>
