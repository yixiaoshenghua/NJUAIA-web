<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tech-department1.aspx.cs" Inherits="members_Tech_department1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>NJUAIA</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link href="/CSS/layout.css" rel="stylesheet" type="text/css" media="all" />
<script src="/JS/jquery.min.js"></script>
<script src="/JS/jquery.backtotop.js"></script>
<script src="/JS/jquery.mobilemenu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper row1" style="background-image:url(/images/bg_1.jpg)">
    <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><font size="12"><a href="../index.aspx">NJUAIA</a></font></h1>
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
              <li><a href="#">welcome</a></li>
              <li><a href="#">personal</a></li>
          </ul>
      </div>
    </div>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active" ><a href="../index.html">Home</a></li>
      <li><a href="../aboutus/aboutus.aspx">About us</a></li>
      <li><a class="drop" href="../members.aspx">Members</a>
        <ul>
          <li><a href="../members/Presidium.aspx">Presidium</a></li>
          <li><a href="../members/Tech-department1.aspx">Tech-department</a></li>
		  <li><a href="../members/Org-department1.aspx">Org-department</a></li>
          <li><a href="../members/Propa-department1.aspx">Propa-department</a></li>
          <li><a href="../members/Secre-department1.aspx">Secre-department</a></li>
        </ul>
      </li>
      <li><a href="#">competitions</a></li>
      <li><a href="#">project</a></li>
      <li><a href="../photo.aspx">PhotoGraphy</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url();">
  <section id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="../aboutus/aboutus.aspx">Members</a></li>
    </ul>
    <!-- ################################################################################################ -->
    <h6 class="heading">Our team</h6>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
		<h1><font size="6"> 南京大学人工智能协会技术部</font></h1>
      <img class="imgr borderedbox inspace-5" src="../images/tech.jpg" alt="" style="width:120px; height:120px;">
      <p><br><font size="4">技术部是整个协会的技术骨干部门，要求成员具有较强的技术开发能力，为协会提供技术分享文章，与人工智能领域的专家学者交流合作，为会员解决技术问题，分有nlp组、CV组、数据挖掘组、区块链组。</font></p>
		<br>
		<br>
		<br>
		<br>
      <h1>Members</h1>
      <div id="comments">
        <h2>Introduction</h2>
        <ul>
          <li>
            <article>
              <header>
                <figure class="avatar"><asp:Image ID="img01" runat="server" alt="" style="width:100px; height:120px;" ImageUrl="~/images/dilireba02.png" /></figure>
                <address>
                <a href="#"><h5><font color="#000000">万盛华</font></h5></a>
                </address>
              </header>
              <div class="comcont">
                <p><asp:Label ID="memberIntro01" runat="server">技术部部长，南京大学地理与海洋科学学院地理信息科学系17级，熟悉多种开发语言，设计过小程序，游戏，网页等，对于机器学习和深度学习有着丰富的经验，参加过tencent实习训练营，南京智谷科技实习</asp:Label></p>
              </div>
            </article>
          </li>
          <li>
            <article>
              <header>
                <figure class="avatar"><img alt="" style="width:100px; height:120px;" src="../images/dilireba03.png" /></figure>
                <address>
                    &nbsp;<a href="#"><h5><font color="#000000">万奇峰</font></h5></a>
                </address>
              </header>
              <div class="comcont">
                <p>教授，毕业于美国华盛顿大学，现任职于南京大学国际地球系统科学研究所。研究方向为基于激光雷达数据的植被参数遥感反演，重点是利用激光雷达所获取的三维点云信息，快速、有效地定量反演森林冠层三维结构参数。郑光副教授于2015年入选国家科技部遥感中心评选的首批“遥感青年科技人才创新资助计划”，2016年6月起受聘于美国华盛顿大学森林资源与环境学院访问副教授。</p>
              </div>
            </article>
          </li>
          <li>
            <article>
              <header>
                <figure class="avatar"><asp:Image ID="img03" runat="server" alt="" style="width:100px; height:120px;" /></figure>
                <address>
                <a href="#"><h5><font color="#000000">梁相安</font></h5></a>
                </address>
              </header>
              <div class="comcont">
                <p><asp:Label ID="memberIntro03" runat="server"></asp:Label></p>
              </div>
            </article>
          </li>
        </ul>
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="Intro to Members1.html">1</a></li>
          <li><a href="Intro to Members2.html">2</a></li>
          <li><a href="Intro to Members3.html">3</a></li>
		  <li><a href="Intro to Members4.html">4</a></li>
          <li><a href="Intro to Members2.html">Next &raquo;</a></li>
        </ul>
      </nav>
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
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2019 - All Rights Reserved - <a href="../index.aspx">NJU AIA</a></p>
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
