<div align="center"> 
		<a href=index.php?toload=gestion_pages>Retour à la liste</a>
</div>

<table align="center">
	<tr>
		<td>
		<?php
		echo "Current folder = ".$_GET[acc_folder]."<br>";		
		?>
		</td>
	</tr>
</table>

<table>
<?
//echo "Current Chain = ".$_GET[acc_chain];
$folder=$_GET[acc_folder];
//echo "FOLDER = ".$folder;

//affiche les fichiers accessible depuis ce dossier
echo "<bR> Fichiers : <br>";
echo "<table class='tab_pages'>";

echo "<tr>";
echo "<td class='td9'> &nbsp </td> <td class='td9'></td> <td class='td9'> <b>&nbsp </b></td><td></td>"; 

$myquery_ini = "SELECT * FROM users_level;";
$myquery_ini_res = mysql_query($myquery_ini);
$nbrows = mysql_num_rows($myquery_ini_res);  

//echo "nbrows = $nbrows";

$myquery1 = "SELECT * FROM users_fonction;";
$Resultat1 = mysql_query($myquery1);
for ($Compteur1=0 ; $Compteur1 < mysql_numrows($Resultat1) ; $Compteur1++)
{
	$id_fonction = mysql_result($Resultat1 , $Compteur1 , "id");
	$fonction = mysql_result($Resultat1 , $Compteur1 , "descFct");
	
	echo "<td class='td9' align='center' colspan=$nbrows>".$fonction."</td>";
	
}
echo "</tr>";

echo "<tr>";
echo "<td class='td9'> Nom du fichier </td> <td class='td9'> Nom d'appel </td> <td class='td9'> <b>&nbsp </b></td><td>Open access?</td>"; 
$myquery1 = "SELECT * FROM users_fonction;";
$Resultat1 = mysql_query($myquery1);
for ($Compteur1=0 ; $Compteur1 < mysql_numrows($Resultat1) ; $Compteur1++)
{
	$myquery2 = "SELECT * FROM users_level;";
	$Resultat2 = mysql_query($myquery2);
	for ($Compteur2=0 ; $Compteur2 < mysql_numrows($Resultat2) ; $Compteur2++)
	{
		$id_level = mysql_result($Resultat2 , $Compteur2 , "level");
		$level = mysql_result($Resultat2 , $Compteur2 , "intitule");
		echo "<td class='td9'>".$level."</td>";
	}
}
echo "</tr>";


$cont_folder = array();
if ($folder!=".")
{	
	if ($handle = opendir($folder)) {
		while (false !== ($file = readdir($handle))) {
        	if ($file != "." && $file != "..") {
        	    $exploded_file = explode(".",$file);
        	    
        	    if($exploded_file[0]=="")
        	    {
        	    	$fichier_cache = "yes";
        	    }
        	    else
        		{
        	    	$fichier_cache = "no";
        	    }
        	   
        		if ((!is_dir($file))&($fichier_cache == "no"))
        	    {
					$cont_folder[] = $file;
        	    }
        	}
    	}
    	closedir($handle);
	}
}
sort($cont_folder);
foreach($cont_folder as $file)
{	
	echo "<tr>";
    echo "<td class='td9'> $file</td>";
    $myquery = "SELECT * FROM gestion_pages WHERE file_name='$file';";
    //echo "<br>$myquery<br>";
    $Resultat = mysql_query($myquery);
    $ID="";
    $file_name="";
    $call_name="";
    $access="";
    $auth_ok="";
	for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
	{
		//récupération des données
		$ID = mysql_result($Resultat , $Compteur , "ID");
  		$file_name = mysql_result($Resultat , $Compteur , "file_name");
  		$call_name = mysql_result($Resultat , $Compteur , "call_name");
  		$access = mysql_result($Resultat , $Compteur , "access");
  		echo "<td class='td9'> &nbsp $call_name </td>";
  	}
  		if($ID!="")
		{
			echo "<td class='td9'><a href='index.php?toload=gestion_pages_mod&page_ID=$ID&directory=$folder'> <IMG src='images/modify.gif' height='16' width='16'> </a></td>";
		}
		else
		{
			echo "<td> </td> <td class='td9'><a href='index.php?toload=gestion_pages_new&file_name=$file&directory=$folder'><IMG src='images/add.jpg' height='16' width='16'> </a></td>";
		}			
		
		
		//debut test
		$exploded_access = explode(",",$access);
						$i=0;
						while($i<count($exploded_access)) 
						{
							if($exploded_access[$i]=="0.0.0")
							{	
								$auth_ok = "yes";
							}
       							$i++;
       						}
       						$test_chain = "0.0.0";
       						//echo "<td>$auth_ok</td>";
       						if ($auth_ok == "yes")
       						{
       							echo "<td class='td9' align='center'><a id='$file' title='$test_chain' href=pages/gestion_pages_access_disable.php?call_name=$call_name&acc_chain=$test_chain&acc_folder=$_GET[acc_folder]&file_name=$file><img src='images/enable.jpg'/></a></td>"; 
       						}
       						else
       						{
       							echo "<td class='td9' align='center'><a id='$file' title='$test_chain' href=pages/gestion_pages_access_enable.php?call_name=$call_name&acc_chain=$test_chain&acc_folder=$_GET[acc_folder]&file_name=$file><img src='images/disable.jpg'/></a></td>"; 
       						}
		
		//fin test
		
		
//  		echo $access."<br>";
//		echo "<td> $access</td>";
		$myquery0 = "SELECT * FROM users_admin;";
		$Resultat0 = mysql_query($myquery0);
		for ($Compteur0=0 ; $Compteur0 < mysql_numrows($Resultat0) ; $Compteur0++)
		{
			$id_admin = mysql_result($Resultat0 , $Compteur0 , "id");
			$admin = mysql_result($Resultat0 , $Compteur0 , "admin");
			$myquery1 = "SELECT * FROM users_fonction;";
			$Resultat1 = mysql_query($myquery1);
			for ($Compteur1=0 ; $Compteur1 < mysql_numrows($Resultat1) ; $Compteur1++)
			{
				
				if($id_admin == "1")
				{				
					$id_fonction = mysql_result($Resultat1 , $Compteur1 , "id");
					$fonction = mysql_result($Resultat1 , $Compteur1 , "descFct");
					$myquery2 = "SELECT * FROM users_level;";
					$Resultat2 = mysql_query($myquery2);
					for ($Compteur2=0 ; $Compteur2 < mysql_numrows($Resultat2) ; $Compteur2++)
					{
						$id_level = mysql_result($Resultat2 , $Compteur2 , "level");
						$level = mysql_result($Resultat2 , $Compteur2 , "intitule");
						//echo "<td> <a href=index.php?toload=gestion_pages_access&acc_folder=$_GET[acc_folder]&acc_chain=".$id_admin.".".$id_fonction.".".$id_level.">".$id_admin.".".$id_fonction.".".$id_level."</a></td>";
						$test_chain = $id_admin.".".$id_fonction.".".$id_level;	
						//aa
						$auth_ok = "no";
						$exploded_access = explode(",",$access);
						$i=0;
						while($i<count($exploded_access)) 
						{
							if($exploded_access[$i]==$test_chain)
							{	
       						$auth_ok = "yes";
       							}
       							$i++;
       						}
       						//echo "<td>$auth_ok</td>";
       						if ($auth_ok == "yes")
       						{
       							echo "<td class='td9' align='center'><a id='$file' title='$test_chain' href=pages/gestion_pages_access_disable.php?call_name=$call_name&acc_chain=$test_chain&acc_folder=$_GET[acc_folder]&file_name=$file><img src='images/enable.jpg'/></a></td>"; 
       						}
       						else
       						{
       							echo "<td class='td9' align='center'><a id='$file' title='$test_chain' href=pages/gestion_pages_access_enable.php?call_name=$call_name&acc_chain=$test_chain&acc_folder=$_GET[acc_folder]&file_name=$file><img src='images/disable.jpg'/></a></td>"; 
       						}
       						$directory = mysql_result($Resultat , $Compteur , "directory");
       						//aa
					}						
				}
			}
		}
//	}
	echo "</tr>";
}


?>
</table>