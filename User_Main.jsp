<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
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
.style2 {color: #FF0033}
.style3 {font-size: 18px}
.style4 {color: #000000}
.style6 {color: #000000; font-size: 16px; }
.style7 {
	font-size: 16px;
	color: #FF0000;
}
.style8 {font-size: 16px}
.style9 { color:#660066}
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
          <h2 class="style3" style="color:#FF0033">Welcome User <span class="style9"><%=(String)application.getAttribute("user")%></span></h2>
          <div class="clr"></div>
		  <div class="post_content">
          
          </div>
          <div class="clr"></div>
        </div>
        <p align="center" class="pages">
		<%@ include file="connect.jsp" %>
		
		<% try{
		 
		 
		    String uname=(String)application.getAttribute("user");
			String sql11="SELECT * FROM cdetails where uname='"+uname+"' ";
			Statement stmt11 = connection.createStatement();
			ResultSet rs11 =stmt11.executeQuery(sql11);
			if(rs11.next())
			{
			String cno=rs11.getString(4);
            %>
			
		<h2>Your Smartcard Number is:: <%=cno%> <h2>
			<%}
		}
	catch(Exception e)
	{
		out.print(e);
	} %>
		
		</p>
        <p align="center" class="pages"><img src="images/User.jpg" width="504" height="251" /></p>
        <p align="center" class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="User_Main.jsp">&raquo; Home </a></li>     
			<li><a href="UserProfile.jsp">&raquo;View Your Profile</a></li>
			<li><a href="U_Add_Smartcard.jsp">&raquo;Add Smart Card</a></li>
			<li><a href="U_View_Smart_Card_Details.jsp">&raquo;View Your Smart Card Details</a></li>
			<li><a href="U_Add_Travel_Details.jsp">&raquo;Add Boarding Stattion Details</a></li>
			<li><a href="U_View_Add_ExitingStation_Details.jsp">&raquo;View and Add Exiting Stattion Details</a></li>
			<li><a href="U_View_Travelled_Details.jsp">&raquo;View Your Travelled Details</a></li>
			
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
