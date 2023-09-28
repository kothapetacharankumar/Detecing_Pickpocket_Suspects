<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Server_Add_Routes</title>
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
.style3 {color: #FF0033}
.style6 {color: #FFFFFF; font-weight: bold; }

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
          <h2 class="style3" style="color:#FF0033">Server Add Routes</h2>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
        <form id="form1" name="form1" method="post" action="S_Add_Routes1.jsp">
          <table width="517" border="0">
            <tr>
              <td width="139" height="36" bgcolor="#FF0000"><span class="style6">Route Number </span></td>
              <td width="360"><input type="text" name="rno" /></td>
            </tr>
            <tr>
              <td height="48" bgcolor="#FF0000"><span class="style6">Boarding Station</span></td>
              <td><input type="text" name="bs" /></td>
            </tr>
            <tr>
              <td height="42" bgcolor="#FF0000"><span class="style6">Exiting Station</span></td>
              <td><input type="text" name="es" /></td>
            </tr>
            <tr>
              <td height="54">&nbsp;</td>
              <td><input type="submit" name="Submit" value="Add Route Details" />
              <input type="reset" name="Submit2" value="Reset" /></td>
            </tr>
          </table>
          </form>
        <p class="pages"><a href="Server_Main.jsp">Back</a></p>
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
          <h2 class="star"><span>Server</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
            <li><a href="Server_Main.jsp">&raquo; Home</a></li>
			
			
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
