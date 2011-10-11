<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <br />
    <center>
        <asp:Label ID="lblTitle" runat="server" Font-Size="X-Large" Font-Bold="true">Registration</asp:Label>
    </center>
    <br />
    <hr />
    <br />

    <center>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    <table width="400">
        <tr align="left">
            <td Width="150">Username:  </td>
            <td Width="250"><asp:TextBox ID="txtUsername" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr align="left">
            <td>Password:  </td>
            <td align="left"><asp:TextBox ID="txtPass" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr align="left">
            <td>Verify Password:  </td>
            <td align="left"><asp:TextBox ID="txtVPass" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr align="left">
            <td>First Name:  </td>
            <td align="left"><asp:TextBox ID="txtFname" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr align="left">
            <td>Last Name:  </td>
            <td align="left"><asp:TextBox ID="txtLname" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left">
                <asp:Button ID="cancelBtn" runat="server" Text="Cancel" Width="100" 
                    onclick="cancelBtn_Click"/>
            </td>
            <td align="right"><asp:Button ID="SubmitBtn" runat="server" 
                    Text="Submit" onclick="SubmitBtn_Click" Width="144"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="checkusername" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            </td>

        </tr>
    </table>
    
    </ContentTemplate>
    </asp:UpdatePanel>
    </center>
    <br />

</asp:Content>

