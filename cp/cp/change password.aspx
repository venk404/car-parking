<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change password.aspx.cs" Inherits="cp.fp5" %>

<!DOCTYPE html>
<html>
    
    <head>
	<title>Login page</title>
        <link rel="stylesheet" href="css/style2.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
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
 <form id="Form2" runat="server">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
     <asp:TextBox ID="txtResetPass" runat="server" class="form-control input_user" value="" placeholder="New Password" TextMode="Password" ></asp:TextBox>
						    </div><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Field Should Not Be Empty" ControlToValidate="txtResetPass" ForeColor="DarkRed"></asp:RequiredFieldValidator>
						    <div class="input-group mb-2">
							<div class="input-group-append">
						    <span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
						    <asp:TextBox ID="txtResetPassVer" runat="server" class="form-control input_pass" placeholder="Re-Type Password" TextMode="Password"></asp:TextBox>
				            </div><asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*Password in Mismatch" ControlToCompare="txtResetPass" ControlToValidate="txtResetPassVer" Font-Bold="False" Font-Italic="False" ForeColor="DarkRed"></asp:CompareValidator>
		                        <div class="d-flex justify-content-center mt-3 login_container">
                                <asp:Button ID="Reset" runat="server" Text="Reset" class="btn login_btn" OnClick="Reset_Click"/>
                                </div>  <div class="d-flex justify-content-center links">
                        <a href="Sign in.aspx" class="ml-2">&#8592;Back to Login</a>
					</div>
                                </form>
     </body>
    </html>
