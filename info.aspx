<%@ Page Language="C#" AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 79px;
        }
    </style>
</head>
<body background="Other/maps-background.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label15" runat="server" Text="Your ID No.: "></asp:Label>
        <asp:Label ID="Label16" runat="server" Font-Bold="True"></asp:Label>
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Age:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Hobby:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Email ID:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Edit" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                        ImageUrl="~/Other/house-41415_640.png" PostBackUrl="~/Reg.aspx" Width="20px" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
