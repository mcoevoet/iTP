<?php
$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);  
 
$msg = "Ping !";  
$len = strlen($msg);  

socket_sendto($sock, $msg, $len, 0, '10.96.4.38', 10);  
socket_close($sock);  
?> 

