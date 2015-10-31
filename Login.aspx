<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 99%;
        }
        .style2
        {
            width: 171px;
        }
        .style3
        {
            width: 171px;
            height: 31px;
        }
        .style4
        {
            height: 31px;
        }
    </style>
</head>
<body background="Other/maps-background.jpg" style="width: 594px">
    <form id="form1" runat="server">
    <asp:Label ID="Label11" runat="server" Font-Bold="True" 
        Font-Names="Britannic Bold" style="font-weight: 700; font-size: xx-large" 
        Text="Login"></asp:Label>
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Email ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Invalid Format!" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Length Must Be 6-14!" 
                    ForeColor="Red" ValidationGroup="a" 
                    ValidationExpression="^[A-Za-z0-9!@#$%^&amp;*.s]{6,14}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label12" runat="server" ForeColor="Red" 
                    Text="Check Email ID/Password!" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
            ImageUrl="~/Other/house-41415_640.png" PostBackUrl="~/Reg.aspx" Width="20px" />
    
    </div>
    </form>
</body>
</html>
