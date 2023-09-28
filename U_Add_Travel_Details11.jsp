<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add_Travel_Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style3 {font-size: 18px}
.style9 { color:#660066}
.style12 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Detecting Pickpocket Suspects <br />
from Large-Scale Public Transit Records</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="ServerLogin.jsp"><span>Server</span></a></li>
          <li><a href="UserLogin.jsp"><span>User </span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3" style="color:#FF0033">Added Travel Details !!! <span class="style9"></span></h2>
          <div class="clr"></div>
		  <div class="clr"></div>
        </div>
		
		<%@ include file="connect.jsp" %>
		<%@ page import="java.util.*"%>
		<%@ page import="java.text.*"%>
		<%@ page import="java.util.Date"%>
		
        <%
		
		try
		{
		
    						String uname=(String)application.getAttribute("user");
							String cno=(String)application.getAttribute("cno");
		
							String s1=request.getParameter("rno");
							String s2=request.getParameter("bs");
							String s3=request.getParameter("es");
							String s4=request.getParameter("cno");
							
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							Date now = new Date();
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
							
		
							Statement st=connection.createStatement();
							st.executeUpdate("insert into tdetails(uname,cno,rno,bs,es,dt) values('"+uname+"','"+s4+"','"+s1+"','"+s2+"','"+s3+"','"+dt+"') ");
		}
		catch(Exception ex)
		{
		out.println(ex);
		}
		
           %>
		 
		  <h2> Travel Details Added Successfully !!! </h2>
		   <p>&nbsp;</p>
		   <p><a href="User_Main.jsp">Back</a></p>
		 
      </div>
      <div class="sidebar">
        <div class="searchform">
          
		  
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="User_Main.jsp">&raquo; Home </a></li>     
			
            <li><a href="UserLogin.jsp">&raquo;Log Out </a></li>      
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
