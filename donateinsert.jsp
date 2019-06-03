<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<%@page import="java.util.*"  %>
<%@page import="java.text.SimpleDateFormat"  %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body>

<div id="container">

<div id="header">
<a href="#">E-Disaster Recovery and Relief</a>
</div>

<div id="menu">
<a href="Homepage.html">Home</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="addmissingperson.html">Rescue</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="adddonate.html">Donate</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="addvolunteers.jsp">Volunteer</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="adminlogin.html">Admin</a>
</div>

<div id="sidebar">
<h1>Welcome</h1>
</div>

<div id="main">
<p><b> <center>
	
	 <%
        try
        {
        int count=0;
        String uid="";
        Class.forName("com.mysql.jdbc.Driver");
        Connection   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_disaster","root","");
        
        Statement   stmt = con.createStatement();   //  con
        
        String t1 = request.getParameter("t1");
        String t2 = request.getParameter("t2");
        String t3 = request.getParameter("t3");
        String t4 = request.getParameter("t4");
        String t5 = request.getParameter("t5");
        String t6= request.getParameter("t6");
        
        
        
                
        String sqlstr = "insert into donatemaster(donorname,city,items,collectdate,collectby,remarks) values('" + t1 + "','" + t2  + "','" + t3 + "','" + t4 + "','" +  t5 +  "','" + t6 + "')";
        stmt.executeUpdate(sqlstr);
        
        out.println("<center><h2> Hello" );
        
        out.println("The Items donated by  ");
        out.println(t1);
        out.println(" has been successfully registered");
        out.println("<h2></center>");
        
                    
        out.println("<a href=adddonate.html>Donate</a>");
        out.println("<br><a href=viewcamps.jsp>View Camps</a>");
        sqlstr="select * from donatemaster";
        ResultSet rs=stmt.executeQuery(sqlstr);
        out.println("<h1>VIEW DONATIONS</h1>");
        out.println("<br><h4><center><font color=black><table border=1 cellspacing=1 cellpadding=1> <tr align=center bgcolor=yellow><td>S No</td><td>Donor Name</td> <td>City </td> <td>Items</td> "
        + "<td> Date</td><td>collected By</td><td>Remarks</td></tr>");
        
        while (rs.next())
        {
        out.println("<tr ><td>" + rs.getString("donateid")+ "</td>");
        out.println("<td>" + rs.getString("donorname")+ "</td>");
        out.println("<td>" + rs.getString("city")+ "</td>");
        out.println("<td>" + rs.getString("items")+ "</td>");
        out.println("<td>" + rs.getString("collectdate")+ "</td>");
        out.println("<td>" + rs.getString("collectby")+ "</td>");
        out.println("<td>" + rs.getString("remarks")+ "</td></tr>");
                                          
        }
        out.println("</table></center>");
        rs.close();
            stmt.close();
            con.close();
        }
        catch (Exception ex)
        {
            out.println(ex.getMessage());
            out.println(ex.toString());
        }
        %>
                            						
        
 
</form>                      
</div>

<div class="clear"></div>

<div id="footer">


<!-- Please do not change or delete these links. Read the license! Thanks. :-) -->


</div>

</div>

</body>
</html>
