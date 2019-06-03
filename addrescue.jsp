<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<%@page import="java.util.*"  %>
<%@page import="java.text.SimpleDateFormat"  %>
<!--
 
-->
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

<div>
<b> <center>
	
	  <form method="post" action="volinsert.jsp" /><b>
            <table><table border="2" width="500" cellspacing="10" cellpadding="5">
                    <thead BGCOLOR="dodgerblue">
                        <tr>
                            <th colspan="7"> RESCUE PERSONS</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_disaster","root","");
        Statement   stmt = con.createStatement();   //  con
        String sqlstr="select * from personmaster where Status like 'Missing'";
        ResultSet rs=stmt.executeQuery(sqlstr);
        out.println("<h1><B>UPDATE RESCUED </h1>");
        out.println("<br><h4><center><font color=black><table border=1 cellspacing=1 cellpadding=1> <tr align=center bgcolor=yellow><td>Person Id</td><td>Name</td> <td>Location</td> <td>Contact Person</td> "
        + "<td> Phone </td><td>Email Id</td></tr>");
        
        String st1="",emailid="";
        
        while (rs.next())
        {
        st1 = rs.getString("PersonId");
        out.println("<tr ><td >" + st1 + "</td>");
        out.println("<td>" + rs.getString("PersonName")+ "</td>");
        out.println("<td>" + rs.getString("Area")+ "</td>");
        out.println("<td>" + rs.getString("ContactPerson")+ "</td>");
        out.println("<td>" + rs.getString("Phone")+ "</td>");
        emailid=rs.getString("EmailId");
        out.println("<td>" + emailid + "</td>");
        }
        out.println("</table></center>");
        %>
         </tbody>
         </table>
         <Center><a href="adminmenu.jsp"><br> Admin Menu</a>
</form>                      
                                                  
                   
</div>

<div class="clear"></div>

<div id="footer">


<!-- Please do not change or delete these links. Read the license! Thanks. :-) -->


</div>

</div>

</body>
</html>
