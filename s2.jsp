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
<h1>YOUR CHOSEN DATA'S ARE DISPLAYED BELOW!</h1>

<body>
<%
	String uid=request.getParameter("id");//userid

	String a=request.getParameter("1");
	String b=request.getParameter("2");
	String c=request.getParameter("3");
	String d=request.getParameter("4");
  String e=request.getParameter("5");
  String pp="Not_Placed";
  try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");
            
//insert
        PreparedStatement ps=conn.prepareStatement("insert into orderplace values(?,?,?,?,?,?,?)");
        ps.setString(1,uid);
        ps.setString(2,a);
        ps.setString(3,b);
        ps.setString(4,c);
        ps.setString(5,d);
        ps.setString(6,e);
        ps.setString(7,pp);
        int i=ps.executeUpdate();
 

      String sql="select * "+ " from catering1 full join catering2 ON catering1.service_id=catering2.food_id " +   " full join catering3 ON catering1.service_id=catering3.guest_id "+"where service_id="+a+"" ;
      ps=conn.prepareStatement(sql);
        ResultSet rs=ps.executeQuery();
        %>
                <H1>CATERING</H1>
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
        </TABLE><br><br><br><br>
<%
sql="select * "+ " from photography1 full join photography2 ON photography1.service_id=photography2.photo_id "+"where service_id="+b+"" ;
          ps=conn.prepareStatement(sql);
    rs=ps.executeQuery();
     %>
                <H1>PHOTOGRAPHY</H1>
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
        </TABLE><br><br><br><br>
        <%
        sql="select * "+ " from hall1 full join hall2 ON hall1.service_id=hall2.hall_id "+"where service_id="+c+"" ;
          ps=conn.prepareStatement(sql);
          rs=ps.executeQuery();
     %>         
                <H1>HALL</H1>
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
        </TABLE><br><br><br><br>
        <%
         sql="select * "+ " from orchestra1 full join orchestra2 ON orchestra1.service_id=orchestra2.ref_id "+"where service_id="+d+"" ;
          ps=conn.prepareStatement(sql);
    rs=ps.executeQuery();
    %>          
                <H1>ORCHESTRA</H1>
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
        </TABLE><br><br><br><br>
        <%
        sql="select * "+ " from decor1 full join decor2 ON decor1.service_id=decor2.decor_id "+"where service_id="+e+"" ;
          ps=conn.prepareStatement(sql);
    rs=ps.executeQuery();
    %>
                <H1>DECOR AND STYLING</H1>
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
        </TABLE><br><br><br><br>
        <%
}
	catch(Exception ff)
	{
		out.println(ff);
	}
%>
<h2>CLICK BELOW TO PLACE YOUR ORDER!</h2>
<form action="place.jsp" method="post">
<button name="show" type="submit" value="<%=uid%>" class="button">PLACE</button><br><br></form>
</body>
</html>