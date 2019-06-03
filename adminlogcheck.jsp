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
       
        
        
        
        String t1 = request.getParameter("t1");
        String t2= request.getParameter("t2");
               
        if ( (t1.equals("admin"))     && (t2.equals("admin")))
        {
            out.println("Admin Login Success! cilck on Link to Proceed!!!");
            out.println("<br><p><br><a href=adminmenu.jsp>Admin Menu</a>");
        }else
        {
            out.println("Admin Login Failed! Try Again!!!");
            out.println("<br><a href=adminlogin.html>Amind Login</a>");
        }
                    
        
        
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
