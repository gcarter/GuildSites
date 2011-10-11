<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddEventToCalendar.aspx.cs" Inherits="AddEventToCalendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <center>
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="XX-Large">Add Event Information</asp:Label>
    </center>
    <br />
    <hr />
    <br />

    <table align=center width="600">
    <tr>
        <td><asp:Label ID="Label1" runat="server" Text="Event Title" Width="125"></asp:Label></td>
        <td><asp:TextBox ID="EventTitle" runat="server" Width="475px"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Event Date" Width="125"></asp:Label></td>
        <td align="center" Width="475px">
            <asp:Label ID="Date" runat="server" Text="No Date Given" Width="75px" Font-Size="Medium"></asp:Label>
            <asp:Label ID="Time" runat="server" Text="Start Time:"></asp:Label>
            <asp:ListBox ID="sHour" runat="server" Rows="1">
            </asp:ListBox>
            <asp:Label ID="colon" runat="server" Text=":"></asp:Label>
            <asp:ListBox ID="sMinutes" runat="server" Rows="1" Width="40">
            </asp:ListBox>
            <asp:ListBox ID="Sampm" runat="server" Rows="1">
                <asp:ListItem>AM</asp:ListItem>
                <asp:ListItem>PM</asp:ListItem>
            </asp:ListBox>
            <asp:Label ID="Label5" runat="server" Text="End Time:"></asp:Label>
            <asp:ListBox ID="eHour" runat="server" Rows="1">
            </asp:ListBox>
            <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
            <asp:ListBox ID="eMinutes" runat="server" Rows="1" Width="40">
            </asp:ListBox>
            <asp:ListBox ID="Eampm" runat="server" Rows="1">
                <asp:ListItem>AM</asp:ListItem>
                <asp:ListItem>PM</asp:ListItem>
            </asp:ListBox>
        </td>
    </tr>
    <tr>
        <td valign="top"><asp:Label ID="Label3" runat="server" Text="Event Information" Width="125"></asp:Label></td>
        <td><asp:TextBox ID="EventInformation" runat="server" Width="475px" Height="150px" 
                TextMode="MultiLine"></asp:TextBox></td>
    </tr>
    </table>
    <table align=center width="655">
        <tr>
            <td width="10%">&nbsp;</td>
            <td width="10%">&nbsp;</td>
            <td width="10%">&nbsp;</td>
            <td width="10%" align="right">
                <asp:Button ID="cancelBtn" runat="server" Width="100" Text="Cancel" onclick="cancelBtn_Click" />
            </td>
            <td width="10%"><asp:Button ID="saveInfo" runat="server" Width="100" Text="Save" onclick="saveInfo_Click" />
            </td>
        </tr>
    </table>
    <br />

</asp:Content>

