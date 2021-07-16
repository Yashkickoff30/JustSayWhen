<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  padding: 24px 5px;
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
<body>
  <br>
<h1>DELETE YOUR ACCOUNT HERE!</h1>
<form name="form2" action="delete1.jsp" method="POST">
<h4><b>
<p>

</h4></b>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("delete");
String id=request.getParameter("r");
%>
<h2>Are you sure you want to delete?</h2>
<input type="hidden" value="<%=id%>" name="sas">
<button type="submit" class="button" value="<%=uid%>" name="id">YES</button></form>
<form action="home.html" method="post">
<button type="submit" class="button" value="12" name="vid">NO</button><br><br></form>
</body>
</html>