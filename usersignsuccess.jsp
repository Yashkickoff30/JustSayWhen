<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	    body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
  background-image: url("l.png");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  text-decoration: none;
  padding: 15px 20px;
  text-align: center;
  font-size: 46px;
  cursor: pointer;
  margin: 25px;
}

.button:hover {
  background-color: green;
}
</style>

<body>
<%
   String sid=request.getParameter("cid");
   String sname=request.getParameter("cname");
   String add=request.getParameter("cadd");
   String phno=request.getParameter("cmob");
   String ft=request.getParameter("pass");
   
   
   try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
		PreparedStatement ps=conn.prepareStatement("insert into user1 values(?,?,?,?,?)");
		ps.setString(1,sid);
		ps.setString(2,sname);
		ps.setString(3,add);
		ps.setString(4,phno);
		ps.setString(5,ft);
		int i=ps.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<h1 style="font-size:6vw;">Record Submitted!</h1>
<form action=" " method="post">
	<br><br><br><br>
<a href="home.html"name="service" type="submit" value="1" class="button">Home</a>
</body>
</html>