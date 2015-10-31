<%@ Page Language="C#" AutoEventWireup="true" CodeFile="master.aspx.cs" Inherits="master" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Other/maps-background.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label13" runat="server" Font-Bold="True" 
            Font-Names="Britannic Bold" Font-Size="XX-Large" Text="WelCome Mr.Admin"></asp:Label>
        <br />
        <asp:Label ID="Label14" runat="server" Font-Bold="True" 
            Text="Following user's are using your site..."></asp:Label>
        <br />
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="hobby" HeaderText="hobby" SortExpression="hobby" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' 
                        onclick="Button1_Click" Text="Remove" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Register] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Register] ([name], [address], [gender], [age], [hobby], [email], [password]) VALUES (@name, @address, @gender, @age, @hobby, @email, @password)" 
        ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [id], [name], [address], [gender], [age], [hobby], [email], [password] FROM [Register]" 
        UpdateCommand="UPDATE [Register] SET [name] = @name, [address] = @address, [gender] = @gender, [age] = @age, [hobby] = @hobby, [email] = @email, [password] = @password WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="hobby" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="hobby" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
            ImageUrl="~/Other/house-41415_640.png" PostBackUrl="~/Reg.aspx" Width="20px" />
    </p>
    </form>
</body>
</html>
