<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<html>
<head>
	<title> DISPLAY</title>
<style>
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

			String sql="select * from (select * "+" from (select * "+" from catering2 full join catering3 ON catering2.food_id=catering3.guest_id where food_type='"+b+"' and food_preference='"+a+"' and budget<="+d+" and no_of_guests='"+c+"') order by budget desc ) where rownum=1" ;
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs1=ps.executeQuery();
             out.println("aa");
             while(rs1.next())
            cid=rs1.getString(1);//cid

            sql="select * from (select * from (select * from photography2 where type='"+f+"' and budget<="+a1+")order by budget desc) where rownum=1" ;
             ps=conn.prepareStatement(sql);
            ResultSet rs2=ps.executeQuery();
             while(rs2.next())
             pid=rs2.getString(1);//pid

            sql="select * from (select * from (select * from hall2 where no_of_guests='"+b1+"' and budget<="+c1+")order by budget desc) where rownum=1" ;
             ps=conn.prepareStatement(sql);
            ResultSet rs3=ps.executeQuery();
             while(rs3.next())
            {
             hid=rs3.getString(1);//hid
            }

            sql="select * from (select * from (select * from orchestra2 where type='"+d1+"' and budget<="+f1+") order by budget desc) where rownum=1" ;
             ps=conn.prepareStatement(sql);
            ResultSet rs4=ps.executeQuery();
             while(rs4.next())
            oid=rs4.getString(1);//oid

            sql="select * from (select * from (select * from decor2 where decorations='"+a2+"' and budget<="+b2+")order by budget desc) where rownum=1" ;
             ps=conn.prepareStatement(sql);
            ResultSet rs5=ps.executeQuery();
             while(rs5.next())
            did=rs5.getString(1);//oid
            
//insert
        ps=conn.prepareStatement("insert into orderplace values(?,?,?,?,?,?,?)");
        ps.setString(1,uid);
        ps.setString(2,cid);
        ps.setString(3,pid);
        ps.setString(4,hid);
        ps.setString(5,oid);
        ps.setString(6,did);
        ps.setString(7,pp);
        int i=ps.executeUpdate();
        if(i!=0)
        out.println("INSERTED!!!");
        else
        out.println("nope!!");


}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<h2>CLICK BELOW TO VIEW YOUR PREFERED CHOICES!</h2>
<form action="display123.jsp" method="post">
<button name="show" type="submit" value="<%=uid%>" class="button">SHOW</button><br><br></form>
</body>
</html>