<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ModCharacters.aspx.cs" Inherits="ModCharacters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 25px;
            text-align:right;
        }
        .style2
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <br />
    <center>
        <asp:Label ID="lblTitle" runat="server" Font-Bold="true" Font-Size="X-Large">Modify Character Data</asp:Label>
    </center>
    <br />
    <hr />

    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <table>
                <tr align="left">
                    <td>
                        <asp:SqlDataSource ID="charList" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:RosterDB %>" 
                            DeleteCommand="DELETE FROM [Carter_Ga_RosterInformation] WHERE [charName] = @charName" 
                            InsertCommand="INSERT INTO [Carter_Ga_RosterInformation] ([charName]) VALUES (@charName)" 
                            SelectCommand="SELECT [charName] FROM [Carter_Ga_RosterInformation]">
                            <DeleteParameters>
                                <asp:Parameter Name="charName" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="charName" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:DropDownList ID="charNameList" runat="server" DataSourceID="charList" 
                            DataTextField="charName" DataValueField="charName" Width="210">
                            </asp:DropDownList>
                    </td>
                    <td class="style1">
                        <asp:Button ID="updateBtn" runat="server" onclick="updateBtn_Click" 
                            Text="Retrieve Character Information" Width="225px" />
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="name" runat="server" Height="20px" Text="Name:" Width="175px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:TextBox ID="txtCharName" runat="server" Width="210px" ToolTip="Add/Change the character's Name here"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td class="style1">
                        <asp:Label ID="level" runat="server" Text="Level:" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListLevel" runat="server" Width="210px" ToolTip="Select this character's level here">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="class" runat="server" Text="Class:" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListClass" runat="server" Width="210px" ToolTip="Choose the character's Class here">
                        <asp:ListItem>Death Knight</asp:ListItem>
                        <asp:ListItem>Druid</asp:ListItem>
                        <asp:ListItem>Hunter</asp:ListItem>
                        <asp:ListItem>Mage</asp:ListItem>
                        <asp:ListItem>Paladin</asp:ListItem>
                        <asp:ListItem>Priest</asp:ListItem>
                        <asp:ListItem>Rogue</asp:ListItem>
                        <asp:ListItem>Shaman</asp:ListItem>
                        <asp:ListItem>Warlock</asp:ListItem>
                        <asp:ListItem>Warrior</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    </tr>
                    <tr>
                    <td class="style1">
                        <asp:Label ID="race" runat="server" Text="Race:" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListRaces" runat="server" Width="210px" ToolTip="Choose the character's Race here">
                        <asp:ListItem>Dreanei</asp:ListItem>
                        <asp:ListItem>Dwarf</asp:ListItem>
                        <asp:ListItem>Gnome</asp:ListItem>
                        <asp:ListItem>Human</asp:ListItem>
                        <asp:ListItem>Night Elf</asp:ListItem>
                        <asp:ListItem>Worgen</asp:ListItem>
                        <asp:ListItem>Blood Elf</asp:ListItem>
                        <asp:ListItem>Goblin</asp:ListItem>
                        <asp:ListItem>Orc</asp:ListItem>
                        <asp:ListItem>Tauren</asp:ListItem>
                        <asp:ListItem>Troll</asp:ListItem>
                        <asp:ListItem>Undead</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="Prof1" runat="server" Text="Profession One:" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListProfession1" runat="server" Width="210px" ToolTip="Choose the character's first Profession here">
                            <asp:ListItem>Alchemist</asp:ListItem>
                            <asp:ListItem>Blacksmith</asp:ListItem>
                            <asp:ListItem>Engineer</asp:ListItem>
                            <asp:ListItem>Enchanter</asp:ListItem>
                            <asp:ListItem>Inscriptionist</asp:ListItem>
                            <asp:ListItem>Jewel Crafter</asp:ListItem>
                            <asp:ListItem>Leather Worker</asp:ListItem>
                            <asp:ListItem>Tailor</asp:ListItem>
                            <asp:ListItem>Herbalist</asp:ListItem>
                            <asp:ListItem>Miner</asp:ListItem>
                            <asp:ListItem>Skinner</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    </tr>
                    <tr>
                    <td class="style1">
                        <asp:Label ID="Prof1Skill" runat="server" Text="Skill: Prof 1" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListProfession1Skill" runat="server" Width="210px" ToolTip="Select the first profession skill level here">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="Prof2" runat="server" Text="Profession Two:" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListProfession2" runat="server" Width="210px" ToolTip="Choose the character's second Profession here">
                            <asp:ListItem>Alchemist</asp:ListItem>
                            <asp:ListItem>Blacksmith</asp:ListItem>
                            <asp:ListItem>Engineer</asp:ListItem>
                            <asp:ListItem>Enchanter</asp:ListItem>
                            <asp:ListItem>Inscriptionist</asp:ListItem>
                            <asp:ListItem>Jewel Crafter</asp:ListItem>
                            <asp:ListItem>Leather Worker</asp:ListItem>
                            <asp:ListItem>Tailor</asp:ListItem>
                            <asp:ListItem>Herbalist</asp:ListItem>
                            <asp:ListItem>Miner</asp:ListItem>
                            <asp:ListItem>Skinner</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    </tr>
                    <tr>
                    <td class="style1">
                        <asp:Label ID="Prof2Skill" runat="server" Text="Skill: Prof 2" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:DropDownList ID="DropDownListProfession2Skill" runat="server" Width="210px" ToolTip="Select the second profession skill level here">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="charAchPnts" runat="server" Text="Achievement Points:"  Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:TextBox ID="txtAchPnts" runat="server" Width="210px" ToolTip="Add/Change the Achievement Points here"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td class="style1">
                        <asp:Label ID="charOwner" runat="server" Text="Owner:" Width="210px"></asp:Label>
                    </td>
                    <td class="style2" align="center">
                        <asp:TextBox ID="txtCharOwner" runat="server" Width="210px" ToolTip="Add/Change the character Owner's name here"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1"></td>
                    <td class="style2" align="center">
                        <asp:Button ID="submitChangesBtn" runat="server" 
                            onclick="submitChangesBtn_Click" Text="Submit Changes" Width="225px" ToolTip="Submit Changes to the Database"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center">
                        <asp:Button ID="cancelBtn" runat="server" Text="Cancel"  Width="225px" 
                            onclick="cancelBtn_Click"/></td>
                </tr>
            </table>
    
    </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    </asp:Content>

