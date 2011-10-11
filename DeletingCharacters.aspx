<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeletingCharacters.aspx.cs" Inherits="DeletingCharacters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <center>
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="X-Large">Delete Character's</asp:Label>
    </center>
    <br />
    <hr />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="15"
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

    <center>
    <table width="650">
        <tr>
            <td width="20%"></td>
            <td width="20%"></td>
            <td width="20%"></td>
            <td width="20%"></td>
            <td width="20%">
                <asp:Button ID="cancelBtn" runat="server" Text="Cancel" Width="100%" 
                    onclick="cancelBtn_Click"/>
            </td>
        </tr>
    </table>
    </center>
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
   
</asp:Content>

