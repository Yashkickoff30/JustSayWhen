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
  background-image: url("green.jpg");
  background-repeat: no-repeat;
  background-size: full-cover;
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
<h1>YOUR DATA'S ARE DISPLAYED BELOW!</h1>

<body>
<%
	String sid=request.getParameter("c11");
	String r=request.getParameter("uname");
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
			String sql="select * "+ " from catering1 full join catering2 ON catering1.service_id=catering2.food_id " +   " full join catering3 ON catering1.service_id=catering3.guest_id "+"where service_id="+r+"" ;
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs=ps.executeQuery();
		    %>
		            <TABLE BORDER="1" align="center">
            <TR>
                <TH>SERVICE ID</TH>
                <TH>SERVICE NAME</TH>
                <TH>ADDRESS</TH>
                <TH>PHONE NO</TH>
                <TH>FOOD TYPE</TH>
                <TH>FOOD PREFERENCE</TH>
                <TH>NO OF GUESTS</TH>
                <TH>AVAILABILITY</TH>
                <TH>BUDGET</TH>

            </TR>
            <% while(rs.next())
            { %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getString(9) %></TD>
                <TD> <%= rs.getString(10) %></TD>
                <TD> <%= rs.getString(11) %></TD>
            </TR>
            <% } %>
        </TABLE>
		<% } %>
		<%
		if(sid.compareTo(b)==0)
		 {
		 	String sql="select * "+ " from photography1 full join photography2 ON photography1.service_id=photography2.photo_id "+"where service_id="+r+"" ;
		 			PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		 %>
		            <TABLE BORDER="1" align="center">
            <TR>
                <TH>SERVICE ID</TH>
                <TH>SERVICE NAME</TH>
                <TH>ADDRESS</TH>
                <TH>PHONE NO</TH>
                <TH>TYPE</TH>
                <TH>BUDGET</TH>

            </TR>
            <% while(rs.next())
            { %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></TD>
            </TR>
            <% } %>
        </TABLE>
		<% } %>
		<%
		if(sid.compareTo(c)==0)
		{
			String sql="select * "+ " from hall1 full join hall2 ON hall1.service_id=hall2.hall_id "+"where service_id="+r+"" ;
					PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		 %>
		            <TABLE BORDER="1" align="center">
            <TR>
                <TH>SERVICE ID</TH>
                <TH>SERVICE NAME</TH>
                <TH>ADDRESS</TH>
                <TH>PHONE NO</TH>
                <TH>PINCODE</TH>
                <TH>NO OF GUESTS</TH>
                <TH>BUDGET</TH>

            </TR>
            <% while(rs.next())
            { %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getString(8) %></TD>

            </TR>
            <% } %>
        </TABLE>
		<% } %>
		<%
		 if(sid.compareTo(d)==0)
		 {
		 	String sql="select * "+ " from orchestra1 full join orchestra2 ON orchestra1.service_id=orchestra2.ref_id "+"where service_id="+r+"" ;
		 			PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		%>
		            <TABLE BORDER="1" align="center">
            <TR>
                <TH>SERVICE ID</TH>
                <TH>SERVICE NAME</TH>
                <TH>ADDRESS</TH>
                <TH>PHONE NO</TH>
   				<th>TYPE</th>
                <TH>BUDGET</TH>

            </TR>
            <% while(rs.next())
            { %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></TD>

            </TR>
            <% } %>
        </TABLE>
		<% } %>
		<%
		if(sid.compareTo(f)==0)
		 {
		 	String sql="select * "+ " from decor1 full join decor2 ON decor1.service_id=decor2.decor_id "+"where service_id="+r+"" ;
		 			PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		%>
		            <TABLE BORDER="1" align="center">
            <TR>
                <TH>SERVICE ID</TH>
                <TH>SERVICE NAME</TH>
                <TH>ADDRESS</TH>
                <TH>PHONE NO</TH>
   				<th>DECORATIONS</th>
                <TH>BUDGET</TH>

            </TR>
            <% while(rs.next())
            { %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></TD>

            </TR>
            <% } %>
        </TABLE>
		<% } %>
		<%}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<h2>CLICK HERE TO UPDATE YOUR DETAILS!</h2>
<form action="update1.jsp" method="post">
<input type="hidden" value="<%=r%>" name="uid"></input>
<button name="update" type="submit" value="<%=sid%>" class="button">UPDATE</button><br><br></form>
<h2>CLICK HERE TO DELETE YOUR ACCOUNT</h2>
<form action="delete.jsp" method="post">
<input type="hidden" value="<%=r%>" name="r"></input>
<button name="delete" type="submit" value="<%=sid%>" class="button">DELETE</button></form>
<h2>GO TO HOME</h2>
<form action="home.html" method="post">
<button name="home" type="submit" value="1" class="button">HOME</button></form>
</body>
</html>