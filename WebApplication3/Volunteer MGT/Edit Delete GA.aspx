<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit Delete GA.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.Edit_Delete_GA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 95px;
        }
        .style9
        {
            width: 95px;
            height: 17px;
        }
        .style10
        {
            height: 17px;
        }
        .style11
        {
            color: #99CC00;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                <strong>General Activity Detail</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" Height="50px" 
                    Width="719px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    ondatabound="DetailsView1_DataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" VerticalAlign="Top" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Activity_ID" HeaderText="Activity_ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                        <asp:BoundField DataField="Activity_Name" HeaderText="Activity_Name" 
                            SortExpression="Activity_Name" />
                        <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity_StartDate" 
                            SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity_EndDate" 
                            SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="Activity_Place" HeaderText="Activity_Place" 
                            SortExpression="Activity_Place" />
                        <asp:BoundField DataField="Activity_Province" HeaderText="Activity_Province" 
                            SortExpression="Activity_Province" />
                        <asp:BoundField DataField="Activity_Status" HeaderText="Activity_Status" 
                            SortExpression="Activity_Status" />
                        <asp:TemplateField HeaderText="Budget">
                            <ItemTemplate>
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataKeyNames="SB_ID" DataSourceID="Budget" ForeColor="#333333" 
                                    GridLines="None" Height="165px" Width="668px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="SB_ID" HeaderText="Sub Budget ID" 
                                            InsertVisible="False" ReadOnly="True" SortExpression="SB_ID" />
                                        <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                            SortExpression="Budget_ID" />
                                        <asp:BoundField DataField="Budget_Name" HeaderText="Budget Name" 
                                            SortExpression="Budget_Name" />
                                        <asp:BoundField DataField="SB_Name" HeaderText="SubBudget Name" 
                                            SortExpression="SB_Name" />
                                        <asp:BoundField DataField="SB_Amount" HeaderText="Amount" 
                                            SortExpression="SB_Amount" />
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
                                <asp:SqlDataSource ID="Budget" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [SB_ID], [SubBudgets].[Budget_ID], [Budget_Name],[SB_Amount], [SB_Name] FROM [SubBudgets],[Budgets] WHERE ([Activity_ID] = @Activity_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DetailsView1" Name="Activity_ID" 
                                            PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Joined Volunteer">
                            <ItemTemplate>
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="VJA" ForeColor="#333333" GridLines="None" 
                                    Width="671px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                            SortExpression="V_ID" />
                                        <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" 
                                            SortExpression="V_Name" />
                                        <asp:BoundField DataField="V_LastName" HeaderText="Volunteer LastName" 
                                            SortExpression="V_LastName" />
                                        <asp:BoundField DataField="VJA_Status" HeaderText="Volunteer Status" 
                                            SortExpression="VJA_Status" />
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
                                <asp:SqlDataSource ID="VJA" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [VolunteerJoinActivities].[V_ID],[V_Name],[V_LastName], [VJA_Status] FROM [VolunteerJoinActivities],[Volunteer] WHERE ([Activity_ID] = @Activity_ID ) AND ( [VolunteerJoinActivities].[V_ID] =  [Volunteer].[V_ID])">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DetailsView1" Name="Activity_ID" 
                                            PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status] FROM [Activities] WHERE [Activity_ID] =@Activity_ID" UpdateCommand="UPDATE [Activities] SET [Activity_Name] =@Activity_Name, [Activity_StartDate] =@Activity_StartDate, [Activity_EndDate] =Activity_EndDate, [Activity_Place] =Activity_Place, [Activity_Province] =@Activity_Province
WHERE [Activity_ID]=@Activity_ID">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Activity_ID" QueryStringField="id" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Activity_Name" />
                        <asp:Parameter Name="Activity_StartDate" />
                        <asp:Parameter Name="Activity_Province" />
                        <asp:Parameter Name="Activity_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Button ID="Edit" runat="server" Text="Edit " Visible="False" />
                <asp:Button ID="Delete" runat="server" Text="Delete" Visible="False" />
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style8">
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
        </tr>
        <tr>
            <td class="style8">
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
        </tr>
        <tr>
            <td class="style8">
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
        </tr>
    </table>
</asp:Content>
