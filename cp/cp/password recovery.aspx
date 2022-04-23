
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="password recovery.aspx" Inherits="cp.passwordrecovery" %>

<!DOCTYPE html>
<script runat="server">

    protected void sendcode_Click(object sender, EventArgs e)
    {

    }

    protected void Verify_Click(object sender, EventArgs e)
    {

    }
</script>

<html>
    
<head>
	<title>Login page</title>
    <link rel="stylesheet" href="css/style2.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />

</head>
<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="images\logo.jpg" class="brand_logo" alt="Logo">
					</div>
				</div>
		             <div class="d-flex justify-content-center form_container">
                         <form id="form3" runat="server">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
                            <asp:TextBox ID="txtemail" runat="server" class="form-control " value="" placeholder="Enter Registered Email "></asp:TextBox></div>
     <div class="d-flex justify-content-center mt-3 login_container">                       
     <asp:Button ID="sendcode" runat="server" Text="Send code"  class="btn login_btn" OnClick="sendcode_Click"/></div><br />
						    <div class="input-group mb-2">
							<div class="input-group-append">
						    <span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
						    <asp:TextBox ID="txtvercode" runat="server" class="form-control input_pass" placeholder="Enter the Code" TextMode="Password"></asp:TextBox>
				            </div>		
							<div class="d-flex justify-content-center mt-3 login_container">
                            <asp:Button ID="Submit" runat="server" OnClick="Verify_Click" Text="Verify code" class="btn login_btn" />
                               
                            <asp:Label ID="Label1"  font-size="Medium" ForeColor="Red" runat="server" Text=""></asp:Label>
				   </div>
                             </form>
				           </div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
                        <asp:LinkButton ID="backlogin" runat="server" PostBackUrl="~/Sign in.aspx">&#8592;Back to Login</asp:LinkButton>
					</div>
				</div>
			</div>
		</div>
	</div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online Car Parkng SystemConnectionString3 %>" SelectCommand="SELECT [email] FROM [register]"></asp:SqlDataSource>
</body>
</html>
