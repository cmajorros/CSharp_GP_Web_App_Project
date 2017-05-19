<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateJoinedVolunteer.aspx.cs" Inherits="WebApplication3.Training.UpdateJoinedVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style9
        {
            width: 861px;
        }
        .style21
        {
            font-family: Tahoma;
        }
        .style22
        {
            width: 88px;
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
            <td class="style22">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="PanelSearch" runat="server" GroupingText="Search" Width="856px">
                    Search by Training ID or Name &nbsp;
                    <asp:TextBox ID="txtSearch" runat="server" Width="221px" 
                        OnClick="this.value=''" CssClass="style21"></asp:TextBox>
                    <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="../icon/search.png" 
                        onclick="btnSearch_Click" style="height: 26px" />
                </asp:Panel>
                <asp:Panel ID="PanelSearchResult" runat="server" GroupingText="Search Result" 
                    Width="859px" Visible="False">
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataKeyNames="Activity_ID" ForeColor="#333333" GridLines="None" 
                            Height="102px" Width="778px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                                <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                                <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                    HeaderText="StartDate" />
                                <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                    HeaderText="EndDate" />
                                <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" />
                                <asp:BoundField DataField="TTY_Name" HeaderText="Training Type" />
                                <asp:BoundField DataField="TT_Name" HeaderText="Training Team" />
                                <asp:BoundField DataField="TT_ID" HeaderText="Traing Team ID" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
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
                    </div>
                </asp:Panel>
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Training Detail" 
                    Height="386px" Width="856px" Visible="False">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" Height="34px" Width="786px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="StartDate" SortExpression="Activity_StartDate" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="EndDate" SortExpression="Activity_EndDate" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                                SortExpression="Activity_Type" />
                            <asp:BoundField DataField="TTY_Name" HeaderText="Training Type " 
                                SortExpression="TTY_Name" />
                            <asp:BoundField DataField="TT_Name" HeaderText="Training Team" 
                                SortExpression="TT_Name" />
                            <asp:BoundField DataField="TC_Name" HeaderText="Trainin Catagory" 
                                SortExpression="TC_Name" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status], [Activities].[TTY_ID], [Activities]. [TT_ID],  [Activities].[TC_ID], [Activity_Type] , [TTY_Name], [TT_Name], [TC_Name]
FROM [Activities],TrainingTypes, TrainingCatagories, TrainingTeams WHERE ([Activity_ID] = @Activity_ID 
AND [Activities].[TTY_ID]= [TrainingTypes].[TTY_ID]  AND  [Activities]. [TT_ID] =  [TrainingTeams]. [TT_ID] 
AND [Activities].[TC_ID] = [TrainingCatagories].[TC_ID]  )">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </asp:Panel>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Volunteer Detail" 
                    Width="852px" Visible="False">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="JV" ForeColor="#333333" 
                        GridLines="None" Height="190px">
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
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                <asp:Panel ID="NoV" runat="server" BorderColor="Black" Visible="False" 
                    Width="816px">
                    <div class="style23">
                        <strong>
                            <br />
                            You have not selected any volunteer yet !&nbsp; Plese select voluteer first.<br />
                            </strong>
                    </div>
                </asp:Panel>
                &nbsp;<asp:Panel ID="PanelDone" runat="server" BorderColor="Black" Visible="False">
                    <div class="style23">
                        <strong>
                        <br />
                        Hooray !! Campaign has done successfully ! Congratulation !<br /> </strong>
                    </div>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
