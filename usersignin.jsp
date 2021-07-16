<html>
<head>
<title>insert</title>
<style>

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
  background-image: url("23.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
form {border: 3px solid #f1f1f1;}
form{
      width:700px;
      padding:13px;
      margin:auto;
      font-size:20px;
      background-color: #BCD1DE;
} 

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 24px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 30%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}


}
</style>
</head>
<body>
<table name="title" border="0">
<tr>
<td>
<img src="neo.jpg" height="150" width="300"></td>
<td width="900">
<h1><font color="darkblue">EVENT</h1>
</font>
<p><font size="5">Event Organiser</p></font>
</td>
<td><marquee direction="down" scrollamount="2"><h2 style="color:green;">Toll-free Number<img src="hand.png" align="right" height="40" width="45"></marquee><h2>
<img src="logo.png" height="25" width="25" align="left"><p style="font-size:20;">1800-425-1660</p><h3><font color="darkpink">E-Mail:</font>
eventorganiser@gmail.com</h3>
<table name="socialmedia" border="1">
<tr>
<td><a href="https;//www.facebook.com"><img src="fb.png" height="60" width="60"></></td>
<td><a href="https://twitter.com"><img src="tweet.png" height="60" width="60"></a></td>
</table>
</td>
</tr>
</table>
<center><b><h2>USER SIGN UP</h2></b></center>
<br>

<form name="form2" action="usersignsuccess.jsp" method="POST">
<h4><b>
<p>
Enter your User Id:
<input type="text" align="center" name="cid" value=" " required></input>
<br><br>

Enter your Name:
<input type="text" align="center" name="cname" value=" " required></input>
<br><br>

Enter your Address:<br><br>
<textarea rows = "5" cols = "95" name = "cadd" required>
</textarea><br><br>

Enter your Mobile-No:
<input type="text" align="center" name="cmob" value=" " required></input>
<br><br>

Enter your password:<br>
<input type="text" align="center" name="pass" required></input>
<br><br>


Confirm password:<br>
<input type="text" align="center" name="cpass" value=" " required></input>
<br><br>
<center><button type="submit" class="button" name="s1" value="SUBMIT">SUBMIT</button><br><br>
<button type="reset" class="button" name="res1" value="RESET">RESET</button></center>
</form>


<br>
<hr/>

</body>
</html>