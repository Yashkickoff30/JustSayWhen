<?php


$a=$_POST['n1'];

$b=$_POST['f1'];

$c=$_POST['d1'];

$d=$_POST['abn'];

$e=$_POST['r1'];


$f=$_POST['p2'];

$g=$_POST['mob'];

$h=$_POST['email'];

$i=$_POST['ok'];

$j=$_POST['exp'];

$k=implode(",",$_POST['check']);

$servername="localhost";

$username="root";

$password="";


$conn=new mysqli($servername,$username,$password);


mysqli_select_db($conn,"project");


$sql="INSERT INTO licence (Name,Frn,Dob,Abn,Resadd,Postadd,Mobno,Email,Applied,Exp,Type) VALUES('$a','$b','$c','$d','$e','$f','$g','$h','$i','$j','$k')";
 

if($conn->query($sql)===TRUE)

 echo "Inserted successfully\n";
else
 echo"Error:".$sql."<br />".$conn->error;


$conn->close();

?>
