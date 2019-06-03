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
                out.println("<br><h1>VIEW CAMPS</h1>");

        Statement   stmt = con.createStatement();   //  con
        
        String dname = request.getParameter("dname");
        String location= request.getParameter("lname");
        String camptype= request.getParameter("camtype");
        String cname= request.getParameter("cname");
        String cno = request.getParameter("cno");
        String emailid= request.getParameter("emailid");
        
        
        
                
        String sqlstr = "insert into CampMaster(CampName,Location,CampType,ContactPerson,ContactNo,EmailId) values('" + dname + "','" + location + "','" + camptype + "','" + cname + "','" +  cno +  "','" + emailid + "')";
        stmt.executeUpdate(sqlstr);
        
             

        out.println("<center><h2> Hello" );
        
        out.println("The Camp ");
        out.println(dname);
        out.println(" has been successfully registered");
        out.println("<h2></center>");
        
                    
        out.println("<a href=addcamp.html>Add Another Camp</a>");
        out.println("<center><br><a href=viewcamps.jsp>View Camps</a></center>");
        
        ResultSet rs=stmt.executeQuery(sqlstr);
        
        
         
        while (rs.next())
        {
        out.println("<tr ><td >" + rs.getString("CampId")+ "</td>");
        out.println("<td>" + rs.getString("CampName")+ "</td>");
        out.println("<td>" + rs.getString("Location")+ "</td>");
        out.println("<td>" + rs.getString("CampType")+ "</td>");
        out.println("<td>" + rs.getString("ContactPerson")+ "</td>");
        out.println("<td>" + rs.getString("ContactNo")+ "</td>");
        out.println("<td>" + rs.getString("EmailId")+ "</td>");
                                          
        }
        out.println("</table></center>");
        rs.close();
        stmt.close();
            con.close();
        }
        catch (Exception ex)
        {
        }
        %>
                            						
        
 <a href="adminmenu.jsp"> <br>Admin Menu</a>
</form>                      
</div>

<div class="clear"></div>

<div id="footer">


<!-- Please do not change or delete these links. Read the license! Thanks. :-) -->


</div>

</div>

</body>
</html>
