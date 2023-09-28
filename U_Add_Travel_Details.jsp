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
          <h2 class="style3" style="color:#FF0033">Add Boarding Station Travel Details !!! <span class="style9"></span></h2>
          <div class="clr"></div>
		  <div class="clr"></div>
        </div>
		
		 <%@page import ="java.util.*"%>
		 <%@ include file="connect.jsp" %>
		
    <%  	try 
	{String cno=null;
		 String uname=(String)application.getAttribute("user");
			String sql11="SELECT * FROM cdetails where uname='"+uname+"' ";
			Statement stmt11 = connection.createStatement();
			ResultSet rs11 =stmt11.executeQuery(sql11);
			if(rs11.next())
			{
			 cno=rs11.getString(4);
			} 
	   
	   
	   %>
		
        <form id="form1" name="form1" method="post" action="U_Add_Travel_Details1.jsp">
          <p>&nbsp;</p>
          <table width="486" border="2">
            <tr>
              <td width="189" height="34" bgcolor="#FF0000"><span class="style12">Select Route Number </span></td>
              <td width="279"><select id="s1" name="rno">
                      <option>--Select--</option>
                      <% 
							 String query="select Distinct(rno) FROM rdetails"; 
           					 Statement st=connection.createStatement();
				           ResultSet rs=st.executeQuery(query);
          
	   							while ( rs.next() )
	   						{
							 
								 %>
                      <option><%= rs.getString(1)%></option>
                      <%
							}
							%>
                    </select></td>
            </tr>
            <tr>
              <td height="34" bgcolor="#FF0000"><span class="style12">Select Boarding Station </span></td>
              <td><select id="s1" name="bs">
                      <option>--Select--</option>
                      <% 
							 String query1="select Distinct(ss) FROM rdetails"; 
           					 Statement st1=connection.createStatement();
				           ResultSet rs1=st1.executeQuery(query1);
          
	   							while ( rs1.next() )
	   						{
							 
								 %>
                      <option><%= rs1.getString(1)%></option>
                      <%
							}
							%>
                    </select></td>
            </tr>
            <tr>
              <td height="31" bgcolor="#FF0000"><span class="style12">Your Smart Card </span></td>
              <td><input type="text" name="cno" value=<%=cno%> readonly></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" value="Add Travel Details" />
              <input type="reset" name="Submit2" value="Reset" /></td>
            </tr>
          </table>
          <p>&nbsp;</p>
         <p><a href="User_Main.jsp">Back</a></p>
          <p>&nbsp;</p>
        </form>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
		  
		   <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		  
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
