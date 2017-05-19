<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add new training detail .aspx.cs" Inherits="WebApplication3.Training.Add_new_training_detail" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style32
        {
            color: #99CC00;
            font-size: large;
        }
        .style9
    {
            width: 152px;
        }
    .style10
    {
        width: 163px;
    }
    .style17
    {
            width: 258px;
        }
        .style38
        {
            color: #99CC00;
            font-size: medium;
        }
        .style15
    {
        text-align: right;
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
        .style40
        {
            width: 302px;
        }
        .style44
        {
            text-align: left;
        }
        .style45
        {
            margin-right: 0px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style46
        {
            text-decoration: underline;
        }
        .style47
        {
            margin-left: 172px;
        }
        .style48
        {
            margin-left: 176px;
        }
        .style49
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style50
        {
            width: 163px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style51
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style52
        {
            color: #333333;
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style32" colspan="3">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Training Management</strong></td>
            <td class="style40">
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
            <td class="style40">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2" class="style38">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
                </asp:ScriptManagerProxy>
            </td>
            <td class="style40">
                <asp:ScriptManagerProxy ID="ScriptManagerProxy2" runat="server">
                </asp:ScriptManagerProxy>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3" class="style38">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel1" runat="server" CssClass="style45" Font-Names="Tahoma" 
                            Font-Size="Small" ForeColor="#333333" GroupingText="Training Detail">
                            <span class="style39">
                    <br />
                            Training Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtName" runat="server" ValidationGroup="a" Width="216px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="Pleast insert Training Name" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            Training Start Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <BDP:BasicDatePicker ID="dbpStartDate" runat="server" DateFormat="dd-MM-yyyy" 
                                SelectablePrevMonthDays="False" ValidationGroup="a" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="dbpStartDate" ErrorMessage="Please select Start Date" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            Training End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <BDP:BasicDatePicker ID="bdpEnddate" runat="server" DateFormat="dd-MM-yyyy" 
                                ValidationGroup="a" />
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="bdpEnddate" ErrorMessage="Please select End date" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            Training Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPlace" runat="server" 
                                ValidationGroup="a" Width="212px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtPlace" ErrorMessage="Please select training place" 
                                ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                            Training Province&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlProvince" runat="server" DataSourceID="province" 
                                DataTextField="PROVINCE_ENGNAME" DataValueField="PROVINCE_ENGNAME" 
                                ValidationGroup="a" Height="22px" Width="210px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="province" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                            </asp:SqlDataSource>
                    <br />
                    <br />
                            Training Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlTTY" runat="server" AutoPostBack="True" 
                                DataSourceID="TTY" DataTextField="TTY_Name" DataValueField="TTY_ID" 
                                ValidationGroup="a" Width="210px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="TTY" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]">
                            </asp:SqlDataSource>
                    <br />
                    <br />
                            Training Team&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlTT" runat="server" DataSourceID="TT" 
                                DataTextField="TT_Name" DataValueField="TT_ID" ValidationGroup="a" 
                                Width="210px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="TT" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                SelectCommand="SELECT [TT_ID], [TT_Name] FROM [TrainingTeams]">
                            </asp:SqlDataSource>
                    <br />
                    <br />
                            Training Catagory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlTC" runat="server" DataSourceID="TC" 
                                DataTextField="TC_Name" DataValueField="TC_ID" ValidationGroup="a" 
                                Width="210px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="TC" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                SelectCommand="SELECT [TC_ID], [TC_Name] FROM [TrainingCatagories]">
                            </asp:SqlDataSource>
                    <br />
                    <br />
                            Training&nbsp; Level&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlTL" runat="server" DataSourceID="TLevel" 
                                DataTextField="Level_Name" DataValueField="Level_ID" ValidationGroup="a" 
                                Width="210px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="TLevel" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                SelectCommand="SELECT [Level_ID], [Level_Name] FROM [Levels] WHERE [TTY_ID] = @TTY_ID">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlTTY" Name="TTY_ID" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    <br />
                    <br />
                            </span>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15" colspan="3">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel2" runat="server" CssClass="style52" 
                    GroupingText="Budget Detail" Font-Names="Tahoma">
                            &nbsp;<div class="style44">
                                Budget Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlBudgetType" runat="server" 
                            AutoPostBack="True" DataSourceID="SqlDataSourceBT" DataTextField="BT_Name" 
                            DataValueField="BT_ID" Width="210px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceBT" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]"></asp:SqlDataSource>
                                <br />
                                <br />
                                <br />
                                Budget name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="BT" runat="server" Height="22px" Width="210px" 
                            ValidationGroup="b" DataSourceID="SqlDataSource1" 
                            DataTextField="Budget_Name" DataValueField="Budget_ID">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            
                            
                                    SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets] WHERE ([BT_ID] = @BT_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlBudgetType" 
                                    Name="BT_ID" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                &nbsp;<br />
                                <br />
                                Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtAmount" runat="server" Width="207px" ValidationGroup="b"></asp:TextBox>
                                THB&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtAmount" ErrorMessage="Please insert amount" 
                            ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="add" runat="server" Text="Add" onclick="add_Click" 
                            ValidationGroup="b" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="clear" runat="server" Text="Clear" onclick="clear_Click" />
                                <br />
                                <br />
                                <asp:Panel ID="Panel4" runat="server" Visible="False">
                                    <br />
                                    <div>
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" onrowdeleting="GridView1_RowDeleting" Width="380px" 
                                    CssClass="style47">
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" CssClass="style46" Text="Label"></asp:Label>
                                    &nbsp;&nbsp; THB</asp:Panel>
                            </div>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="PanelEquipment" runat="server" CssClass="style51" 
                    GroupingText="Equipment Detail" EnableViewState="False">
                            Equipment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="EType" DataTextField="ET_Name" DataValueField="ET_ID" Width="210px" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="EType" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [ET_ID], [ET_Name] FROM [EquipmentTypes]"></asp:SqlDataSource>
                            <br />
                            <br />
                            Equipment Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSourceEquip" DataTextField="E_Name" 
                        DataValueField="E_ID" Width="210px" 
                                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceEquip" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        
                        SelectCommand="SELECT [E_ID], [E_Name] FROM [Equipments] WHERE ([ET_ID] = @ET_ID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="ET_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" 
                        Width="210px">
                            </asp:DropDownList>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAddEquip" runat="server" onclick="btnAddEquip_Click" 
                        Text="Add" />
                            <br />
                            <br />
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" CssClass="style48" 
                        ForeColor="#333333" GridLines="None">
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
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style50">
                <span class="style49"></td>
            <td class="style17">
                </span></td>
            <td class="style40">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style17">
                <asp:Button ID="Confirm" runat="server" onclick="Confirm_Click" Text="Confirm" 
                    ValidationGroup="a" CssClass="style51" />
                <span class="style51">&nbsp;&nbsp;
                </span>
                <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="Cancel" 
                    ValidationGroup="a" Width="60px" CssClass="style51" />
            </td>
            <td class="style40">
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
            <td class="style40">
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
            <td class="style40">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
