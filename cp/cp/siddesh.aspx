<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="siddesh.aspx.cs" Inherits="cp.siddesh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online Car Parkng SystemConnectionString3 %>" SelectCommand="SELECT [vehiclae no], date, time FROM siddesh"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
