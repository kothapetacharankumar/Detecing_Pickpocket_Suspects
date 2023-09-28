<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Detect Pickpocket Suspects</title>
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
.style4 {color: #000000}
.style12 {color: #FF0000}
.style17 {color: #FF0000; font-weight: bold; }

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
          <li><a href="ServerLogin.jsp"><span>News Publisher </span></a></li>
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
          <h2 class="style2" style="color:#FF0033">View Detect Pickpocket Suspects<br />
          (Based On Today Trips and Transit Records)</h2>
          <div class="clr"></div>
		  <div class="post_content">
          <p>&nbsp;</p>
          <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              
              <td  width="159" height="45" valign="middle" bgcolor="#FFFF00" ><div align="center" class="style17">Passenger Name</div></td>
              <td  width="145" height="45" valign="middle" bgcolor="#FFFF00"><div align="center" class="style17"><strong>Smart Card Number</strong></div></td>
             
			
            </tr>
          <%@ include file="connect.jsp" %>
			<%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
			
			
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7,s77;
						int i=0,count=0;
						try 
						{
						
							Date now1 = new Date();
							SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
							String strCurrDate = sdf1.format(now1);
							
							
							String ed="No";
							String es="No";
						
						   	String query="select * from tdetails where  es!='"+es+"' and edt!='"+ed+"'  order by uname "; 
							
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								i=rs.getInt(1);
								s1=rs.getString(2); // uname
								s2=rs.getString(3); // cno
								s3=rs.getString(4); // rno
								s4=rs.getString(5); // bs
								s5=rs.getString(6); // es .. 
								s6=rs.getString(7); // bdt
							    s7=rs.getString(8); // edt ..
								
								s77=s7.substring(0,10);
								
								
			
								
								if(s77.equalsIgnoreCase(strCurrDate))
								{
								
                              
					%>
            <tr>
             
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <strong><a href="S_UProfile.jsp?uname=<%=s1%>"><%out.println(s1);%></a></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s2);%>
              </div></td>
             
			
			  </form>
			  
			  
            </tr>
            <% }
			      }
					
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><span class="style12"><a href="S_Detect_Pickpocket_Suspects.jsp">Detect Pickpocket Suspects</a></span></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468">&nbsp;</td>
            </tr>
          </table>
		 
				   
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
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
          <h2 class="star"><span>Server </span>Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="Server_Main.jsp">&raquo; Home </a></li>          
			<li><a href="ServerLogin.jsp">&raquo; Logout </a></li> 
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