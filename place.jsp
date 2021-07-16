<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title> DISPLAY</title>
<style>
    body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
  background-image: url("l.png");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
table {
  border-collapse: collapse;
   max-width: 80%;
}

th, td {
  text-align: center;
  padding: 25px;
  font-size: 20px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  text-decoration: none;
  padding: 15px 30px;
  text-align: center;
  font-size: 46px;
  cursor: pointer;
  margin: 25px;
}

.button:hover {
  background-color: green;
}

</style>
</head>

<body>
<%
	String sid=request.getParameter("show");
  String a="placed";
 try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
     String sql="Update orderplace set status=? where user_ref_id="+sid+"";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,a);
            int i = ps.executeUpdate();
    }
  catch(Exception e)
  {
    out.println(e);
  }
  %>
  <h1 style="font-size:6vw;">ORDER PLACED SUCCESSFULLY!</h1>
  <form action="home.html" method="post">
<button name="home" type="submit" value="<%=sid%>" class="button">HOME</button><br><br></form>
</body>
</html>
