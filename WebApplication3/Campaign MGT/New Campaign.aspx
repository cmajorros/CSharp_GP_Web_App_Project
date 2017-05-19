<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="New Campaign.aspx.cs" Inherits="WebApplication3.Campaign_MGT.WebForm1" %><%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style44
        {
            font-size: large;
            color: #99CC00;
            text-align: right;
        }
    .style17
    {
            width: 258px;
        }
        .style9
    {
        width: 160px;
    }
    .style10
    {
        width: 142px;
    }
        .style15
    {
        text-align: right;
    }
    .style19
    {
            width: 160px;
            height: 17px;
        }
    .style20
    {
        width: 142px;
        height: 17px;
    }
    .style21
    {
            width: 258px;
            height: 17px;
        }
    .style22
    {
        height: 17px;
    }
        .style8
    {
        width: 100%;
    }
        .style39
        {
            color: #333333;
            font-size: small;
        }
        .style46
    {
        text-decoration: underline;
    }
    .style47
    {
        color: #333333;
    }
    .style48
    {
        font-size: small;
    }
    .style49
    {
        text-align: left;
    }
    .style50
    {
            width: 342px;
        }
    .style51
    {
        height: 17px;
        width: 342px;
    }
        .style52
        {
            text-align: center;
        }
        .style53
        {
            width: 258px;
            text-align: right;
        }
        .style54
        {
            margin-left: 172px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style44" colspan="3">
                <strong>Campaign Management&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
            </td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15" colspan="3">
                <asp:Panel ID="Panel3" runat="server" GroupingText="New Campaign Detail">
                    <div class="style49">
                        Activity ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <br />
                        Campaign Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" Height="22px" ValidationGroup="a" 
                            Width="180px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Please insert campaign name" 
                            ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Campaign Start Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <BDP:BasicDatePicker ID="bdpStartDate" runat="server" DateFormat="d-MM-yyyy" 
                            SelectedDate="" ValidationGroup="a" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="bdpStartDate" ErrorMessage="Please select start date" 
                            ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Campaign End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <BDP:BasicDatePicker ID="bdpEndDate" runat="server" DateFormat="dd-MM-yyyy" 
                            ValidationGroup="a" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="bdpEndDate" ErrorMessage="Please select end date" 
                            ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Campaign Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPlace" runat="server" ValidationGroup="a" Width="180px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtPlace" ErrorMessage="Please insert place" ForeColor="Red" 
                            ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Campaign Province&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlProvince" runat="server" DataSourceID="PV" 
                            DataTextField="PROVINCE_ENGNAME" DataValueField="PROVINCE_ENGNAME" 
                            ValidationGroup="a" Width="180px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="PV" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        Campaign Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CAMPTTY" 
                            DataTextField="CAMP_Name" DataValueField="CAMP_ID" ValidationGroup="a" 
                            Width="180px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="CAMPTTY" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [CAMP_ID], [CAMP_Name] FROM [CampaignTypes]">
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        Action Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:DropDownList ID="ddlActionType" runat="server" DataSourceID="at" 
                            DataTextField="AT_Name" DataValueField="AT_ID" ValidationGroup="a" 
                            Width="180px">
                            <asp:ListItem Value="0">Select Action Type</asp:ListItem>
                            <asp:ListItem Value="1">Hard Action</asp:ListItem>
                            <asp:ListItem Value="2">Cold Action</asp:ListItem>
                            <asp:ListItem Value="3">Both</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="at" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [AT_ID], [AT_Name] FROM [ActionTypes]">
                        </asp:SqlDataSource>
                        <br />
                    </div>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <BDP:SpecialDates ID="SpecialDates1" runat="server" />
            </td>
            <td colspan="3">
                <asp:Panel ID="Panel2" runat="server" CssClass="style39" 
                    GroupingText="Budget Detail" Font-Names="Tahoma">
                    &nbsp;<div>
                        <span class="style39">Budget Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:DropDownList ID="ddlBT" runat="server" DataSourceID="SqlDataSourceBt" 
                            DataTextField="BT_Name" DataValueField="BT_ID" Width="180px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceBt" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]">
                        </asp:SqlDataSource>
                        <span class="style47"><span class="style48">
                        <br />
                        <br />
                        Budget Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlBudget" 
                            runat="server" DataSourceID="SqlDataSourceBudget" DataTextField="Budget_Name" 
                            DataValueField="Budget_ID" Width="180px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets] WHERE ([BT_ID] = @BT_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlBT" Name="BT_ID" 
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
&nbsp; </span></span>
&nbsp;<span class="style47"><span class="style48"><br />
                        <br />
                        Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
                        <asp:TextBox ID="txtAmount" runat="server" Width="184px" CssClass="style39" 
                            ValidationGroup="b" Height="20px"></asp:TextBox>
                        <span class="style47"><span class="style48">THB&nbsp;&nbsp;&nbsp; </span></span>
                        <span class="style48">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtAmount" CssClass="style47" 
                            ErrorMessage="Please insert amount" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                        </span><span class="style47"><span class="style48">
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
                        <asp:Button ID="add0" runat="server" CssClass="style39" Text="Add" 
                            ValidationGroup="b" onclick="add0_Click" />
                        <span class="style39">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Button ID="clear0" runat="server" CssClass="style39" 
                            onclick="clear0_Click" Text="Clear" ValidationGroup="b" />
                        <span class="style39">
                        <br />
                        <br />
                        <asp:Panel ID="Panel4" runat="server" Visible="False">
                            <div class="style52">
                                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" onrowdeleting="GridView2_RowDeleting" 
                                    ShowHeaderWhenEmpty="True" Width="427px" 
                                    onrowdatabound="GridView2_RowDataBound" CssClass="style54">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" />
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
                            </div>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" CssClass="style46" Text="Label"></asp:Label>
                            &nbsp;&nbsp; THB</asp:Panel>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="style52">
                        </div>
                    </div>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style53">
               
                <asp:Button ID="Confirm" runat="server" Text="Confirm" ValidationGroup="a" 
                    onclick="Confirm_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click1" Text="Cancel" 
                    ValidationGroup="a" />
            </td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
            </td>
            <td class="style20">
            </td>
            <td class="style21">
            </td>
            <td class="style51">
            </td>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
