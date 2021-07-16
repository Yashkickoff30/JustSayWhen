<html>
<head>
<title>insert</title>
<style>

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
background-image: url("tyr.jpg");
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
      background-image: url("c.jpg");

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

<h1>ENTER YOUR PREFERENCES</h1>
<br>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("uname");
%>

<form name="form2" action="s1.jsp" method="POST">
<h4><b>
<p>
<h2>1.CATERING</h2><hr/>
<b>Enter your Food Preference:</b><br><br>
<input type="radio" name="fp" value="Veg" required>Veg</input>
<input type="radio" name="fp" value="Non_Veg" required>Non-Veg</input>
<br><br>
Enter your Food Type:<br><br>
<input type="radio" name="ft" value="North_Indian" required>North-Indian</input>
<input type="radio" name="ft" value="South_Indian" required>South-Indian</input>
<br><br>
Enter the no. of guests to serve:<br><br>
<input type="radio" name="gs" value="200_300" required>200 to 300</input>
<input type="radio" name="gs" value="500_1000" required>500 to 1000</input>
<input type="radio" name="gs" value="More_than_1000" required>More than 1000</input>
<br><br>
Enter your budget:<br><br>
<input type="text" name="cb" value=" " required></input>
<br><hr/>

<h2>2.PHOTOGRAPHY</h2><hr/>
Enter photography type:<br><br>
<input type="radio" name="tc" value="Traditional" required>Traditional</input>
<input type="radio" name="tc" value="Candid" required>Candid</input>
<br><br>
Enter your budget:<br><br>
<input type="text" name="bw" value=" " required></input>
<br><hr/>

<h2>3.HALL</h2><hr/>
Enter the no. of guests to accomodate:<br><br>
<input type="radio" name="g" value="200_300" required>200 to 300</input>
<input type="radio" name="g" value="500_1000" required>500 to 1000</input>
<input type="radio" name="g" value="More_than_1000" required>More than 1000</input>
<br><br>
Enter your budget:<br><br>
<input type="text" name="b2" value=" " required></input>
<br><hr/>

<h2>4.ORCHESTRA</h2><hr/>
Enter orchestra type:<br><br>
<input type="radio" name="t" value="Lightmusic" required>Light_music</input>
<input type="radio" name="t" value="Band" required>Band</input>
<br><br>
Enter your budget:<br><br>
<input type="text" name="b3" value=" " required></input>
<br><hr/>

<h2>5.DECOR AND STYLING</h2><hr/>
Enter decorations type:<br><br>
<input type="radio" name="tq" value="Simple" required>Simple</input>
<input type="radio" name="tq" value="High_end" required>High_end</input>
<br><br>
Enter your budget:<br><br>
<input type="text" name="b4" value=" " required></input>
<br><br>
<center><button type="submit" class="button" value="<%=uid%>" name="id">SUBMIT</button><br><br></center><br><br>
<center><button type="RESET" class="button" value="res" name="id">RESET</button><br><br></center><br><br>
<hr/>
</p></b></h4></form>
<form action ="display1234.jsp" method="post">
  <h2>SHOW ORDER DETAILS!</h2>
<br>
<button type="submit" class="button" value="<%=uid%>" name="show">SHOW</button>
</form>
</form>

<br>
<hr/>

</body>
</html>