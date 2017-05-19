<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="insert new ga.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.insert_new_ga" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
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
        width: 207px;
    }
    .style10
    {
            width: 157px;
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
        .style48
    {
        font-size: small;
    }
    .style47
    {
        color: #333333;
    }
        .style51
        {
            text-decoration: underline;
        }
        .style53
        {
            width: 361px;
        }
        .style54
        {
            height: 30px;
        }
        .style52
        {
            font-size: small;
            margin-left: 0px;
        }
        .style55
        {
            margin-left: 160px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style44" colspan="2">
                <strong>General Activity Management&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style53">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style54">
                </td>
            <td colspan="3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel3" runat="server" CssClass="style52" ForeColor="#333333" 
                            GroupingText="New General Activity Detail">
                            Activity ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                            Activi<span class="style39">ty Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblStatus" runat="server" Text="Starting"></asp:Label>
                    <br />
                    <br />
                            General Activity Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtName" runat="server" ValidationGroup="a" Width="216px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="Please insert General Activity name" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            General Activity Start Date&nbsp;
                            <BDP:BasicDatePicker ID="bdpStartDate" runat="server" DateFormat="dd-MM-yyyy" 
                                onselectionchanged="bdpStartDate_SelectionChanged" ValidationGroup="a" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="bdpStartDate" ErrorMessage="Please select start date" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            General Activity&nbsp; End Date &nbsp;
                            <BDP:BasicDatePicker ID="bdpEndDate" runat="server" DateFormat="dd-MM-yyyy" 
                                ValidationGroup="a" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="bdpEndDate" ErrorMessage="Please select end date" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            General Activity Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtPlace" runat="server" ValidationGroup="a" Width="212px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtPlace" ErrorMessage="Please insert place" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            General Activity&nbsp; Province&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlProvince" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="PROVINCE_ENGNAME" DataValueField="PROVINCE_ENGNAME" 
                                ValidationGroup="a" Width="210px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                            </asp:SqlDataSource>
                            </span>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" CssClass="style39" 
                            GroupingText="Budget Detail">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<div>
                                <span class="style39"><span class="style47"><span class="style48">Budget 
                                Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList 
                                    ID="BT" runat="server" 
                                    DataSourceID="Budget" DataTextField="BT_Name" DataValueField="BT_ID" 
                                    Width="210px" AutoPostBack="True">
                                </asp:DropDownList>
                                &nbsp;&nbsp; </span></span>
                                <asp:SqlDataSource ID="Budget" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]">
                                </asp:SqlDataSource>
                                <br />
                                &nbsp;<br /> Budget name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlBudget" 
                                    runat="server" DataSourceID="SqlDataSourceBudget" DataTextField="Budget_Name" 
                                    DataValueField="Budget_ID" Width="210px">
                                </asp:DropDownList>
                                &nbsp;<asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets] WHERE ([BT_ID] = @BT_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="BT" Name="BT_ID" PropertyName="SelectedValue" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </span><span class="style47"><span class="style48">
                                <br />
                                <br />
                                Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
                                <asp:TextBox ID="txtAmount" runat="server" CssClass="style39" 
                                    ValidationGroup="b" Width="207px"></asp:TextBox>
                                <span class="style47"><span class="style48">THB&nbsp;&nbsp;&nbsp; </span></span>
                                <span class="style48">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtAmount" CssClass="style47" 
                                    ErrorMessage="Please insert amount" ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                                </span><span class="style47"><span class="style48">
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
                                <asp:Button ID="add0" runat="server" CssClass="style39" onclick="add0_Click" 
                                    Text="Add" ValidationGroup="b" />
                                <span class="style39">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:Button ID="Button1" runat="server" Text="Clear" ValidationGroup="b" />
                                <span class="style39">
                                <br />
                                <br />
                                </span>
                                <asp:Panel ID="Panel4" runat="server" Visible="False">
                                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" CssClass="style55" 
                                        ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                                        onrowdeleting="GridView1_RowDeleting" ShowFooter="True" Width="406px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
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
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Total</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" CssClass="style51" Text="Label"></asp:Label>
                                    &nbsp; THB</asp:Panel>
                                <br />
                                <br />
                            </div>
                        </asp:Panel>
            <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Confirm" runat="server" onclick="Confirm_Click" 
                            Text="Confirm" />
                        &nbsp;
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="style54">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
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
            <td class="style53">
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
            <td class="style53">
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
            <td class="style53">
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
            <td class="style53">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
