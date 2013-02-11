<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine-fr.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css"/>

<script>
$(document).ready(function(){
    $("#validate_form").validationEngine();
    //alert('test');
   });
</script>

<div id="inclPat">
<br><br><br>

<h2>Insérer un nouveau patient manuellement</h2>

<form id="validate_form" action="index.php?toload=new_patient" method="post">

<?php 
//En doit rendre l'ID obligatoire et empêcher le passage à la page suivante si pas rempli
if ($_POST[idStluc]!="" AND isset($_POST[ok])) {
	die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=new_patient_valid&idStluc=$_POST[idStluc]&lastname=$_POST[lastname]&firstname=$_POST[firstname]'>");	
	}
elseif ($_POST[idStluc]=="" AND isset($_POST[ok])) { echo "<p style='color:#FF0000'>Veuillez introduire un ID pour ce patient</p>"; }
?>

<table width="400">
	<tr>
		<td>ID Stluc *</td>
		<td><input type="text" class="validate[required,custom[onlyLetterNumber]]" name="idStluc" maxlength="10" value="<?php echo $_POST[idStluc]; ?>"></td>
	<tr>
	<tr>
		<td>Nom *</td>
		<td><input type="text" class="validate[required]" name="lastname" value="<?php echo $_POST[lastname]; ?>"></td>
	</tr>
	<tr>
		<td>Prénom *</td>
		<td><input type="text" class="validate[required]" name="firstname" value="<?php echo $_POST[firstname]; ?>"></td>
	</tr>
	<tr>
		<td>Processus</td>
		<td>
			<select name="processID">
				<option value="<?php echo $_SESSION[processID]; ?>"><?php echo $_SESSION[processName]; ?></option>
				<option value="">---</option>
				<?php 
				$queryProcess="SELECT * from process ORDER by id";
				$resultProcess=mysql_query($queryProcess);	  
			   	while ($stepProcess=mysql_fetch_array($resultProcess)) {
			   		echo "<option value=".$stepProcess[id].">".$stepProcess[processName]."</option>";
			   	}
				?>
			</select>		
		</td>
	<tr>	
	<tr>
		<td>&nbsp;</td>
		<td></td>
	</tr>	
	<tr>
		<td colpan="2"><input class="inputButton" type="submit" border="0" name="ok" value="Valider"></td>
	</tr>		
</table>
					
</form>

</div>