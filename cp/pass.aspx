<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pass.aspx.cs" Inherits="cp.pass" %>

<!DOCTYPE html>

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
                            <asp:TextBox ID="txtemail" runat="server" class="form-control " value="" placeholder="Enter Registered Email "></asp:TextBox></div><br />
     <div class="d-flex justify-content-center mt-3 login_container">                       
         <asp:Button ID="Button1" runat="server" Text="Send code"  class="btn login_btn" OnClick="Button1_click" />
     </div>
                               
				 
                            </form>
				           </div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
                        <a href="Sign in.aspx" class="ml-2">&#8592;Back to Login</a>
					</div>
				</div>
			</div>
		</div>
	</div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online Car Parkng SystemConnectionString3 %>" SelectCommand="SELECT [email] FROM [register]"></asp:SqlDataSource>
</body>
</html>
