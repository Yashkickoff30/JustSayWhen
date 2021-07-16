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
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
</style>
</head>
<h1>YOUR PREFERRED DATA'S ARE DISPLAYED BELOW!</h1>

<body>
  <form name="11" action="s2.jsp" method="post">
<%
	String uid=request.getParameter("id");//userid

	String a=request.getParameter("fp");
	String b=request.getParameter("ft");
	String c=request.getParameter("gs");
	String d=request.getParameter("cb");

	String f=request.getParameter("tc");
    String a1=request.getParameter("bw");

    String b1=request.getParameter("g");
    String c1=request.getParameter("b2");

    String d1=request.getParameter("t");
    String f1=request.getParameter("b3");

    String a2=request.getParameter("tq");
    String b2=request.getParameter("b4");

    String cid=null;
    String pid=null;
    String hid=null;
    String oid=null;   
     String did=null;
    String pp="Not_Placed";
  try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:yash","scott","tiger");

      String sql="select * "+ " from catering1 full join catering2 ON catering1.service_id=catering2.food_id " +   " full join catering3 ON catering1.service_id=catering3.guest_id where food_type='"+b+"' and food_preference='"+a+"' and budget<="+d+" and no_of_guests='"+c+"' " ;

			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs=ps.executeQuery();
            
             %>
            <h1>CATERING</h1>
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
        </TABLE><br><br><br><br><br>
        <h2>Enter your chosen Catering id:</h2>
        <input type="text" align="center" name="1" value=" " required></input>
        <br><br>
    <%

            sql="select * "+ " from photography1 full join photography2 ON photography1.service_id=photography2.photo_id where type='"+f+"' and budget<="+a1+"" ;

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
        </TABLE><br><br><br><br><br>
        <h2>Enter your chosen Photography id:</h2>
        <input type="text" align="center" name="2" value=" " required></input>
        <br><br>

    <%
      sql="select * "+ " from hall1 full join hall2 ON hall1.service_id=hall2.hall_id where no_of_guests='"+b1+"' and budget<="+c1+"" ;

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
        </TABLE>
            <h2>Enter your chosen Hall id:</h2>
        <input type="text" align="center" name="3" value=" " required></input>
        <br><br>

    <%
                  sql="select * "+ " from orchestra1 full join orchestra2 ON orchestra1.service_id=orchestra2.ref_id where type='"+d1+"' and budget<="+f1+"" ;
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
        </TABLE><br><br><br><br><br>
                <h2>Enter your chosen Orchestra id:</h2>
        <input type="text" align="center" name="4" value=" " required></input>
        <br><br>

    <%
  sql="select * "+ " from decor1 full join decor2 ON decor1.service_id=decor2.decor_id where decorations='"+a2+"' and budget<="+b2+"" ;

             ps=conn.prepareStatement(sql);
          rs=ps.executeQuery();

%>              <H1>DECOR AND STYLING</H1>
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
        </TABLE><br><br><br>
          <h2>Enter your chosen Decor id:</h2>
        <input type="text" align="center" name="5" value=" " required></input>
        <br><br>


<%}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<h2>CLICK BELOW TO VIEW YOUR CHOICES!</h2>
<button name="id" type="submit" value="<%=uid%>" class="button">SHOW</button><br><br></form>
</body>
</html>