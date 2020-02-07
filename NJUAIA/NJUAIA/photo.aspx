<%@ Page Language="C#" AutoEventWireup="true" CodeFile="photo.aspx.cs" Inherits="photo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>NJUAIA</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" media="all" />
<script src="JS/jquery.min.js"></script>
<script src="JS/jquery.backtotop.js"></script>
<script src="JS/jquery.mobilemenu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="wrapper row1">
    <div class="wrapper row1" style="background-image:url(/images/bg_1.jpg)">
    <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><font size="12"><a href="index.aspx">NJUAIA</a></font></h1>
        <br />
        <br />
      <p><font size="5">Join us and find yourself!</font></p>
    </div>
    <!-- ################################################################################################ -->
  </header>

<!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
      <div id="topbar" class="hoc clear">
        <div class="fl_right">
          <ul>
              <li><a href="#"><i class="fa fa-home"></i></a></li>
              <li><a href="../login/login.aspx">Login</a></li>
              <li><a href="../signup/signup1.aspx">Signup</a></li>
          </ul>
      </div>
    </div>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active" ><a href="index.html">Home</a></li>
      <li><a href="aboutus/aboutus.aspx">About us</a></li>
      <li><a class="drop" href="../members.aspx">Members</a>
        <ul>
          <li><a href="members/Presidium.aspx">Presidium</a></li>
          <li><a href="members/Tech-department1.aspx">Tech-department</a></li>
		  <li><a href="members/Org-department1.aspx">Org-department</a></li>
          <li><a href="members/Propa-department1.aspx">Propa-department</a></li>
          <li><a href="members/Secre-department1.aspx">Secre-department</a></li>
        </ul>
      </li>
      <li><a href="#">competitions</a></li>
      <li><a href="#">project</a></li>
      <li><a href="photo.aspx">PhotoGraphy</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>
        
<!-- ################################################################################################ -->
        <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <div id="gallery">
        <figure>
          <header class="heading">Fun Goes Here</header>
          <ul class="nospace clear">
            <li class="one_quarter first"><a href="#"><img src="/images/1.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/2.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/3.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/4.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter first"><a href="#"><img src="/images/5.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/6.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/7.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/8.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter first"><a href="#"><img src="/images/9.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/10.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/11.jpg" alt="" style="width:240px; height:240px;"></a></li>
            <li class="one_quarter"><a href="#"><img src="/images/12.jpg" alt="" style="width:240px; height:240px;"></a></li>
          </ul>
          <figcaption>More Description Goes Here</figcaption>
        </figure>
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="photography1.html">1</a></li>
          <li><a href="photography2.html">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li class="current"><strong>7</strong></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">14</a></li>
          <li><a href="#">15</a></li>
          <li><a href="photography2.html">Next &raquo;</a></li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
    <!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay" style="background-image:url('images/demo/backgrounds/03.png');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <h6 class="heading">More information</h6>
      <ul class="nospace btmspace-30 linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          Xianlin Street  163th, Nanjing, 210023
          </address>
        </li>
        <li><i class="fa fa-phone"></i> +86 188 1621 4188</li>
        <li><i class="fa fa-envelope-o"></i> njuaia@126.com</li>
      </ul>
    </div>
 
    <!-- ################################################################################################ -->
  </footer>
</div>
    <!-- ################################################################################################ -->

        <div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2019 - All Rights Reserved - <a href="index.aspx">NJU AIA</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
        <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="../JS/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="../JS/custom.js"></script>
    </form>
</body>
</html>
