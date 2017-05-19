<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActivityDetail.aspx.cs" Inherits="WebApplication3.CD.ActivityDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 76px;
        }
        .style10
        {
            text-align: right;
        }
        .style11
        {
            margin-right: 17px;
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
                <asp:Panel ID="Panel1" runat="server" GroupingText="Activity Detail" 
                    Width="865px" CssClass="style11">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
                        Visible="False" Width="800px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Status" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
                            <asp:BoundField DataField="CAMP_Name" HeaderText="Campaign Name" />
                            <asp:BoundField DataField="AT_Name" HeaderText="Action Type" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GridViewSB1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSourceBudget" 
                                        ForeColor="#333333" GridLines="None" Width="600px" 
                                        onrowdatabound="GridViewSB1_RowDataBound" ShowFooter="True">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" ItemStyle-HorizontalAlign = "Center"
                                                SortExpression="Budget_ID" />
                                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount","{0:N}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <div class="style10">
                                                        <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                                        &nbsp;&nbsp; THB
                                                    </div>
                                                </FooterTemplate>
                                                <ItemStyle HorizontalAlign="Right" />
                                            </asp:TemplateField>
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
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="SqlDataSourceJV" 
                                        ForeColor="#333333" GridLines="None" Width="660px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Joined ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                                SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="Joined Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name (Thai)" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer Last Name (Thai)" 
                                                SortExpression="V_LastName" />
                                            <asp:BoundField DataField="V_EngName" HeaderText="Volunteer Name (English)" 
                                                SortExpression="V_EngName" />
                                            <asp:BoundField DataField="V_EngLastName" 
                                                HeaderText="Volunteer Last Name(English)" SortExpression="V_EngLastName" />
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
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
                        Visible="False" Width="800px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Training Name" />
                            <asp:BoundField DataField="TTY_Name" HeaderText="Training Type" />
                            <asp:BoundField DataField="TT_Name" HeaderText="Training Team" />
                            <asp:BoundField DataField="TC_Name" HeaderText="Training Category" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GridViewSB2" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSourceBudget" 
                                        ForeColor="#333333" GridLines="None" Width="600px" 
                                        onrowdatabound="GridViewSB2_RowDataBound" ShowFooter="True">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" ItemStyle-HorizontalAlign = "Center" 
                                                SortExpression="Budget_ID" />
                                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount" ,"{0:N}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <div class="style10">
                                                        <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                                        &nbsp;&nbsp; THB
                                                    </div>
                                                </FooterTemplate>
                                                <ItemStyle HorizontalAlign="Right" />
                                            </asp:TemplateField>
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
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="SqlDataSourceJV" 
                                        ForeColor="#333333" GridLines="None" Width="659px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Joined ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                                SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="Joined Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name (Thai)" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer Last Name (Thai)" 
                                                SortExpression="V_LastName" />
                                            <asp:BoundField DataField="V_EngName" HeaderText="Volunteer Name (English)" 
                                                SortExpression="V_EngName" />
                                            <asp:BoundField DataField="V_EngLastName" 
                                                HeaderText="Volunteer Last Name(English)" SortExpression="V_EngLastName" />
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
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
                        Visible="False" Width="800px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Status" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GridViewSB3" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSourceBudget" 
                                        ForeColor="#333333" GridLines="None" Width="600px" ShowFooter="True" 
                                        onrowdatabound="GridViewSB3_RowDataBound">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                       <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" >
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" ItemStyle-HorizontalAlign = "Center"
                                                SortExpression="Budget_ID" />
                                            <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount","{0:N}") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <FooterTemplate>
                                                    <div class="style10">
                                                        <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                                        &nbsp;&nbsp; THB
                                                    </div>
                                                </FooterTemplate>
                                                <ItemStyle HorizontalAlign="Right" />
                                            </asp:TemplateField>
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
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer ">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="SqlDataSourceJV" 
                                        ForeColor="#333333" GridLines="None" Width="660px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Joined ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                                SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="Joined Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name (Thai)" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer Last Name (Thai)" 
                                                SortExpression="V_LastName" />
                                            <asp:BoundField DataField="V_EngName" HeaderText="Volunteer Name (English)" 
                                                SortExpression="V_EngName" />
                                            <asp:BoundField DataField="V_EngLastName" 
                                                HeaderText="Volunteer Last Name(English)" SortExpression="V_EngLastName" />
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
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <br />
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
                <asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SB_ID], [SB_Amount],[SubBudgets].[Budget_ID], [Budget_Name] FROM [SubBudgets],[Budgets] WHERE ([Activity_ID] = @Activity_ID AND [SubBudgets].[Budget_ID] =[Budgets].[Budget_ID])">
                    <SelectParameters>
                        <asp:SessionParameter Name="Activity_ID" SessionField="ActivityIDTest" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceJV" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT VolunteerJoinActivities.VJA_ID, VolunteerJoinActivities.V_ID, VolunteerJoinActivities.VJA_Status, Volunteer.V_Name, Volunteer.V_LastName, Volunteer.V_EngName, Volunteer.V_EngLastName FROM VolunteerJoinActivities INNER JOIN Volunteer ON VolunteerJoinActivities.V_ID = Volunteer.V_ID WHERE Activity_ID =@Activity_ID">
                    <SelectParameters>
                        <asp:SessionParameter Name="Activity_ID" SessionField="ActivityIDTest" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
