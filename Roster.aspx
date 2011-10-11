<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Roster.aspx.cs" Inherits="Roster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <center>
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="X-Large">Roster</asp:Label>
    </center>
    <br />
    <hr />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="charName" DataSourceID="SqlDataSource2" Width="681px" 
        AllowPaging="True" AllowSorting="True" PageSize="15">
        <Columns>
            <asp:BoundField DataField="charName" HeaderText="Name" ReadOnly="True" 
                SortExpression="charName" />
            <asp:BoundField DataField="charLevel" HeaderText="Level" 
                SortExpression="charLevel" />
            <asp:BoundField DataField="charClass" HeaderText="Class" 
                SortExpression="charClass" />
            <asp:BoundField DataField="charRace" HeaderText="Race" 
                SortExpression="charRace" />
            <asp:BoundField DataField="charAchPnts" HeaderText="Achievement Points" 
                SortExpression="charAchPnts" />
            <asp:BoundField DataField="charOwner" HeaderText="Owner" 
                SortExpression="charOwner" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RosterDB %>" 
        SelectCommand="SELECT * FROM [Carter_Ga_RosterInformation]">
    </asp:SqlDataSource>

    <br />

    <asp:Button ID="addBtn" runat="server" Text="Add" width="150" 
    onclick="addBtn_Click"/><asp:Label ID="L2" runat="server" Text="..." ForeColor="White"></asp:Label><asp:Label ID="lblAddInfo" runat="server">Add's new characters to the Roster</asp:Label>
    <br />
    <asp:Button ID="modifyBtn" runat="server" Text="Modify" width="150" 
    onclick="modifyBtn_Click" /><asp:Label ID="L3" runat="server" Text="..." ForeColor="White"></asp:Label><asp:Label ID="lblModifyInfo" runat="server">Change/Modifies character information already on the Roster</asp:Label>
    <br />
    <asp:Button ID="deleteBtn" runat="server" Text="Delete" width="150" 
    onclick="deleteBtn_Click" /><asp:Label ID="L4" runat="server" Text="..." ForeColor="White"></asp:Label><asp:Label ID="lblDeleteInfo" runat="server">Delete's characters from the Roster</asp:Label>
    <br />
   
</asp:Content>

