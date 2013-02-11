<form action="pages/user_settings_save.php" method="POST">
<table align="center">
<tr>
	<td colspan=3> Définition des catégories d'admin, de fonction et de niveau. L'"access chain" qui donne accès aux différentes pages pour chaque user est définie <br> par les différentes catégories ci-dessous et dans l'ordre dans lequel elles sont présentés.<br>
	<br> </td> 
</tr>
<tr>
<td valign=top>
<table>
<tr> 
<td> ID </td> <td> Admin </td>
</tr>
<?php
$nb_admin = 0;
$Resultat = mysql_query("SELECT * FROM users_admin ORDER BY id;");	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		//récupération des données
	    $id = mysql_result($Resultat , $Compteur , "id");
	    $admin = mysql_result($Resultat , $Compteur , "admin");
	    	    
	    echo "<tr>";
	    echo "<td> $id </td>";
	    echo "<td> <input type='text' name='admin$id' value='".$admin."' size='5'><input type='hidden' name='idb$id' value='".$id."' size=6></td>";
	    echo "</tr>";
	    $nb_admin++;    
	}
?>
<tr>
	<td> New :</td>
	<td> <input type="text" name="admin_new" size=5> </td>
	
</tr>
</table>
<input type="hidden" name="nb_admin" value="<? echo $nb_level ?>">
</td>
<td valign=top>
<table>
<tr> 
	<td> ID </td> <td> Fonct </td> <td> Fonction </td> <td> Couleur </td>
</tr>
<?php
$nb_fonction = 0;
$Resultat = mysql_query("SELECT * FROM users_fonction ORDER BY ID;");	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		//récupération des données
	    $id = mysql_result($Resultat , $Compteur , "id");
	    $fonction = mysql_result($Resultat , $Compteur , "fonction");
	    $descFct = mysql_result($Resultat , $Compteur , "descFct");
	    $colorGroup = mysql_result($Resultat , $Compteur , "colorGroup");
	    echo "<tr>";
	    echo "<td> $id </td>";
	    echo "<td> <input type='text' name='fonction$id' value='".$fonction."' size=4> </td>";
	    echo "<td> <input type='text' name='descFct$id' value='".$descFct."'> </td>";
	    echo "<td> <input type='text' name='colorGroup$id' value='".$colorGroup."' size=6> <input type='hidden' name='id$id' value='".$id."' size=6></td>";
	    echo "</tr>";
	    $nb_fonction++;    
	}
?>
<tr>
	<td> New :</td>
	<td> <input type="text" name="fonction_new" size=4> </td>
	<td> <input type="text" name="descFct_new"> </td>
	<td> <input type="text" name="colorGroup_new" size=6> </td>
</tr>
</table>
<input type="hidden" name="nb_fonction" value="<? echo $nb_fonction ?>">
</td>
<td valign=top>
<table>
<tr> 
	<!-- <td> ID </td> --> <td> </td> <td> Level </td> <td> Intitulé </td>
</tr>
<?php
$nb_level = 0;
$Resultat = mysql_query("SELECT * FROM users_level ORDER BY level;");	
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		//récupération des données
	    $id = mysql_result($Resultat , $Compteur , "id");
	    $level = mysql_result($Resultat , $Compteur , "level");
	    $intitule = mysql_result($Resultat , $Compteur , "intitule");
	    
	    echo "<tr>";
	    //echo "<td> $id </td>";
	    echo "<td></td>";
	    echo "<td> <input type='text' name='level$id' value='".$level."' size=4> </td>";
	    echo "<td> <input type='text' name='intitule$id' value='".$intitule."'><input type='hidden' name='ida$id' value='".$id."' size=6></td>";
	    echo "</tr>";
	    $nb_level++;    
	}
?>
<tr>
	<td> New :</td>
	<td> <input type="text" name="level_new" size=4> </td>
	<td> <input type="text" name="intitule_new"> </td>
</tr>
</table>
<input type="hidden" name="nb_level" value="<? echo $nb_level ?>">
</td>

</tr>
<tr>
<td colspan='3' align="center"><input type="submit" value="enregistrer"></td>
</tr>
</table>
</form>