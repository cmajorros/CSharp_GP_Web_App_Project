<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MISSummaryActivity.aspx.cs" Inherits="WebApplication3.MIS.MISSummaryActivity" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            width: 815px;
        }
        .style12
        {
            width: 815px;
            text-align: center;
            font-size: medium;
        }
        .style14
        {
            width: 815px;
            height: 42px;
        }
        .style15
        {
            height: 42px;
        }
        .style16
        {
            text-align: center;
            width: 438px;
        }
        .style17
        {
            width: 438px;
        }
        .style18
        {
            text-align: center;
            width: 392px;
        }
        .style19
        {
            width: 392px;
        }
        .style20
        {
            text-align: center;
        }
        .style21
        {
            margin-left: 262px;
        }
        .style22
        {
            margin-left: 51px;
        }
        .style23
        {
            width: 147px;
        }
        .style24
        {
            height: 42px;
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style9">
                Select Year
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="22px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="90px">
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT Activity_Type, Count(Activity_ID)as NumActivity from Activities WHERE Year(Activity_StartDate ) = @Year
GROUP BY Activity_Type">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style14">
                <asp:SqlDataSource ID="SqlDataSourceCampaign" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT Count(Activities.Activity_ID), CampaignTypes.CAMP_Name FROM CampaignTypes INNER JOIN Activities ON CampaignTypes.CAMP_ID = Activities.CAMP_ID WHERE Year(Activity_StartDate) = @Year GROUP BY CAMP_Name">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style12">
                <strong>
                <br />
                Activity&nbsp; Summary Report of Year&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style18">
                                <strong>Porportion of Activity Helding of Year&nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </strong>
                                <br />
                                <asp:Chart ID="Chart1" runat="server" 
                DataSourceID="SqlDataSource1" Height="297px" Palette="Pastel" Width="384px">
                                    <series>
                                        <asp:Series ChartType="Pie" Name="Series1" XValueMember="Activity_Type" 
                        YValueMembers="NumActivity">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                            </td>
                            <td class="style16">
                                <strong>
                                <br />
                                Campaign Helding Summary of Year
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                <br />
                                <br />
                                &nbsp;<asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSourceCampaign" 
                                    Width="377px">
                                    <series>
                                        <asp:Series Name="Series1" XValueMember="CAMP_Name" YValueMembers="Column1">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20" colspan="2">
                                <strong>
                                <br />
                                Table 1: Summary of&nbsp; Activity<br />
                                <br />
                                </strong>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" CssClass="style21" DataSourceID="SqlDataSource1" 
                                    ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                                    ShowFooter="True" Width="322px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Activity Type" SortExpression="Activity_Type">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Activity_Type") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                Total
                                            </FooterTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lablename" runat="server" Text='<%# Bind("Activity_Type") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Helding Activity" 
                                            SortExpression="NumActivity">
                                            <EditItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("NumActivity") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotal" runat="server" Text='<%# Bind("NumActivity") %>'></asp:Label>
                                                &nbsp;Activities
                                            </FooterTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("NumActivity") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
                                <strong>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [Activity_Type], [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Status] FROM [Activities] WHERE Year(Activity_StartDate) = @Year ORDER BY Activity_Type,Activity_StartDate">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                &nbsp;<br /> </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20" colspan="2">
                                <div class="style20">
                                    <strong>Table 2: Activities Helding of Year
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    </strong>
                                </div>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" CssClass="style22" DataKeyNames="Activity_ID" 
                                    DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" 
                                    Width="539px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                                            SortExpression="Activity_Type" />
                                        <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                            SortExpression="Activity_Status" />
                                        <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                            ReadOnly="True" SortExpression="Activity_ID" />
                                        <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                            SortExpression="Activity_Name" />
                                        <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                            HeaderText="Start Date" SortExpression="Activity_StartDate" />
                                        <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                            HeaderText="End Date" SortExpression="Activity_EndDate" />
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
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
