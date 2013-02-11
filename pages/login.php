<!-- Login page -->

<!--
<script type="text/javascript">
function show_prompt()
{
var name=prompt("Entrez votre mot de passe: ");
if (name!=null && name!="")
  {
  document.write("<p>Hello " + password + "! How are you today?</p>");
  }
}

function entsub(myform) {
	if (window.event && window.event.keyCode == 13) { 
	//	alert ("test"); 
		myform.element["ok"].value="Connexion"; 		
		myform.submit();
	else 
	    return true;
	}

</script>
-->

<h2>Login</h2>

<form action="index.php?toload=login" method="post" name="login">

<div align="center">
	<table>
		<tr>
			<td width="800px">				
				<?php 
				$queryFct="SELECT * FROM users_fonction ORDER by `users_fonction`.`fonction` ASC";				
				$resultFct=mysql_query($queryFct);
				echo "<table><tr valign='top'>";
				while ($fctList=mysql_fetch_array($resultFct)) {
					//echo "<pre>"; print_r($fctList); echo "</pre>";
					//echo "<td>";					
					echo "<td width='130px' style='border: 2px solid ".$fctList[colorGroup]."' align='center'><font color='#000000'>".$fctList[descFct]."</font>";												
					
					//$queryUsers="SELECT * FROM users WHERE FONCTION='$fctList[fonction]' AND actif='Oui' ORDER by NOM";
					//$querytest="SELECT access_chain FROM users ";
					
					$queryUsers="SELECT * FROM users WHERE access_chain LIKE '%.$fctList[id].%' AND actif='Oui' ORDER by NOM";
					
					//echo $queryUsers;
					$resultUsers=mysql_query($queryUsers);
//$resultUsers=mysql_query($querytest);					
					//echo "<select name='user'><option value=''></option>";
					echo "<table>";
					while ($usersList=mysql_fetch_array($resultUsers)) {													
						//echo $usersList[INITIALES].">".$usersList[NOM]." ".$usersList[PRENOM]; 
						//<input type='radio' value=".$usersList[H]." name='userLevel' hidden>							
						//echo "<tr><td align='right'>".$usersList[INITIALES]."</td><td align='left'>							
							//<input type='radio' value=".$usersList[INITIALES]." name='user'>
							//</td></tr>";
						//$temp=$_SESSION[user]."-".$_SESSION[userLevel];
						
//						echo "acces $usersList[access_chain]";
												
						if ($usersList[INITIALES]==$_SESSION[user]) {
							echo "<tr><td align='right'>".$usersList[INITIALES]."</td><td align='left'>							
							<input type='radio' value=".$usersList[INITIALES]."-".$usersList[H]." name='user' CHECKED>
							</td></tr>";
							$_SESSION[access_chain] = $usersList[access_chain];
						}
						else {
							echo "<tr><td align='right'>".$usersList[INITIALES]."</td><td align='left'>							
							<input type='radio' value=".$usersList[INITIALES]."-".$usersList[H]." name='user'>
							</td></tr>";
						}
					}			
					echo "</table>";
					echo "</td>";						
				}
				echo "</tr></table>";	
				//Vérification du mot de passe	
				$passRed="#FFFFFF";	
//				echo 'ok: '.$_POST[ok].'-'.$_SESSION[password].'-'.md5($_POST[password]).'-';
				if ((isset($_POST[ok])) AND ($_SESSION[password]==md5($_POST[password]) ) ) {
					//echo "GAGNE";		
					$_SESSION[logged]="ok";								
					die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=$_SESSION[toloadPrevious2]'>");	
				}
				elseif (isset($_POST[ok])) {
					$passRed="#FF0000";	
					$_SESSION[logged]="NOTok";					
				}				 				
				?>				
			</td>
			<td width="200px">
				<input type=password size='10' maxlength='15' name="password" style="background-color:<?php echo $passRed; ?>" onkeypress="return entsub(this.form)"></input>
				<input class="inputButton" type="submit" border="0" name="ok" value="Connexion"></input>
				<!-- <input type="button" onclick="show_prompt()" name="password" value="Connexion" />  --> 
			</td>
		</tr>
	</table>
</div>

</form>