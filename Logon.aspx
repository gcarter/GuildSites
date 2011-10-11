<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Logon.aspx.cs" Inherits="Logon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    <br />
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="X-Large">Logon</asp:Label>
    <br />
    <br />
    <hr />
    <br />    
    <table>
        <tr>
            <td><asp:Button ID="RegistrationBtn" runat="server" 
                    Text="New Registration" onclick="RegistrationBtn_Click1"/>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="lblUserName" runat="server" Font-Size="Medium">User Name:</asp:Label></td>
            <td><asp:TextBox ID="txtUsername" runat="server" Width="300"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblPassword" runat="server" Font-Size="Medium">Password:</asp:Label></td>
            <td><asp:TextBox ID="txtPassword" runat="server" Width="300" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align=center><asp:Label ID="lblError" runat="server" Visible="False" 
                ForeColor="Red" BorderWidth=3px BorderColor=Red Width="289px" CssClass=comments></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><asp:Button ID="SubmitBtn" runat="server" Text="Submit" Width=300 onclick="SubmitBtn_Click"/></td>
        </tr>
    </table>

    <br />
    <br />

    
        <asp:Label ID="lblInfo" runat="server" Font-Size="Medium">Create your own account for access.</asp:Label>
    </center>
    <br />

</asp:Content>

