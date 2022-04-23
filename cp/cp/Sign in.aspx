<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign in.aspx.cs" Inherits="cp.Sign_in" %>

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
					<form id="form2" runat="server">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control input_user" value="" placeholder="Username"></asp:TextBox>
                            </div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control input_pass" placeholder="Password" TextMode="Password"></asp:TextBox>
</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="customControlInline">
                                <label id="label5" class="custom-control-label" for="customControlInline">Remember me</label>
                                							</div>
						</div>
                        <div class="d-flex justify-content-center mt-3 login_container">
                             <asp:Button ID="Button1" runat="server" OnClick="Submit_Click" Text="Login" class="btn login_btn" />
                             </div></form>
				</div>
                <div class="mt-4">
					<div class="d-flex justify-content-center links">
                            Don't have an account? <a href="SIGNUP.aspx" class="ml-2">Sign Up</a>
                    </div>
					<div class="d-flex justify-content-center links">
                        									<a href="pass.aspx">Forgot your password?</a>

					</div>
				</div>
			</div>
		</div>
	</div>

      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online Car Parkng SystemConnectionString3 %>" SelectCommand="SELECT [username], [password], [usertype] FROM [register]"></asp:SqlDataSource>
</body>
</html>


