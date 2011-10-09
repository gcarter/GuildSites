<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td>
            <asp:Table ID="table1" runat="server" Height="255px" Width="200px" BorderColor="GreenYellow" BorderStyle="Solid" BorderWidth="1">
                <asp:TableHeaderRow ID="trHeader" runat="server">
                    <asp:TableHeaderCell ID="trHeaderInfo" runat="server" VerticalAlign="Top" HorizontalAlign="Center" ColumnSpan="2">
                        <asp:Panel Width="100%" runat="server" BackColor="GreenYellow"><u>Recruiting:</u></asp:Panel>
                    </asp:TableHeaderCell>                    
                </asp:TableHeaderRow>
                <asp:TableRow ID="row1" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="cell1" runat="server" Width="50%">Death Knight</asp:TableCell>
                    <asp:TableCell ID="cell2" runat="server" Width="50%">Medium</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow1" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell1" runat="server" Width="50%">Druid</asp:TableCell>
                    <asp:TableCell ID="TableCell2" runat="server" Width="50%">High</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell3" runat="server" Width="50%">Hunter</asp:TableCell>
                    <asp:TableCell ID="TableCell4" runat="server" Width="50%">Low</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow3" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell5" runat="server" Width="50%">Mage</asp:TableCell>
                    <asp:TableCell ID="TableCell6" runat="server" Width="50%">Medium</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow4" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell7" runat="server" Width="50%">Paladin</asp:TableCell>
                    <asp:TableCell ID="TableCell8" runat="server" Width="50%">High</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell9" runat="server" Width="50%">Priest</asp:TableCell>
                    <asp:TableCell ID="TableCell10" runat="server" Width="50%">Low</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow6" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell11" runat="server" Width="50%">Rogue</asp:TableCell>
                    <asp:TableCell ID="TableCell12" runat="server" Width="50%">Not Recruiting</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow7" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell13" runat="server" Width="50%">Shaman</asp:TableCell>
                    <asp:TableCell ID="TableCell14" runat="server" Width="50%">High</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow8" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell15" runat="server" Width="50%">Warlock</asp:TableCell>
                    <asp:TableCell ID="TableCell16" runat="server" Width="50%">Medium</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow9" runat="server" VerticalAlign="Top">
                    <asp:TableCell ID="TableCell17" runat="server" Width="50%">Warrior</asp:TableCell>
                    <asp:TableCell ID="TableCell18" runat="server" Width="50%">Low</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                
                </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  Height="255px" Width="473px"  BorderColor="GreenYellow" BorderStyle="Solid" BorderWidth="1" ReadOnly="true"
                    
                    Text="This is the welcome message area for the guild.  In this area will be a welcome message and any information pertinent to the guild.  
There should also be multiple paragraphs with more information in here.  Possibly some youtube video's of guild boss kills as well." 
                    TextMode="MultiLine"></asp:TextBox></td>
        </tr>
    </table>
    All pages working as intended except the calendar and the forums.
</asp:Content>

