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

</style>
</head>
<body>
<br>
<h1>UPDATE YOUR DETAILS HERE!</h1>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String sid=request.getParameter("update");
String uid=request.getParameter("uid");
%>
<form name="form2" action="update.jsp" method="POST">
<h4><b>
<p>

Enter your new Address:<br><br>
<textarea rows = "5" cols = "95" name = "cadd" required>
</textarea><br><br>

Enter your new Mobile-No:
<input type="text" align="center" name="cmob" value=" " required></input>
<br><br>

Enter your new budget:<br>
<input type="text" name="cb" value=" "></input>
<br><br> </p>
</h4></b>
<hr/><br>
<input type="hidden" value="<%=uid%>" name="uid">
<button type="submit" class="button" value="<%=sid%>" name="update">SUBMIT</button>
</form>
</body>
</html>