<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActivityDetail.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.ActivityDetail" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 82px;
        }
        .style9
        {
            width: 871px;
        }
        .style10
        {
            width: 82px;
            height: 12px;
        }
        .style11
        {
            width: 871px;
            height: 12px;
        }
        .style12
        {
            height: 12px;
        }
        .style14
        {
            margin-left: 5px;
        }
        .style15
        {
            text-align: center;
        }
        .style16
        {
            margin-left: 108px;
        }
        .style17
        {
            margin-left: 7px;
        }
        .style18
        {
            margin-left: 1px;
        }
        .style20
        {
            margin-left: 149px;
        }
        .style21
        {
            margin-left: 146px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Activity Detail">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
    AutoGenerateRows="False" CellPadding="4" CssClass="style14" 
    DataKeyNames="Activity_ID" ForeColor="#333333" GridLines="None" Height="50px" 
    onpageindexchanging="DetailsView1_PageIndexChanging" Width="765px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" 
            HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" 
            HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Status" 
            HeaderText="Status" />
                            <asp:BoundField DataField="Activity_Type" 
            HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_StartDate" 
            DataFormatString="{0:d}" HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" 
            DataFormatString="{0:d}" HeaderText="End Date" />
                            <asp:BoundField DataField="Activity_Place" 
            HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" 
            HeaderText="Province" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" 
        ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" 
        ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" 
        HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <br />
                    <strong>
                    <asp:LinkButton ID="Edit" runat="server" CssClass="style15" ForeColor="#333333" 
                        onclick="Edit_Click" Visible="False">Edit</asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="Delete" runat="server" CssClass="style15" 
                        ForeColor="#333333" onclick="Delete_Click" Visible="False" OnClientClick="return confirm('Are you sure you want to cancel the activity?')" >Cancel Activity </asp:LinkButton>
                    </strong>
                    <br />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="PanelEditActivity" runat="server">
                    <asp:Panel ID="Panel1" runat="server" GroupingText="General Activity Detail" 
                    Visible="False" Width="871px" Height="715px">
                        Activity ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        General Activity Name&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtActivity_Name" runat="server" ValidationGroup="a" 
                        Width="171px"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtActivity_Name" 
                        ErrorMessage="Please insert General Activity Name" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Start Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtStartDate" runat="server" ValidationGroup="a" Height="24px"></asp:TextBox>
                        &nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/icon/calendar.png" onclick="ImageButton2_Click" 
                            ValidationGroup="a" />
                       
                            <br />
                        <asp:Panel ID="Panel3" runat="server" CssClass="style20" Visible="False">
                            <asp:Calendar ID="Calendar1" runat="server" CssClass="style18" Height="16px" 
                                onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="210px">
                            </asp:Calendar>
                        </asp:Panel>
                        <br />
                        End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEndDate" runat="server" ValidationGroup="a" Height="25px"></asp:TextBox>
                        &nbsp;
                        <asp:ImageButton ID="ImageButton3" runat="server" 
                            ImageUrl="~/icon/calendar.png" onclick="ImageButton3_Click" 
                            ValidationGroup="a" />
                        <br />
                        <asp:Panel ID="Panel4" runat="server" CssClass="style21" Visible="False">
                            <asp:Calendar ID="Calendar2" runat="server" CssClass="style18" Height="16px" 
                                onselectionchanged="Calendar2_SelectionChanged" Width="210px">
                            </asp:Calendar>
                        </asp:Panel>
                        <br />
                        &nbsp;Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPlace" runat="server" ValidationGroup="a" Width="171px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtPlace" ErrorMessage="Please select place" ForeColor="Red" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Province&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlProvince" runat="server" 
                        DataSourceID="SqlDataSourceProvince" DataTextField="PROVINCE_ENGNAME" 
                        DataValueField="PROVINCE_ENGNAME" Height="23px" Width="174px" 
                            ValidationGroup="a">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceProvince" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]"></asp:SqlDataSource>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                            Text="Save" ValidationGroup="a" />
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" 
                            ValidationGroup="a" />
                        <br />
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server" GroupingText="Budget Detail" 
                        Visible="False">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                            onclick="ImageButton1_Click" ToolTip="Add more budget" />
                        &nbsp;
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" CssClass="style16" DataKeyNames="SB_ID" DataSourceID="SB" 
                            ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                            onrowupdated="GridView1_RowUpdated" ShowFooter="True" Width="470px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                            CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="SB_ID" HeaderText="Sub Budget ID" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="SB_ID" />
                                <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                    SortExpression="Budget_ID" />
                                <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Budget" 
                                            DataTextField="Budget_Name" DataValueField="Budget_ID" 
                                            SelectedValue='<%# Bind("Budget_ID") %>'>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:Label ID="Label2" runat="server" Text="Total"></asp:Label>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lblAmount" runat="server"   
                                            Text='<%# Bind("SB_Amount", "{0:N}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server"  Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:Label ID="lblTotal" runat="server" Text="Label" ></asp:Label>
                                        &nbsp; THB
                                    </FooterTemplate>
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
&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Panel ID="PanelEditMoreBudget" runat="server" CssClass="style17" 
                            Visible="False" Width="702px">
                            <br />
                            Budget Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlBudget" runat="server" DataSourceID="Budget" 
                                DataTextField="Budget_Name" DataValueField="Budget_ID" Height="22px" 
                                ValidationGroup="b" Width="192px">
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
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Cancel" />
                            <br />
                        </asp:Panel>
                        <br />
                        <br />
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
                                <asp:SessionParameter Name="Activity_ID" SessionField="CarVCActivity_ID" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="SB_Name" />
                                <asp:Parameter Name="SB_Amount" />
                                <asp:Parameter Name="Budget_ID" />
                                <asp:Parameter Name="Activity_ID" />
                                <asp:Parameter Name="SB_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </asp:Panel>
                    <div class="style15">
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </div>
                </asp:Panel>
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
    </table>
</asp:Content>
