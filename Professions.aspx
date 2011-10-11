<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Professions.aspx.cs" Inherits="Professions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <center>
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="X-Large">Professions</asp:Label>
    </center>
    <br />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="charName" 
        DataSourceID="SqlDataSourceProfessions" Width="673px">
        <Columns>
            <asp:BoundField DataField="charName" HeaderText="Name" ReadOnly="True" 
                SortExpression="charName" />
            <asp:BoundField DataField="charLevel" HeaderText="Level" 
                SortExpression="charLevel" />
            <asp:BoundField DataField="charProf1" HeaderText="Profession One" 
                SortExpression="charProf1" />
            <asp:BoundField DataField="Prof1Skill" HeaderText="Prof One Skill" 
                SortExpression="Prof1Skill" />
            <asp:BoundField DataField="charProf2" HeaderText="Profession Two" 
                SortExpression="charProf2" />
            <asp:BoundField DataField="Prof2Skill" HeaderText="Prof Two Skill" 
                SortExpression="Prof2Skill" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSourceProfessions" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RosterDB %>" 
        DeleteCommand="DELETE FROM [Carter_Ga_RosterInformation] WHERE [charName] = @charName" 
        InsertCommand="INSERT INTO [Carter_Ga_RosterInformation] ([charName], [charLevel], [charProf1], [Prof1Skill], [charProf2], [Prof2Skill]) VALUES (@charName, @charLevel, @charProf1, @Prof1Skill, @charProf2, @Prof2Skill)" 
        SelectCommand="SELECT [charName], [charLevel], [charProf1], [Prof1Skill], [charProf2], [Prof2Skill] FROM [Carter_Ga_RosterInformation]" 
        UpdateCommand="UPDATE [Carter_Ga_RosterInformation] SET [charLevel] = @charLevel, [charProf1] = @charProf1, [Prof1Skill] = @Prof1Skill, [charProf2] = @charProf2, [Prof2Skill] = @Prof2Skill WHERE [charName] = @charName">
        <DeleteParameters>
            <asp:Parameter Name="charName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="charName" Type="String" />
            <asp:Parameter Name="charLevel" Type="String" />
            <asp:Parameter Name="charProf1" Type="String" />
            <asp:Parameter Name="Prof1Skill" Type="String" />
            <asp:Parameter Name="charProf2" Type="String" />
            <asp:Parameter Name="Prof2Skill" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="charLevel" Type="String" />
            <asp:Parameter Name="charProf1" Type="String" />
            <asp:Parameter Name="Prof1Skill" Type="String" />
            <asp:Parameter Name="charProf2" Type="String" />
            <asp:Parameter Name="Prof2Skill" Type="String" />
            <asp:Parameter Name="charName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>

