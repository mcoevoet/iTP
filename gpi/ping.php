<?php
     $ip =  $_GET['IP'];
	 echo (" Ping :<br>");
     //$ip="10.96.4.20"; /* l'adresse que l'on veut pinguer*/
     $port=""; /* le port que l'on veut tester (ou rien si vous voulez juste pinguer..)*/

     /*test ping*/
     $ping_check=exec ('/bin/ping -c2 -q -w2 '.$ip.' | grep transmitted | cut -f3 -d"," | cut -f1 -d"," | cut -f1 -d"%"');
     if ($ping_check==0)
     echo ("L'adresse $ip répond au ping <br><br>");
     //if ($ping_check==1)
     //echo (" Le boitier $ip ne MARCHE PAS <br><br>");
     else
     {
     	echo ("L'adresse $ip ne répond pas au ping <br><br>");
     }
     

     /*Test port, inutile, si on ne met pas de port dans la variable $port*/
     if ($port && $ping_check==0)
     {
     echo (" Testing port...<br>");
     $portcheck=exec('/usr/bin/nmap -p '.$port.' --host_timeout=2500 '.$ip.'| grep '.$port.'/tcp | cut -f1 -d"/"');
     if ($portcheck!="")
     echo ( "le port $port est ouvert sur $ip");
     else
     echo ( "le port $port est fermé sur $ip");
     }
?>