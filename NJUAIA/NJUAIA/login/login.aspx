<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>log in</title>
    <link rel="stylesheet" type="text/css" href="../CSS/signup.css"/>
    <script type="text/javascript" src="../JS/signup.js"></script>
</head>
<body>
    <form id="msform" runat="server">
         <!-- progressbar -->
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Log in and find a bigger world</h2>
    <h3 class="fs-subtitle">valid your authenticate</h3>
    <asp:TextBox ID="userID" runat="server" name="userID" placeholder="userID"></asp:TextBox>
    <asp:TextBox ID="password" runat="server" name="pass" placeholder="Password"></asp:TextBox>
    <asp:TextBox ID="validCode" runat="server" names="validcode" placeholder="ValidCode"></asp:TextBox><br />
    <asp:Label ID="ValidateCode" runat="server" BackColor="#FFC0C0"></asp:Label><br />
    <asp:Button ID="log_btn" runat="server" CssClass="next action-button" Text="Log In" OnClick="log_btn_Click" />
    <asp:Button ID="cancel" runat="server" CssClass="next action-button" Text="Cancel" OnClick="cancel_btn_Click" />
  </fieldset>
    </form>
</body>
</html>

