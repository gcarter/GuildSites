<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Table ID="Table1" runat="server" Width="672px">
        <asp:TableHeaderRow ID="headerRow" runat="server">
            <asp:TableCell ID="previous" runat="server"><asp:Button ID="previousBtn" runat="server" Text="Previous" Width="100%"/></asp:TableCell>
            <asp:TableCell ColumnSpan="5" ID="MonthYear" runat="server" BorderWidth="3" BorderStyle="Double" HorizontalAlign="Center">
                <asp:Label ID="MonthLabel" runat="server" Text="Month" Font-Size=X-Large></asp:Label>
                <asp:Label ID="spacer" runat="server" Text=",    " Font-Size=X-Large></asp:Label>
                <asp:Label ID="YearLabel" runat="server" Text="Year" Font-Size=X-Large></asp:Label>
            </asp:TableCell>
            <asp:TableCell ID="next" runat="server"><asp:Button ID="nextBtn" runat="server" Text="Next" Width="100%"/></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableRow ID="TableHeaders" runat="server">
            <asp:TableCell ID="r1c1" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">SUN</asp:TableCell>
            <asp:TableCell ID="r1c2" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">MON</asp:TableCell>
            <asp:TableCell ID="r1c3" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">TUES</asp:TableCell>
            <asp:TableCell ID="r1c4" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">WED</asp:TableCell>
            <asp:TableCell ID="r1c5" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">THURS</asp:TableCell>
            <asp:TableCell ID="r1c6" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">FRI</asp:TableCell>
            <asp:TableCell ID="r1c7" runat="server" Width="96" BorderWidth="2" BorderStyle="Solid" HorizontalAlign="Center">SAT</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell ID="r2c1" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c1"></asp:TableCell>
            <asp:TableCell ID="r2c2" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c2"></asp:TableCell>
            <asp:TableCell ID="r2c3" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c3"></asp:TableCell>
            <asp:TableCell ID="r2c4" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c4"></asp:TableCell>
            <asp:TableCell ID="r2c5" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c5"></asp:TableCell>
            <asp:TableCell ID="r2c6" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c6"></asp:TableCell>
            <asp:TableCell ID="r2c7" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r2c7"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow2" runat="server">
            <asp:TableCell ID="r3c1" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c1"></asp:TableCell>
            <asp:TableCell ID="r3c2" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c2"></asp:TableCell>
            <asp:TableCell ID="r3c3" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c3"></asp:TableCell>
            <asp:TableCell ID="r3c4" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c4"></asp:TableCell>
            <asp:TableCell ID="r3c5" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c5"></asp:TableCell>
            <asp:TableCell ID="r3c6" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c6"></asp:TableCell>
            <asp:TableCell ID="r3c7" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r3c7"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow3" runat="server">
            <asp:TableCell ID="r4c1" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c1"></asp:TableCell>
            <asp:TableCell ID="r4c2" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c2"></asp:TableCell>
            <asp:TableCell ID="r4c3" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c3"></asp:TableCell>
            <asp:TableCell ID="r4c4" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c4"></asp:TableCell>
            <asp:TableCell ID="r4c5" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c5"></asp:TableCell>
            <asp:TableCell ID="r4c6" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c6"></asp:TableCell>
            <asp:TableCell ID="r4c7" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r4c7"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow4" runat="server">
            <asp:TableCell ID="r5c1" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c1"></asp:TableCell>
            <asp:TableCell ID="r5c2" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c2"></asp:TableCell>
            <asp:TableCell ID="r5c3" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c3"></asp:TableCell>
            <asp:TableCell ID="r5c4" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c4"></asp:TableCell>
            <asp:TableCell ID="r5c5" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c5"></asp:TableCell>
            <asp:TableCell ID="r5c6" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c6"></asp:TableCell>
            <asp:TableCell ID="r5c7" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r5c7"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow5" runat="server">
            <asp:TableCell ID="r6c1" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c1"></asp:TableCell>
            <asp:TableCell ID="r6c2" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c2"></asp:TableCell>
            <asp:TableCell ID="r6c3" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c3"></asp:TableCell>
            <asp:TableCell ID="r6c4" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c4"></asp:TableCell>
            <asp:TableCell ID="r6c5" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c5"></asp:TableCell>
            <asp:TableCell ID="r6c6" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c6"></asp:TableCell>
            <asp:TableCell ID="r6c7" runat="server" Width="96" BorderWidth="1" BorderStyle="Solid" Height="75" HorizontalAlign="Right" VerticalAlign="Top" Text="r6c7"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        Still need to fix and finish this page.
</asp:Content>

