<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchTraining .aspx.cs" Inherits="WebApplication3.Training.SearchTraining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 85px;
        }
        .style9
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
            <td colspan="2">
                <asp:Panel ID="PanelSearch" runat="server" GroupingText="Search" Width="906px">
                    &nbsp;Activity Status&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="107px">
                        <asp:ListItem>Starting</asp:ListItem>
                        <asp:ListItem>End</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp; Search by Training ID or Name&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="213px" OnClick="this.value=''"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/search.png" 
                        onclick="ImageButton1_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="PanelSResult" runat="server" GroupingText="Search Result" 
                    Height="246px" Visible="False" Width="913px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SearchResult" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Start Date" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="End Date" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="TT_Name" HeaderText="Training Type" 
                                SortExpression="TT_Name" />
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
                    <asp:SqlDataSource ID="SearchResult" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT Activity_ID, Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status, TT_Name FROM Activities, TrainingTeams WHERE (Activity_Type = 'Training') AND Activity_Status =@Activity_Status AND (Activity_ID LIKE '%' + @Activity_ID + '%') AND Activities.TT_ID = TrainingTeams.TT_ID  OR (Activity_Name LIKE '%' + @Activity_Name + '%') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Activity_Status" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TextBox1" Name="Activity_ID" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox1" Name="Activity_Name" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Training Detail" 
                    Width="915px">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
    CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
    Width="875px" AutoGenerateRows="False" DataKeyNames="Activity_ID" DataSourceID="TrainDetail">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Start Date" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="End Date" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="TT_Name" HeaderText="Training Team" 
                                SortExpression="TT_Name" />
                            <asp:BoundField DataField="TTY_Name" HeaderText="Training Type" 
                                SortExpression="TTY_Name" />
                            <asp:BoundField DataField="TC_Name" HeaderText="Training Category" 
                                SortExpression="TC_Name" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="budget" ForeColor="#333333" 
                                        GridLines="None" onrowdatabound="GridView2_RowDataBound" ShowFooter="True" 
                                        Width="700px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="SB_Name" HeaderText="SubBudget Name" 
                                                SortExpression="SB_Name" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblamount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
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
                                    <asp:SqlDataSource ID="budget" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT SB_ID, SB_Name, SubBudgets.Budget_ID, Budget_Name, SB_Amount FROM SubBudgets, Budgets WHERE Activity_ID = @Activity_ID AND SubBudgets.Budget_ID = Budgets.Budget_ID">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="JoinedVolunteer" 
                                        ForeColor="#333333" GridLines="None" Width="700px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Volunteer Join Activity ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                                SortExpression="V_ID" />
                                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer LastName" 
                                                SortExpression="V_LastName" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="Join Status" 
                                                SortExpression="VJA_Status" />
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
                                    <asp:SqlDataSource ID="JoinedVolunteer" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [VJA_ID], [VolunteerJoinActivities].[V_ID], [V_Name], [V_LastName], [VJA_Status] FROM [VolunteerJoinActivities], [Volunteer] WHERE [Activity_ID] =@Activity_ID AND [VolunteerJoinActivities].[V_ID] = [Volunteer].[V_ID]">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
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
                    <asp:SqlDataSource ID="TrainDetail" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province,  TT_Name, TTY_Name,TC_Name, Activity_Status FROM Activities, TrainingTypes, TrainingTeams,TrainingCatagories WHERE Activity_ID =@Activity_ID  AND Activities.TT_ID = TrainingTeams.TT_ID AND Activities.TTY_ID = TrainingTypes.TTY_ID AND Activities.TC_ID = TrainingCatagories.TC_ID ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <strong>
                    <asp:LinkButton ID="btnEdit" runat="server" CssClass="style9" 
                        ForeColor="#333333" onclick="btnEdit_Click" Visible="False">Edit</asp:LinkButton>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong>
                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="style9" 
                        ForeColor="#333333" 
                        onclientclick="return confirm('Are you sure you want to cancel the Activity?')" 
                        Visible="False" onclick="btnDelete_Click">Cancel Activity</asp:LinkButton>
                    </strong>
                </asp:Panel>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
