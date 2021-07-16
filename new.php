<?php


$a=$_POST['appno'];

$b=$_POST['nameapp'];

$c=$_POST['fname'];

$d=$_POST['nation'];

$e=$_POST['blood'];

$f=$_POST['gender'];

$g=$_POST['height'];

$h=$_POST['month'];

$i=$_POST['day'];

$j=$_POST['year'];

$z=$i.$h.$j;

$k=($_POST['edu']);

$l=$_POST['status'];

$m=$_POST['RC'];

$n=$_POST['FCS'];

$o=$_POST['add1'];
$p=$_POST['add2'];
$check_msg = implode(", ", $_POST['check']);
$servername="localhost";

$username="root";

$password="";


$conn=new mysqli($servername,$username,$password);


mysqli_select_db($conn,"project");

$sql="INSERT INTO biometric (Appno,Name,Gname,Nationality,Bloodgroup,Gender,Height,Dob,Qualification,Status,Rcno,Fcsno,Presentadd,Permanentadd,Issues) VALUES ('$a','$b','$c','$d','$e','$f','$g','$z','$k','$l','$m','$n','$o','$p','$check_msg')";

 

if($conn->query($sql)===TRUE)

 echo "Updated\n";
else
 echo"Error:".$sql."<br />".$conn->error;


$conn->close();

?>
