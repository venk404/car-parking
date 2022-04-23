<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SIGNUP.aspx.cs" Inherits="cp.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registeration form</title>
    <link rel="stylesheet" href="css/style3.css"/>

    <style>
        @import url('http://fonts.googlepis.com/family+Bitter|Crete+Round|pacifico');
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <h3>Sign Up</h3>
                    <asp:TextBox ID="txturname"  placeholder="Username" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" font-size="Medium" forecolor="Red" Display="Dynamic" ErrorMessage="PLEASE ENTER USERNAME....." ControlToValidate="txturname" Font-Bold="True"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="txtpasswd" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" font-size="Medium" forecolor="Red" ControlToValidate="txtpasswd" Display="Dynamic" ErrorMessage="PASSWORD MUST CONTAIN 3 TO 10 CHARACTER" Font-Bold="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtcops" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" font-size="Medium" Display="Dynamic" ForeColor="Red" ErrorMessage="ENTER THE CONFIRM PASSWORD" ControlToValidate="txtcops" Font-Bold="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="PASSSWORD IS INCORRECT" ControlToCompare="txtpasswd" ControlToValidate="txtcops" Display="Dynamic" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>

                    <asp:TextBox ID="txtemail" placeholder="E-mail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ENTER VALID EMAIL" ControlToValidate="txtemail" Display="Dynamic" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    <asp:TextBox ID="txtcontact" placeholder="Contact No" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Number should not exceed more than 10 numbers " Font-Bold="True" Font-Size="Large" ForeColor="Red" ControlToValidate="txtcontact" Display="Dynamic" CssClass="auto-style1" ValidationExpression="\+?\d[\d -]{8,10}\d"></asp:RegularExpressionValidator>
                 
           <br />
                    <asp:Button ID="Button1" OnClick="Button1_Click"  runat="server" cssclass="btn" Text="Submit" OnClientClick="Button1" Font-Bold="True"/>

                    <asp:Label ID="Label1"  visible="False" runat="server" Text="You are sucessfully Registered...!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
         </div>
</div>
            </section>
 </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:car parkingConnectionString %>" SelectCommand="SELECT [username], [password], [email], [contactno], [usertype] FROM [register]"></asp:SqlDataSource>
</body>
</html>
