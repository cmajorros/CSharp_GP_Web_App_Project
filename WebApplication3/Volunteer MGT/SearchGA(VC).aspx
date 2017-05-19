<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchGA(VC).aspx.cs" Inherits="WebApplication3.Volunteer_MGT.SearchGA_VC_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 114px;
        }
        .style14
        {
            margin-right: 134px;
        }
        .style19
        {
            width: 372px;
        }
        .style20
        {
            width: 204px;
        }
        .style21
        {
            text-decoration: underline;
        }
        .style23
        {
            text-align: left;
        }
        .style24
        {
            text-align: right;
            width: 296px;
        }
        .style25
        {
            width: 296px;
        }
        .style26
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                <asp:Panel ID="Panel1" runat="server" GroupingText="Search" Width="748px">
                    Search by General Activity ID or Name&nbsp;
                    <asp:TextBox ID="txtSearch" runat="server" Width="194px" 
                        OnClick="this.value=''"  ></asp:TextBox>
                    <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/icon/search.png" 
                        onclick="btnSearch_Click" />
                </asp:Panel>
                <asp:Panel ID="PanelSearchResult" runat="server" GroupingText="Search Result" 
                    Width="749px" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Width="671px" AutoGenerateColumns="False" 
                        DataKeyNames="Activity_ID" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
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
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelGADetail" runat="server" 
                    GroupingText="General Activity Detail" Visible="False" Width="856px">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
    CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
    Width="704px" AutoGenerateRows="False" DataKeyNames="Activity_ID" 
                        DataSourceID="SqlDataSource1">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity_ID" 
                                ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity_Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity_StartDate" 
                                SortExpression="Activity_StartDate" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity_EndDate" 
                                SortExpression="Activity_EndDate" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Activity_Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Activity_Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity_Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity_Type" 
                                SortExpression="Activity_Type" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status, Activity_Type FROM Activities WHERE Activity_ID =@Activity_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="PanelSelectVolunteer" runat="server" CssClass="style14" 
                            GroupingText="Select Volunteer" Visible="False">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="style20">
                                        Most Active Volunteer
                                    </td>
                                    <td class="style24">
                                        <asp:Label ID="lblMostActive" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnMostActive" runat="server" onclick="btnMostActive_Click">Show Detail</asp:LinkButton>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelMostActiveResult" runat="server" Visible="False">
                    <br />
                                            Most Active Volunteer Result<br />
                    <br />
                                            <asp:GridView ID="gvMostActive" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                Width="620px" DataKeyNames="V_ID" ondatabound="gvMostActive_DataBound" 
                                                onrowcommand="gvMostActive_RowCommand" 
                                                onrowdatabound="gvMostActive_RowDataBound" 
                                                onselectedindexchanged="gvMostActive_SelectedIndexChanged" 
                                                onselectedindexchanging="gvMostActive_SelectedIndexChanging">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                    <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                    <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnSaveMostActive" runat="server" Text="Save" 
                                                onclick="btnSaveMostActive_Click" />
                                            &nbsp;
                                            <asp:Button ID="btnCancelMostActive" runat="server" 
                                                onclick="btnCancelMostActive_Click" Text="Cancel" />
                                            <br />
                    <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        New Volunteer</td>
                                    <td class="style24">
                                        <asp:Label ID="lblNew" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnNew" runat="server" onclick="btnNew_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelNewResult" runat="server" Visible="False">
                    <br />
                                            New Volunteer Result<br />
                    <br />
                                            <asp:GridView ID="gvNew" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                Width="620px">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                    <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                    <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnSaveNew" runat="server" Text="Save" 
                                                onclick="btnSaveNew_Click" />
                                            &nbsp;
                                            <asp:Button ID="btnCancelNew" runat="server" onclick="btnCancelNew_Click" 
                                                Text="Cancel" />
                                            <br />
                    <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        Active Volunteer
                                    </td>
                                    <td class="style24">
                                        <asp:Label ID="lblActive" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnActive" runat="server" onclick="btnActive_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelActiveResult" runat="server" Visible="False">
                    <br />
                                            Active Volunteer Result<br />
                    <br />
                                            <asp:GridView ID="gvActive" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                Width="620px" DataKeyNames="V_ID" ondatabound="gvActive_DataBound">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                                                oncheckedchanged="CheckBox1_CheckedChanged" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                    <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                    <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button3" runat="server" Text="Save" onclick="Button3_Click" />
                                            &nbsp;
                                            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Cancel" />
                                            <br />
                    <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        Deactive Volunteer
                                    </td>
                                    <td class="style24">
                                        <asp:Label ID="lblDeactive" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnDeActive" runat="server" onclick="btnDeActive_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelDeactiveResult" runat="server" Visible="False">
                    <br />
                                            <span class="style21"><strong>Deactive Volunteer Result</strong></span><br />
                                            <asp:GridView ID="gvDeactive" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False" 
                                                Width="620px">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                    <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                    <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
                                            &nbsp;
                                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                                            <br />
                    <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        All Volunteers</td>
                                    <td class="style24">
                                        <asp:Label ID="lblAllVolunteer" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnAll" runat="server" onclick="btnAll_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelAllResult" runat="server">
                                            <asp:Panel ID="PanelAll" runat="server" Visible="False">
                                                <br />
                                                <span class="style21"><strong>All Volunteers&nbsp; Result</strong></span><br />
                                                <br />
                                                <asp:GridView ID="gvAllV" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                    Width="620px">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Select">
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                            </ItemTemplate>
                                                            <ItemStyle BorderStyle="None" HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="V_Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                        <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                        <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                        <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                        <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnSaveAllV" runat="server" Text="Save" 
                                                    onclick="btnSaveAllV_Click" />
                                                &nbsp;
                                                <asp:Button ID="btnCancelAllV" runat="server" onclick="btnCancelAllV_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </asp:Panel>
                                        </asp:Panel>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="style20">
                                        Volunteer Area</td>
                                    <td class="style25">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <div class="style23">
                                                    <asp:DropDownList ID="ddlVArea" runat="server" AutoPostBack="True" 
                                                        DataSourceID="SqlDataSourceProvince0" DataTextField="JA_Name" 
                                                        DataValueField="JA_ID" Height="22px" 
                                                        onselectedindexchanged="ddlVArea_SelectedIndexChanged" Width="142px">
                                                    </asp:DropDownList>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="lblVArea" runat="server" Text="0"></asp:Label>
                                                </div>
                                                <asp:SqlDataSource ID="SqlDataSourceProvince0" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                    SelectCommand="SELECT [JA_ID], [JA_Name] FROM [JoinedAreas]">
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnVarea" runat="server" onclick="btnVarea_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelVAreaResult" runat="server" Visible="False">
                    <br />
                                            <span class="style21"><strong>Volunteer&nbsp; </strong></span><strong>
                                            <asp:Label ID="lblArea" runat="server" CssClass="style21" Text="Label"></asp:Label>
                                            </strong><span class="style21"><strong>&nbsp; Area&nbsp; Result</strong></span><br />
                    <br />
                                            <asp:GridView ID="gvVArea" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                Width="620px">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle BorderStyle="None" HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                    <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                    <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button7" runat="server" Text="Save" onclick="Button7_Click" />
                                            &nbsp;
                                            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Cancel" />
                                            <br />
                    <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        Volunteer Interest</td>
                                    <td class="style25">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="ddlVInterest" runat="server" AutoPostBack="True" 
                                                    DataSourceID="SqlDataSourceInterest" DataTextField="Interest_Name" 
                                                    DataValueField="Interest_ID" Height="22px" 
                                                    onselectedindexchanged="ddlVInterest_SelectedIndexChanged" Width="142px">
                                                </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lblVInterest" runat="server" Text="0"></asp:Label>
                                                <asp:SqlDataSource ID="SqlDataSourceInterest" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                    SelectCommand="SELECT [Interest_ID], [Interest_Name] FROM [Interests]">
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;
                                        <asp:LinkButton ID="btnVInterest" runat="server" onclick="btnVInterest_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        <asp:Panel ID="PanelVInterestResult" runat="server" Visible="False">
                    <br />
                                            Volunteer by Interest Result<br />
                    <br />
                                            <asp:GridView ID="gvVInterest" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                Width="620px">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Thai Name" />
                                                    <asp:BoundField DataField="V_LastName" HeaderText="Thai Lastname" />
                                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                    <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button9" runat="server" Text="Save" onclick="Button9_Click" />
                                            &nbsp;
                                            <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                                                Text="Cancel" />
                                            <br />
                    <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
                                        </asp:ScriptManagerProxy>
                                    </td>
                                    <td class="style19">
                                        <asp:ScriptManagerProxy ID="ScriptManagerProxy2" runat="server">
                                        </asp:ScriptManagerProxy>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style26" colspan="3">
                                        <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                                            Text="Send Invitation Mail" />
                                        &nbsp;
                                        <asp:Button ID="Button12" runat="server" onclick="Button12_Click" Text="Exit" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
