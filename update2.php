<html>
<head><title>DELETE</title>
</head>
<body>
<?php
$DEL=$_POST["Appnow"];
$mysqlport=getenv('S2G_MYSQL_PORT');
$dbhost="localhost:".$mysqlport;
$dbuser='root';
$dbpass='';
$connect=mysqli_connect("localhost",$dbuser,$dbpass); 

mysqli_select_db($connect,'project');

$query_select="select * from biometric where Appno = $DEL";
$result=mysqli_query($connect,$query_select);
?>
<table border="5">
<tr>
	<th>Appno</th>
	<th>Name</th>
	<th>Gname</th>
	<th>Nationality</th>
	<th>Bloodgroup</th>
	<th>Gender</th>
	<th>Height</th>
	<th>Dob</th>
	<th>Qulaification</th>
	<th>Status</th>
	<th>Rcno</th>
	<th>Fcsno</th>
	<th>Presentadd</th>	
	<th>Permanentadd</th>
	<th>Issues</th>			
</tr>
<?php
$row=mysqli_fetch_array($result,MYSQLI_ASSOC)
?>
<tr>
	    
	<td><?php echo $row['Appno'];?></td>
	<td><?php echo $row['Name'];?></td>
	<td><?php echo $row['Gname'];?></td>
	<td><?php echo $row['Nationality'];?></td>
	<td><?php echo $row['Bloodgroup'];?></td>
	<td><?php echo $row['Gender'];?></td>
	<td><?php echo $row['Height'];?></td>
	<td><?php echo $row['Dob'];?></td>
	<td><?php echo $row['Qualification'];?></td>
	<td><?php echo $row['Status'];?></td>
	<td><?php echo $row['Rcno'];?></td>
	<td><?php echo $row['Fcsno'];?></td>	
	<td><?php echo $row['Presentadd'];?></td>
	<td><?php echo $row['Permanentadd'];?></td>
	<td><?php echo $row['Issues'];?></td>		
    
</tr>
</table>
<form name="del2" method="POST" action="update3.php">
<input type="text" name="ro" value="<?php echo $DEL;?>" hidden><br>
Enter altered Present Address:<br>
<input type="text" name="name" ><br>
<br><br><br><br><input type="submit" name="confirm" value="CONFIRM">
</form>
<form name="del2_home" action="form1.html">
<br><br><br><br><input type="submit" name="cancel" value="CANCEL">
</form>
</body>
</html>
