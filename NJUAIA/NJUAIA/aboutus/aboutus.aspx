<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus_aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Basic -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
 
     <!-- Site Metas -->
    <title>AIA-NJU | ABOUT US</title>  
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    
    <link href="../CSS/layout.css" rel="stylesheet" type="text/css" media="all" />
    <script src="../JS/jquery.min.js"></script>
    <script src="../JS/jquery.backtotop.js"></script>
    <script src="../JS/jquery.mobilemenu.js"></script>
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css"/>
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css"/>
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css"/>
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css"/>

    <!-- Modernizer for Portfolio -->
    <script src="../JS/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="host_version">
    	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Customer Login</h4>
			</div>
			<div class="modal-body customer-box row">
				<div class="col-md-12">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
						<li><a href="#Registration" data-toggle="tab">Registration</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane active" id="Login">
							<form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email1" placeholder="Name" type="text"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="exampleInputPassword1" placeholder="Email" type="email"/>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-light btn-radius btn-brd grd1">
										Submit
									</button>
									<a class="for-pwd" href="javascript:;">Forgot your password?</a>
								</div>
							</div>
							</form>
						</div>
						<div class="tab-pane" id="Registration">
							<form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" placeholder="Name" type="text"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email" placeholder="Email" type="email"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="mobile" placeholder="Mobile" type="email"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="password" placeholder="Password" type="password"/>
								</div>
							</div>
							<div class="row">							
								<div class="col-sm-10">
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										Save &amp; Continue
									</button>
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										Cancel</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	  </div>
	</div>

    <!-- LOADER -->
	<div id="preloader">
		<div class="loading">
			<div class="finger finger-1">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-2">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-3">
				<div class="finger-item">
				  <span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-4">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="last-finger">
				<div class="last-finger-item"><i></i></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

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

      <div id="topbar" class="hoc clear">
        <div class="fl_right">
          <ul>
              <li><a href="#"><i class="fa fa-home"></i></a></li>
              <li><a href="/login/login.aspx">log in</a></li>
              <li><a href="/signup/signup1.aspx">sign up</a></li>
          </ul>
      </div>
    </div>
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active" ><a href="index.html">Home</a></li>
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
      <li><a href="/photo.aspx">PhotoGraphy</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </nav>
</div>
	
	<div class="all-title-box"  style="background-position: center; background-image:url(/images/图灵碗.png); position: relative;">
		<div class="container text-center">
			<h1>NJU-AIA<span class="m_1">Artificial Intelligence Association of Nanjing University</span></h1>
			<p style="color:white">	Established on April 10, 2018, The Artificial Intelligence Association of Nanjing University is one of the earliest artificial intelligence-related student associations established in Chinese universities. It is a learning and communication community, where a large number of computer and artificial intelligence enthusiasts gather to hold or participate in artificial intelligence related competitions and conferences. </p>
		</div>
	</div>
	
    <div id="testimonial-box" class="section wb">
			<div class="container">
				<div class="row"style="margin-left:20%;">
					<div class="col-md-4 col-sm-6 col-xs-12"style="width:35%;height:40%">
						<div class="testimonial clearfix">
							
							<div class="testi-meta" >
								<img src="/images/xi.jpg" alt="" class="img-responsive alignleft" height="200" width="200"/>
								<h4> <small>Chengpeng Xi</small></h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12"style="width:35%;height:40%">
						<div class="testimonial clearfix">
							
							<div class="testi-meta">
								<img src="/images/geng.jpg" alt="" class="img-responsive alignleft" height="200" width="200"/>
								<h4><small>Ligeng Chen</small></h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
					</div>
					
				</div>
				<hr class="hr3">
				<div class="row"style="margin-left:20%;">
					<div class="col-md-4 col-sm-6 col-xs-12"style="width:35%;height:40%">
						<div class="testimonial clearfix">
							<div class="desc"style="height:200px">
								<h3><i class="fa fa-quote-left"></i> April 10, 2018</h3>
								<p class="lead">A huge step to establish the AIA</p><br/>
								
							</div>
							
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12"style="width:35%;height:40%">
						<div class="testimonial clearfix">
							<div class="desc"style="height:200px">
								<h3><i class="fa fa-quote-left"></i> Establishment</h3>
								<p class="lead">Our association will be better and better!</p>
							</div>
							
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
					</div>
					
				</div>
				
			</div>
    </div><!-- end section -->

   

    

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
    <p class="fl_left">Copyright &copy; 2019 - All Rights Reserved - <a href="index.aspx">NJU AIA</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="../JS/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="../JS/custom.js"></script>

</body>
</html>
