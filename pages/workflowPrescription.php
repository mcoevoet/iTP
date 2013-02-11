<?php
include ("../_connexion.php"); 
   session_start(); 
?>
<html>
<head>
<title>Prescription médicale</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="../stylePrint.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body bgcolor="#FFFFFF" text="#000000">

<?php
// Récupération des données du patient
$queryPat="SELECT * FROM patient_admin INNER JOIN patient_treat ON patient_admin.idStluc=patient_treat.idStluc WHERE patient_admin.idStluc='$_SESSION[idPatStluc]' AND patient_treat.volcible='$_SESSION[volcible]' AND patient_treat.req='$_SESSION[req]' AND patient_treat.ptv='$_SESSION[ptv]' AND patient_treat.plan='$_SESSION[plan]' AND patient_treat.status='$_SESSION[statusPat]'";
$resultPat=mysql_query($queryPat);
$coordPat=mysql_fetch_array($resultPat);

//echo "TEST<pre>"; print_r($coordPat); echo "</pre>";

//recherche des infos autres sur le patient dans VISIR
	$link = sybase_connect('10.96.4.201:5000', 'visiruse', 'visirdb')
		or die("Impossible de se connecter !");           
		//print ("Connexion établie");
   
	sybase_select_db("visir");
	//Va falloir trouver qque chose pour récupérer le PIDno du patient dans Visir ...
	$pidno=$coordPat[idStluc];
	//requete sur les coordonnées -- (patient.Lastname='$coordPat[lastname]') AND AND (patient.Firstname='$coordPat[firstname]')
		$queryCOORD="SELECT patient.Tel1, patient.Tel2, patient.Tel3, patient.PersNo, patient.BirthDate FROM patient
			WHERE ( (patient.PIDno=$pidno))";
		//echo $queryCOORD;	   
		$requeteCOORD = sybase_query($queryCOORD, $link);
		
	//while($row=sybase_fetch_array($requeteCOORD)) {		
		$row=sybase_fetch_array($requeteCOORD);
			//echo "TEST<pre>"; print_r($row); echo "</pre>";							
			$tel1=$row[Tel1];
			$tel2=$row[Tel2];
			$tel3=$row[Tel3];
			$persno=$row[PersNo];
			//=$row[PIDno];
			$birthdate=$row[BirthDate];
			//$sex=$row[Sex];									
		
	//requete sur le REQNO					
		$queryREQ="SELECT * FROM requisition
			WHERE (requisition.PIDno=$pidno)";	   
		$requeteREQ = sybase_query($queryREQ, $link);
		
		while($line=sybase_fetch_array($requeteREQ)) {
		//$line=sybase_fetch_array($requeteREQ);
			$reqno=$line[ReqNo];
			$reqdate=$line[ReqDate];			
		}

	//requete sur la 1° date de traitement du booking
		$queryBOOK_treat="SELECT diary.bookdate, diary.booktime FROM diary
			WHERE ((diary.PIDno=) AND ((diary.location='SL25') OR (diary.location='SL75') OR (diary.location='SP18') OR (diary.location='TOM2') OR (diary.location='TOMO')) AND (diary.ReqNo=$reqno))";	   
		$requeteBOOK_treat = sybase_query($queryBOOK_treat, $link);															
		//while($treat=sybase_fetch_array($requeteBOOK_treat)) {					
		$treat=sybase_fetch_array($requeteBOOK_treat);
			$date1treat=$treat[0];
			$time1treat=$treat[1];	
		
	//requete sur la partie medicale
		$queryMED="SELECT targetvol.ReqDoct, targetvol.SimDoct, targetvol.Physicist, targetvol.Diag, targetvol.Region,
			targetvol.TreatType, targetvol.Intention, targetvol.Protocol, targetvol.Code1, targetvol.Code2, targetvol.Code3,
			targetvol.Code4, targetvol.Code5
		 FROM targetvol
			WHERE ((targetvol.PIDno=$pidno) AND (targetvol.ReqNo=$reqno))";	   
		$requeteMED = sybase_query($queryMED, $link);			
		//echo $queryMED ;									
		//while($med=sybase_fetch_array($requeteMED)) {					
		$med=sybase_fetch_array($requeteMED);
			$medecin=$med[ReqDoct];
			$assistant=$med[SimDoct];
			$physicien=$med[Physicist];
			$Diag=$med[Diag];					
			$Region=$med[Region];
			$type=$med[TreatType];
			$intention=$med[Intention];
			$protocole=$med[Protocole];
			$Tstage=$med[Code1];
			$Nstage=$med[Code2];
			$Mstage=$med[Code3];
			$stage=$med[Code4];
			$ptpn=$med[Code5];
				
	//requete sur la partie CodeDiag
		$queryDIAG="SELECT * FROM CodeDiag
			WHERE (CodeDiag.DiagCode='$Diag')";	   
		$requeteDIAG = sybase_query($queryDIAG, $link);																
		//while($co=sybase_fetch_array($requeteDIAG)) {
		$co=sybase_fetch_array($requeteDIAG);
			$DiagT=$co[1];						
	
	//requete sur la partie CodeRegion
		$queryREG="SELECT * FROM CodeRegion
			WHERE (CodeRegion.RegionCode='$Region')";	   
		$requeteREG = sybase_query($queryREG, $link);																
		//while($re=sybase_fetch_array($requeteREG)) {
		$re=sybase_fetch_array($requeteREG);
			$RegT=$re[RegionText];							

	sybase_close($link);
?>			
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td colspan="3" class="textprint" height="65"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="20%"><img src="../images/UCL.jpg" width="70" height="105"></td>
          <td><p><b><font size="3" face="Verdana, Arial, Helvetica, sans-serif">Universit&eacute; catholique de Louvain<br>
              </font></b> <font size="3"><b><font face="Verdana, Arial, Helvetica, sans-serif">Cliniques Universitaire Saint-Luc</font></b></font><br>
                  <font size="1">association sans but lucratif</font></p>
              <font size="2">SERVICE DE RADIOTHERAPIE ONCOLOGIQUE<br>
              DEPARTEMENT DE MEDECINE INTERNE </font><br>
          </td>
          <td width="10%" align="right"><img src="../images/Madonne.jpg" width="60" height="96"></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="3" class="textprint">Service de Radioth&eacute;rapie</td>
  </tr>
  <tr> 
    <td colspan="3" class="textprint">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="2" class="textprint"><b><font size="2">Prescription m&eacute;dicale 
      de: </font> 
      <?php echo $coordPat[lastname]." ".$coordPat[firstname]; ?>
      </b>&nbsp; </td>
    <td align="right" class="textprint" width="30%"><span class="textmain">ID 
      Visir: <?php echo $coordPat[idStluc]; ?>
      </span></td>
  </tr>
  <tr> 
    <td colspan="2" class="textprint"> 
      <? 
		if ($birthdate!="") {
		$yearnaiss=substr("$birthdate",6,5);		
		$age=date(Y)-trim($yearnaiss);
		echo "("; echo $age; echo " "; echo "ans - (Date de naissance: "; echo substr("$birthdate",0,11); echo ")";
		}		
		?>
    </td>
    <td class="textprint" align="right"> 
      <? if ($coordPat[spo]=="Oui") {
	  		echo SPO;
	 	 }
	  ?>
    </td>
  </tr>
  <tr>
    <td colspan="3" class="textprint"><div align="left">N° de réquisition: <? echo $reqno; ?> (Introduit le: <? echo $reqdate; ?>)
	    </div></td></tr>
  <tr> 
    <td colspan="3" class="textprint">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="3" class="textprint"> 
      <table width="431" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="68" class="textmain">Contacts: </td>
          <td width="57" class="textmain">Tel 1 :</td>
          <td width="306" class="textmain"> 
            <? echo $tel1 ?>
          </td>
        </tr>
        <tr> 
          <td width="68" class="textmain">&nbsp;</td>
          <td width="57" class="textmain">Tel 2 :</td>
          <td width="306" class="textmain"> 
            <? echo $tel2 ?>
          </td>
        </tr>
        <tr> 
          <td width="68" class="textmain">&nbsp;</td>
          <td width="57" class="textmain">Tel 3 :</td>
          <td width="306" class="textmain"> 
            <? echo $tel3 ?>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td colspan="3" class="textprint">&nbsp;</td>
  </tr>
  <tr align="center"> 
    <td colspan="3" class="textmain"> 
      <table width="600" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td class="textmain" colspan="2" bgcolor="#CCCCCC"><a class="TitreTablo">Coordonn&eacute;es m&eacute;dicales</a></td>
        </tr>       
        <tr> 
          <td class="textmain" width="165">&nbsp;</td>
          <td width="185" class="textmain">&nbsp;</td>
        </tr>
        <tr> 
          <td class="textmain" width="165" bgcolor="eeeeee">M&eacute;decin responsable</td>
          <td width="185" class="textmain" bgcolor="eeeeee"> 
            <? echo strtoupper($medecin) ;?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165">Physicien responsable</td>
          <td width="185" class="textmain"> 
            <? echo strtoupper($physicien) ;?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" bgcolor="eeeeee">Assistant responsable</td>
          <td width="185" class="textmain" bgcolor="eeeeee"> 
            <? echo strtoupper($assistant) ;?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" height="14">Pathologie</td>
          <td width="185" class="textmain" height="14"> 
            <? echo $msg['pathologie']?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" bgcolor="#000000"><img src="/Intranet/images/spacer.gif" width="1" height="1"></td>
          <td width="185" class="textmain" bgcolor="#000000"><img src="/Intranet/images/spacer.gif" width="1" height="1"></td>
        </tr>
        <tr> 
          <td class="textmain" width="165" height="14" bgcolor="eeeeee">T Stage</td>
          <td width="185" class="textmain" height="14" bgcolor="eeeeee"> 
            <? echo $Tstage ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" height="14">N Stage</td>
          <td width="185" class="textmain" height="14"> 
            <? echo $Nstage ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" height="14" bgcolor="eeeeee">M Stage</td>
          <td width="185" class="textmain" height="14" bgcolor="eeeeee"> 
            <? echo $Mstage ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" height="14">Stage</td>
          <td width="185" class="textmain" height="14"> 
            <? echo $stage ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" height="14" bgcolor="eeeeee">pT pN</td>
          <td width="185" class="textmain" height="14" bgcolor="eeeeee"> 
            <? echo $ptpn ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="165" bgcolor="#000000"><img src="/Intranet/images/spacer.gif" width="1" height="1"></td>
          <td width="185" class="textmain" bgcolor="#000000"><img src="/Intranet/images/spacer.gif" width="1" height="1"></td>
        </tr>
        <tr> 
          <td class="textmain" width="185" height="14">Diagnosis</td>
          <td width="365" class="textmain" height="14"> 
            <? echo $Diag ?>
            &nbsp; 
            <? echo $DiagT ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="185" height="14" bgcolor="eeeeee">Treatment 
            region</td>
          <td width="365" class="textmain" height="14" bgcolor="eeeeee"> 
            <? echo $Region ?>
            &nbsp; 
            <? echo $RegT ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="185" height="14">Treatment type</td>
          <td width="365" class="textmain" height="14"> 
            <? echo $type ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="185" height="14" bgcolor="eeeeee">Treatment 
            intention</td>
          <td width="365" class="textmain" height="14" bgcolor="eeeeee"> 
            <? echo $intention ?>
          </td>
        </tr>
        <tr> 
          <td class="textmain" width="185" height="14">Protocole</td>
          <td width="365" class="textmain" height="14"> 
            <? echo $protocole ?>
          </td>
        </tr>
      </table>
      
      <br>
      
      <table width="600" border="1" cellspacing="0" cellpadding="0" bordercolor="#CCCCCC">
        <tr> 
          <td colspan="2" width="400"> 
            <div align="center">Sites d'irradiations</div>
          </td>
          <td class="textmain" width="50" bordercolor="#CCCCCC"> 
            <div align="center">Ry.<font size="1">nt</font></div>
          </td>
          <td class="textmain" width="50" bordercolor="#CCCCCC"> 
            <div align="center">Dose / Fr. (Gy)</div>
          </td>
          <td class="textmain" width="50" bordercolor="#CCCCCC"> 
            <div align="center">Nbre de fractions</div>
          </td>
          <td class="textmain" width="50" bordercolor="#CCCCCC"> 
            <div align="center">D. tot. (Gy)</div>
          </td>
        </tr>
        
        <form action="workflowPrescription.php" method="post">
	        <?php 
	        if (isset($_POST[ok])) {
	        	//echo "AA<pre>"; print_r($_POST[prescription]); echo "</pre>";
	        	//$tmp=$_POST[prescription];
	        	//echo "ERT".$tmp[resume];
	        	//=str_replace('$_POST[prescription[resume]]' ,'\r\n',''); 
	        	$prescription=serialize($_POST['prescription']);
	        	$updatePrescr="UPDATE `patient_treat` SET prescription='$prescription' WHERE idStluc='$_SESSION[idPatStluc]' ";
	        	//echo $updatePrescr;
	        	mysql_query($updatePrescr);	
	        }
	        $queryPrescr="SELECT prescription FROM patient_treat WHERE idStluc='$_SESSION[idPatStluc]' AND volcible='$_SESSION[volcible]' AND req='$_SESSION[req]' AND ptv='$_SESSION[ptv]' AND plan='$_SESSION[plan]'";
	        //echo "<br>".$queryPrescr;
	        $resultPrescr=mysql_query($queryPrescr);
			$presTable=mysql_fetch_array($resultPrescr);
			//echo "<br>AA<pre>"; print_r($presTable); echo "</pre>";
			$prescription=unserialize($presTable[0]);
			//echo "<br>AA<pre>"; print_r($prescription); echo "</pre>";
			for ($i=1; $i<=5; $i++) {
	        ?>
	        <tr> 
	          <td class="textmain" width="15"> 
	            <div align="center"><b><?php echo $i; ?></b></div>
	          </td>
	          <td class="textmain" align="left"> 
	            <input type="text" name="<?php echo "prescription[description][".$i."]";?>" value="<?php echo $prescription['description'][$i]; ?>" style="width:300px"></input>
	          </td>
	          <td class="textmain" width="50"> 
	            <div align="center"> 
	              <input type="text" name="<?php echo "prescription[rayonnement][".$i."]";?>" value="<?php echo $prescription['rayonnement'][$i]; ?>" style="width:50px"></input>
	            </div>
	          </td>
	          <td class="textmain" width="50"> 
	            <div align="center"> 
	            	<input type="text" name="<?php echo "prescription[dose_fract][".$i."]";?>" value="<?php echo $prescription['dose_fract'][$i]; ?>" style="width:50px"></input>		            	
	            </div>
	          </td>
	          <td class="textmain" width="50" bordercolor="#CCCCCC"> 
	            <div align="center"> 
	            	<input type="text" name="<?php echo "prescription[nbre_fract][".$i."]";?>" value="<?php echo $prescription['nbre_fract'][$i]; ?>" style="width:50px"></input>	
	            </div>
	          </td>
	          <td class="textmain" width="50" bordercolor="#CCCCCC"> 
	            <div align="center"> 
	            	<input type="text" name="<?php echo "prescription[dose_tot][".$i."]";?>" value="<?php echo $prescription['dose_tot'][$i]; ?>" style="width:50px"></input>	
	        	</div>
	          </td>
	        </tr>
			<?php } ?>
			<tr>
				<td colspan="6" align="center"> 
            		<p><u>R&eacute;sum&eacute; de l'affection:</u></p>
              		<textarea name="prescription[resume]" rows="5" cols="60">
              			<?php echo ($prescription['resume']); ?>
              		</textarea>
          		</td>
			</tr>
		    <tr> 
		  	  	<td colspan="6"> 
		    	<div align="center"> <input class="inputButton" type="submit" border="0" name="ok" value="Sauver" title="Sauver"></div>
		   		</td>
		    </tr> 			
		</form>        
        
      </table>
      
      
      
      
      </td>
  </tr>     
  <tr> 
    <td colspan="3"> 
      <div align="center"> <a href="#" OnClick="javascript:window.print()"> Imprimer la page</a></div>
    </td>
  </tr>
</table>

</body>
</html>
<?php
mysql_close(); 
?>