<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Budget.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.Budget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style9
    {
            width: 275px;
        }
    .style10
    {
        width: 163px;
    }
        .style17
    {
            width: 258px;
        }
        .style29
        {
            width: 275px;
            height: 17px;
            text-align: right;
            font-size: medium;
            color: #99CC00;
        }
        .style30
        {
            width: 163px;
            height: 17px;
        }
        .style31
        {
            width: 258px;
            height: 17px;
        }
        .style8
    {
        width: 100%;
    }
        .style39
        {
            width: 275px;
            height: 43px;
            text-align: right;
            font-size: medium;
            color: #99CC00;
        }
        .style40
        {
            width: 163px;
            height: 43px;
        }
        .style41
        {
            width: 258px;
            height: 43px;
        }
        .style43
        {
            width: 275px;
            height: 1px;
            text-align: right;
            font-size: medium;
            color: #99CC00;
        }
        .style44
        {
            width: 163px;
            height: 1px;
        }
        .style45
        {
            width: 258px;
            height: 1px;
        }
        .style47
        {
            height: 1px;
        }
        .style53
        {
            width: 264px;
        }
        .style54
        {
            width: 264px;
            height: 17px;
        }
        .style55
        {
            width: 264px;
            height: 1px;
        }
        .style58
        {
            width: 264px;
            height: 43px;
        }
        .style59
        {
            text-decoration: underline;
            color: #99CC00;
        }
        .style60
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                <strong>Manage Budget</strong></td>
            <td class="style30">
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style54">
            </td>
        </tr>
        <tr>
            <td class="style43">
                </td>
            <td class="style44">
                </td>
            <td class="style45">
                </td>
            <td class="style55">
                </td>
      
        
            <td class="style43">
                </td>
            <td class="style44">
                </td>
            <td class="style45">
                </td>
            <td class="style47">
                </td>
        </tr>
        <tr>
            <td class="style39">
                </td>
            <td class="style40">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click1" />
                </td>
            <td class="style41">
                &nbsp;</td>
            <td class="style58">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                
                <asp:SqlDataSource ID="SqlBudget" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [Budget_ID],[Budget_Name],[Budgets].[BT_ID],[BT_Name] 
                    FROM [Budgets],[BudgetTypes] 
                    WHERE ([Budgets].[BT_ID]=[BudgetTypes].[BT_ID]) 
                    ORDER BY [Budget_ID] " 
                    UpdateCommand="UPDATE [Budgets] 
                    SET [Budget_Name] = @Budget_Name,
                    [BT_ID] = @BT_ID
                    WHERE [Budget_Id] = @Budget_ID" 
                    DeleteCommand="DELETE FROM [Budgets] WHERE [Budget_ID] = @Budget_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Budget_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Budget_Name" />
                        <asp:Parameter Name="BT_ID" />
                        <asp:Parameter Name="Budget_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Budget_ID" DataSourceID="SqlBudget" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onrowdatabound="GridView1_RowDataBound" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Edit" ForeColor="#333333" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Budget_ID" HeaderText="BudgetID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Budget_ID" />
                        <asp:BoundField DataField="Budget_Name" HeaderText="BudgetName" 
                            SortExpression="Budget_Name" />
                        <asp:BoundField DataField="BT_ID" HeaderText="Budget Type ID" 
                            SortExpression="BT_ID" />
                        <asp:TemplateField HeaderText="Budget Type Name" SortExpression="BT_Name">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="BT_Name" DataValueField="BT_ID" 
                                    SelectedValue='<%# Bind("BT_ID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]">
                                </asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("BT_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#99CC00" Font-Bold="True" ForeColor="White" />
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
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <span class="style60"><span class="style59">Add More Budget</span><br />
                    <br />
                    Budget Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style60" 
                        ValidationGroup="y" Width="201px"></asp:TextBox>
                    <span class="style60">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please insert budget name" 
                        ForeColor="Red" ValidationGroup="y"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Budget Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style60" 
                        DataSourceID="BT" DataTextField="BT_Name" DataValueField="BT_ID" Height="22px" 
                        ValidationGroup="y">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="BT" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]">
                    </asp:SqlDataSource>
                    <br />
                    <br class="style60" />
                    <span class="style60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Confirm" runat="server" CssClass="style60" 
                        onclick="Confirm_Click" Text="Confirm" ValidationGroup="y" />
                    <span class="style60">&nbsp;&nbsp; </span>
                    <asp:Button ID="Button1" runat="server" CssClass="style60" 
                        onclick="Button1_Click" Text="Cancel" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
