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

<div id="sidebar">
<h1>Welcome</h1>
</div>

<div id="main">
<p><b> <center>
	
	  <form method="post" action="volinsert.jsp" /><b>
            <table><table border="2" width="500" cellspacing="10" cellpadding="5">
                    <thead BGCOLOR="#5CB3FF">
                        <tr>
                            <th colspan="2"> ADD NEW VOLUNTEERS</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                         <tr>
                            <td>Volunteer Name</td>
                            <td>
                                <input type="text" name="vname"/>
                            </td>
                         </tr>    
                        <tr>
                            <td>Camp Name</td><td>
                            <%
                             String s1="";
        out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"); 
        try
        {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_disaster","root","");
        
        Statement   stmt = con.createStatement();   //  con
        String sqlstr="select * from CampMaster";
        ResultSet rs=stmt.executeQuery(sqlstr);
        out.println("<select name=campname>");
        while (rs.next())
                       {
            s1=rs.getString("CampName");
            out.println("<option value='"+ s1 + "'>"); 
            out.println(s1 + "</option>");
                                  }
         out.println("</select>");
         stmt.close();
        rs.close();
               }catch(Exception ex){}
                            %>
                           
                        </tr>
                       <tr>
                            <td>Volunteer Type</td>
                            <td>
                                 <select name="vtype">
                                    <option value="Relief">Rescuer</option>
                                    <option value="Medical">Doctor</option>
                                    <option value="Shelter">Volunteer</option>
                                    <option value="NightCamp">First Aid</option>
                                    <option value="Rescue">Medical Assistant</option>
                                    <option value="Food">Food Incharge</option>
                                 </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Volunteer Address</td>
                            <td>
                                <input type="text" name="vadd" required>
                            </td>
                         </tr>
                            
                            <tr>
                            <td>Volunteer City</td>
                            <td>
                                <input type="text" name="vcity" required>
                            </td>
                         </tr>
                            
                            <tr>
                            <td>Volunteer Contact No</td>
                            <td>
                                <input type="text" name="vcont" pattern="[0-9]{10}" required>
                            </td>
                         </tr>
                            <tr>
                            <td>Volunteer Email</td>
                            <td>
                                <input type="email" name="vemail" required>
                            </td>
                         </tr>
                        <tr>
                           <td colspan="2"><center><INPUT TYPE="SUBMIT" /><INPUT TYPE="RESET" /></center></td>
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
