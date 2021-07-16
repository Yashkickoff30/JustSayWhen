<HTML>
<HEAD>
<TITLE>Delete
</TITLE>
</HEAD>
<?php
$C=$_POST["ro"];
$mysqlport=getenv('S2G_MYSQL_PORT');
$dbhost="localhost:".$mysqlport;
$dbuser='root';
$dbpass='';
$conn=mysqli_connect("localhost",$dbuser,$dbpass);

mysqli_select_db($conn,'project');
$delete="delete from licence where Frn=$C";

if(mysqli_query($conn,$delete))

echo" record deleted successfully";

else

echo "not deleted";

mysqli_close($conn);
?>
<form name="del" method="POST" action="form2.html">
<input type="submit" value="home" name="value">
</form>
</html>
