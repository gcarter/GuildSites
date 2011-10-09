<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Roster.aspx.cs" Inherits="Roster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="charName" DataSourceID="SqlDataSource2" Width="681px" 
        AllowPaging="True" AllowSorting="True">
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
    onclick="addBtn_Click"/>
    <br />
    <asp:Button ID="modifyBtn" runat="server" Text="Modify" width="150" 
    onclick="modifyBtn_Click" />
    <br />
    <asp:Button ID="deleteBtn" runat="server" Text="Delete" width="150" 
    onclick="deleteBtn_Click" />
    <br />
    Working as intended.
</asp:Content>

