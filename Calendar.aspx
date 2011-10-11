<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table width="675" style="background-color:Gray">
        <tr>
            <td Width="25%" align="left">
                <asp:DropDownList ID="DropDownListMonth" runat="server" Width="100%">
                    <asp:ListItem Text="Month" Value="00"></asp:ListItem>
                    <asp:ListItem Text="January" Value="1"></asp:ListItem>
                    <asp:ListItem Text="February" Value="2"></asp:ListItem>
                    <asp:ListItem Text="March" Value="3"></asp:ListItem>
                    <asp:ListItem Text="April" Value="4"></asp:ListItem>
                    <asp:ListItem Text="May" Value="5"></asp:ListItem>
                    <asp:ListItem Text="June" Value="6"></asp:ListItem>
                    <asp:ListItem Text="July" Value="7"></asp:ListItem>
                    <asp:ListItem Text="August" Value="8"></asp:ListItem>
                    <asp:ListItem Text="September" Value="9"></asp:ListItem>
                    <asp:ListItem Text="October" Value="10"></asp:ListItem>
                    <asp:ListItem Text="November" Value="11"></asp:ListItem>
                    <asp:ListItem Text="December" Value="12"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td Width="50%" align="center" rowspan="2">
                <asp:Label ID="lblmonth" runat="server" Text="October" Font-Size="X-Large" ForeColor="White"></asp:Label>
                <asp:Label ID="lblspacer" runat="server" Text=",  " Font-Size="X-Large" ForeColor="White"></asp:Label>
                <asp:Label ID="lblyear" runat="server" Text="2011" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td Width="25%" align="right"><asp:Label ID="Label3" runat="server" Text=" "></asp:Label></td>
        </tr>
        <tr>
            <td Width="25%" align="left">
                <asp:DropDownList ID="DropDownListYear" runat="server" Width="60%">
                </asp:DropDownList>
                <asp:Button ID="GoBtn" runat="server" Height="23px" onclick="GoBtn_Click" 
                    Text="Go" Width="37%" />
            </td>
            <td Width="25%" align="right">
                <asp:Button ID="CurrentDate" runat="server" Text="Reset" Height="23px" 
                    onclick="CurrentDate_Click" Width="65%" />
            </td>
        </tr>
    </table>
    
    
    <asp:Calendar ID="newCalendar" runat="server" Width="675px" Height="450px" 
        DayStyle-HorizontalAlign="Right" DayStyle-VerticalAlign="Top" 
        OtherMonthDayStyle-ForeColor="GradientActiveCaption" 
        OtherMonthDayStyle-BackColor="LightGray" ShowTitle="false"
        OtherMonthDayStyle-BorderColor="Black" DayStyle-BorderColor="Black" 
        DayHeaderStyle-Height="25" OnSelectionChanged="SelectionChanged_Click" 
        NextMonthText="" PrevMonthText="" 
        TitleFormat="MonthYear" TitleStyle-Font-Size="X-Large">

        <DayHeaderStyle BorderWidth="1" BorderStyle="Solid"/>
        <DayStyle BorderWidth="1" BorderStyle="Solid"/>
        <OtherMonthDayStyle BorderColor="Black"></OtherMonthDayStyle>
        <SelectedDayStyle BorderColor="Black"/>
    </asp:Calendar>

    <br />

    <asp:GridView ID="EventsGrid" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="EventCalendar" 
        Width="675px" PageSize="5">
        <Columns>
            <asp:BoundField DataField="event_title" HeaderText="event_title" 
                SortExpression="event_title" />
            <asp:BoundField DataField="event_information" HeaderText="event_information" 
                SortExpression="event_information" />
            <asp:BoundField DataField="start_time" HeaderText="start_time" 
                SortExpression="start_time" />
            <asp:BoundField DataField="end_time" HeaderText="end_time" 
                SortExpression="end_time" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="EventCalendar" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CalendarData %>" 
        
        
            SelectCommand="SELECT [event_title], [event_information], [start_time], [end_time] FROM [Carter_GA_CalendarData] WHERE ([month] = @month) ORDER BY [day], [start_time]">
            <SelectParameters>
                
                <asp:ControlParameter ControlID="DropDownListMonth" Name="month" 
                    PropertyName="SelectedValue" Type="Int32" />
                
            </SelectParameters>
    </asp:SqlDataSource>
    </ContentTemplate>
    </asp:UpdatePanel>
        Still some minor issues I need to work out with the GridView and page loading sequences, nothing major.
</asp:Content>

