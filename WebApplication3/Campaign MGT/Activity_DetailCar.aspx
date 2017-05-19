<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Activity_DetailCar.aspx.cs" Inherits="WebApplication3.Campaign_MGT.Activity_DetailCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 82px;
        }
        .style9
        {
            width: 162px;
        }
        .style10
        {
            width: 139px;
        }
        .style11
        {
            text-align: center;
        }
        .style12
        {
            width: 831px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                <asp:Panel ID="PanelDetail" runat="server">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
                        Width="741px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Status" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <strong>
                    <asp:LinkButton ID="Edit" runat="server" CssClass="style5" ForeColor="#333333" 
                        onclick="Edit_Click" Visible="False">Edit</asp:LinkButton>
                    </strong>&nbsp; <strong>&nbsp;
                    <asp:LinkButton ID="Cancel" runat="server" CssClass="style5" 
                        ForeColor="#333333" onclick="Cancel_Click" 
                        onclientclick="return confirm('Are you sure you want to cancel the activity?')">Cancel Activity</asp:LinkButton>
                    </strong>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="PanelCamDetail" runat="server" GroupingText="Campaign Detail" 
                            Visible="False">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="style9">
                                        Activity ID
                                    </td>
                                    <td>
                                        <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Campaign Name</td>
                                    <td>
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Campaign Type</td>
                                    <td>
                                        <asp:DropDownList ID="ddlCT" runat="server" DataSourceID="SqlDataSourceCT" 
                                            DataTextField="CAMP_Name" DataValueField="CAMP_ID">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceCT" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [CAMP_ID], [CAMP_Name] FROM [CampaignTypes]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Action Type</td>
                                    <td>
                                        <asp:DropDownList ID="ddlAT" runat="server" DataSourceID="SqlDataSourceAT" 
                                            DataTextField="AT_Name" DataValueField="AT_ID">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceAT" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [AT_ID], [AT_Name] FROM [ActionTypes]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" valign="top">
                                        Start Date</td>
                                    <td>
                                        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton1" runat="server" 
                                            ImageUrl="~/icon/calendar.png" onclick="ImageButton1_Click" />
                                        <asp:Calendar ID="Calendar1" runat="server" 
                                            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" valign="top">
                                        End Date</td>
                                    <td>
                                        <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton2" runat="server" 
                                            ImageUrl="~/icon/calendar.png" onclick="ImageButton2_Click" />
                                        <asp:Calendar ID="Calendar2" runat="server" 
                                            onselectionchanged="Calendar2_SelectionChanged" Visible="False">
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Place</td>
                                    <td>
                                        <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Province</td>
                                    <td>
                                        <asp:DropDownList ID="ddlProvince" runat="server" 
                                            DataSourceID="SqlDataSourceProvince" DataTextField="PROVINCE_ENGNAME" 
                                            DataValueField="PROVINCE_ENGNAME">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceProvince" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" valign="top">
                                        Joined Volunteer
                                    </td>
                                    <td>
                                        <asp:GridView ID="GVJoinedVolunteer" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="SqlDataSourceJV" 
                                            ForeColor="#333333" GridLines="None">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:BoundField DataField="VJA_ID" HeaderText="VJA_ID" InsertVisible="False" 
                                                    ReadOnly="True" SortExpression="VJA_ID" />
                                                <asp:BoundField DataField="V_ID" HeaderText="V_ID" SortExpression="V_ID" />
                                                <asp:BoundField DataField="VJA_Status" HeaderText="VJA_Status" 
                                                    SortExpression="VJA_Status" />
                                                <asp:BoundField DataField="V_Name" HeaderText="V_Name" 
                                                    SortExpression="V_Name" />
                                                <asp:BoundField DataField="V_LastName" HeaderText="V_LastName" 
                                                    SortExpression="V_LastName" />
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
                                        <asp:SqlDataSource ID="SqlDataSourceJV" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT VolunteerJoinActivities.VJA_ID, VolunteerJoinActivities.V_ID, VolunteerJoinActivities.VJA_Status, Volunteer.V_Name, Volunteer.V_LastName FROM VolunteerJoinActivities INNER JOIN Volunteer ON VolunteerJoinActivities.V_ID = Volunteer.V_ID WHERE Activity_ID =@Activity_ID" 
                                            UpdateCommand="UPDATE VolunteerJoinActivities SET VJA_Status =@VJA_Status WHERE Activity_ID =@Activity_ID">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="Activity_ID" SessionField="CarCamActivity_ID" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="VJA_Status" />
                                                <asp:Parameter Name="Activity_ID" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" valign="top">
                                        Budget</td>
                                    <td>
                                        <asp:LinkButton ID="AddMoreBudget" runat="server" ForeColor="#666666" 
                                            onclick="AddMoreBudget_Click">Add more budget</asp:LinkButton>
                                        <br />
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSourceActBudget" 
                                            ForeColor="#333333" GridLines="None" ShowFooter="True">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="SB_ID" HeaderText="SB_ID" InsertVisible="False" 
                                                    ReadOnly="True" SortExpression="SB_ID" />
                                                <asp:BoundField DataField="Budget_ID" HeaderText="Budget_ID" 
                                                    SortExpression="Budget_ID" />
                                                <asp:BoundField DataField="SB_Amount" HeaderText="SB_Amount" 
                                                    SortExpression="SB_Amount" />
                                                <asp:BoundField DataField="Budget_Name" HeaderText="Budget_Name" 
                                                    SortExpression="Budget_Name" />
                                                <asp:BoundField DataField="BT_ID" HeaderText="BT_ID" SortExpression="BT_ID" />
                                                <asp:BoundField DataField="BT_Name" HeaderText="BT_Name" 
                                                    SortExpression="BT_Name" />
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
                                        <asp:SqlDataSource ID="SqlDataSourceActBudget" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            DeleteCommand="DELETE FROM SubBudgets WHERE SB_ID =@SB_ID" 
                                            SelectCommand="SELECT SubBudgets.SB_ID, SubBudgets.Budget_ID, SubBudgets.SB_Amount, Budgets.Budget_Name, Budgets.BT_ID, BudgetTypes.BT_Name FROM SubBudgets INNER JOIN Budgets ON SubBudgets.Budget_ID = Budgets.Budget_ID INNER JOIN BudgetTypes ON Budgets.BT_ID = BudgetTypes.BT_ID WHERE Activity_ID = @Activity_ID" 
                                            UpdateCommand="UPDATE SubBudgets SET SB_Amount = @SB_Amount WHERE Activity_ID =@Activity_ID AND SB_ID =@SB_ID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="SB_ID" />
                                            </DeleteParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="Activity_ID" SessionField="CarCamActivity_ID" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="SB_Amount" />
                                                <asp:Parameter Name="Activity_ID" />
                                                <asp:Parameter Name="SB_ID" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <asp:Panel ID="PanelBudget" runat="server" Visible="False">
                                            <br />
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="style10">
                                                        Budget Type</td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlBT" runat="server" AutoPostBack="True" 
                                                            DataSourceID="SqlDataSourceBT" DataTextField="BT_Name" DataValueField="BT_ID">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSourceBT" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                            SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]">
                                                        </asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        Budget Name</td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlBudget" runat="server" 
                                                            DataSourceID="SqlDataSourceBudget" DataTextField="Budget_Name" 
                                                            DataValueField="Budget_ID">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                            SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets] WHERE ([BT_ID] = @BT_ID)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="ddlBT" Name="BT_ID" 
                                                                    PropertyName="SelectedValue" Type="Int32" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        Amount</td>
                                                    <td>
                                                        <asp:TextBox ID="txtAmount" runat="server" 
                                                            ontextchanged="txtAmount_TextChanged"></asp:TextBox>
                                                        &nbsp; THB</td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                                            style="height: 26px" Text="Cancel" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td class="style11">
                                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Save" />
                                        &nbsp;
                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Cancel" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
