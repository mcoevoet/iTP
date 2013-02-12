<? session_start(); ?>
<html>
<? $tps1 = microtime();  ?>
<head>

<title> Administration </title>
<?

include("_imgmenu.php");
?>
<link rel="stylesheet" type="text/css" href="style/style.css" /> 
</head>



<body>


<div align="center">
<IMG src="images/titre.jpg">
</div>
<div id='titre'>
<h1 align="center"> Login </h1>
</div>

<?
include("_infolog.php");
?>

<table align="center">
	<tr> <td class="menu" background="<? echo $imgmenu ?>" colspan="1"> Menu </td> </tr> 
	<tr>
	<td class="menu" background="<? echo $imgmenu ?>"> <a href="facteurs.php" > Gestion des facteurs </a> </td>
	</tr>
</table>

<br>
<div id="page">
<form action="login2.php" method="POST">

<div align="center">
<table border="1" bgcolor="#a1d8ff" align="center">
	<tr> <td colspan='2'> Veuillez vous logger </td></tr>
	<tr>
		<TD> USER :</TD> 
		<TD> <input type="text" name="user" ></TD> 
	</tr>
	<tr>
		<TD> PASSWORD :</TD> 
		<TD> <input type="password" name="password"></TD> 
	</tr>	
</table>

<input type="submit" value="Log in!">
</div>

</form>

</div>



<?
include ("_dateheurecenter.php");
?>


</body>

</html>