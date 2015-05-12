<?php
$todaydate = date("d-m-Y");
$todaydate_day = date("d");
$todaydate_month = date("m");
$todaydate_year = date("Y");
$timestamp_today = $timestamp = mktime(0, 0, 0, $todaydate_month, $todaydate_day, $todaydate_year); 

?>