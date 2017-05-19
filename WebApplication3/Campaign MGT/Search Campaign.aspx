<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search Campaign.aspx.cs" Inherits="WebApplication3.Campaign_MGT.Search_Campaign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style8
        {
            width: 196px;
        }
        .style9
        {
            width: 196px;
            height: 17px;
        }
        .style10
        {
            height: 17px;
        }
        .style11
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelSearch" runat="server" CssClass="style11" 
                    GroupingText="Search" Width="660px">
                    Select Activity Status
                    <asp:DropDownList ID="ddlCamStatus" runat="server" 
    Height="22px" Width="93px">
                        <asp:ListItem>Starting</asp:ListItem>
                        <asp:ListItem>End</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;Insert Campaign ID or Name&nbsp;
                    <asp:TextBox ID="txtSearch" runat="server"  OnClick="this.value=''" 
                        Width="153px" Height="22px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon/search.png" onclick="ImageButton1_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;<asp:Panel ID="PanelSearchResult" runat="server" 
                    GroupingText="Search Result" Visible="False" Width="734px">
                    <asp:GridView ID="GVStart" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SearchCamStart" 
                        ForeColor="#333333" GridLines="None" onrowdatabound="GVStart_RowDataBound" 
                        onselectedindexchanged="GVStart_SelectedIndexChanged" Visible="False" 
                        Width="679px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Campaign Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="EndDate" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="CAMP_Name" HeaderText="Campaign Type " 
                                SortExpression="CAMP_Name" />
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
                    <asp:SqlDataSource ID="SearchCamStart" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        
                        SelectCommand="SELECT Activity_ID, Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status, CAMP_Name  FROM Activities, CampaignTypes WHERE (Activity_Type = 'Campaign') AND (Activity_ID LIKE '%' + @Activity_ID + '%') AND Activities.CAMP_ID = CampaignTypes.CAMP_ID AND (Activity_Status = 'Starting') OR (Activity_Name LIKE '%' + @Activity_Name + '%') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_ID" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_Name" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gvEnd" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SearchCamEnd" 
                        ForeColor="#333333" GridLines="None" onrowdatabound="gvEnd_RowDataBound" 
                        onselectedindexchanged="gvEnd_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="CAMP_Name" HeaderText="Campaign Type" 
                                SortExpression="CAMP_Name" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Campaign Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity_EndDate" 
                                SortExpression="EndDate" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity_Status" 
                                SortExpression="Activity_Status" />
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
                    <asp:SqlDataSource ID="SearchCamEnd" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        
                        SelectCommand="SELECT Activity_ID,CAMP_Name , Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status FROM Activities, CampaignTypes WHERE (Activity_Type = 'Campaign') AND (Activity_ID LIKE '%' + @Activity_ID + '%') AND Activities.CAMP_ID = CampaignTypes.CAMP_ID AND (Activity_Status = 'End') OR (Activity_Name LIKE '%' + @Activity_Name + '%') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_ID" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_Name" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <asp:Panel ID="PanelEnd" runat="server" Width="704px">
                </asp:Panel>
                <asp:Panel ID="PanelSDetail" runat="server" GroupingText="Campaign Detail" 
                    Visible="False" Width="799px">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
    Height="50px" Width="767px" AutoGenerateRows="False" CellPadding="4" 
                        DataKeyNames="Activity_ID" DataSourceID="CamStart" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity EndDate" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Activity Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Activity Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                                SortExpression="Activity_Type" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GVSBudget" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SBudget" ForeColor="#333333" 
                                        GridLines="None" ShowFooter="True" Width="609px" 
                                        onrowdatabound="GVSBudget_RowDataBound">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SB_ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget_ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:BoundField DataField="Budget_Name" HeaderText="Budget_Name" 
                                                SortExpression="Budget_Name" />
                                            <asp:TemplateField HeaderText="SB_Name" SortExpression="SB_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SB_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="SB_Amount" SortExpression="SB_Amount">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblamount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotal" runat="server" Text="lblTotal"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SBudget" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        
                                        SelectCommand="SELECT [SB_ID],[SubBudgets].[Budget_ID],[Budget_Name], [SB_Amount], [SB_Name] FROM [SubBudgets],[Budgets] WHERE [Activity_ID]=@Activity_ID AND [SubBudgets].[Budget_ID] =[Budgets].[Budget_ID]">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DetailsView1" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="CamVJAEdit" 
                                        ForeColor="#333333" GridLines="None" Width="602px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
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
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="CamVJAEdit" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [VJA_ID], [VolunteerJoinActivities].[V_ID], [VJA_Status], [V_Name], [V_LastName] FROM [VolunteerJoinActivities],[Volunteer] WHERE [Activity_ID] =@Activity_ID AND [VolunteerJoinActivities].[V_ID] = [Volunteer].[V_ID] ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DetailsView1" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="CamStart" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT [Activity_ID], [Activity_Name],
 [Activity_StartDate], [Activity_EndDate], 
[Activity_Place], [Activity_Province], [Activity_Status],
 [Activity_Type] FROM [Activities] WHERE ([Activity_ID] = @Activity_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GVStart" Name="Activity_ID" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <strong>
                    <asp:LinkButton ID="lblEdit" runat="server" CssClass="style11" 
                        ForeColor="#333333" onclick="lblEdit_Click">Edit</asp:LinkButton>
                    </strong><span class="style11"><strong>&nbsp;
                    <asp:LinkButton ID="lblDelete" runat="server" ForeColor="#333333" 
                        onclick="lblDelete_Click" 
                        onclientclick="return confirm('Are you sure you want to cancel the activity?')" >Cancel Activity</asp:LinkButton>
                    </strong></span>
                    <br />
                </asp:Panel>
                <asp:Panel ID="PanelEDetail" runat="server" GroupingText="Campaign Detail" 
                    Visible="False" Width="798px">
                    <asp:DetailsView ID="DetailsView2" runat="server" 
    Height="50px" Width="771px" AutoGenerateRows="False" CellPadding="4" 
                        DataKeyNames="Activity_ID" DataSourceID="CamEnd" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity_ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity_Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity_StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity_EndDate" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Activity_Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Activity_Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity_Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity_Type" 
                                SortExpression="Activity_Type" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="UnEditBudget" 
                                        ForeColor="#333333" GridLines="None" ShowFooter="True" Width="624px" 
                                        onrowdatabound="GridView2_RowDataBound">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SB_ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="SB_Name" HeaderText="SB_Name" 
                                                SortExpression="SB_Name" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget_ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:TemplateField HeaderText="Budget_Name" SortExpression="Budget_Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                <asp:Label ID="lbltxttotal" runat="server" Text="Total"/>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="SB_Amount" SortExpression="SB_Amount">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                                </ItemTemplate>
                                                 <FooterTemplate>
                                                <asp:Label ID="lblTotal" runat="server" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="UnEditBudget" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [SB_ID],[SB_Name], [SubBudgets].[Budget_ID], [Budget_Name], [SB_Amount] FROM [Budgets] , [SubBudgets] WHERE  [Activity_ID] = @Activity_ID AND [Budgets].[Budget_ID] = [SubBudgets].[Budget_ID] ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DetailsView2" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="UnEditVJA" 
                                        ForeColor="#333333" GridLines="None" Width="677px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Volunteer Join Activity ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                                SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="Joined Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer LastName" 
                                                SortExpression="V_LastName" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="UnEditVJA" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [VJA_ID], [VolunteerJoinActivities].[V_ID], [VJA_Status], [V_Name], [V_LastName] FROM [VolunteerJoinActivities],[Volunteer] WHERE [Activity_ID] = @Activity_ID AND [VolunteerJoinActivities].[V_ID] = [Volunteer].[V_ID] ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DetailsView2" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="CamEnd" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT [Activity_ID], [Activity_Name],
 [Activity_StartDate], [Activity_EndDate], 
[Activity_Place], [Activity_Province], [Activity_Status],
 [Activity_Type] FROM [Activities] WHERE ([Activity_ID] = @Activity_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="gvEnd" Name="Activity_ID" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
