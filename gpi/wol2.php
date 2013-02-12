<?php

class Wol{
private $nic;
public function wake($mac){
$this->nic = fsockopen("udp://255.255.255.255", "7", $errno, $errstr);
if( !$this->nic ){
	
echo "probleme de connexion<br>";
echo "$errstr ($errno)<br />\n";

fclose($this->nic);
return false;
}
else{
fwrite($this->nic, $this->pacquet($mac));
fclose($this->nic);
return true;
}
}
private function pacquet($Mac){
$packet = "";
for($i = 0; $i < 6; $i++){$packet .= chr(0xFF);}
for ($j = 0; $j < 16; $j++){
for($i = 0; $i < 12; $i=$i + 2){$packet .= chr(hexdec(substr($Mac, $i, 2)));}
}
return $packet;
}
}
$wol = new Wol();
// Remplacer 001122334455 par l'adresse mac du pc à allumer
$wol->wake('000EA62DA59C');




// $p_mac = secure_string("00:0E:A6:2D:A5:9C");
 

?> 