<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome Campaign Director.aspx.cs" Inherits="WebApplication3.firstPage.Welcome_Campaign_Director" %>
<%@ Register assembly="DayPilot.MonthPicker" namespace="DayPilot.Web.UI" tagprefix="DayPilot" %>
<%@ Register assembly="DayPilot" namespace="DayPilot.Web.Ui" tagprefix="DayPilot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 212px;
        }
        .style9
        {
            text-decoration: underline;
            color: #99CC00;
            font-size: medium;
            height: 21px;
        }
        .style10
        {
            width: 212px;
            height: 62px;
        }
        .style11
        {
            height: 62px;
        }
        .style12
        {
            width: 212px;
            height: 21px;
        }
        .style13
        {
            height: 21px;
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
            <td class="style10">
                </td>
            <td class="style11">
                <DayPilot:MonthPicker ID="MonthPicker1" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="Select" onclick="Button1_Click" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <DayPilot:DayPilotMonth ID="DayPilotMonth1" runat="server" BackColor="Silver" 
                    BorderColor="Black" CellHeaderBackColor="Silver" CellHeaderFontColor="Black" 
                    DataEndField="Activity_EndDate" DataSourceID="SqlDataSource3" 
                    DataStartField="Activity_StartDate" DataTagFields="Activity_Name" 
                    DataTextField="Activity_Name" DataValueField="Activity_ID" 
                    EventBackColor="#006666" EventBorderColor="Black" EventClickHandling="PostBack" 
                    EventEndTime="False" EventFontColor="White" EventMoveHandling="CallBack" 
                    EventResizeHandling="CallBack" EventStartTime="False" EventTimeFontColor="Gray" 
                    HeaderBackColor="#ECE9D8" HeaderFontColor="Black" Height="49px" 
                    InnerBorderColor="#CCCCCC" NonBusinessBackColor="Silver" 
                    StartDate="2012-08-06" 
    TimeRangeSelectedHandling="PostBack" WeekStarts="Auto" 
                    Width="65%" CssClassPrefix="month_silver_" 
                    MinCellHeight="60" 
    ForeColor="Silver" ondisposed="DayPilotMonth1_Disposed" oneventclick="DayPilotMonth1_EventClick" 
                            CssClass="" />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Status], [Activity_Type], [Activity_Place] FROM [Activities]">
                        </asp:SqlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>
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
        <tr>
            <td class="style12">
                <strong></strong></td>
            <td class="style9">
                <strong>Recent Activity</strong></td>
            <td class="style13">
                </td>
        </tr>
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
                &nbsp;</td>
            <td>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Width="631px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" ItemStyle-HorizontalAlign ="Center"
                            ReadOnly="True" SortExpression="Activity_ID" />
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
