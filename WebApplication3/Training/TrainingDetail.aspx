<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrainingDetail.aspx.cs" Inherits="WebApplication3.Training.TrainingDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 155px;
        }
        .style9
        {
            width: 778px;
        }
        .style11
        {
            width: 152px;
        }
        .style13
        {
            width: 151px;
        }
        .style14
        {
            width: 268px;
        }
        .style16
        {
            width: 402px;
        }
        .style17
        {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Training Detail">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="style11">
                                        Activity ID</td>
                                    <td>
                                        <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Training Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11" valign="top">
                                        Start Date</td>
                                    <td>
                                        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton1" runat="server" 
                                            ImageUrl="~/icon/calendar.png" onclick="ImageButton1_Click" />
                <br />
                                        <asp:Calendar ID="Calendar1" runat="server" 
                                            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11" valign="top">
                                        End Date</td>
                                    <td>
                                        <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton2" runat="server" 
                                            ImageUrl="~/icon/calendar.png" onclick="ImageButton2_Click" />
                <br />
                                        <asp:Calendar ID="Calendar2" runat="server" 
                                            onselectionchanged="Calendar2_SelectionChanged" Visible="False">
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Place</td>
                                    <td>
                                        <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Province</td>
                                    <td>
                                        <asp:DropDownList ID="ddlProvince" runat="server" 
                                            DataSourceID="SqlDataSourceProvince" DataTextField="PROVINCE_ENGNAME" 
                                            DataValueField="PROVINCE_ENGNAME" Width="128px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceProvince" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Training Team</td>
                                    <td>
                                        <asp:DropDownList ID="ddltt" runat="server" DataSourceID="SqlDataSourceTT" 
                                            DataTextField="TT_Name" DataValueField="TT_ID" Width="128px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceTT" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [TT_ID], [TT_Name] FROM [TrainingTeams]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Training Category</td>
                                    <td>
                                        <asp:DropDownList ID="ddltc" runat="server" DataSourceID="SqlDataSourceTC" 
                                            DataTextField="TC_Name" DataValueField="TC_ID" Width="128px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceTC" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [TC_ID], [TC_Name] FROM [TrainingCatagories]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        Training Type</td>
                                    <td>
                                        <asp:DropDownList ID="ddlTTY" runat="server" DataSourceID="SqlDataSourceTTy" 
                                            DataTextField="TTY_Name" DataValueField="TTY_ID" Width="128px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceTTy" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        <br />
                                        <asp:Button ID="save" runat="server" onclick="save_Click" Text="Save" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button4" runat="server" Text="Cancel" onclick="Button4_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" GroupingText="Training Budget">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="style13">
                                        &nbsp;</td>
                                    <td class="style16">
                                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/icon/plus.png" 
                                            onclick="ImageButton3_Click" ToolTip="Add more budget Detail" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style13">
                                        &nbsp;</td>
                                    <td class="style16">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSource1" 
                                            ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                                            ShowFooter="True" CssClass="style17" Width="479px">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                            CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="SB_ID" HeaderText="Sub Budget ID" InsertVisible="False" 
                                                    ReadOnly="True" SortExpression="SB_ID" />
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
                                                        <asp:DropDownList ID="DropDownList7" runat="server" 
                                                            DataSourceID="SqlDataSourceBudget" DataTextField="Budget_Name" 
                                                            DataValueField="Budget_ID" SelectedValue='<%# Bind("Budget_ID") %>'>
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                            SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                                                        </asp:SqlDataSource>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount" 
                                                    ItemStyle-HorizontalAlign = "Right">
                                                    <FooterTemplate>
                                                        <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                                        &nbsp; THB
                                                    </FooterTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemStyle HorizontalAlign="Right" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [SB_ID], [SubBudgets].[Budget_ID], [SB_Name], [SB_Amount], [Budget_Name] FROM [SubBudgets], [Budgets] WHERE [Activity_ID] =@Activity_ID AND SubBudgets.Budget_ID = Budgets.Budget_ID" 
                                            UpdateCommand="UPDATE SubBudgets SET Budget_ID =@Budget_ID, SB_Amount =@SB_Amount WHERE SB_ID =@SB_ID">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="Activity_ID" SessionField="Train_ID" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Budget_ID" />
                                                <asp:Parameter Name="SB_Amount" />
                                                <asp:Parameter Name="SB_ID" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style13">
                                        &nbsp;</td>
                                    <td class="style16">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="Panel3" runat="server" Visible="False">
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="style13">
                                                        Budget Name</td>
                                                    <td class="style14">
                                                        <asp:DropDownList ID="ddlBudget" runat="server" DataSourceID="SqlDataSource2" 
                                                            DataTextField="Budget_Name" DataValueField="Budget_ID" Height="20px" 
                                                            Width="148px">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                            SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                                                        </asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style13">
                                                        &nbsp;</td>
                                                    <td class="style14">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style13">
                                                        Amount</td>
                                                    <td class="style14">
                                                        <asp:TextBox ID="txtAmount" runat="server" Height="22px" Width="142px"></asp:TextBox>
                                                        &nbsp; THB</td>
                                                </tr>
                                                <tr>
                                                    <td class="style13">
                                                        &nbsp;</td>
                                                    <td class="style14">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style13">
                                                        &nbsp;</td>
                                                    <td class="style14">
                                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                            Text="Confirm" />
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
<br />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
