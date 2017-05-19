<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActivityDetailGV.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.ActivityDetailGV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 88px;
        }
        .style20
        {
            margin-left: 85px;
        }
        .style23
        {
            width: 88px;
            height: 20px;
        }
        .style27
        {
            height: 20px;
        }
        .style21
        {
            margin-left: 86px;
            margin-right: 140px;
        }
        .style9
        {
            width: 178px;
        }
        .style12
        {
            width: 367px;
        }
        .style22
        {
            width: 625px;
        }
        .style19
        {
            width: 200px;
        }
        .style17
        {
            width: 197px;
        }
        .style25
        {
            width: 197px;
            height: 26px;
        }
        .style26
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;&nbsp; &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Activity Detail" 
                    CssClass="style20" Width="797px">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
                        Width="591px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <br />
                    <strong>
                    <asp:LinkButton ID="Edit" runat="server" ForeColor="#333333" 
                        onclick="Edit_Click">Edit</asp:LinkButton>
                    </strong>&nbsp;&nbsp; <strong>
                    <asp:LinkButton ID="Cancel" runat="server" ForeColor="#333333" 
                        
                        onclientclick="return confirm('Are you sure you want to cancel the activity?')" 
                        onclick="Cancel_Click">Cancel Activity</asp:LinkButton>
                    </strong>
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style27">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:Panel ID="Panel2" runat="server" CssClass="style21" 
                        GroupingText="General Activity Detail" 
                         Width="800px">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="style9">
                                    Activity ID</td>
                                <td class="style12">
                                    <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    General Activity Name</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtActivity_Name" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9" valign="top">
                                    Start Date</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtStartDate" runat="server" Height="20px"></asp:TextBox>
                                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                                        ImageUrl="~/icon/calendar.png" onclick="ImageButton1_Click" />
                                    <asp:Calendar ID="Calendar1" runat="server" 
                                        onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9" valign="top">
                                    End Date</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtEndDate" runat="server" Height="18px"></asp:TextBox>
                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                        ImageUrl="~/icon/calendar.png" onclick="ImageButton2_Click" />
                                    <asp:Calendar ID="Calendar2" runat="server" Visible="False"></asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    Place</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9" valign="top">
                                    Province</td>
                                <td class="style12">
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
                                </td>
                                <td class="style12">
                                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Save" />
                                    &nbsp;
                                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Cancel" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server" CssClass="style20" 
                        GroupingText="Budget Detail" Width="808px">
                        <table cellpadding="0" cellspacing="0" class="style22">
                            <tr>
                                <td class="style19">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/icon/plus.png" 
                                        onclick="ImageButton3_Click" ToolTip="Add more budget" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSource1" 
                                        ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                                        ShowFooter="True" Width="474px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" />
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                        CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                                <FooterTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                                        DataSourceID="SqlDataSourceBudget0" DataTextField="Budget_Name" 
                                                        DataValueField="Budget_ID" SelectedValue='<%# Bind("Budget_ID") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                        SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                                                    </asp:SqlDataSource>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount" ItemStyle-HorizontalAlign ="Right">
                                                <FooterTemplate>
                                                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                                    &nbsp;&nbsp; THB
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" 
                                                        Text='<%# Bind("SB_Amount", "{0:N}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#7C6F57" />
                                        <FooterStyle BackColor="#99CC00" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#99CC00" Font-Bold="True" ForeColor="White" />
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
                                        DeleteCommand="DELETE [SubBudgets] WHERE [Activity_ID] =@Activity_ID AND [SB_ID] =@SB_ID" SelectCommand="SELECT [SB_ID], [SubBudgets].[Budget_ID], [SB_Amount], [Budget_Name] FROM [SubBudgets], [Budgets] 
 WHERE [Activity_ID] =@Activity_ID 
AND [SubBudgets].[Budget_ID] = [Budgets].[Budget_ID]" UpdateCommand="UPDATE  [SubBudgets] SET [SB_Name]=@SB_Name, [SB_Amount]=@SB_Amount, [Budget_ID]=@Budget_ID 
WHERE [Activity_ID] =@Activity_ID AND[SB_ID] =@SB_ID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Activity_ID" />
                                            <asp:Parameter Name="SB_ID" />
                                        </DeleteParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Activity_ID" SessionField="GVActivity_ID" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="SB_Name" />
                                            <asp:Parameter Name="SB_Amount" />
                                            <asp:Parameter Name="Budget_ID" />
                                            <asp:Parameter Name="Activity_ID" />
                                            <asp:Parameter Name="SB_ID" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="Panel4" runat="server" Visible="False" Width="771px">
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="style17">
                                                    Budget Name</td>
                                                <td>
                                                    <asp:DropDownList ID="ddlBudget" runat="server" 
                                                        DataSourceID="SqlDataSourceBudget0" DataTextField="Budget_Name" 
                                                        DataValueField="Budget_ID">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceBudget0" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                        SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    Amount</td>
                                                <td>
                                                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                                                    &nbsp;THB
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style25">
                                                </td>
                                                <td class="style26">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
                                                    &nbsp;
                                                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
            </td>
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
