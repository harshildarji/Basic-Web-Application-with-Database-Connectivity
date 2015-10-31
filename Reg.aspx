<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 370px;
        }
    </style>
</head>
<body background="Other/maps-background.jpg" style="width: 498px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label11" runat="server" Font-Bold="True" 
            Font-Names="Britannic Bold" style="font-weight: 700; font-size: xx-large" 
            Text="Register Yourself"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
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
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" 
                        ValidationGroup="a"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" ValidationGroup="a">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label>
                </td>
                <td>
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
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Hobby:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                        ValidationGroup="a"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Email ID:"></asp:Label>
                </td>
                <td>
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
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" 
                        ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Length Must Be 6-14!" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z0-9!@#$%^&amp;*.s]{6,14}$" 
                        ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" 
                        ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                        ErrorMessage="Password Not Matched!" ForeColor="Red" ValidationGroup="a"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" ForeColor="Green" Text="Data Saved!" 
                        Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        ValidationGroup="a" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" 
                        NavigateUrl="~/Login.aspx">I Already Have An Account</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
                        NavigateUrl="~/Admin.aspx">I Think I&#39;m Admin</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
