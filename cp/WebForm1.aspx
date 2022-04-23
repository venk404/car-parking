<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="cp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="slideshow-container" runat="server">
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
     <asp:Image runat="server" src="16.jpg" style="width:100%" height="450 px"/>
    <div class="nametext">Desert</div>
  </div>

  <div class="mySlides fade" runat="server">
    <div class="numbertext">2 / 3</div>
    <asp:Image runat="server" src="14.jpg" style="width:100%" height="450 px"/>
    <div class="nametext">Flower</div>
  </div>

  <div class="mySlides fade" runat="server">
    <div class="numbertext">3 / 3</div>
    <asp:Image  runat="server" src="C:\Users\admin\source\repos\cp\cp\13jpg" style="width:100%" height="450 px"/>
    <div class="nametext">Dock</div>`
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div> 
</asp:Content>
