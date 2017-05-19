<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit GA.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.Edit_GA" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 100px;
        }
        .style9
        {
            margin-left: 90px;
        }
        .style10
        {
            width: 90px;
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" GroupingText="General Activity Detail">
                    General Activity ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    General Activity Status&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    General Activity Name&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server" Width="162px" ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Please insert activity name" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Start Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <BDP:BasicDatePicker ID="bdpStartDate" runat="server" DateFormat="dd-MM-yyyy" 
                        ValidationGroup="a" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="bdpStartDate" ErrorMessage="Please insert start date" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <BDP:BasicDatePicker ID="bdpEndDate" runat="server" DateFormat="dd-MM-yyyy" 
                        ValidationGroup="a" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="bdpEndDate" ErrorMessage="Please insert end date" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPlace" runat="server" Width="162px" ValidationGroup="a"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtPlace" ErrorMessage="Please insert place" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Province&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlProvince" runat="server" DataSourceID="Province" 
                        DataTextField="PROVINCE_ENGNAME" DataValueField="PROVINCE_ENGNAME" 
                        ValidationGroup="a">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Province" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                    </asp:SqlDataSource>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="Panel2" runat="server" GroupingText="Budget Detail">
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                                    onclick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SB" ForeColor="#333333" 
                        GridLines="None" onrowdatabound="GridView1_RowDataBound" ShowFooter="True" 
                        CssClass="style9">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        CommandName="Delete" ForeColor="#333333" 
                                        PostBackUrl="~/Volunteer MGT/Edit GA.aspx" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SB_ID" HeaderText="Sub Budget ID" InsertVisible="False" 
                                ReadOnly="True" SortExpression="SB_ID" />
                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                SortExpression="Budget_ID" />
                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    Total
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                    &nbsp;&nbsp; THB
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
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
                    <asp:SqlDataSource ID="SB" runat="server" 
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
                            <asp:SessionParameter Name="Activity_ID" SessionField="GA_ID" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="SB_Name" />
                            <asp:Parameter Name="SB_Amount" />
                            <asp:Parameter Name="Budget_ID" />
                            <asp:Parameter Name="Activity_ID" />
                            <asp:Parameter Name="SB_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <br />
                        Budget Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlBudget" runat="server" DataSourceID="Budget" 
                            DataTextField="Budget_Name" DataValueField="Budget_ID" ValidationGroup="b">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Budget" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [Budget_Name], [Budget_ID] FROM [Budgets]">
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtAmount" runat="server" ValidationGroup="b" Width="153px"></asp:TextBox>
                        &nbsp; THB
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtAmount" ErrorMessage="Please insert SubBudget amount" 
                            ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAddSB" runat="server" onclick="btnAddSB_Click" Text="Add" 
                            ValidationGroup="b" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Cancel" 
                            ValidationGroup="b" />
                    </asp:Panel>
                </asp:Panel>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
                    ValidationGroup="a" />
&nbsp;&nbsp;
                <asp:Button ID="btnCancle" runat="server" onclick="btnCancle_Click" 
                    Text="Cancel" ValidationGroup="a" />
            </td>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
