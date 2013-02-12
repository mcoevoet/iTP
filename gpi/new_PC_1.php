<div align="center">

<h1> GPI : Nouveau</h1>
</div>

<table align="center">
	 <tr> 
		<td> <a href="liste.php" > Liste </a> </td>
	</tr>
</table>


<form action="gpi/new_PC_2.php" method="POST">

<table>
	<tr> 
	<td>
		<table border="1">
		<tr>
			<td colspan="2" align="center"> Main </td>
		</tr>
		<tr>
			<td> Nom </td> <td> <input type="text" name="nom" value="RXTH-" > </td>
		</tr>
		<tr>
			<td> type </td> 
			<td>
				<select name="type"> 
					<option value="workstation">workstation</option> 
					<option value="laptop">laptop</option>
					<option value="serveur">serveur</option>  
					<option value="printer">printer</option>
					<option value="telephone">telephone</option>
					<option value="periph. reseau">periph. reseau</option>
					
				</select>
			</td>
		</tr>
		<tr>
			<td> Usage </td> <td> <input type="text" name="usage"> </td>
		</tr>
		<tr>
			<td> OS </td> 
			<td>
				<select name="OS"> 
					<option value=""></option>
					<option value="windows">windows</option> 
					<option value="linux">linux</option>
					<option value="mac">mac</option>
				</select>
			</td>
		</tr>
		<tr>
			<td> Version OS </td> <td> <input type="text" name="OS_version"> </td>
		</tr>
		</table>
	</td>
		
    <td>
    <table border="1">
	<tr>
		<td colspan="2" align="center"> Situation </td>
	</tr>
	<tr>
		<td> Site </td> <td>
				<select name="site"> 
					<option value="St-Luc">St-Luc</option> 
					<option value="SPO">SPO</option>
					<option value="St-Luc SIH">St-Luc SIH</option>
				</select>
			</td>
	</tr>
	<tr>
		<td> Local </td> <td> <input type="text" name="local"> </td>
	</tr>
	<tr>
		<td> N&deg; Local </td> <td> <input type="text" name="num_local"> </td>
	</tr>
	</table>
</td>
	
<td>
	<table border="1">
	<tr>
		<td colspan="2" align="center"> Network </td>
	</tr>
	<tr>
		<td> IP </td> <td> 	<input size=1 type="text" name="IP_a">.<input size=1 type="text" name="IP_b">.<input size=1 type="text" name="IP_c">.<input size=2 type="text" name="IP_d"> </td>
	</tr>
	<tr>
		<td> Adresse MAC </td> <td><input size=1 type="text" name="mac_adress_a">:<input size=1 type="text" name="mac_adress_b">:<input size=1 type="text" name="mac_adress_c">:<input size=1 type="text" name="mac_adress_d">:<input size=1 type="text" name="mac_adress_e">:<input size=1 type="text" name="mac_adress_f">		
		
		</td>
	</tr>
	<tr>
		<td> N&deg; prise </td> <td> <input type="text" name="num_prise"> </td>
	</tr>
	<tr>
		<td> N&deg; baie </td> <td> <input type="text" name="num_baie"> </td>
	</tr>
	<tr>
		<td> server web </td> <td> <input type="text" name="serveur_web"> </td>
	</tr>
	</table>
</td>
<td>
	<table border="1">
	<tr>
		<td colspan="2" align="center"> Hardware </td>
	</tr>
	<tr>
		<td> Marque </td> <td> <input type="text" name="marque"> </td>
	</tr>
	<tr>
		<td> Processeur </td> <td> <input type="text" name="CPU"> </td>
	</tr>
	<tr>
		<td> RAM </td> <td> <input size=2 type="text" name="RAM">Go </td>
	</tr>
	<tr>
		<td> disque dur </td> <td> <input size=2 type="text" name="disque_dur">Go </td>
	</tr>
	<tr>
		<td> N&deg;serie </td> <td> <input type="text" name="num_serie"> </td>
	</tr>
	<tr>
		<td> Ecran </td> 
			<td>
				<select name="ecran"> 
					<option value=""></option>
					<option value="15p">15p</option>
					<option value="17p">17p</option> 
					<option value="19p">19p</option>
					<option value="21p">21p</option>
					<option value="21p tablette">21p tablette</option>
					<option value="22p">22p</option>
					<option value="23p">23p</option>
					<option value="24p">24p</option>
				</select>
			</td>
	</tr>
	</table>
</td>
</tr>
<tr>
<td>
	 <table border="1">
	<tr>
		<td colspan="2" align="center"> Arret/demarrage </td>
	</tr>
	<tr>
		<td> Heure demarrage </td> <td> <input type="text" name="h_start"> </td>
	</tr>
	<tr>
		<td> Heure d'arret </td> <td> <input type="text" name="h_stop"> </td>
	</tr>
	</table>
</td>
<td>	
	<table border="1">
	<tr>
		<td colspan="2" align="center"> VNC </td>
	</tr>
	<tr>
		<td> VNC </td> 
		<td>
			<select name="VNC"> 
				<option value="oui">oui</option> 
				<option value="non">non</option> 
			</select>
		</td>
	</tr>
	<tr>
		<td> password VNC </td> <td> <input type="text" name="VNC_pass"> </td>
	</tr>
	</table>
</td>
<td>
	<table border="1">
	<tr>
		<td align="center"> Commentaire </td>
	</tr>
	<tr>
		<td><textarea name="commentaire" cols="40" rows="5" ></textarea></td>
	</tr>
	
	</table>
</td>
</tr>
</table>

<input type="submit" value="Envoyer">
</form>