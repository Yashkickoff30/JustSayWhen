<html>
<head><title>DELETE</title>
</head>
<body>
<?php
$DEL=$_POST["frnum"];
$mysqlport=getenv('S2G_MYSQL_PORT');
$dbhost="localhost:".$mysqlport;
$dbuser='root';
$dbpass='';
$connect=mysqli_connect("localhost",$dbuser,$dbpass); 

mysqli_select_db($connect,'project');

$query_select="select * from licence where Frn = $DEL";
$result=mysqli_query($connect,$query_select);
?>
<table border="5">
<tr>
	<th>NAME</th>
	<th>FRN</th>
	<th>DOB</th>
	<th>ABN</th>
	<th>RESIDENTIAL ADD</th>
	<th>POSTADD</th>
	<th>MOBILE NO</th>
	<th>E-MAIL</th>
	<th>APPLIED</th>
	<th>EXPERIENCE</th>
	<th>TYPE</th>

</tr>
<?php
$row=mysqli_fetch_array($result,MYSQLI_ASSOC) 
?>
<tr>
	    
	<td><?php echo $row['Name'];?></td>
	<td><?php echo $row['Frn'];?></td>
	<td><?php echo $row['Dob'];?></td>
	<td><?php echo $row['Abn'];?></td>
	<td><?php echo $row['Resadd'];?></td>
	<td><?php echo $row['Postadd'];?></td>
	<td><?php echo $row['Mobno'];?></td>
	<td><?php echo $row['Email'];?></td>
	<td><?php echo $row['Applied'];?></td>
	<td><?php echo $row['Exp'];?></td>
	<td><?php echo $row['Type'];?></td>
    
</tr>
</table>
<form name="del2" method="POST" action="delete3.php">
<input type="text" name="ro" value="<?php echo $DEL;?>" hidden>
<br><br><br><br><input type="submit" name="confirm" value="CONFIRM">
</form>
<form name="del2_home" action="form2.html">
<br><br><br><br><input type="submit" name="cancel" value="CANCEL">
</form>
</body>
</html>
