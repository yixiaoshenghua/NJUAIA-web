<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup1.aspx.cs" Inherits="signup_signup1" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>sign up</title>
    <link rel="stylesheet" type="text/css" href="../CSS/signup.css"/>
    <script type="text/javascript" src="../JS/signup.js"></script>
</head>
<body>
    <form id="msform" runat="server">
         <!-- progressbar -->
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Now Join US</h2>
    <h3 class="fs-subtitle">Create your account</h3>
    <asp:TextBox ID="Name" runat="server" name="name" placeholder="true name"></asp:TextBox>
    <asp:TextBox ID="userID" runat="server" name="userID" placeholder="userID"></asp:TextBox>
    <asp:TextBox ID="password" runat="server" name="pass" placeholder="Password"></asp:TextBox>
    <asp:TextBox ID="cpassword" runat="server" name="cpass" placeholder="Confirm Password"></asp:TextBox>
    <asp:Button ID="signup1Next" runat="server" Text="Next" class="next action-button" OnClick="testUserID"/>

      

  </fieldset>
    </form>
</body>
</html>