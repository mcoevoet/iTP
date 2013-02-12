<?
//connection a la db Intranet-Server2

$dbhost = "localhost";  
$user = ""; 
$password = ""; 
$usebdd = "itpDB"; 

$conn = mysql_connect("$dbhost", "$user", "$password");  
if (!$conn) { 
echo "Impossible d'effectuer la connexion!".$usedb; 
exit; 
} 

mysql_query("SET NAMES UTF8");

$db = mysql_select_db("$usebdd", $conn); 
if (!$db) { 
echo "Impossible de sŽlectionner cette base donnŽes"; 
exit; 
}

function myquery ($query) { // fonction permettant d'exŽcuter une requête sql en enregistrant l'erreur s'il y a dans un fichier de log ou si debug = 1
      $debug="0";

   list($usec, $sec) = explode(' ',microtime()); //debut du comptage du temps
   $querytime_before = ((float)$usec + (float)$sec);

   $result = mysql_query($query);

   list($usec, $sec) = explode(' ',microtime()); // fin de comptage
   $querytime_after = ((float)$usec + (float)$sec);

   $time = $querytime_after - $querytime_before; // temps passé pour effectuer la requête
            if (mysql_errno()||$debug=="1"){
              $dt = date("Y-m-d H:i:s (T)");
                 $err = "<errorentry>\n";
          $err .= "\t<datetime>" . $dt . "</datetime>\n";
          $err .= "\t<errornum>" . mysql_errno() . "</errornum>\n";
          $err .= "\t<errormsg>" . mysql_error() . "</errormsg>\n";
          $err .= "\t<errorquery>" . $query . "</errorquery>\n";
          $err .= "\t<scriptname>" . $_SERVER["SCRIPT_FILENAME"] . "</scriptname>\n";
          $err .= "\t<userip>" . getip() . "</userip>\n";
          $err .= "\t<timepast>" . $time . "</timepast>\n";
          $err .= "</errorentry>\n\n";
                   // sauvegarde de l'erreur, et mail si c'est critique
          error_log($err, 3, CONFIG_ERRORSFOLDER."sqlerror.log");
   }
      return $result;
} 

?>
