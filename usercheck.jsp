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
<br><br><br><br>

<body>
<%
	String sid=(String)request.getParameter("uname");
  String pass=(String)request.getParameter("psw");


  try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
      
        String sql="select * from user1 ";
        PreparedStatement ps=conn.prepareStatement(sql);
                
            ResultSet rs=ps.executeQuery();
            boolean flag=false;
            while(rs.next())
            {
                String a=(String)rs.getString(1);
                String pass1=(String)rs.getString(5);

                if((sid.compareTo(a)==0)&&(pass.compareTo(pass1)==0))
                {

                  flag=true;   

                }

            }
            if(flag)
            {%>
              <h1>LOGGED IN SUCCESSFULLY!</h1>
              <form action="userselect.jsp" method="post">
              <button name="uname" class="button" value="<%=sid%>" type="submit">GO TO ACCOUNT
              </button></form>

            <%}
            else
            {%>
              <h1>INVALID USERNAME OR PASSWORD!</h1>
              <form action="userlogin.jsp" method="post">
              <button name="u" class="button" value="1" type="submit">BACK
              </button></form>
            <%}
    }
  catch(Exception t)
  {
    out.println(t);
  }
  %>
