<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome Volunteer Coordinator.aspx.cs" Inherits="WebApplication3.firstPage.Welcome_Volunteer_Coordinator" %>
<%@ Register assembly="EventCalendar" namespace="ExtendedControls" tagprefix="cc1" %>
<%@ Register assembly="DayPilot" namespace="DayPilot.Web.Ui" tagprefix="DayPilot" %>
<%@ Register assembly="DayPilot.MonthPicker" namespace="DayPilot.Web.UI" tagprefix="DayPilot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 105px;
        }
        .style9
        {
            width: 771px;
        }
        .style13
        {
            width: 421px;
        }
        .style14
        {
            width: 540px;
        }
        .style15
        {
            width: 912px;
        }
        .style16
        {
            width: 771px;
            color: #99CC00;
            text-decoration: underline;
            font-size: medium;
        }
        .style17
        {
            margin-left: 163px;
        }
        .style18
        {
            width: 105px;
            height: 17px;
        }
        .style19
        {
            width: 771px;
            height: 17px;
        }
        .style20
        {
            height: 17px;
        }
        .style21
        {
            text-decoration: underline;
            color: #333333;
            font-size: medium;
        }
        .style22
        {
            text-decoration: underline;
            color: #99CC00;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                <br />
                <DayPilot:MonthPicker ID="MonthPicker1" runat="server" AutoPostBack="True" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Select" />
                <style type="text/css">
/* Month silver theme */
.month_silver_header 
{
 background-image: url(Media/month_silver_top20.gif);
 background-repeat: repeat-x;
 background-color: #CFCFCF;
}
.month_silver_event 
{
 background-image: url(Media/month_silver_event20.gif);
 background-repeat: repeat-x;
 background-color: Green;
}
</style>
                <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <DayPilot:DayPilotMonth ID="DayPilotMonth1" runat="server" BackColor="Silver" 
                    BorderColor="Black" CellHeaderBackColor="Silver" CellHeaderFontColor="#000000" 
                    DataEndField="Activity_EndDate" DataSourceID="SqlDataSource3" 
                    DataStartField="Activity_StartDate" DataTagFields="Activity_Name" 
                    DataTextField="Activity_Name" DataValueField="Activity_ID" 
                    EventBackColor="#006666" EventBorderColor="Black" EventClickHandling="PostBack" 
                    EventEndTime="False" EventFontColor="White" EventMoveHandling="CallBack" 
                    EventResizeHandling="CallBack" EventStartTime="False" EventTimeFontColor="Gray" 
                    HeaderBackColor="#ECE9D8" HeaderFontColor="#000000" Height="49px" 
                    InnerBorderColor="#CCCCCC" NonBusinessBackColor="Silver" 
                    StartDate="2012-08-06" 
    TimeRangeSelectedHandling="PostBack" WeekStarts="Auto" 
                    Width="91%" CssClassPrefix="month_silver_" 
                    MinCellHeight="60" 
    ForeColor="Silver" ondisposed="DayPilotMonth1_Disposed" oneventclick="DayPilotMonth1_EventClick" />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                </td>
            <td class="style19" colspan="3">
                </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style16" colspan="3">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Status], [Activity_Type] FROM [Activities] WHERE NOT (([Activity_StartDate] &lt;= @start) OR ([Activity_EndDate] &gt;= @end + 1))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DayPilotMonth1" Name="start" 
                            PropertyName="VisibleStart" />
                        <asp:ControlParameter ControlID="DayPilotMonth1" Name="end" 
                            PropertyName="VisibleEnd" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="style22">Recent 
                Activity</span><span class="style21"><br />
                </span></strong><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" CssClass="style17" DataKeyNames="Activity_ID" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Width="652px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" ItemStyle-HorizontalAlign ="Center"

                            ReadOnly="True" SortExpression="Activity_ID" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                            SortExpression="Activity_Name" />
                        <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                            HeaderText="Start Date" SortExpression="Activity_StartDate" />
                        <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                            HeaderText="End Date" SortExpression="Activity_EndDate" />
                        <asp:BoundField DataField="Activity_Status" HeaderText="Status" 
                            SortExpression="Activity_Status" />
                        <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                            SortExpression="Activity_Type" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Status], [Activity_Type] FROM [Activities] WHERE  [Activity_Status] = 'Starting' ">
                </asp:SqlDataSource>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
