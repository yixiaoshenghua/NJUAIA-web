<%@ Page Language="C#" AutoEventWireup="true" CodeFile="members.aspx.cs" Inherits="index" %>

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
<div class="wrapper row1">
    <asp:Table HorizontalAlign="Center" runat="server" Width="1180px" Height="30px" BackColor="Black" BorderColor="Black">
        <asp:TableRow BackColor="Black" BorderColor="Black">
            <asp:TableCell BackColor="Black" BorderColor="Black" Width="150px">
                <asp:Label ID="condition" runat="server" Font-Size="Large" ForeColor="White">查询条件</asp:Label>
            </asp:TableCell>
            <asp:TableCell BackColor="Black" BorderColor="Black">
                <asp:DropDownList ID="ddlCondition" runat="server" Font-Size="Large" ForeColor="White" Width="100px" BackColor="Black">
                <asp:ListItem Value="NAME">姓名</asp:ListItem>
                <asp:ListItem Value="DEPARTMENT">部门</asp:ListItem>
                <asp:ListItem Value="POS">职务</asp:ListItem>
                <asp:ListItem Value="EDU">学历</asp:ListItem>
                <asp:ListItem Value="COLLEGE">学院</asp:ListItem>
                <asp:ListItem Value="TEL">电话</asp:ListItem>
                <asp:ListItem Value="WECHAT">微信</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell BackColor="Black" BorderColor="Black">
                <asp:Label ID="keyWord" runat="server" Font-Size="Large" >关键字</asp:Label>
            </asp:TableCell>
            <asp:TableCell BackColor="Black" BorderColor="Black">
                <asp:TextBox ID="txtKeyWord" runat="server" Font-Size="Large"></asp:TextBox>&nbsp;
            </asp:TableCell>
            <asp:TableCell BackColor="Black" BorderColor="Black">
                <asp:Button ID="btnSelect" runat="server" Text="查找" Font-Size="Large" OnClick="btnSelect_Click" />
            </asp:TableCell>
            <asp:TableCell BackColor="Black" BorderColor="Black">
                <asp:Button ID="btnBack" runat="server" Text="返回" Font-Size="Large" OnClick="btnBack_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
</div>
<div>
    
    <asp:GridView ID="MembersList" runat="server" CellPadding="3" GridLines="Horizontal" Width="1180px" BorderColor="#E7E7FF"
       BorderStyle="None" HorizontalAlign="Center" OnRowDeleting="MembersList_RowDeleting" AutoGenerateColumns="False" 
        Font-Size="9pt" OnRowDataBound="MembersList_RowDataBound" OnPageIndexChanging="MembersList_PageIndexChanging"
        PageSize="15" AllowPaging="true" BackColor="White" BorderWidth="1px" DataKeyNames="NAME">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"/>
        <Columns>
            <asp:BoundField DataField="NAME" HeaderText="姓名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:BoundField DataField="DEPARTMENT" HeaderText="部门" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:BoundField DataField="POS" HeaderText="职务" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:BoundField DataField="EDU" HeaderText="学历" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:BoundField DataField="COLLEGE" HeaderText="学院" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:BoundField DataField="TEL" HeaderText="电话" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:BoundField DataField="WECHAT" HeaderText="微信" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-CssClass="center" />
            <asp:CommandField HeaderText="操作" ShowDeleteButton="true" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ControlStyle-Font-Underline="false" HeaderStyle-CssClass="center" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NJUAIAConnectionString %>" SelectCommand="SELECT * FROM [MEMBERS]"></asp:SqlDataSource>
    
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
<!-- ################################################################################################ -->
<div class="wrapper row2">
 

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
