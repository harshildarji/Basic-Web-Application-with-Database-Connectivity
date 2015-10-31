<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            height: 281px;
        }
        .style9
        {
            width: 136px;
            height: 31px;
        }
        .style10
        {
            height: 31px;
        }
        .style11
        {
            width: 136px;
            height: 40px;
        }
        .style12
        {
            height: 40px;
        }
    </style>
</head>
<body background="Other/maps-background.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label11" runat="server" Font-Bold="True" 
            Font-Names="Britannic Bold" Font-Size="XX-Large" Text="Edit Your Data"></asp:Label>
        <br />
        <asp:Label ID="Label12" runat="server" style="font-weight: 700" 
            Text="Note: Change of Password is not allowed!"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td class="style9">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Only Alphabets!" ForeColor="Red" 
                        ValidationExpression="^[A-Za-z.s]{1,50}$" ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" 
                        ValidationGroup="a"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="style10">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" ValidationGroup="a">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Only 18+ Allowed!" ForeColor="Red" 
                        MaximumValue="99" MinimumValue="18" ValidationGroup="a"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label6" runat="server" Text="Hobby:"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                        ValidationGroup="a"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label7" runat="server" Text="Email ID:"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Invalid Format!" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                        ValidationGroup="a" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
