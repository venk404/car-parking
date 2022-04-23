<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact us.aspx.cs" Inherits="cp.contact_us" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact form</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h3>Contact Form</h3>

<div class="container">
  <form id="form1" runat="server">
    <label for="Name">Name</label>
      <asp:TextBox ID="TextBox1" runat="server" placeholder="Your name.."></asp:TextBox>

    <label for="E-mail">E-mail</label><br />
      <asp:TextBox ID="TextBox2" runat="server"  placeholder="Your E-mail" TextMode="Email" Width="100%" Height="40px"></asp:TextBox><br /><br />

    
    <label for="Subject">Subject</label>
      <asp:TextBox ID="TextBox3" runat="server" placeholder="Write something..." style="height:200px"></asp:TextBox>

      <asp:Button ID="Btnsubmit" runat="server" Text="Submit" OnClick="Btnsubmit_Click" />

      <br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online Car Parkng SystemConnectionStringfeedback %>" SelectCommand="SELECT [Name], [Email], [Subject] FROM [feedback1]"></asp:SqlDataSource>
  </form>
</div>

</body>
</html>

