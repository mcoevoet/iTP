<form action="index.php?toload=tomo_stats"choixPatient" method="post"><br>

Sélectionnez un patient:

<?php
$hier=time()-2*(24*3600);

//$querySelect="SELECT nom, prenom, visirid, pidno, req_num FROM suivi WHERE ( ((mach_ini LIKE '%Tomo%') OR (machine LIKE '%Tomo%'))  AND (ptv='PTV 1') AND (date_last_treat>$hier) ) ORDER by nom";
$querySelect="SELECT nom, prenom, idStluc, req, volcible, ptv, plan FROM tomo ORDER by nom";
//echo $querySelect;
$resultSelect=myquery($querySelect);
?>

<select name="patname" tabindex="1" onChange="selectionner()">
 <option value="<? echo $_SESSION['idStluc']."|".$_SESSION[req]."|".$_SESSION[volcible]."|".$_SESSION[ptv]."|".$_SESSION[plan]; ?>">
<?php
  while ($msg=mysql_fetch_array($resultSelect)){ 
  echo "<option value=".$msg[idStluc]."|".$msg[req]."|".$msg[volcible]."|".$msg[ptv]."|".$msg[plan].">".$msg[nom]." ".$msg[prenom]." (Course: ".$msg[req]." - Vol cible: ".$msg[volcible]." - PTV: ".$msg[ptv]." - Plan: ".$msg[plan].")";
	}
?>
<br><br>
</select>

<input type="submit" border="0" name="selectionner" value="Selectionner" class="bouton" tabindex="2" onClick="test();">

</form>

<?php
// Si bouton select
if (isset($_POST['selectionner'])) { 
	list($_SESSION['idStluc'], $_SESSION['req'], $_SESSION['volcible'], $_SESSION['ptv'], $_SESSION['plan'])=explode("|", $_POST[patname]) ;
	$querySelect="SELECT * FROM tomo WHERE (idStluc='$_SESSION[idStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
	$resultSelect=myquery($querySelect);
	$msg=mysql_fetch_array($resultSelect);
	
	//echo "<pre>";
	//print_r($msg);
	//echo "</pre>";

/*	// Si existe dans la db ou pas
	if ($msg!='') {
		//echo "INSERTED";
	}
	else {
		$dateFract=strtotime("$_POST[jour] $_POST[mois] $_POST[annee]");

		$querySelect="SELECT nom, prenom, visirid, pidno, req_num FROM suivi WHERE ((visirid='$_SESSION[visirid]') AND (req_num='$_SESSION[reqnum]') ) ORDER by nom";
		//echo "<br><br>".$querySelect."<br><br>";
		$resultSelect=myquery($querySelect);
		$msg=mysql_fetch_array($resultSelect);


		$date_intro=time();

		$sqlUpdate="INSERT INTO tomo (nom, prenom, visirid, reqnum, pidno, date_intro)
		VALUES ('$msg[nom]', '$msg[prenom]', '$msg[visirid]', '$msg[req_num]', '$msg[pidno]', '$date_intro')
		ON DUPLICATE KEY UPDATE nom='$msg[nom]', prenom='$msg[prenom]', visirid='$msg[visirid]', reqnum='$msg[reqnum]',
		 pidno='$msg[pidno]', date_intro='$date_intro'";
		
		//echo "<br>".$sqlUpdate;		

		myquery($sqlUpdate);
			
		die("<META HTTP-equiv='refresh' content='0;URL=center.php?contenurl=tomo_stats'>"); 		
		
	}
*/
}
?>

<p>&nbsp;</p>
Données MVCT de:<b><font color="#0000FF" size="4"> 
<?php
$querySelectName="SELECT nom, prenom, idStluc, date_intro FROM tomo WHERE (idStluc='$_SESSION[idStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
//echo $querySelectName;
$resultSelectName=myquery($querySelectName);
$msgName=mysql_fetch_array($resultSelectName);
echo strtoupper($msgName['nom'])." ".$msgName['prenom']." - ID: ".$_SESSION[idStluc]." - Course: ".$_SESSION[req]." - Vol. Cible: ".$_SESSION[volcible]." - PTV: ".$_SESSION[ptv]." - Plan: ".$_SESSION[plan];
?>
</font></b>
<br><br><br>
<form action="index.php?toload=tomo_stats" name="data" method="post"> 

  <table border="0" cellpadding="0" cellspacing="2" class="textmain" id="tableau" name="tableau">
    <tr>
      <td align="center" bgcolor="#FFCC99">Date</td>
      <td align="center" bgcolor="#99FFCC">Fraction</td>
      <td align="center" colspan="2" bgcolor="#DDDDDD"></td>
      <td align="center" colspan="4" bgcolor="#FFFFCC">D&eacute;viations Automatiques </td>
      <td align="center" colspan="4" bgcolor="#99CCFF">D&eacute;viations accept&eacute;es </td>
      <td align="center" colspan="4" bgcolor="#FFCCFF"><p align="center">Valeurs table</p></td>
      <td align="center" bgcolor="#eeeeee">Start</td>
      <td align="center" bgcolor="#eeeeee">Stop</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFCC99">Jour / Mois / Ann&eacute;e </td>
      <td align="center" bgcolor="#99FFCC"></td>
      <td align="center" bgcolor="#DDDDDD">Pitch</td>
      <td align="center" bgcolor="#DDDDDD">Yaw</td>
      <td align="center" bgcolor="#FFFFCC">X</td>
      <td align="center" bgcolor="#FFFFCC">Y</td>
      <td align="center" bgcolor="#FFFFCC">Z</td>
      <td align="center" bgcolor="#FFFFCC">Roll</td>
      <td align="center" bgcolor="#99CCFF">X</td>
      <td align="center" bgcolor="#99CCFF">Y</td>
      <td align="center" bgcolor="#99CCFF">Z</td>
      <td align="center" bgcolor="#99CCFF">Roll</td>
      <td align="center" bgcolor="#FFCCFF">X</td>
      <td align="center" bgcolor="#FFCCFF">Y</td>
      <td align="center" bgcolor="#FFCCFF">Z</td>
      <td align="center" bgcolor="#FFCCFF">Roll</td>
      <td align="center" bgcolor="#eeeeee"></td>
      <td align="center" bgcolor="#eeeeee"></td>
    </tr>
	<tr>
      <td align="center" bgcolor="#FFCC99">&nbsp;</td>
      <td align="center" bgcolor="#99FFCC">&nbsp;</td>
      <td align="center" bgcolor="#DDDDDD">&nbsp;</td>
      <td align="center" bgcolor="#DDDDDD">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
    </tr>
    <?php
$querySelect="SELECT * FROM tomo WHERE (idStluc='$_SESSION[idStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
$resultSelect=myquery($querySelect);
while ($msg=mysql_fetch_array($resultSelect)) {

		$data=array(
			'excluded' => unserialize($msg[excluded]),
			'nom' => $msg[nom],
			'prenom' => $msg[prenom],
			'visirid' => $msg[visirid],
			'reqnum' => $msg[reqnum],
			'pidno' => $msg[pidno],
			'date_intro' => $msg[date_intro],
			'dateFract' =>  unserialize($msg[dateFract]),
			'fraction' => unserialize($msg[fraction]),
			'h_start' => unserialize($msg[h_start]),
			'h_stop' => unserialize($msg[h_stop]),
			'pitch' => unserialize($msg[pitch]),
			'yaw' => unserialize($msg[yaw]),
			'x_dev' => unserialize($msg[x_dev]),
			'y_dev' => unserialize($msg[y_dev]),
			'z_dev' => unserialize($msg[z_dev]),
			'roll_dev' => unserialize($msg[roll_dev]),
			'x_auto' => unserialize($msg[x_auto]),
			'y_auto' => unserialize($msg[y_auto]),
			'z_auto' => unserialize($msg[z_auto]),
			'roll_auto' => unserialize($msg[roll_auto]),			
			'x_table' => unserialize($msg[x_table]),
			'y_table' => unserialize($msg[y_table]),
			'z_table' => unserialize($msg[z_table]),
			'roll_table' => unserialize($msg[roll_table])			
		);
	
}
				
$nbre_fract=count($data[x_dev]);
$som=$nbre_fract+$_GET[plus];
for ($u=0;$u<$som;$u++) {
?>
    
   <tr>
        <td align="center" bgcolor="#FFCC99">
            <? echo date("d",$data['dateFract'][$u]) ;?>
            /
            <? echo date("m",$data['dateFract'][$u]) ;?>
            /
            <? echo date("Y",$data['dateFract'][$u]);?>       
        </td>
        <?php 
 		$_POST['dateFract'][$u]=mktime(0,0,0,$_POST['mois'][$u],$_POST['jour'][$u],$_POST['annee'][$u]);
 		?>
        <td align="center" bgcolor="#99FFCC">
            <? echo $data['fraction'][$u]; ?>
        </td>
        <td align="center" bgcolor="#DDDDDD"><? echo $data['pitch'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['pitch'][$u]!='')) {			
			$pitch_auto=$sum_pitch+$data['pitch'][$u];
			$nb_pitch=$nb_pitch+1;
			$moy_pitch=$sum_pitch/$nb_pitch;					
		}
		?>
        </td>
        <td align="center" bgcolor="#DDDDDD"><? echo $data['yaw'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['yaw'][$u]!='')) {			
			$sum_yaw=$sum_yaw+$data['yaw'][$u];
			$nb_yaw=$nb_yaw+1;
			$moy_yaw=$sum_yaw/$nb_yaw;					
		}
		?>
        </td>
        <td align="center" bgcolor="#FFFFCC"><? echo $data['x_auto'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['x_auto'][$u]!='')) {			
			$sum_x_auto=$sum_x_auto+$data['x_auto'][$u];
			$nb_x_auto=$nb_x_auto+1;
			$moy_x_auto=$sum_x_auto/$nb_x_auto;					
		}
		?>
        </td>
        <td align="center" bgcolor="#FFFFCC"><? echo $data['y_auto'][$u]; ?>
                <?php
		if (($data['excluded'][$u]=='in') AND ($data['y_auto'][$u]!='')) {			
			$sum_y_auto=$sum_y_auto+$data['y_auto'][$u];
			$nb_y_auto=$nb_y_auto+1;
			$moy_y_auto=$sum_y_auto/$nb_y_auto;		
		}
		?>
        </td>
        <td align="center" bgcolor="#FFFFCC"><? echo $data['z_auto'][$u]; ?>
                <?php
		if (($data['excluded'][$u]=='in') AND ($data['z_auto'][$u]!='')) {			
			$sum_z_auto=$sum_z_auto+$data['z_auto'][$u];
			$nb_z_auto=$nb_z_auto+1;
			$moy_z_auto=$sum_z_auto/$nb_z_auto;		
		}
		?>
        </td>
        <td align="center" bgcolor="#FFFFCC"><? echo $data['roll_auto'][$u]; ?>
                <?php
		if (($data['excluded'][$u]=='in') AND ($data['roll_auto'][$u]!='')) {			
			$sum_roll_auto=$sum_roll_auto+$data['roll_auto'][$u];
			$nb_roll_auto=$nb_roll_auto+1;
			$moy_roll_auto=$sum_roll_auto/$nb_roll_auto;		
		}
		?>
        </td>
        <td align="center" bgcolor="#99CCFF"><? echo $data['x_dev'][$u]; ?>
                <?php
		if (($data['excluded'][$u]=='in') AND ($data['x_dev'][$u]!='')) {			
			$sum_x_dev=$sum_x_dev+$data['x_dev'][$u];
			$nb_x_dev=$nb_x_dev+1;
			$moy_x_dev=$sum_x_dev/$nb_x_dev;		
			
		//echo "Test:".$data['x_dev'][$u]."|".$nb_x_dev."|".$moy_x_dev;
		}
		?>
        </td>
        <td align="center" bgcolor="#99CCFF"><? echo $data['y_dev'][$u]; ?>
                <?php
		if (($data['excluded'][$u]=='in') AND ($data['y_dev'][$u]!='')) {			
			$sum_y_dev=$sum_y_dev+$data['y_dev'][$u];
			$nb_y_dev=$nb_y_dev+1;
			$moy_y_dev=$sum_y_dev/$nb_y_dev;		
		}
		?>
        </td>
        <td align="center" bgcolor="#99CCFF"><? echo $data['z_dev'][$u]; ?>
            <?php
		if (($data['excluded'][$u]=='in') AND ($data['z_dev'][$u]!='')) {			
			$sum_z_dev=$sum_z_dev+$data['z_dev'][$u];
			$nb_z_dev=$nb_z_dev+1;
			$moy_z_dev=$sum_z_dev/$nb_z_dev;		
		}
		?></td>
        <td align="center" bgcolor="#99CCFF"><? echo $data['roll_dev'][$u]; ?>
                <?php
		if (($data['excluded'][$u]=='in') AND ($data['roll_dev'][$u]!='')) {			
			$sum_roll_dev=$sum_roll_dev+$data['roll_dev'][$u];
			$nb_roll_dev=$nb_roll_dev+1;
			$moy_roll_dev=$sum_roll_dev/$nb_roll_dev;		
		}
		?>
        </td>
        <td align="center" bgcolor="#FFCCFF">
        <? echo $data['x_table'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['x_table'][$u]!='')) {			
			$sum_x_table=$sum_x_table+$data['x_table'][$u];
			$nb_x_table=$nb_x_table+1;
			$moy_x_table=$sum_x_table/$nb_x_table;		
		}
		?>				
        </td>
        <td align="center" bgcolor="#FFCCFF">
        <? echo $data['y_table'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['y_table'][$u]!='')) {			
			$sum_y_table=$sum_y_table+$data['y_table'][$u];
			$nb_y_table=$nb_y_table+1;
			$moy_y_table=$sum_y_table/$nb_y_table;		
		}
		?>							
        </td>
        <td align="center" bgcolor="#FFCCFF">
        <? echo $data['z_table'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['z_table'][$u]!='')) {			
			$sum_z_table=$sum_z_table+$data['z_table'][$u];
			$nb_z_table=$nb_z_table+1;
			$moy_z_table=$sum_z_table/$nb_z_table;		
		}
		?>							
        </td>
        <td align="center" bgcolor="#FFCCFF">
        <? echo $data['roll_table'][$u]; ?>
        <?php
		if (($data['excluded'][$u]=='in') AND ($data['roll_table'][$u]!='')) {			
			$sum_roll_table=$sum_roll_table+$data['roll_table'][$u];
			$nb_roll_table=$nb_roll_table+1;
			$moy_roll_table=$sum_roll_table/$nb_roll_table;		
		}
		?>							
        </td>
        <td align="center" bgcolor="#eeeeee">
		<? echo date("H:i",$data['h_start'][$u]); ?>
        </td>
        <td align="center" bgcolor="#eeeeee">
		<? echo date("H:i",$data['h_stop'][$u]); ?>
      </td>
    </tr>
    <?php

}  //fin de la boucle for
?>
    <tr>
      <td align="center" bgcolor="#FFCC99">&nbsp;</td>
      <td align="center" bgcolor="#99FFCC"></td>
      <td align="center" bgcolor="#FFFFCC"> </td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF"></td>
      <td align="center" bgcolor="#FFCCFF"></td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFCC99"><b>Moyennes</b></td>
      <td align="center" bgcolor="#99FFCC"></td>
      <td align="center" bgcolor="#FFFFCC"><b> <?php
		echo round($moy_x_auto,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFFFCC"><b> <?php
		echo round($moy_y_auto,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFFFCC"><b> <?php
		echo round($moy_z_auto,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFFFCC"><b> <?php
		echo round($moy_roll_auto,2);
		?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b> <?php
		echo round($moy_x_dev,2);
		?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b> <?php
		echo round($moy_y_dev,2);
		?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b> <?php
		echo round($moy_z_dev,2);
		?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b> <?php
		echo round($moy_roll_dev,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b> <?php
		echo round($moy_x_table,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b><?php
		echo round($moy_y_table,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b><?php
		echo round($moy_z_table,2);
		?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF">
	  <b><?php echo round($moy_roll_table,2); ?> </b>
	  </td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFCC99"><b>Ecart-Types</b></td>
      <td align="center" bgcolor="#99FFCC"></td>
      <td align="center" bgcolor="#FFFFCC">
	  <b><?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_x_auto=($data['x_auto'][$i]-$moy_x_auto)*($data['x_auto'][$i]-$moy_x_auto)+$sumdiff_x_auto; 	  
      $etype_x_auto=sqrt($sumdiff_x_auto/($nb_x_auto-1));
	  }
	  echo round($etype_x_auto,2) ;?>
      </b></td>
      <td align="center" bgcolor="#FFFFCC">
	  <b><?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_y_auto=($data['y_auto'][$i]-$moy_y_auto)*($data['y_auto'][$i]-$moy_y_auto)+$sumdiff_y_auto; 	  
      $etype_y_auto=sqrt($sumdiff_y_auto/($nb_y_auto-1));
	  }
	  echo round($etype_y_auto,2) ;?>
      </b>	  
	  </td>
      <td align="center" bgcolor="#FFFFCC"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_z_auto=($data['z_auto'][$i]-$moy_z_auto)*($data['z_auto'][$i]-$moy_z_auto)+$sumdiff_z_auto; 	  
      $etype_z_auto=sqrt($sumdiff_z_auto/($nb_z_auto-1));
	  }
	  echo round($etype_z_auto,2) ;?>
      </b></td>
      <td align="center" bgcolor="#FFFFCC"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_roll_auto=($data['roll_auto'][$i]-$moy_roll_auto)*($data['roll_auto'][$i]-$moy_roll_auto)+$sumdiff_roll_auto; 	  
      $etype_roll_auto=sqrt($sumdiff_roll_auto/($nb_roll_auto-1));
	  }
	  echo round($etype_roll_auto,2) ;?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_x_dev=($data['x_dev'][$i]-$moy_x_dev)*($data['x_dev'][$i]-$moy_x_dev)+$sumdiff_x_dev; 	  
      $etype_x_dev=sqrt($sumdiff_x_dev/($nb_x_dev-1));
	  }
	  echo round($etype_x_dev,2) ;?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_y_dev=($data['y_dev'][$i]-$moy_y_dev)*($data['y_dev'][$i]-$moy_y_dev)+$sumdiff_y_dev; 	  
      $etype_y_dev=sqrt($sumdiff_y_dev/($nb_y_dev-1));
	  }
	  echo round($etype_y_dev,2) ;?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_z_dev=($data['z_dev'][$i]-$moy_z_dev)*($data['z_dev'][$i]-$moy_z_dev)+$sumdiff_z_dev; 	  
      $etype_z_dev=sqrt($sumdiff_z_dev/($nb_z_dev-1));
	  }
	  echo round($etype_z_dev,2) ;?>
      </b></td>
      <td align="center" bgcolor="#99CCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_roll_dev=($data['roll_dev'][$i]-$moy_roll_dev)*($data['roll_dev'][$i]-$moy_roll_dev)+$sumdiff_roll_dev; 	  
      $etype_roll_dev=sqrt($sumdiff_roll_dev/($nb_roll_dev-1));
	  }
	  echo round($etype_roll_dev,2) ;?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_x_table=($data['x_table'][$i]-$moy_x_table)*($data['x_table'][$i]-$moy_x_table)+$sumdiff_x_table; 	  
      $etype_x_table=sqrt($sumdiff_x_table/($nb_x_table-1));
	  }
	  echo round($etype_x_table,2) ;?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_y_table=($data['y_table'][$i]-$moy_y_table)*($data['y_table'][$i]-$moy_y_table)+$sumdiff_y_table; 	  
      $etype_y_table=sqrt($sumdiff_y_table/($nb_y_table-1));
	  }
	  echo round($etype_y_table,2) ;?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_z_table=($data['z_table'][$i]-$moy_z_table)*($data['z_table'][$i]-$moy_z_table)+$sumdiff_z_table; 	  
      $etype_z_table=sqrt($sumdiff_z_table/($nb_z_table-1));
	  }
	  echo round($etype_z_table,2) ;?>
      </b></td>
      <td align="center" bgcolor="#FFCCFF"><b>
        <?php
	  for ($i=0;$i<$som;$i++) {
	  $sumdiff_roll_table=($data['roll_table'][$i]-$moy_roll_table)*($data['roll_table'][$i]-$moy_roll_table)+$sumdiff_roll_table; 	  
      $etype_roll_table=sqrt($sumdiff_roll_table/($nb_roll_table-1));
	  }
	  echo round($etype_roll_table,2) ;?>
      </b></td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFCC99"><b>Variances</b></td>
      <td align="center" bgcolor="#99FFCC"></td>
      <td align="center" bgcolor="#FFFFCC"><b><?php echo round(pow($etype_x_auto,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFFFCC"><b><?php echo round(pow($etype_y_auto,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFFFCC"><b><?php echo round(pow($etype_z_auto,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFFFCC"><b><?php echo round(pow($etype_roll_auto,2),2) ; ?></b></td>
      <td align="center" bgcolor="#99CCFF"><b><?php echo round(pow($etype_x_dev,2),2) ; ?></b></td>
      <td align="center" bgcolor="#99CCFF"><b><?php echo round(pow($etype_y_dev,2),2) ; ?></b></td>
      <td align="center" bgcolor="#99CCFF"><b><?php echo round(pow($etype_z_dev,2),2) ; ?></b></td>
      <td align="center" bgcolor="#99CCFF"><b><?php echo round(pow($etype_roll_dev,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFCCFF"><b><?php echo round(pow($etype_x_table,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFCCFF"><b><?php echo round(pow($etype_y_table,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFCCFF"><b><?php echo round(pow($etype_z_table,2),2) ; ?></b></td>
      <td align="center" bgcolor="#FFCCFF"><b><?php echo round(pow($etype_roll_table,2),2) ; ?></b></td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFCC99">&nbsp;</td>
      <td align="center" bgcolor="#99FFCC"></td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#FFFFCC">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#99CCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF">&nbsp;</td>
      <td align="center" bgcolor="#FFCCFF"></td>
      <td align="center" bgcolor="#FFCCFF"></td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
      <td align="center" bgcolor="#eeeeee">&nbsp;</td>
    </tr>
  </table>
  <?php

if (isset($_POST['enregistrer'])) { 

	$dateFract=serialize($_POST[dateFract]);
	$excluded=serialize($_POST[excluded]);
	$fraction=serialize($_POST[fraction]);
	$h_start=serialize($heure_start);
	$h_stop=serialize($heure_stop);
	$x_dev=serialize($_POST[x_dev]);
	$y_dev=serialize($_POST[y_dev]);
	$z_dev=serialize($_POST[z_dev]);
	$roll_dev=serialize($_POST[roll_dev]);
	$x_auto=serialize($_POST[x_auto]);
	$y_auto=serialize($_POST[y_auto]);
	$z_auto=serialize($_POST[z_auto]);
	$roll_auto=serialize($_POST[roll_auto]);	
	$x_table=serialize($_POST[x_table]);
	$y_table=serialize($_POST[y_table]);
	$z_table=serialize($_POST[z_table]);
	$roll_table=serialize($_POST[roll_table]);
	
		$sqlUpdateAll="UPDATE tomo SET excluded='$excluded'
		 WHERE (idStluc='$_SESSION[idStluc]' AND req='$_SESSION[req]' AND volcible='$_SESSION[volcible]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]')";
		
		//echo "<br>".$sqlUpdateAll;		
		
		myquery($sqlUpdateAll);
		die("<META HTTP-equiv='refresh' content='0;URL=index.php?toload=tomo_stats'>"); 		

}

?>
</form>