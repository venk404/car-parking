<%@ Page Title="" Language="C#" MasterPageFile="~/admin master.Master" AutoEventWireup="true" CodeBehind="cardetails admin.aspx.cs" Inherits="cp.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="cargrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Booking_id" DataSourceID="sqlcar" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Booking_id" HeaderText="Booking_id" InsertVisible="False" ReadOnly="True" SortExpression="Booking_id" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Parking_Area" HeaderText="Parking_Area" SortExpression="Parking_Area" />
            <asp:BoundField DataField="Date_From" HeaderText="Date_From" SortExpression="Date_From" />
            <asp:BoundField DataField="Date_To" HeaderText="Date_To" SortExpression="Date_To" />
            <asp:BoundField DataField="Parking_Stand" HeaderText="Parking_Stand" SortExpression="Parking_Stand" />
            <asp:BoundField DataField="Car_Name" HeaderText="Car_Name" SortExpression="Car_Name" />
            <asp:BoundField DataField="Car_Number" HeaderText="Car_Number" SortExpression="Car_Number" />
            <asp:BoundField DataField="Total_Cost" HeaderText="Total_Cost" SortExpression="Total_Cost" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <asp:SqlDataSource ID="sqlcar" runat="server" ConnectionString="<%$ ConnectionStrings:Online Car Parkng SystemConnectionStringBooking Details %>" SelectCommand="SELECT * FROM [BookingDetail]"></asp:SqlDataSource>

</asp:Content>
