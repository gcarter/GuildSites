<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeletingCharacters.aspx.cs" Inherits="DeletingCharacters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="charName" 
        DataSourceID="SqlDataSourceDelete" Width="679px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="charName" HeaderText="charName" ReadOnly="True" 
                SortExpression="charName" />
            <asp:BoundField DataField="charLevel" HeaderText="charLevel" 
                SortExpression="charLevel" />
            <asp:BoundField DataField="charOwner" HeaderText="charOwner" 
                SortExpression="charOwner" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceDelete" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RosterDB %>" 
        DeleteCommand="DELETE FROM [Carter_Ga_RosterInformation] WHERE [charName] = @charName" 
        InsertCommand="INSERT INTO [Carter_Ga_RosterInformation] ([charName], [charLevel], [charOwner]) VALUES (@charName, @charLevel, @charOwner)" 
        SelectCommand="SELECT [charName], [charLevel], [charOwner] FROM [Carter_Ga_RosterInformation]" 
        UpdateCommand="UPDATE [Carter_Ga_RosterInformation] SET [charLevel] = @charLevel, [charOwner] = @charOwner WHERE [charName] = @charName">
        <DeleteParameters>
            <asp:Parameter Name="charName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="charName" Type="String" />
            <asp:Parameter Name="charLevel" Type="String" />
            <asp:Parameter Name="charOwner" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="charLevel" Type="String" />
            <asp:Parameter Name="charOwner" Type="String" />
            <asp:Parameter Name="charName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    Will Delete characters from the database and working as intended.
</asp:Content>

