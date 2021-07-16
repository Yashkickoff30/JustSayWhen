<HTML>
<HEAD>
<TITLE>Delete
</TITLE>
</HEAD>
<?php
$C=$_POST["ro"];
$name = $_POST["name"];
$mysqlport=getenv('S2G_MYSQL_PORT');
$dbhost="localhost:".$mysqlport;
$dbuser='root';
$dbpass='';
$conn=mysqli_connect("localhost",$dbuser,$dbpass);

mysqli_select_db($conn,'project');
$delete="update biometric set Presentadd = '$name' where Appno=$C";

if(mysqli_query($conn,$delete))

echo" record updated successfully";

else

echo "not updated";

mysqli_close($conn);
?>
<form name="del" method="POST" action="form1.html">
<input type="submit" value="home" name="value">
</form>
</html>
