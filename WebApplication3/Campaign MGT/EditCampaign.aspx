<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditCampaign.aspx.cs" Inherits="WebApplication3.Campaign_MGT.Edit__Delete_Training" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 104px;
        }
        .style9
        {
            width: 287px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="PanelCampDetail" runat="server" GroupingText="Campaign Detail" 
                    Height="479px" Width="913px">
                    Activity ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    Activity Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    Campaign Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server" Width="193px" ValidationGroup="a"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Please insert Campaign Name" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Campaign Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlCAMP" runat="server" DataSourceID="CAMP" 
                        DataTextField="CAMP_Name" DataValueField="CAMP_ID" ValidationGroup="a">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="CAMP" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [CAMP_ID], [CAMP_Name] FROM [CampaignTypes]">
                    </asp:SqlDataSource>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    Campaign Start Date&nbsp;&nbsp;&nbsp;&nbsp;
                    <BDP:BasicDatePicker ID="bdpStartDate" runat="server" ValidationGroup="a" 
                        DateFormat="dd-MM-yyyy" />
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="bdpStartDate" ErrorMessage="Please select Start Date" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Campaign End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <BDP:BasicDatePicker ID="bdpEndDate" runat="server" ValidationGroup="a" 
                        DateFormat="dd-MM-yyyy" />
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="bdpEndDate" ErrorMessage="Please select End Date " 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPlace" runat="server" Width="194px" ValidationGroup="a"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="Place" runat="server" 
                        ControlToValidate="txtPlace" ErrorMessage="Please insert place" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Province&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlProvince" runat="server" DataSourceID="Province" 
                        DataTextField="PROVINCE_ENGNAME" DataValueField="PROVINCE_ENGNAME" 
                        Height="21px" Width="125px" ValidationGroup="a">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Province" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                    </asp:SqlDataSource>
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelBudget" runat="server" GroupingText="Budget Detail" 
                    Width="913px">
                    SubBudget Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtSBName" runat="server" Width="194px" ValidationGroup="b"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" 
                        ErrorMessage="Please insert SubBudget Name" ForeColor="Red" 
                        ControlToValidate="txtSBName"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Budget Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlBudget" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Budget_Name" DataValueField="Budget_ID" ValidationGroup="b">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtAmount" runat="server" Width="194px" ValidationGroup="b"></asp:TextBox>
                    &nbsp;THB&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Please insert amount" ForeColor="Red" 
                        ControlToValidate="txtAmount"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" 
                        PostBackUrl="~/Campaign MGT/EditCampaign.aspx" ValidationGroup="b" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" ValidationGroup="b" />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="Budget" ForeColor="#99CC00" 
                        GridLines="None" ShowFooter="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="SB_ID" />
                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                SortExpression="Budget_ID" />
                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Bud" 
                                        DataTextField="Budget_Name" DataValueField="Budget_ID" 
                                        SelectedValue='<%# Bind("Budget_ID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Bud" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="SubBudget Name" SortExpression="SB_Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SB_Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SB_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblamount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#99CC00" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#99CC00" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="Budget" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        DeleteCommand="DELETE SubBudgets WHERE SB_ID=@SB_ID" SelectCommand="SELECT [SB_ID], [SubBudgets].[Budget_ID], [Budget_Name], [SB_Name], [SB_Amount] FROM [SubBudgets] ,[Budgets] WHERE [Activity_ID] =@Activity_ID AND [SubBudgets].[Budget_ID] = [Budgets].[Budget_ID]
 " UpdateCommand="UPDATE SubBudgets SET Budget_ID =@Budget_ID, SB_Amount =@SB_Amount, SB_Name =@SB_Name WHERE SB_ID =@SB_ID
">
                        <DeleteParameters>
                            <asp:Parameter Name="SB_ID" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="Activity_ID" SessionField="Cam_ID" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Budget_ID" />
                            <asp:Parameter Name="SB_Amount" />
                            <asp:Parameter Name="SB_Name" />
                            <asp:Parameter Name="SB_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save " 
                    ValidationGroup="a" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancelEdit" runat="server" Text="Cancel" 
                    ValidationGroup="a" />
            </td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
