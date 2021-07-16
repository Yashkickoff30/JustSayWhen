<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title> DISPLAY</title>
</head>
<body>
<%
String n="yash";
   try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
		String sql="select * from yash where name='"+n+"'";
		PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
			out.println(rs.getInt(1) + " " + rs.getString(2));
		}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>