<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title> DELETE</title>
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
<h1>YOUR RECORD IS SUCCESSFULLY DELETED!</h1>

<body>
<%
	String sid=request.getParameter("id");
	String r=request.getParameter("sas");
	String a="1";
	String b="2";
	String c="3";
	String d="4";
	String f="5";
  try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
		if(sid.compareTo(a)==0)
		{
			String sql="delete from catering3 where guest_id="+r+"";
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs=ps.executeQuery();
            sql="delete from catering2 where food_id="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            sql="delete from catering1 where service_id="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            sql="delete from cpass where cid="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();

		}
		if(sid.compareTo(b)==0)
		 {
            String sql="delete from photography2 where photo_id="+r+"";
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            sql="delete from photography1 where service_id="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            sql="delete from ppass where pid="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
        }
		if(sid.compareTo(c)==0)
		       {
            String sql="delete from hall2 where hall_id="+r+"";
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            sql="delete from hall1 where service_id="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            sql="delete from hpass where hid="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
        }
		 if(sid.compareTo(d)==0)
		             {
            String sql="delete from orchestra2 where ref_id="+r+"";
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            sql="delete from orchestra1 where service_id="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            sql="delete from opass where oid="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
        }
		if(sid.compareTo(f)==0)
		             {
            String sql="delete from decor2 where decor_id="+r+"";
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            sql="delete from decor1 where service_id="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            sql="delete from dpass where did="+r+"";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
        }
		}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<h2>GO TO HOME</h2>
<form action="home.html" method="post">
<button name="home" type="submit" value="1" class="button">HOME</button></form>
</body>
</html>