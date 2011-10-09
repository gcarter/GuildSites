<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table width="100%">        
        <tr>
            <td>Username:  </td>
            <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="checkusername" runat="server" ForeColor="Red" Visible="false"></asp:Label></td>
        </tr>
        <tr>
            <td>Password:  </td>
            <td><asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verify Password:  </td>
            <td><asp:TextBox ID="txtVPass" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="checkPasswords" runat="server" Visible="false" Text="Passwords do NOT match." ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>First Name:  </td>
            <td><asp:TextBox ID="txtFname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Name:  </td>
            <td><asp:TextBox ID="txtLname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan=3><asp:Button ID="SubmitBtn" runat="server" 
                    Text="Submit" onclick="SubmitBtn_Click" Width="675"/></td>
        </tr>
    </table>
    </ContentTemplate>
    </asp:UpdatePanel>

    Working as intended!

</asp:Content>

