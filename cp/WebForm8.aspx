<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs"   Inherits="cp.WebForm8"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #FFFFFF;
            background-color: #FFFFFF;
            
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style6 {
            width: 200px;
            height: 25px;
        }
        .auto-style7 {
            width: 200px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
            width: 148px;
        }
        .auto-style9 {
            width: 200px;
            text-align: center;
        }
 
        .auto-style10 {
             border-top: 1px solid red;
              
            
        }
 
        .auto-style11 {
            width: 90%;
            border: 1px solid #000000;
            background-color: #ffffff;
        }
        .auto-style13 {
            height: 26px;
            background-color: #778899;
        }
 

 
        .auto-style48 {
            width: 148px;
            height: 25px;
        }
        .auto-style49 {
            width: 148px;
        }
        .auto-style50 {
            width: 199px;
            height: 25px;
        }
        .auto-style51 {
            width: 199px;
        }
        .auto-style52 {
            width: 199px;
            height: 26px;
        }
        .auto-style55 {
            background-color:#778899;
        }
 

 
        .auto-style65 {
            text-align: center;
            height: 36px;
            width: 111px;
        }
        .auto-style67 {
            text-align: center;
            height: 2px;
            width: 111px;
        }
        .auto-style80 {
        text-align: center;
        height: 36px;
        width: 132px;
    }
    .auto-style81 {
        text-align: center;
        width: 132px;
    }
    .auto-style82 {
        text-align: center;
        height: 2px;
        width: 132px;
    }
    .auto-style83 {
        text-align: center;
        height: 36px;
        width: 133px;
    }
    .auto-style84 {
        text-align: center;
        width: 133px;
    }
    .auto-style85 {
        text-align: center;
        height: 2px;
        width: 133px;
    }
    .auto-style86 {
        text-align: center;
        height: 36px;
        width: 146px;
    }
    .auto-style87 {
        text-align: center;
        width: 146px;
    }
    .auto-style88 {
        text-align: center;
        height: 2px;
        width: 146px;
    }
    .auto-style89 {
        text-align: center;
        width: 111px;
    }
        .auto-style93 {
            text-align: center;
            height: 36px;
            width: 125px;
        }
        .auto-style94 {
            text-align: center;
            width: 125px;
        }
        .auto-style95 {
            text-align: center;
            height: 2px;
            width: 125px;
        }
        .auto-style96 {
            text-align: center;
            height: 36px;
            font-family: Verdana;
            font-size: x-large;
            color: #660066;
        }
        .auto-style98 {
            background-color: #FFFFFF;
            text-align: center;
        }
 

 
        .auto-style99 {
            text-align: left;
            font-family: TIME;
            font-weight: bold;
            font-size: medium;
        }
 

 
        .auto-style100 {
            width: 90%;
            border: 1px solid #ffffff;
            background-color: #ffffff;
        }
 

 
        .auto-style101 {
            width: 50%;
            border: 2px solid #000000;
            background-color: #ffffff;
            text-align:center;

        }
 

 
        .auto-style104 {
            border-style: solid;
            border-width: 1px;
            padding: 2px 4px;
            height: 40px;
            font-family: Verdana;
            font-size: medium;
            color: #003366;
        }
        .auto-style105 {
            background-color: #FFFFFF;
        }
 

 
        .auto-style108 {
            border-style: solid;
            border-width: 1px;
            padding: 2px 4px;
            text-align: left;
            width: 228px;
        }
        .auto-style109 {
            border-style: solid;
            border-width: 1px;
            padding: 2px 4px;
        }
 

 
        .auto-style110 {
            border-style: solid;
            border-width: 1px;
            padding: 2px 4px;
            text-align: left;
            width: 228px;
            height: 34px;
        }
        .auto-style111 {
            border-style: solid;
            border-width: 1px;
            padding: 2px 4px;
            height: 34px;
        text-align: center;
    }
 

 
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder3" runat="server">

    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
            </asp:ScriptReference>
        </Scripts>
    </telerik:RadScriptManager>

    <table class="auto-style1">
        <tr>
            <td class="auto-style50">DATE FROM</td>
            <td class="auto-style6">
                <telerik:RadDateTimePicker ID="RadDateTimePicker1" Runat="server" Culture="en-US" AutoPostBack="True" MinDate="2021-04-06">
<TimeView CellSpacing="-1"></TimeView>

<TimePopupButton ImageUrl="" HoverImageUrl=""></TimePopupButton>

<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" LabelWidth="40%" AutoPostBack="True">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                </telerik:RadDateTimePicker>
            </td>
            <td class="auto-style6">
                DATE TO</td>
            <td class="auto-style48">
                <telerik:RadDateTimePicker ID="RadDateTimePicker3" Runat="server" AutoPostBack="True" Culture="en-US" MinDate="2021-04-06">
<TimeView CellSpacing="-1"></TimeView>

<TimePopupButton ImageUrl="" HoverImageUrl=""></TimePopupButton>

<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" LabelWidth="40%" AutoPostBack="True">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                </telerik:RadDateTimePicker>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">SELECT LOCATION</td>
            <td class="auto-style3">
                <asp:DropDownList ID="drop1" runat="server" AutoPostBack="True">
                    <asp:ListItem>SELECT LOCATION</asp:ListItem>
                    <asp:ListItem>JUHU BEACH</asp:ListItem>
                    <asp:ListItem>THANE STATION</asp:ListItem>
                </asp:DropDownList>
            </td>
         <td class="auto-style3">SELECT PARKING AREA</td>
            <td class="auto-style49">
                <asp:DropDownList ID="drop2" runat="server" AutoPostBack="True">
                    <asp:ListItem>SELECT LOT</asp:ListItem>
                    <asp:ListItem>Park 1</asp:ListItem>
                    <asp:ListItem>Park 2</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" Text="Search" Width="100px" Font-Bold="True" ForeColor="Black" Height="30px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style52">
                </td>
            <td class="auto-style7">
                </td>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="L1A1" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black"  Visible="False">
        <div class="auto-style99">
            JUHU BEACH (PARKING SLOT 1)</div>
        <hr class="auto-style10" /><table class="auto-style11">
            <tr>
                <td class="auto-style65">A1</td>
                <td class="auto-style86">A2</td>
                <td class="auto-style83">A3</td>
                <td class="auto-style80">A4</td>
                <td class="auto-style93">A5</td>
                <td class="auto-style96" colspan="2"><strong class="auto-style97">HINT</strong></td>
            </tr>
            <tr>
                <td class="auto-style89">
                    <asp:ImageButton ID="A1" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A1_Click" DescriptionUrl="~/Booked.png" AlternateText="&quot;string&quot;" />
                </td>
                <td class="auto-style87">
                    <asp:ImageButton ID="A2" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A2_Click" />
                </td>
                <td class="auto-style84">
                    <asp:ImageButton ID="A3" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A3_Click" />
                </td>
                <td class="auto-style81">
                    <asp:ImageButton ID="A4" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A4_Click" />
                </td>
                <td class="auto-style94">
                    <asp:ImageButton ID="A5" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A5_Click" />
                </td>
                <td class="auto-style94">
                    <asp:ImageButton ID="IMAGEBUTTON1" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" Enabled="False" />
                </td>
                <td class="auto-style94">
                    <asp:ImageButton ID="IMAGEBUTTON2" runat="server" Height="70px" ImageUrl="Booked.png" Width="70px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style55" colspan="5">
                    </td>
                <td class="auto-style98">AVAILABLE</td>
                <td class="auto-style98">BOOKED</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5"></td>
            </tr>
            <tr>
                <td class="auto-style89" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000">
                    <asp:ImageButton ID="A6" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A6_Click" />
                </td>
                <td class="auto-style87" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000">
                    <asp:ImageButton ID="A7" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A7_Click"/>
                </td>
                <td class="auto-style84" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000">
                    <asp:ImageButton ID="A8" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A8_Click"/>
                </td>
                <td class="auto-style81" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000">
                    <asp:ImageButton ID="A9" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A9_Click"/>
                </td>
                <td class="auto-style94" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000">
                    <asp:ImageButton ID="A10" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A10_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style67" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A6</td>
                <td class="auto-style88" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A7</td>
                <td class="auto-style85" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A8</td>
                <td class="auto-style82" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A9</td>
                <td class="auto-style95" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A10</td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="L1A2" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black"  Visible="False">HERE WE DESIGN THE FIRST LOCATION,SECOND PARKING AREA VIEW.....

        <br />
        <table class="auto-style100">
            <tr>
                <td class="auto-style65">A1</td>
                <td class="auto-style86">A2</td>
                <td class="auto-style83">A3</td>
                <td class="auto-style80">A4</td>
                <td class="auto-style93">A5</td>
                <td class="auto-style96" colspan="2"><strong class="auto-style97">HINT</strong></td>
            </tr>
            <tr>
                <td class="w3-center">
                    <asp:ImageButton ID="A11" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A11_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A12" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A12_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A13" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A13_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A14" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A14_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A15" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A15_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="ImageButton30" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" Enabled="False" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="ImageButton31" runat="server" Height="70px" ImageUrl="Booked.png" Width="70px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td colspan="5" class="auto-style55"></td>
                <td class="auto-style98">AVAILABLE</td>
                <td class="auto-style98">BOOKED</td>
            </tr>
            <tr>
                <td colspan="5" class="auto-style13"></td>
            </tr>
            <tr>
                <td class="w3-center">
                    <asp:ImageButton ID="A16" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A16_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A17" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A17_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A18" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A18_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A19" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A19_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A20" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A20_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style67" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A6</td>
                <td class="auto-style88" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A7</td>
                <td class="auto-style85" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A8</td>
                <td class="auto-style82" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A9</td>
                <td class="auto-style95" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A10</td>
            </tr>
        </table>

    </asp:Panel>
    <asp:Panel ID="L2A1" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black"  Visible="False">HERE WE DESIGN THE FIRST LOCATION,THIRD PARKING AREA VIEW.....<br />
        <table class="auto-style100">
            <tr>
                <td class="auto-style65">A1</td>
                <td class="auto-style86">A2</td>
                <td class="auto-style83">A3</td>
                <td class="auto-style80">A4</td>
                <td class="auto-style93">A5</td>
                <td class="auto-style96" colspan="2"><strong class="auto-style97">HINT</strong></td>
            </tr>
            <tr>
                <td class="w3-center">
                    <asp:ImageButton ID="A21" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A21_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A22" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A22_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A23" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A23_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A24" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A24_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A25" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A25_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="ImageButton37" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" Enabled="False" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="ImageButton38" runat="server" Height="70px" ImageUrl="Booked.png" Width="70px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style55" colspan="5"></td>
                <td class="w3-center">AVAILABLE</td>
                <td class="w3-center">BOOKED</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5"></td>
            </tr>
            <tr>
                <td class="w3-center">
                    <asp:ImageButton ID="A26" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A26_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A27" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A27_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A28" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A28_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A29" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A29_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A30" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A30_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style67" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A6</td>
                <td class="auto-style88" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A7</td>
                <td class="auto-style85" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A8</td>
                <td class="auto-style82" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A9</td>
                <td class="auto-style95" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A10</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="L2A2" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black"  Visible="False">HERE WE DESIGN THE FIRST LOCATION,FOURTH PARKING AREA VIEW.....<br />
        <table class="auto-style100">
            <tr>
                <td class="auto-style65">A1</td>
                <td class="auto-style86">A2</td>
                <td class="auto-style83">A3</td>
                <td class="auto-style80">A4</td>
                <td class="auto-style93">A5</td>
                <td class="auto-style96" colspan="2"><strong class="auto-style97">HINT</strong></td>
            </tr>
            <tr>
                <td class="w3-center">
                    <asp:ImageButton ID="A31" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A31_Click"/>
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A32" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A32_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A33" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A33_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A34" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A34_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A35" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A35_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="ImageButton49" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" Enabled="False" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="ImageButton50" runat="server" Height="70px" ImageUrl="Booked.png" Width="70px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style55" colspan="5"></td>
                <td class="w3-center">AVAILABLE</td>
                <td class="w3-center">BOOKED</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5"></td>
            </tr>
            <tr>
                <td class="w3-center">
                    <asp:ImageButton ID="A36" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A36_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A37" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A37_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A38" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A38_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A39" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A39_Click" />
                </td>
                <td class="w3-center">
                    <asp:ImageButton ID="A40" runat="server" Height="70px" ImageUrl="~/available.png" Width="70px" OnClick="A40_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style67" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A6</td>
                <td class="auto-style88" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A7</td>
                <td class="auto-style85" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A8</td>
                <td class="auto-style82" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A9</td>
                <td class="auto-style95" style="padding-bottom: 10px; padding-left: 5px; border-top-color: #000000;">A10</td>
            </tr>
        </table>
 
     
    </asp:Panel>

    <div class="w3-center">

    <asp:Panel ID="pnlbookinfo" runat="server" Visible="False">
            <table class="auto-style101" align="center">
        <tr>
            <td colspan="2" class="auto-style104"><strong><span class="auto-style105">You Order Details</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style108">USERNAME</td>
            <td class="auto-style109">
                
                
                                       
                        <asp:TextBox ID="Txtusername" runat="server" Width="100%" Text="" Height="30px"  Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:TextBox>
                    

                
                
            </td>
        </tr>
                <tr>
                    <td class="auto-style108">LOCATION</td>
                    <td class="auto-style109">
                        <asp:Label ID="lbLocation" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style108">Parking Area</td>
                    <td class="auto-style109">
                        <asp:Label ID="lblParkingArea" runat="server"></asp:Label>
                    </td>
                </tr>
        <tr>
            <td class="auto-style108">DATE FROM</td>
            <td class="auto-style109">
                <asp:Label ID="lblFrom" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style108">DATE TO</td>
            <td class="auto-style109">
                <asp:Label ID="lblTo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style108" >PARKING STAND</td>
            <td class="auto-style109">
                <asp:Label ID="lblParkingstand" runat="server"></asp:Label>
            </td>
        </tr>
                <tr>
                    <td class="auto-style110">CAR NAME</td>
                    <td class="auto-style111">
                       
                        <asp:TextBox ID="txtcarname" runat="server" Width="100%" placeholder="Please Enter The Car Name" Height="30px"  Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style108">CAR NUMBER</td>
                    <td class="auto-style109">

                        
                        <asp:TextBox ID="txtcarnumber" runat="server" Width="100%" placeholder="Please Enter The Car Number" Font-Bold="True" Height="30px"  Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
        <tr>
            <td class="auto-style108">TOTAL Parking COST<br/> (Per(Hr) ₹ 10)</td>
            <td class="auto-style109">
                <asp:Label ID="lblTotalCost" runat="server"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        <asp:Button ID="btnBookNow" runat="server" Text="BOOK NOW" OnClick="BTN_BOOKNOW_Click" BackColor="Black"  BorderStyle="Dashed"  Font-Size="Medium" Width="12%" Font-Bold="True" ForeColor="#FFCCFF" /><asp:Button ID="btnConfirmBooking" runat="server" Text="CONFIRM BOOKING" OnClick="BTNCNF_BOOKING_Click"  BackColor="Black"  BorderStyle="Dashed"  Font-Size="Medium" Width="14%" Font-Bold="True" ForeColor="#FFCCFF" />
        
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />
        
        
            <br />
        
            <br />
    </asp:Panel>

        

    </div>

</asp:Content>
