<script type="text/javascript">
function showPopup(url) {
newwindow=window.open(url,'name','height=350,width=520,top=200,left=300,resizable');
if (window.focus) {newwindow.focus()}
}
</script>

<H2> Corps Médical </H2>
<?
$list = "1";
include('pages/contacts_list.php');
?>

<H2> Equipe Physique </H2>
<?
$list = "2";
include('pages/contacts_list.php');
?>

<H2> Infirmières </H2>
<?
$list = "3";
include('pages/contacts_list.php');
?>
<br>
<H2> Equipe Technique </H2>
<?
$list = "4";
include('pages/contacts_list.php');
?>

<H2> Equipe Secrétaire </H2>
<?
$list = "5";
include('pages/contacts_list.php');
?>
