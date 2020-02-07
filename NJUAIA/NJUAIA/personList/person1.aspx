<%@ Page Language="C#" AutoEventWireup="true" CodeFile="person1.aspx.cs" Inherits="personList_person1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>personal</title>
    <link rel="stylesheet" type="text/css" href="/CSS/signup.css"/>
    <script type="text/javascript" src="/JS/signup.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 5px;
            width: 961px;
            height: 633px;
        }
    </style>
</head>
<body>
    <form runat="server">
            <asp:Table ID="msform" runat="server" Height="611px" Width="804px" BorderColor="#FF9900" HorizontalAlign="Justify" BorderStyle="Groove">
                <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderStyle="Solid">
                        <asp:Label runat="server" Text="Change your personal information" Font-Size="X-Large"></asp:Label>
                        <br />
                            <asp:TextBox ID="Name" runat="server" name="name" placeholder="梁相安" Enabled="False" EnableTheming="False" ReadOnly="True"></asp:TextBox>
                            <asp:TextBox ID="userID" runat="server" name="userID" placeholder="00020030" Enabled="False" EnableTheming="False"></asp:TextBox>
                            <asp:TextBox ID="passwordBefore" runat="server" name="oldpass" placeholder="Old Password"></asp:TextBox>
                            <asp:TextBox ID="passwordNow" runat="server" name="newpass" placeholder="New Password"></asp:TextBox>
                            <asp:TextBox ID="cpasswordNow" runat="server" Font-Names="cpass" placeholder="Confirm again"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" Text="Your presence on the society" Font-Size="X-Large"></asp:Label>
                        <asp:TextBox ID="education" runat="server" name="education" placeholder="Education"></asp:TextBox>
                        <asp:TextBox ID="college" runat="server" name="college" placeholder="College"></asp:TextBox>
                        <asp:TextBox ID="telephone" runat="server" name="telephone" placeholder="Telephone"></asp:TextBox>
                        <br />
                        <asp:Label runat="server" Text="Let us know you more!" Font-Size="X-Large"></asp:Label>
                        <asp:TextBox ID="text" runat="server" name="QQ" placeholder="QQ"></asp:TextBox>
                        <asp:TextBox ID="wechat" runat="server" name="wechat" placeholder="WeChat"></asp:TextBox>
                        <asp:TextBox ID="intro" runat="server" name="Introduction" placeholder="Introduce yourself"></asp:TextBox>
                        <asp:FileUpload ID="uploadImg" runat="server" />
                        <asp:Button ID="cancel" runat="server" Text="cancel" CssClass="next action-button" OnClick="cancel_Click" />    
                        <asp:Button ID="Button1" runat="server" Text="submit" class="next action-button" OnClick="Button1_Click"/>
                    </asp:TableCell>
                  
                </asp:TableRow>
            </asp:Table>
    </form>
</body>
</html>

