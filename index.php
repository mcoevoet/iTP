<?php

//Variable session créée ou à créer
if (!isset ($_REQUEST["PHPSESSID"])) {	
	session_start();		
	$PHPSESSID=session_id();
}
else { 
	session_start($_REQUEST["PHPSESSID"]);
}

?>

<!-- 
	iTherapy Process, process management software in Radiation Oncology<br><br>
	Copyright (C) 2010-2011, Maxime Coevoet<br><br>
	<u>Development Contributors:</u><br>
	Simon Vanderbrecht<br>
	
	<br>
	<u>Idea Contributors:</u><br>
	Laurette Renard<br>
	... and all the Radiotherapy Department of Cliniques universitaires St-Luc<br>
	<br>
	
	This program is free software: you can redistribute it and/or modify<br>
	it under the terms of the GNU Affero General Public License as<br>
	published by the Free Software Foundation, either version 3 of the<br>
	License, or (at your option) any later version.<br>
	<br>
	This program is distributed in the hope that it will be useful,<br>
	but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the<br>
	GNU Affero General Public License for more details.<br>
	<br>
	You should have received a copy of the GNU Affero General Public License<br>
	along with this program.  If not, see <a href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.<br>
-->



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>iTherapy Process</title>
<meta name="keywords" content="" />
<meta name="description" content="Radiotherapy management software" />

<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<?php
//Sélection de la CSS selon le navigateur (IE ou autre)
if ( strpos( $_SERVER['HTTP_USER_AGENT'], 'Firefox' ) !== FALSE ) { 
	//echo " Firefox"; 
	?><link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<?php }
elseif ( strpos( $_SERVER['HTTP_USER_AGENT'], 'Opera' ) !== FALSE ) { 
	//echo " Opera"; 
	?><link href="style.css" rel="stylesheet" type="text/css" media="screen" /><?php }
elseif ( strpos( $_SERVER['HTTP_USER_AGENT'], 'Safari' ) !== FALSE ) { 
	//echo "Safari"; 
	?><link href="style.css" rel="stylesheet" type="text/css" media="screen" /><?php }
elseif ( strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE' ) !== FALSE ) { 
	//echo "Internet Explorer"; 
	?><link href="styleIE.css" rel="stylesheet" type="text/css" media="screen" /><?php }
//else { echo "navigateur non reconnu"; }
	
?>

<link rel="icon" type="image/gif" href="images/iTP_favicon.gif" />
<script type="text/javascript" src="pages/functions.js"></script>

<!--
<script type="text/javascript" src="snow.js"></script>
-->

<script type="text/javascript">
function ViewDecompte(divIdTmp)
    {
    if (document.getElementById(divIdTmp).style.visibility=="hidden")
        {
		window.location.hash="TopPage";
        document.getElementById(divIdTmp).style.visibility="visible";
        document.getElementById(divIdTmp).style.display="inline";
       
        }
    else
        {
        document.getElementById(divIdTmp).style.visibility="hidden";
        document.getElementById(divIdTmp).style.display="none";
        }
    }

function showPopup(url) {
	newwindow=window.open(url,'name','height=350,width=520,top=200,left=300,resizable');
	if (window.focus) {
		newwindow.focus()
	}
}

</script>

<?php
//Connexion à la DB
include ("_connexion.php");
	
if (isset($_POST['user']))  { 
	$tmp=explode('-', $_POST['user']);
	//	echo "<pre>"; print_r($tmp); echo "</pre>"; echo $_SESSION['user'];
	//SI PASSWORD EST BON, ALORS ON PEUT FAIRE LA SUITE		
		$_SESSION[user]=$tmp[0];
		$_SESSION[userLevel]=$tmp[1];
	//FIN DU CHECK PASSWORD
} 

//Récupération du PASSWORD pour être sûr ... et puis du niveau d'accès:
	$queryLevel="SELECT * FROM users WHERE INITIALES='$_SESSION[user]' AND actif='Oui' ORDER by NOM";
	$resultLevel=mysql_query($queryLevel);
	$userLevel=mysql_fetch_array($resultLevel);
//	echo "<pre>"; print_r($userLevel); echo "</pre>";
//	echo "test:".$userLevel[PASSWORD];
	$_SESSION[password]=$userLevel[PASSWORD];


//echo $_GET['toload']."<br>";
//echo $_SESSION['toload'];
if (isset($_GET['toload']))  { 
	//On revient 3 pages en arrière après un login-logout ...
	$_SESSION['toloadPrevious3']=$_SESSION['toloadPrevious2'];
	$_SESSION['toloadPrevious2']=$_SESSION['toloadPrevious'];
	$_SESSION['toloadPrevious']=$_SESSION['toload'];
	$_SESSION['toload']= $_GET['toload']; 
}

if (isset($_GET['stepID']))  { $_SESSION[idstepNumber]= $_GET['stepID']; }
if (isset($_GET['actionID']))  { $_SESSION[idactionNumber]= $_GET['actionID']; }

//echo "<br>TEST: ".$_SESSION[idstepNumber];
//echo "<br>TESTload: ".$_SESSION[toload];

// Définition du patient
if (isset($_GET['idPatStluc']))  { $_SESSION[idPatStluc]= $_GET['idPatStluc']; } 
if (isset($_GET['req']))  { $_SESSION[req]= $_GET['req']; } 
if (isset($_GET['volcible']))  { $_SESSION[volcible]= $_GET['volcible']; }
if (isset($_GET['ptv']))  { $_SESSION[ptv]= $_GET['ptv']; } 
if (isset($_GET['plan']))  { $_SESSION[plan]= $_GET['plan']; } 

if (isset($_GET['statusPat']))  { $_SESSION[statusPat]= $_GET['statusPat']; } 
  	//Imposer un status à afficher par défaut: Treatment
  	if ( (!isset($_GET['statusPat'])) AND (!isset($_SESSION[statusPat])) ) {  		
  		$_SESSION[statusPat]="Treatment";  		
  	}   	

//Sauvegarde des valeurs de tri 	
//Tri Med
if (isset($_POST['triMed']))  { $_SESSION[triMed]= $_POST['triMed']; }  	
//Tri Ass
if (isset($_POST['triAss']))  { $_SESSION[triAss]= $_POST['triAss']; }  	
//Tri Phys
if (isset($_POST['triPhys']))  { $_SESSION[triPhys]= $_POST['triPhys']; }  	
//Tri Etape
if (isset($_GET['selectStep']))  { $_SESSION[selectStep]= $_GET['selectStep']; }  	
//Tri métier
if (isset($_GET['triTeam']))  { $_SESSION[triTeam]= $_GET['triTeam']; } 
//Tri subProcess
if (isset($_GET['subProcessID']))  { $_SESSION[subProcessID]= $_GET['subProcessID']; } 	
//Annulation des tris
if ($_GET['noSelection']=="yes") { 
	$_SESSION[triMed]="";
	$_SESSION[triAss]="";
	$_SESSION[triPhys]="";
	$_SESSION[selectStep]="";
	$_SESSION[triTeam]="";
	$_SESSION[subProcessID]="";
}
//echo "test: I".$_SESSION[triMed]."I".$_SESSION[triAss]."I".$_SESSION[triPhys]."I".$_SESSION[selectStep]."I".$_SESSION[triTeam]."I";

if (isset($_POST['processID']))  { $_SESSION[processID]= $_POST['processID']; }
if (isset($_GET[newProcessID]))  { $_SESSION[processID]= $_GET[newProcessID]; $_POST[processID]=$_GET[newProcessID]; }
  	//Imposer un processus à afficher par défaut: Radiotherapie_externe
  	if ( (!isset($_GET['processID'])) AND (!isset($_SESSION[processID])) ) {  		
  		$_SESSION[processID]="1";
  		$_SESSION[processName]="Radiotherapy Externe";  		
  	}  	
	//Rappel du nom du process fonction du processID
	if (isset($_SESSION[processID])) {
		$queryNameProcess="SELECT * FROM process WHERE id='$_SESSION[processID]'";	
		$result=mysql_query($queryNameProcess);			
		while ($process=mysql_fetch_array($result)) {
			$_SESSION[processName]=$process[1];  		
		}
	}

//Variable de tri sur le type Archive/Treatment

if (isset($_GET['status']))  {
	$_SESSION[status]=$_GET['status'];
}
elseif (isset($_POST['status']))  { 
	$_SESSION[status]=$_POST['status'];
}
elseif (!isset($_SESSION['status'])) {
	$_SESSION[status]='Treatment';
}


if (($_GET['exit'])=="yes")  { 
	unset($_SESSION[triMed]);
	unset($_SESSION[triAss]);
	unset($_SESSION[triPhys]);
	unset($_SESSION[selectStep]);
	unset($_SESSION[triTeam]);	
	unset($_SESSION[subProcessID]);
	unset($_SESSION[user]);
	unset($_SESSION[password]);
	unset($_SESSION[userLevel]);
	unset($_SESSION[logged]);
	$_SESSION[toload]='workflow';
}

//Variable "balise" pour le retour au bon endroit dans la gestion du workflow
if (isset($_GET['stepID']))  {
	$_SESSION[Balise]=$_GET['stepID'];
}

?>

</head>
<?
// Correctif temporaire pour l'execution du code javascript a l'ouverture de la page In vivo
if(($_SESSION["toload"] ==  "invivo_main")|($_SESSION["toload"] ==  "invivo_main_archive"))
{
$nb_ligne = 20;
?>
<body onLoad="Javascript: self.resizeTo(1280, 1024);calcdsp(); <? for ($tt=0 ; $tt <= $nb_ligne ; $tt++) { echo "calcul_glob".$tt."(); autodate_color_ini".$tt."();";} ?> ">
<?
}
else
{
?>
<body onLoad="Javascript: self.resizeTo(1280, 1024);">
<?
}

//fin du correctif temporaire
?>
<noscript>
<div align="center">
<p style="color:red"> Veuillez activer le Javascript pour que cette page fonctionne correctement!!! </p>
</div>
</noscript>
<div id="main">

<div id="entete">
	<table width="1100px" >
		<tr>
			<td width="650px">
				<a href="index.php?toload=workflow"><h1><em>i<b>T</b></em>herapy <b>P</b>rocess</h1></a>
				<p><em>the way to go, the way to know</em></p>
			</td>
			<td width="450px" valign="bottom" align="right" >
				<b>
				<?php 
				if ($_SESSION[logged]=="ok") { 							
					echo $_SESSION[user];
					//echo " - ".$_SESSION[userLevel]." - ".$_SESSION[logged]
					?>
					-&nbsp;<a href="index.php?toload=login&exit=yes">logout</a><br><?php
				}
				else { ?>
					<a href="index.php?toload=login">login</a><br>
				<?php }; ?>
				</b>
				<em>Service de Radiothérapie des Cliniques universitaires St-Luc</em>
			</td>			
		</tr>
		<tr>
		<td colspan="2" width="1100px" valign="bottom" align="right">
			<!-- Affichage du nombre de nouveaux messages et des annif (personnel et patient) -->			
			<?php
				include('pages/message_display.php');
				include('pages/bday_display.php');
			?>
			</td>
		</tr>
	</table>
</div>
<hr />
<!-- end #entete -->
	
<div id="header">
	<div id="menu" onmouseout="mouseOut()">
		<span onmouseover="mouseOverMenu(this, 'itemMenu1')">Workflow</span>
		<span onmouseover="mouseOverMenu(this, 'itemMenu2')">Médical</span>
		<span onmouseover="mouseOverMenu(this, 'itemMenu3')">Physique</span>
		<span onmouseover="mouseOverMenu(this, 'itemMenu4')">RTT</span>
		<span onmouseover="mouseOverMenu(this, 'itemMenu5')">Technique</span>			
		<span onmouseover="mouseOverMenu(this, 'itemMenu6')">Divers</span>	
		<a href="index.php?toload=message_inbox"><img src="images/mail.png" height="25" alt="Messagerie"></img></a>	
		<a href="index.php?toload=licence"><img src="images/info.gif" height="25" alt="About"></img></a>
		<a href="index.php?toload=help"><img src="images/help.gif" width="30" height="30" alt="Help"></img></a>
		<a href="index.php?toload=administration"><img src="images/admin.gif" width="25" height="25" alt="Administration"></img></a>
	</div>
	<!-- end #menu -->
	<!-- ce div doit posseder au moins le caractère &nbsp; //Sauf pour la CSS commune IE et FF ... -->
	<!-- on peut y ajouter un message qui sera masque lors du passage de la souris sur le menu -->			
	<div id="itemVide">	
	</div>	
	<div onmouseout="mouseOut()" onmouseover="mouseOverItem()" id="itemMenu1" class="item">
		<a href="index.php?toload=workflow" class="lienItem">Suivi du patient</a>
		<a href="index.php?toload=new_patient" class="lienItem">Nouveau patient</a>		
	</div>	
	<div onmouseout="mouseOut()" onmouseover="mouseOverItem()" id="itemMenu2" class="item">
		<a href="index.php?toload=calend_view&calend=Calendrier médical" class="lienItem">Calendrier médecins</a>
	</div>
	<div onmouseout="mouseOut()" onmouseover="mouseOverItem()" id="itemMenu3" class="item">
		<a href="#">&nbsp;</a>
	</div>
	<div onmouseout="mouseOut()" onmouseover="mouseOverItem()" id="itemMenu4" class="item">
		<a href="#">&nbsp;</a>	
	</div>
	<div onmouseout="mouseOut()" onmouseover="mouseOverItem()" id="itemMenu5" class="item">
		<a href="index.php?toload=pannes_menu" class="lienItem">Pannes</a>
		<a href="#" class="lienItem">Maintenances</a>
		<!-- <a href="http://intranet-server1/menu_tech/menu_tech.php" class="lienItem" target="_blank">Menu Technique</a>-->	
		<a href="index.php?toload=memotech_main" class="lienItem">Memotech</a>		
		<a href="index.php?toload=gpi_main" class="lienItem">gpi</a>		
	</div>
	<div onmouseout="mouseOut()" onmouseover="mouseOverItem()" id="itemMenu6" class="item">
		<a href="index.php?toload=contacts" class="lienItem">Contacts</a>
<!--		
		<a href="index.php?toload=proc_list" class="lienItem">Procédures</a>
		<a href="index.php?toload=protoc_list" class="lienItem">Protocoles</a>
-->
		<a href="index.php?toload=docs_list" class="lienItem">Documents</a>
		<a href="index.php?toload=lien_liste" class="lienItem">Liens externes</a>		
		<a href="index.php?toload=rosis_menu" class="lienItem">ROSIS</a>
		<a href="index.php?toload=calend_select" class="lienItem">Calendrier</a>
		<a href="index.php?toload=com_book_list" class="lienItem">Cahier de communication</a>
	</div>						
</div>

	<!-- end #header -->
	<!-- end #header-wrapper -->

<script>
function alertSize() {
	  var myWidth = 0, myHeight = 0;
	  if( typeof( window.innerWidth ) == 'number' ) {
	    //Non-IE
	    myWidth = window.innerWidth;
	    myHeight = window.innerHeight;
	  } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
	    //IE 6+ in 'standards compliant mode'
	    myWidth = document.documentElement.clientWidth;
	    myHeight = document.documentElement.clientHeight;
	  } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
	    //IE 4 compatible
	    myWidth = document.body.clientWidth;
	    myHeight = document.body.clientHeight;
	  }
	  /* window.alert( 'Width = ' + myWidth );
	  window.alert( 'Height = ' + myHeight ); 
	  document.write(myHeight); */
	  myHeight=myHeight-260;
	  document.write('<div id="page" style="height:' + myHeight + 'px">');	  
	}
alertSize();
</script>

<!-- C'est ici que commence le div PAGE (dans le JScript just avant) -->

	<?php 
	//Affichage si new mail
	if(($count_new_mess > 0)&(isset($_SESSION['user']))&($_SESSION[logged]=="ok"))
	{
		//Larger banner if message not read within a certain time (22 days)
		if (abs($datePosted-time())>60*60*24*22) { 
			$height="600px";
			$PixHight=40;
			$TxtMess="<p style='text-align: center;font-weight: bold; color: #FFFFFF; '> <b> Depuis plus de 22 jours ...</b> </p>";
		}		
		else {
			$height="35px";
			$PixHight=12;
			$TxtMess="";
		}
		echo "<div style='text-align: center; background: red; height:".$height.";'>";
		echo "<p style='text-align: center;font-weight: bold; font-size:".$PixHight."px'> <a style='color: white;' href='index.php?toload=message_inbox'> <b> Vous avez ".$count_new_mess." nouveau(x) messages.</b> </a> </p>";
		echo $TxtMess;
		echo "</div>";
	}
	
	//Message si mdp est "changeme"
	$search_user = $_SESSION['user'];
//	echo $search_user;
	$Resultat = mysql_query("SELECT * FROM users WHERE INITIALES='$search_user';");
			
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		//récupération des données
		$password = mysql_result($Resultat , $Compteur , "PASSWORD");
		$user_ID = mysql_result($Resultat , $Compteur , "ID");
//		echo " A: ".$password;
	}
//	echo $password;
	$ref_password = md5("changeme");

//	echo " B: ".$ref_password;
	if(($password == $ref_password)&(isset($_SESSION['user'])))
	{
		echo "<div style='text-align: center; background: red'>";
		echo "<p style='text-align: center;font-weight: bold;'> <a style='color: white;' href='pages/contacts_info.php?ID=".$user_ID."' onClick='showPopup(this.href);return(false);'> <b> Vous devez modifier votre mot de passe.</b> </a> </p>";
		echo "</div>";
	}	
	
	include('dev_info.php'); ?>	
	<!-- Information qu'un timeOut se prépare ... -->
	<!-- 5*60*1000=5 min avant affichage du compte à rebours, celui-ci décompte X+15sec -->
	
	<!--  -->
	<a name="TopPage"></a>

	<div id="rebours" style="visibility: hidden; display: none;">
		<br><br>	
		<div style="text-align:center">		 
			<?php
			//recupération de la valeur de rafraichissement
			$myquery = "SELECT * FROM general_settings WHERE conf_id='0';";
			$Resultat = mysql_query($myquery);
			for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
			{
				$general_data = mysql_result($Resultat , $Compteur , "general_data");
			}
			$general_data = unserialize($general_data);
			$refresh_time = $general_data['refresh_time'];
			
			if (isset($_SESSION[user])) { echo "Vous allez être déconnecté dans"; }
			else { echo "Cette page va être rafraichie dans" ;};
			?>
			<h1><div id="idIciSecondes"></div></h1>
			secondes ...		
			<script language='javascript'>
	
			function startCount()
			{
				/* alert("start"); */
				delaiAvantAffichage=<? echo $refresh_time ?>*60*1000;
				nombreDeSecondeDecompteur=<? echo $refresh_time ?>*60+60;
				decompteurAffichage=setTimeout("ViewDecompte('rebours')",delaiAvantAffichage); 			
			}
			startCount();
					
			document.getElementById('idIciSecondes').innerHTML=nombreDeSecondeDecompteur;
					
			function compteAreboursSec()
			{
				nombreDeSecondeDecompteur=nombreDeSecondeDecompteur-1;
				document.getElementById('idIciSecondes').innerHTML=nombreDeSecondeDecompteur;
			
				if(nombreDeSecondeDecompteur>0)
					{setTimeout("compteAreboursSec()",1000);}
			
				else if(nombreDeSecondeDecompteur==0)
					{location.href="index.php?toload=workflow&exit=yes"; }
				
			}
			compteAreboursSec();
			
			function stopCount()
			{
				/* alert("stop");*/
				ViewDecompte('rebours');
				startCount();
			}	
			</script>			
			<br><br>		
			<!-- La valeur du bouton change selon que l'on soit logué ou non -->
			<INPUT class="inputButton" TYPE="submit" border="0" title="Annuler" VALUE="<?php if (isset($_SESSION[user])) { echo "Annuler la déconnexion"; } else { echo "Annuler le rafraichissement" ;}; ?>" onClick="stopCount()"> 
			<br><br><br>	
		</div>
	</div>
	<?php 
		//VERIFICATION du range des adresses IP autorisées (ST-LUC et SPO)
//		$ip=$_SERVER['REMOTE_ADDR'];
//		$ip=$_SERVER['REMOTE_HOST'];
		$ip="10.96.4.20";
//		echo "IP:".$ip;
//		echo "IP:".$ip." - ".substr($ip,0,8);


	if ((substr($ip,0,8)!="10.96.4.") AND (substr($ip,0,8)!="10.102.1.")) {
		include("pages/error.php");
		break;
	}
	elseif (($_SESSION[toload]=="") OR ($_SESSION[toload]=="workflow")) { 
		$_SESSION[toload]="workflow"; 
		include('pages/workflow.php');
//	echo 'TEST:'.$_SESSION[toload].'-';
	}		
	else {		
		
		if ( (isset($_SESSION[user])) & ($_SESSION[user]!="") ) {
			//process pour le chargement de la page
			$toload=$_SESSION['toload'];
//			echo "toload?".$toload;
//			echo "access_chain = ".$_SESSION[access_chain]."<br>";
//			echo "user = ".$_SESSION[user]."<br>";
			$access_chain = $_SESSION[access_chain];
			$exploded_access_chain = explode(".",$access_chain);
			$access_admin = $exploded_access_chain[0];
			$access_fonction = $exploded_access_chain[1];
			$access_level = $exploded_access_chain[2];
	
			$myquery = "SELECT * FROM gestion_pages WHERE call_name='$toload';";
    		$Resultat = mysql_query($myquery);
    		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
			{
			//récupération des données
				$ID = mysql_result($Resultat , $Compteur , "ID");
  				$file_name = mysql_result($Resultat , $Compteur , "file_name");
  				$call_name = mysql_result($Resultat , $Compteur , "call_name");
  				$access = mysql_result($Resultat , $Compteur , "access");
  				$directory = mysql_result($Resultat , $Compteur , "directory");
			}
			if($toload=="login") {
				include('pages/login.php');
			}
			elseif($access_admin==2) {
				include("$directory/$file_name");
			}
			elseif($access_admin==1) {
				$exploded_access = explode(",",$access);
				$load_auth = "nok";
			 	$i = 0;
				while($i<count($exploded_access)) {
       				if($exploded_access[$i]==$access_chain)
       				{
       					$load_auth = "ok";
       				}
        			$i++;
    			}
				if($load_auth == "ok") {
					include("$directory/$file_name");	
				}
				else {
					echo "<br><br>Vous n'êtes pas autorisé à vous connecter à cette page";
				}			
			}
		}
		elseif($_SESSION[toload]=="login") {
			include('pages/login.php');
		}
/*		elseif($_SESSION[toload]=="workflow") {
			echo 'TEST:'.$_SESSION[toload].'-';
			include('pages/workflow.php');
		}
*/		else {
			echo "<div algn='center'><br><br>Veuillez vous loguer via la<a href='index.php?toload=login'> page de login </a>pour pouvoir utiliser toutes les fonctionnalités d'iTP </div>";	
		}		
	} //Fin du if d'adress IP	
	?>
	
</div>

<!-- end #page -->
<br></br>
<div id="footer">
	<p>Copyright (c) 2010-2012 M. Coevoet. All rights reserved.</p>
</div>
<!-- end #footer -->

<?php  
mysql_close(); 
?>

</div>

<!-- end #main -->
<?
include('piwik.php');
?>

</body>
</html>
                                                                                                                                                                                             
