<html>
<head><title>DELETE</title>
</head>
<body>
<?php
$mysqlport=getenv('S2G_MYSQL_PORT');
$dbhost="localhost:".$mysqlport;
$dbuser='root';
$dbpass='';
$connect=mysqli_connect("localhost",$dbuser,$dbpass); 

mysqli_select_db($connect,'project');

$query_select="select Appno from biometric";
$result=mysqli_query($connect,$query_select);
?>
UPDATING PRESENT ADDRESS BY APPLICATION NUMBER:
<form name="update" method="POST" action="update2.php">
<select name="Appnow">
<?php
while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{?>
	<option><?php echo $row['Appno'];?></option>
<?php
}
?>
</select>
<input type="submit"  name="update" value="UPDATE">
</form>
</body>
</html>
