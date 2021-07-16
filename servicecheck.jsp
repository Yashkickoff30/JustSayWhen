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
	String sid=request.getParameter("c11");
  String uid=request.getParameter("uname");
  String pass=request.getParameter("psw");
  String a="1";
  String b="2";
  String c="3";
  String d="4";
  String f="5";
  boolean flag=false;

  try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
      if(sid.compareTo(a)==0)
        {
           
          String sql="select * from cpass";
        PreparedStatement ps=conn.prepareStatement(sql);
                
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                String aa=rs.getString(1);
                String pass1=rs.getString(2);
                if((uid.compareTo(aa)==0)&&(pass.compareTo(pass1)==0)) 
                {

                  flag=true;   

                }

            }
          }
                if(sid.compareTo(b)==0)
        {
           
          String sql="select * from ppass";
        PreparedStatement ps=conn.prepareStatement(sql);
                
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                String aa=rs.getString(1);
                String pass1=rs.getString(2);
                if((uid.compareTo(aa)==0)&&(pass.compareTo(pass1)==0))  
                {

                  flag=true;   

                }

            }
          }
          if(sid.compareTo(c)==0)
        {
           
          String sql="select * from hpass";
        PreparedStatement ps=conn.prepareStatement(sql);
                
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                String aa=rs.getString(1);
                String pass1=rs.getString(2);
                if((uid.compareTo(aa)==0)&&(pass.compareTo(pass1)==0))  
                {

                  flag=true;   

                }

            }
          }
           if(sid.compareTo(d)==0)
        {
           
          String sql="select * from opass";
        PreparedStatement ps=conn.prepareStatement(sql);
                
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                String aa=rs.getString(1);
                String pass1=rs.getString(2);
                if((uid.compareTo(aa)==0)&&(pass.compareTo(pass1)==0)) 
                {

                  flag=true;   

                }

            }
          }
            if(sid.compareTo(f)==0)
        {
           
          String sql="select * from dpass";
        PreparedStatement ps=conn.prepareStatement(sql);
                
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                String aa=rs.getString(1);
                String pass1=rs.getString(2);
                if((uid.compareTo(aa)==0)&&(pass.compareTo(pass1)==0)) 
                {

                  flag=true;   

                }

            }
          }
            if(flag)
            {%>
              <h1>LOGGED IN SUCCESSFULLY!</h1>
              <form action="my acc.jsp" method="post">
              <input type="hidden" value="<%=uid%>" name="uname"></input>
              <button name="c11" class="button" value="<%=sid%>" type="submit">GO TO ACCOUNT
              </button></form>

            <%}
            else
            {%>
              <h1>INVALID USERNAME OR PASSWORD!</h1>
              <form action="service buttons.html" method="post">
              <button name="u" class="button" value="1" type="submit">BACK
              </button></form>
            <%}
    }
  catch(Exception t)
  {
    out.println(t);
  }
  %>