<H2 align="center">Gestion des incidents par le système ROSIS </H2>
<p align="center">&nbsp;</p>
<table width="600" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#CCCCCC">
    <td width="30">N°</td>
    <td width="200">Date de la d&eacute;couverte</td>
    <td >Incident traité</td>
    <td >Incident complété</td>
    <td >Date d'insertion</td>		
    <td ><div align="center">Afficher</div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
	<td>&nbsp;</td>
    <td>&nbsp;</td>	
    <td>&nbsp;</td>		
  </tr>
  <?php 
$query="SELECT * from rosis ORDER BY id DESC";
$result=myquery($query);
while ($req=mysql_fetch_array($result)) {
	?>
  <tr <?php if ($i % 2 == 0) {echo "bgcolor=#eeeeee";} else {echo "bgcolor=#ffffff";} ?>>
    <td><?php echo $req['id']; ?></td>
    <td><?php echo date("j F Y", $req['Date_discovery']) ; ?></td>
    <td align="center"><?php echo $req['traiter']; ?></td>
    <td align="center"><?php echo $req['Envoyer']; ?></td>		
    <td align="center"><?php if ($req[date_report]!=0) {echo date("j-M-Y", $req[date_report]); } ?></td>			
    <td><div align="center"><a href="index.php?toload=rosis_view&id=<?php echo $req[id]; ?>&mod=view"><img height="16" width="16" src="images/suiviImpact.png" border=0></a></div></td>
	<td></td>
  </tr>
  <?php $i++; } ?>
</table>
<p>&nbsp;</p>