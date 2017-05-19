<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TestSche.aspx.cs" Inherits="WebApplication3.TestSche" %>
<%@ Register assembly="DayPilot" namespace="DayPilot.Web.Ui" tagprefix="DayPilot" %>
<%@ Register assembly="DayPilot.MonthPicker" namespace="DayPilot.Web.UI" tagprefix="DayPilot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:DetailsView ID="EventDetail" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" Height="50px" 
                    Visible="False" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Activity_ID" HeaderText="Activity_ID" 
                            ReadOnly="True" SortExpression="Activity_ID" />
                        <asp:BoundField DataField="Activity_Name" HeaderText="Activity_Name" 
                            SortExpression="Activity_Name" />
                        <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity_StartDate" 
                            SortExpression="Activity_StartDate" />
                        <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity_EndDate" 
                            SortExpression="Activity_EndDate" />
                        <asp:BoundField DataField="Activity_Province" HeaderText="Activity_Province" 
                            SortExpression="Activity_Province" />
                        <asp:BoundField DataField="Activity_Status" HeaderText="Activity_Status" 
                            SortExpression="Activity_Status" />
                        <asp:BoundField DataField="Activity_Type" HeaderText="Activity_Type" 
                            SortExpression="Activity_Type" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Province], [Activity_Status], [Activity_Type] FROM [Activities] WHERE NOT (([Activity_StartDate] &lt;= @start) OR ([Activity_EndDate] &gt;= @end))">
                    <SelectParameters>
                        <asp:Parameter Name="start" />
                        <asp:Parameter Name="end" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <DayPilot:MonthPicker ID="MonthPicker1" runat="server" AutoPostBack="True" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                <DayPilot:DayPilotMonth ID="DayPilotMonth1" runat="server" BorderColor="Black" 
                    BubbleID="DayPilotBubble1" CellHeaderBackColor="" CellHeaderFontColor="Black" 
                    CssClass="style9" DataEndField="Activity_EndDate" DataSourceID="SqlDataSource1" 
                    DataStartField="Activity_StartDate" 
                    DataTagFields="Activity_ID,Activity_Name,Activity_StartDate,Activity_EndDate,Activity_Type" 
                    DataTextField="Activity_Name" DataValueField="Activity_ID" 
                    EventBackColor="White" EventBorderColor="Black" EventClickHandling="PostBack" 
                    EventFontColor="#000000" EventTimeFontColor="Gray" ForeColor="#99CC00" 
                    HeaderBackColor="#ECE9D8" HeaderFontColor="#000000" InnerBorderColor="#CCCCCC" 
                    NonBusinessBackColor="#FFF4BC" ondatabinding="Page_Load" 
                    oneventclick="DayPilotMonth1_EventClick" oneventmove="DayPilotMonth1_EventMove" 
                    StartDate="2012-07-30" TimeRangeSelectedHandling="PostBack" WeekStarts="Auto" 
                    Width="459px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
