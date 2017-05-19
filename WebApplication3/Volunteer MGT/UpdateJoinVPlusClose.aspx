<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateJoinVPlusClose.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.UpdateJoinVPlusClose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 119px;
        }
        .style9
        {
            margin-left: 44px;
        }
        .style10
        {
            margin-left: 50px;
        }
        .style23
        {
            text-align: center;
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
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelSearch" runat="server" GroupingText="Search" Width="727px">
                    Search by General Activity ID or Name
                    <asp:TextBox ID="txtSearch" runat="server" Height="22px" Width="189px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/icon/search.png" onclick="ImageButton1_Click" />
                    <br />
                </asp:Panel>
                <asp:Panel ID="PanelSearchResult" runat="server" GroupingText="Search Result" 
                    Width="726px" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" 
    CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                        CssClass="style9" Width="598px" DataKeyNames="Activity_ID" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" />
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
                <asp:Panel ID="PanelGADetail" runat="server">
                    <asp:Panel ID="PanelDetail" runat="server" 
                        GroupingText="General Activity Detail" Width="782px" Visible="False">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            CellPadding="4" CssClass="style10" ForeColor="#333333" GridLines="None" 
                            Height="50px" Width="643px" DataKeyNames="Activity_ID" 
                            DataSourceID="SqlDataSource1">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                    ReadOnly="True" SortExpression="Activity_ID" />
                                <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                    SortExpression="Activity_Name" />
                                <asp:BoundField DataField="Activity_StartDate" 
                                    HeaderText="Start Date" SortExpression="Activity_StartDate" />
                                <asp:BoundField DataField="Activity_EndDate" 
                                    HeaderText="End Date" SortExpression="Activity_EndDate" />
                                <asp:BoundField DataField="Activity_Place" HeaderText="Place" 
                                    SortExpression="Activity_Place" />
                                <asp:BoundField DataField="Activity_Province" HeaderText="Province" 
                                    SortExpression="Activity_Province" />
                                <asp:BoundField DataField="Activity_Status" HeaderText="Status" 
                                    SortExpression="Activity_Status" />
                                <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                                    SortExpression="Activity_Type" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status], [Activity_Type] 
FROM [Activities] WHERE [Activity_ID] = @Activity_ID 
">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                    <asp:Panel ID="PanelSelected" runat="server" GroupingText="Selected Volunteer" 
                        Width="781px" Visible="False">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="JV" ForeColor="#333333" 
                        GridLines="None" Height="190px" Width="738px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Select Volunteer" ItemStyle-HorizontalAlign ="Center">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="VJA_ID" HeaderStyle-HorizontalAlign="Center" 
                                HeaderText="Joined Activity ID" InsertVisible="False" 
                                ItemStyle-HorizontalAlign="Center" ReadOnly="True" SortExpression="VJA_ID" />
                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                ItemStyle-HorizontalAlign="Center" SortExpression="V_ID" />
                            <asp:BoundField DataField="VJA_Status" HeaderText="Joined Status" 
                                SortExpression="VJA_Status" />
                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" 
                                SortExpression="V_Name" />
                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer LastName" 
                                SortExpression="V_LastName" />
                            <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" 
                                SortExpression="V_MobileNo1" />
                            <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" 
                                SortExpression="V_MobileNo2" />
                            <asp:BoundField DataField="V_Email" HeaderText="Email" 
                                SortExpression="V_Email" />
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
                    <asp:SqlDataSource ID="JV" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT VolunteerJoinActivities.VJA_ID, VolunteerJoinActivities.V_ID, VolunteerJoinActivities.VJA_Status, Volunteer.V_Name, Volunteer.V_LastName, Volunteer.V_MobileNo1, Volunteer.V_MobileNo2, Volunteer.V_Email FROM VolunteerJoinActivities INNER JOIN Volunteer ON VolunteerJoinActivities.V_ID = Volunteer.V_ID
WHERE Activity_ID = @Activity_ID AND VJA_Status = 'Confirmed'" UpdateCommand="UPDATE [VolunteerJoinActivities] SET [VJA_Status] ='Joined'
WHERE [VJA_ID] = @VJA_ID ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="VJA_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSave" runat="server" CssClass="style21" 
                        onclick="btnSave_Click" Text="Confirm" />
                    <br />
                    </asp:Panel>
                    
                    <asp:Panel ID="NoV" runat="server" BorderColor="Black" Visible="False" 
                        Width="816px">
                        <div class="style23">
                            <strong>
                            <br />
                            You have not selected any volunteer yet !&nbsp; Plese select voluteer first.<br />
                            </strong>
                        </div>
                    </asp:Panel>
                    &nbsp;<br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelDone" runat="server" BorderColor="Black" 
                        Visible="False">
                        <div class="style23">
                            <strong>
                            <br />
                            Hooray !! General Activity has done successfully ! Congratulation !<br /> </strong>
                        </div>
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
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

