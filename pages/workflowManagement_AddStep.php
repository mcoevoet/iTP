<!-- Ajouter une étape -->

<!--  Ce script pose des problèmes de mise en page du tableau. On ne voit pas les cellspacing et cellspading ... -->
<link rel="stylesheet" type="text/css" href="pages/ColorPicker/Css/ColorPicker.css" />
<script type="text/javascript" src="pages/ColorPicker/Js/CP_Class.js"></script>
<script type="text/javascript">
window.onload = function()
{
 fctLoad();
}
window.onscroll = function()
{
 fctShow();
}
window.onresize = function()
{
 fctShow();
}
</script>

<form action="index.php?toload=workflowManagement_AddStep" method="post">

<?php
	if (isset($_POST["ok"])) {
		$_POST[stepName]=addslashes($_POST[stepName]);
  		$sqlinsert1="INSERT INTO step_list(name, process, subProcess, number, profession, color, state) VALUES('$_POST[stepName]', '$_SESSION[processID]', '$_POST[subProcess]', '$_POST[stepNumber]', '$_POST[stepProfession]', '$_POST[stepColor]', 'Enabled')";
  		mysql_query($sqlinsert1);
  		//Récupération du dernier ID donné par la dernière requête SQL
  		$idstepNumber =  mysql_insert_id();   		
  		
  		$tableStepName=addslashes(mysql_real_escape_string("step_".$idstepNumber));
  		$sqlinsert2="CREATE TABLE `$tableStepName` (id int NOT NULL AUTO_INCREMENT, idStluc varchar(10) NOT NULL, req TINYINT NOT NULL, volcible TINYINT NOT NULL, ptv TINYINT NOT NULL, plan TINYINT NOT NULL, PRIMARY KEY(id), INDEX idStluc (idStluc), INDEX req (req), INDEX volcible (volcible), INDEX ptv (ptv), INDEX plan (plan))";
//		echo $sqlinsert2;
  		mysql_query($sqlinsert2);
  		
  		$sqlinsert3="ALTER TABLE `$tableStepName` ADD INDEX (`id`, `idStluc`, `req`, `volcible`, `ptv`, `plan`)";
  		mysql_query($sqlinsert3);
  		
    	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=workflowManagement'>"); 
  	}
?>

<h2>Ajout d'une étape dans le processus: <?php echo $_SESSION[processName]; ?></h2>
<br><br>

<table width="600" border="0" cellspacing="1" cellpadding="1">
	<tr>
 	 	<td>Nom</td>
        <td><input type="text" size="40" name="stepName"></td>                
    </tr>	

   	<tr>
   	   	<td>Numéro</td>
   		<td><input type="text" size="5" name="stepNumber"></td>
	</tr>
	<tr>
		<td>Sub-process</td>
		<td>
			<select name="subProcess" >
	 			<option value="">
				<?php 
				$query="SELECT * FROM processSub WHERE linkToProcess='$_SESSION[processID]'";
				$result=mysql_query($query);
				while ($subPro=mysql_fetch_array($result)) {				
					?>
					<option value="<?php echo $subPro[id]; ?>"><?php echo $subPro[nameSubProcess]; ?>
				<?php } ?>
		  	</select>
	    </td>
	</tr>	
	<tr>
		<td>Profession</td>
		<td>
			<select name="stepProfession" >
	 			<option value="">
				<?php 
				$query="SELECT * FROM users_fonction";
				$result=mysql_query($query);
				while ($fonctions=mysql_fetch_array($result)) {				
					?>
					<option value="<?php echo $fonctions[fonction]; ?>"><?php echo $fonctions[descFct]; ?>
				<?php } ?>
		  	</select>
	    </td>
	</tr>
	<tr>    
		<td>Couleur</td>
   		<td>
   			<input type="text" size="10" name="stepColor" value="<?php echo $step[$u]['color']; ?>" maxlength="7" onClick="fctShow(this);">
		</td>
	</tr>	

  	<tr>
  		<td colspan="2">&nbsp;</td>
   	</tr>
  	<tr>
  		<td colspan="2">
  			<input class="inputButton" type="submit" border="0" name="ok" value="Envoyer">
  		</td>
   	</tr>	
</table>

</form>