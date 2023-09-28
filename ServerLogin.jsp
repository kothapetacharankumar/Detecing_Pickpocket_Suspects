<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>Server Login</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8" />
<LINK HREF="css/style.css" REL="stylesheet" TYPE="text/css" />
<LINK REL="stylesheet" TYPE="text/css" HREF="css/coin-slider.css" />
<SCRIPT TYPE="text/javascript" SRC="js/cufon-yui.js"></SCRIPT>
<SCRIPT TYPE="text/javascript" SRC="js/cufon-quicksand.js"></SCRIPT>
<SCRIPT TYPE="text/javascript" SRC="js/jquery-1.4.2.min.js"></SCRIPT>
<SCRIPT TYPE="text/javascript" SRC="js/script.js"></SCRIPT>
<SCRIPT TYPE="text/javascript" SRC="js/coin-slider.min.js"></SCRIPT>
<STYLE TYPE="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0033}
.style4 {color: #000000}
.style8 {font-size: 16px}
.style9 {font-size: 14px}
.style10 {color: #FF0000}
-->
</STYLE>
</HEAD>
<BODY>
<DIV CLASS="main">
  <DIV CLASS="header">
    <DIV CLASS="header_resize">
      <DIV CLASS="logo">
        <H1><A HREF="index.html" CLASS="style1">Detecting Pickpocket Suspects <br />
from Large-Scale Public Transit Records</A></H1>
      </DIV>
      <DIV CLASS="menu_nav">
        <UL>
          <LI CLASS="active"><A HREF="index.html"><SPAN>Home Page</SPAN></A></LI>
          <LI><A HREF="ServerLogin.jsp"><SPAN>Server</SPAN></A></LI>
          <LI><A HREF="UserLogin.jsp"><SPAN>User </SPAN></A></LI>
        </UL>
      </DIV>
      <DIV CLASS="clr"></DIV>
      <DIV CLASS="slider">
        <DIV id="coin-slider"> <A HREF="#"><IMG SRC="images/slide1.jpg" WIDTH="935" HEIGHT="293" ALT="" /> </A> <A HREF="#"><IMG SRC="images/slide2.jpg" WIDTH="935" HEIGHT="293" ALT="" /> </A> <A HREF="#"><IMG SRC="images/slide3.jpg" WIDTH="935" HEIGHT="293" ALT="" /> </A> </DIV>
        <DIV CLASS="clr"></DIV>
      </DIV>
      <DIV CLASS="clr"></DIV>
    </DIV>
  </DIV>
  <DIV CLASS="content">
    <DIV CLASS="content_resize">
      <DIV CLASS="mainbar">
        <DIV CLASS="article">
          <H2 CLASS="style2" STYLE="color:#FF0033">Server  Login  Page...!</H2>
          <DIV CLASS="clr"></DIV>
		  <DIV CLASS="post_content">
          <P>&nbsp;</P>
		  
                 
                <FORM ACTION="authentication.jsp?type=<%="server"%>" METHOD="post" id="leavereply">
        	
                  </p>
        	<p align="center"><img src="images/Login.png" width="243" height="128" /></p>
        	<TABLE WIDTH="353" BORDER="0" ALIGN="center">
			  <TR>
                <TD WIDTH="190" HEIGHT="30" CLASS="style1"><DIV ALIGN="center" CLASS="style13 style4 style8">Server Name </DIV></TD>
                <TD WIDTH="163"><DIV ALIGN="center"><INPUT TYPE="text" name="userid" /></DIV></TD>
              </TR>
              <TR>
                <TD HEIGHT="35" CLASS="style1"><DIV ALIGN="center" CLASS="style13 style4 style8">Password</DIV></TD>
                <TD><DIV ALIGN="center"><INPUT TYPE="password" name="pass" /></DIV></TD>
              </TR>
              <TR>
			    <TD>&nbsp;</TD>
                <TD HEIGHT="45">
                  
                  <DIV ALIGN="left">
                    <INPUT TYPE="image" name="imageField" id="imageField" SRC="images/submit.gif" CLASS="send" />
                  </DIV></TD></TR>
            </TABLE>
			<p>
		              
	              </p>
			<P>&nbsp;</P>
			
        </FORM>
		
		<p align="right" class="style3">&nbsp;</p>
                <p>&nbsp;</p>
		
		</DIV>
          <DIV CLASS="clr"></DIV>
        </DIV>
        <P CLASS="pages">&nbsp;</P>
      </DIV>
      <DIV CLASS="sidebar">
        <DIV CLASS="searchform">
          <FORM id="formsearch" name="formsearch" METHOD="post" ACTION="#">
            <SPAN>
            <INPUT name="editbox_search" CLASS="editbox_search" id="editbox_search" MAXLENGTH="80" VALUE="Search our ste:" TYPE="text" />
            </SPAN>
            <INPUT name="button_search" SRC="images/search.gif" CLASS="button_search" TYPE="image" />
          </FORM>
        </DIV>
        <DIV CLASS="clr"></DIV>
        <DIV CLASS="gadget">
          <H2 CLASS="star"><SPAN>Sidebar</SPAN> Menu</H2>
          <DIV CLASS="clr"></DIV>
          <UL CLASS="sb_menu">
            <LI><A HREF="index.html">&raquo; Home </A></LI>           
          </UL>
        </DIV>
      </DIV>
      <DIV CLASS="clr"></DIV>
    </DIV>
  </DIV>
  <DIV CLASS="footer">
    <DIV CLASS="footer_resize">
      <DIV STYLE="clear:both;"></DIV>
    </DIV>
  </DIV>
</DIV>
<DIV align=center></DIV>
</BODY>
</HTML>