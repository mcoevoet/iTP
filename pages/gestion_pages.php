<table align="center" class="tabstd">
<?php
if(isset($_GET['page_folder']))
{
	$folder = $_GET['page_folder'];
}
else
{
	$folder = ".";
}
//echo "<tr> <td colspan=2> Dossier courant  : $folder </td></tr>";
//echo "<tr> <td colspan=2> Contenu : </td></tr>";
//affiche les dossiers accessible depuis ce dossier

$cont_folder = array();

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
        	if ((is_dir($file))&($fichier_cache == "no"))
            {
           		$cont_folder[] = $file;
            }
        }
    }
    closedir($handle);
}

sort($cont_folder);

foreach($cont_folder as $file)
{
	echo "<tr>";
    echo "<td> <a href='index.php?toload=gestion_pages_access&acc_folder=$file'>".$file."</a> </td>";
    echo "<td> <a href=index.php?toload=gestion_pages_access&acc_folder=$file><img src='images/key.png' alt='access' height=20 width=20></a> </td>";
    echo "</tr>";
}
//affiche les fichiers accessible depuis ce dossier
echo "</table>";
echo "<br><br>";
echo "<table class='tabstd' align='center'> <tr> <td colspan=4> Fichiers : </td></tr>";
echo "<tr> <td> Nom du fichier</td> <td> Nom d'appel</td> <td> Accès</td><td></td></tr>";
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
	sort($cont_folder);
	foreach($cont_folder as $file)
	{				
		echo "<tr>";
        echo "<td> $file</td>";
        $myquery = "SELECT * FROM gestion_pages WHERE file_name='$file';";
        //echo "<br>$myquery<br>";
        $Resultat = mysql_query($myquery);
        $ID="";
        $file_name="";
        $call_name="";
        $access="";
		for ($Compteur=0 ; $Compteur < mysql_numrows($Resultat) ; $Compteur++)
		{
		//récupération des données
		$ID = mysql_result($Resultat , $Compteur , "ID");
  		$file_name = mysql_result($Resultat , $Compteur , "file_name");
  		$call_name = mysql_result($Resultat , $Compteur , "call_name");
  		$access = mysql_result($Resultat , $Compteur , "access");
  		$directory = mysql_result($Resultat , $Compteur , "directory");
		}
		echo "<td> $call_name</td>";
		echo "<td> $access</td>";
//		echo "<td> caché? = ".$fichier_cache."</td>";
		if($ID!="")
		{
			echo "<td> <a href='index.php?toload=gestion_pages_mod&page_ID=$ID&directory=$folder'> <IMG src='images/modify.gif' height='16' width='16'> </a></td>";
		}
		else
        {
			echo "<td> <a href='index.php?toload=gestion_pages_new&file_name=$file&directory=$folder'> <IMG src='images/add.jpg' height='16' width='16'> </a></td>";
		}			
		echo "</tr>";
	}
}
else
{
	echo "<tr> <td colspan=4> Les fichiers du dossier racines ne sont pas affichable </td> </tr>";
}
echo "</table>";
?>
<br>
