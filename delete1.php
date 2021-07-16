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

$query_select="select Frn from licence";
$result=mysqli_query($connect,$query_select);
?>
DELETING THE RECORDS BY FISHERIES REGISTRATION NUMBER:
<form name="delete" method="POST" action="delete2.php">
<select name="frnum">
<?php
while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{?>
	<option><?php echo $row['Frn'];?></option>
<?php
}
?>
</select>
<input type="submit"  name="delete" value="DELETE">
</form>
</body>
</html>
