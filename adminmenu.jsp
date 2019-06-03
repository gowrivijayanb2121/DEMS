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
	
	 <table border="2" width="500" cellspacing="10" cellpadding="5">
                    <thead BGCOLOR="#5CB3FF">
                        <tr>
                            <th colspan="3">ADMINISTRATOR MENU</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td align="center"><A HREF=addcamp.html><IMG SRC="pics/camp1.png" width="75" height="75"> </A><br>Add Camps</td>
                            <td align="center"><A HREF=viewcamps.jsp><IMG SRC="pics/viewcamp1.png" width="75" height="75"> </A><br>View Camps</td>
                            <td align="center"><A HREF=viewcampmap.jsp><IMG SRC="pics/map1.png" width="75" height="75"> </A><br>Camps Map View</td>
                        </tr>
                       <tr>
                            <td align="center"><A HREF=viewmiss.jsp><IMG SRC="pics/missingperson1.png" width="75" height="75"> </A><br>View Missing Personnel</td>
                            <td align="center"><A HREF=addrescue.jsp><IMG SRC="pics/rescue1.png" width="75" height="75"> </A><br>Rescue Update</td>
                            <td align="center"><A HREF=viewdonate.jsp><IMG SRC="pics/donate1.jpg" width="75" height="75"> </A><br>View Donations</td>
                        </tr>
                        <tr>
                        <td align="center"><A HREF=viewvolun.jsp><IMG SRC="pics/volun1.png" width="75" height="75"> </A><br>View Volunteers </td>
                            <td align="center"><A HREF=Homepage.html><IMG SRC="pics/logout1.png" width="75" height="75"> </A><br>Logout</td>
                            <!-- <td align="center"><A HREF=ViewRescue.jsp><IMG SRC="images/reminder1.jpg" width="75" height="75"> </A><br>View Rescue</td>-->
                        </tr>
                         <tr>
                        
                            
                            
                        </tr>
                        
                        
                    </tbody>
                </table>
               
                            						
        
  
</form>                      
</div>

<div class="clear"></div>

<div id="footer">


<!-- Please do not change or delete these links. Read the license! Thanks. :-) -->


</div>

</div>

</body>
</html>
