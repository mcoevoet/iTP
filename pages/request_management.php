<h2>Gestion des items des statistiques</h2>
<br><br>

<h3>Items existants</h3>
<table>
	<?php 
	$query1="SELECT * from reqOnItem";
	$result1=mysql_query($query1);	  
	while ($Array1=mysql_fetch_array($result1)) {	
	?>
	<tr bgcolor="#eeeeee">
		<td>Nom du champ</td>
		<td><?php echo $Array1[1]; ?></td>
	</tr>
	<tr>
		<td>Table</td>
		<td><?php echo $Array1[2]; ?></td>
	</tr>
	<tr>
		<td>Field</td>
		<td><?php echo $Array1[3]; ?></td>
	</tr>
	<?php } ?>	
</table>

<br><br>

<h3>Ajouter un nouvel item duquel on fera des statistiques ou des requêtes:</h3>

<form action="index.php?toload=request_management" method="post">

<?php 
if (isset($_POST["ok"])) {  
	//Il faut récupérer l'ID de l'étape à laquelle l'action choisie appartient
	$queryIdStep="SELECT step_link from step_action WHERE id=$_POST[actionSelected]";
	$resultIdStep=mysql_query($queryIdStep);	  
   	while ($step=mysql_fetch_array($resultIdStep)) {	
   		$linkedStep=$step[0];
   	}
	$tableName="step_".$linkedStep;
	$fieldName="actionId_".$_POST[actionSelected];
  	$sqlinsert1="INSERT INTO reqOnItem(lookFor, tableFrom, fieldFrom) VALUES('$_POST[requestName]', '$tableName', '$fieldName')";
//  	echo "Test".$sqlinsert1;
 	mysql_query($sqlinsert1);	  		
    die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=request_management'>");     
}
?>
	
<table>
	<tr>
		<td>Nom du champ qui sera utilisé pour la future requête :</td>
		<td><input type="text" class="inputFieldBig" name="requestName" ></td>
	</tr>
	<tr>
		<td>Liste des actions ...</td>
		<td>
			<select name="actionSelected" >
				<option value="">
				<?php
				//Liste des étapes et de leurs actions
				$queryList="SELECT * from step_list WHERE state='Enabled' ORDER by number";				
				$resultList=mysql_query($queryList);	  
				while ($stepList=mysql_fetch_array($resultList)) {
				?>	
					<option value=""></option>
					<option value="<?php echo $stepList[id]; ?>">---<?php echo $stepList[number]."/".$stepList[name]; ?>---</option>
				    <?php
					$queryAction="SELECT * from step_action WHERE step_link=$stepList[id] ORDER by id";
					$resultAction=mysql_query($queryAction);	  
				   	while ($stepAction=mysql_fetch_array($resultAction)) {
					?>				
						<option value="<?php echo $stepAction[id]; ?>"><?php echo $stepAction[name]; ?></option>
				    <?php 
				   	}
				}
				//Fin de boucle step_list 
				?>     		
			</select>     		 
		</td>
	</tr>
	<tr>
		<td colspan="2"><input class="inputButton" type="submit" border="0" name="ok" value="Sauver"></td>
	</tr>

</table>

</form>