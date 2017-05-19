<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GA Search Result .aspx.cs" Inherits="WebApplication3.Volunteer_MGT.Training_Search_Result" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 102px;
        }
        .style11
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                

                <asp:Panel ID="Panel1" runat="server" GroupingText="Search" Width="853px">
                    &nbsp;Activity Status&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Starting</asp:ListItem>
                        <asp:ListItem>End</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;Search by General Activity ID or Name&nbsp;&nbsp;
                    <asp:TextBox ID="txtSearch" runat="server" OnClick="this.value=''" Font-Italic="False" 
                    ForeColor="Gray" Width="238px" ></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon/search.png" onclick="ImageButton1_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelResultStart" runat="server" GroupingText="Search Result " 
                    Visible="False" Width="851px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Visible="False" 
                        Width="706px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity EndDate" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
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
                        
                        SelectCommand="SELECT Activity_ID, Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status FROM Activities WHERE (Activity_Type = 'General Activity') AND (Activity_ID LIKE '%' + @Activity_ID + '%') AND (Activity_Status = 'Starting') OR (Activity_Name LIKE '%' + @Activity_Name + '%') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_ID" 
                                PropertyName="Text" DefaultValue="" />
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_Name" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SqlDataSource2" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged" Visible="False" 
                        Width="710px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity EndDate" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate FROM Activities WHERE (Activity_Type = 'General Activity') AND (Activity_Status = 'End') AND (Activity_ID LIKE '%' + @Activity_ID + '%') OR (Activity_Name LIKE '%' + @Activity_Name + '%') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_ID" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_Name" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelResultEdit" runat="server" 
                    GroupingText="General Activity Detail" Visible="False" Width="851px">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                            CellPadding="4" DataKeyNames="Activity_ID" datasourceid="GADetailEdit" 
                            ForeColor="#333333" GridLines="None" Height="50px" Width="816px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:TemplateField HeaderText="Activity ID" InsertVisible="False" 
                                SortExpression="Activity_ID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Enabled="False" 
                                        Text='<%# Eval("Activity_ID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Activity_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                    SortExpression="Activity_Name" />
                            <asp:TemplateField HeaderText="Activity StartDate" 
                                SortExpression="Activity_StartDate">
                                <EditItemTemplate>
                                    <BDP:BasicDatePicker ID="BasicDatePicker3" runat="server" AutoPostBack="True" 
                                        DateFormat="dd-MM-yyyy" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" 
                                        Text='<%# Bind("Activity_StartDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" 
                                        Text='<%# Bind("Activity_StartDate", "{0:d}") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Activity EndDate" 
                                SortExpression="Activity_EndDate">
                                <EditItemTemplate>
                                    <BDP:BasicDatePicker ID="BasicDatePicker4" runat="server" AutoPostBack="True" 
                                        DateFormat="dd-MM-yyyy" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" 
                                        Text='<%# Bind("Activity_EndDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" 
                                        Text='<%# Bind("Activity_EndDate", "{0:d}") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Activity_Place" HeaderText="Activity Place" 
                                SortExpression="Activity_Place" />
                            <asp:TemplateField HeaderText="Activity Province" 
                                SortExpression="Activity_Province">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                        DataSourceID="Province" DataTextField="PROVINCE_ENGNAME" 
                                        DataValueField="PROVINCE_ENGNAME">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Province" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Activity_Province") %>'></asp:Label>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" 
                                        Text='<%# Bind("Activity_Province") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Activity Status" 
                                SortExpression="Activity_Status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" 
                                        Text='<%# Bind("Activity_Status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Activity_Status") %>'></asp:Label>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Activity_Status") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Budget">
                                <EditItemTemplate>
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="EditBudget" 
                                        ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="SB_ID" HeaderText="SB_ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget_ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:BoundField DataField="Budget_Name" HeaderText="Budget_Name" 
                                                SortExpression="Budget_Name" />
                                            <asp:BoundField DataField="SB_Amount" HeaderText="SB_Amount" 
                                                SortExpression="SB_Amount" />
                                            <asp:BoundField DataField="SB_Name" HeaderText="SB_Name" 
                                                SortExpression="SB_Name" />
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
                                    <asp:SqlDataSource ID="EditBudget" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        DeleteCommand="DELETE [SubBudgets] WHERE [SB_ID] =@SB_ID" 
                                        SelectCommand="SELECT [SB_ID],[SubBudgets].[Budget_ID],[Budget_Name], [SB_Amount], [SB_Name] FROM [SubBudgets],[Budgets] WHERE [SB_ID] =@SB_ID AND [SubBudgets].[Budget_ID] =[Budgets].[Budget_ID] AND [Activity_ID]=@Activity_ID" 
                                        UpdateCommand="UPDATE  [SubBudgets] SET [Budget_ID]= @Budget_ID,[SB_Name]=@SB_Name,[SB_Amount] =@SB_Amount WHERE [SB_ID] =@SB_ID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="SB_ID" />
                                        </DeleteParameters>
                                        <SelectParameters>
                                            <asp:Parameter Name="SB_ID" />
                                            <asp:ControlParameter ControlID="DetailsView2" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Budget_ID" />
                                            <asp:Parameter Name="SB_Name" />
                                            <asp:Parameter Name="SB_Amount" />
                                            <asp:Parameter Name="SB_ID" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="ShowBudget" 
                                        ForeColor="#333333" GridLines="None" ShowFooter="True" 
                                        onrowdatabound="GridView3_RowDataBound">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:BoundField DataField="Budget_Name" HeaderText="Budget Name" 
                                                SortExpression="Budget_Name" />
                                            <asp:TemplateField HeaderText="SubBudget Name" SortExpression="SB_Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SB_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSBName" runat="server" Text='<%# Bind("SB_Name") %>'></asp:Label>
                                                    
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                <asp:Label ID="lbltxttotal" runat="server" Text="Total"/>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                                </ItemTemplate>
                                               <FooterTemplate>
                                                <asp:Label ID="lblTotal" runat="server" />
                                                </FooterTemplate>
                                               
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
                                    <asp:SqlDataSource ID="ShowBudget" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [SB_ID],[SubBudgets].[Budget_ID],[Budget_Name], [SB_Amount], [SB_Name] FROM [SubBudgets],[Budgets] WHERE [SB_ID] =@SB_ID AND [SubBudgets].[Budget_ID] =[Budgets].[Budget_ID] AND [Activity_ID]=@Activity_ID">
                                        <SelectParameters>
                                            <asp:Parameter Name="SB_ID" />
                                            <asp:ControlParameter ControlID="DetailsView2" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Volunteer">
                                <EditItemTemplate>
                                    <asp:GridView ID="GVVJA" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="VJAEditMode" 
                                        ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="VJA_ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="V_ID" SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="VJA_Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="V_Name" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="V_LastName" 
                                                SortExpression="V_LastName" />
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
                                    <asp:SqlDataSource ID="VJAEditMode" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [VJA_ID], [VolunteerJoinActivities].[V_ID], [VJA_Status],[V_Name], [V_LastName] FROM [VolunteerJoinActivities], [Volunteer] WHERE  [VolunteerJoinActivities].[V_ID] = [Volunteer].[V_ID] AND [Activity_ID] =@Activity_ID ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:GridView ID="GVVJA" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="VJA" ForeColor="#333333" 
                                        GridLines="None" Width="628px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="VJA_ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="V_ID" SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="VJA_Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="V_Name" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="V_LastName" 
                                                SortExpression="V_LastName" />
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
                                    <asp:SqlDataSource ID="VJA" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        
                                        SelectCommand="SELECT [VJA_ID], [VolunteerJoinActivities].[V_ID], [VJA_Status],[V_Name], [V_LastName] FROM [VolunteerJoinActivities], [Volunteer] WHERE [Activity_ID] =@Activity_ID AND [VolunteerJoinActivities].[V_ID] = [Volunteer].[V_ID] ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="GADetailEdit" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            
                            
                        SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status], [Activity_Type] FROM [Activities] WHERE ([Activity_ID] = @Activity_ID)" 
                        DeleteCommand="DELETE Activities WHERE [Activity_ID] =@Activity_ID" UpdateCommand="UPDATE [Activities] SET [Activity_Name] =@Activiy_Name, [Activity_StartDate] =@Activity_StartDate, [Activity_EndDate] =@Activity_EndDate, [Activity_Place] =@Activity_Place, [Activity_Province] =Activity_Province
WHERE [Activity_ID] =@Activity_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Activity_ID" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                    PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Activiy_Name" />
                            <asp:Parameter Name="Activity_StartDate" />
                            <asp:Parameter Name="Activity_EndDate" />
                            <asp:Parameter Name="Activity_Place" />
                            <asp:Parameter Name="Activity_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <strong>
                    <asp:LinkButton ID="Edit" runat="server" CssClass="style11" ForeColor="#333333" 
                        onclick="Edit_Click">Edit </asp:LinkButton>
                    <span class="style11">&nbsp;
                    <asp:LinkButton ID="Delete" runat="server" ForeColor="#333333" 
                        onclick="Delete_Click" 
                        
                        onclientclick="return confirm('Are you sure you want to cancel the activity?')">Cancel Activity</asp:LinkButton>
                    </span></strong>
                </asp:Panel>
                <asp:Panel ID="PanelUnEdit" runat="server" 
                    GroupingText="General Activity Result" Visible="False" Width="848px">
                    <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" 
                            CellPadding="4" DataKeyNames="Activity_ID" datasourceid="GADetailNotEdit" 
                            ForeColor="#333333" GridLines="None" Height="50px" Width="821px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
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
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity_Type" 
                                SortExpression="Activity_Type" />
                            <asp:TemplateField HeaderText="Budget">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SB" ForeColor="#333333" 
                                        GridLines="None" Height="27px" Width="700px" ShowFooter="True" 
                                        onrowdatabound="GridView5_RowDataBound">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="SB_ID" HeaderText="SubBudet ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="SB_ID" />
                                            <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                                SortExpression="Budget_ID" />
                                            <asp:BoundField DataField="Budget_Name" HeaderText="Budget Name" 
                                                SortExpression="Budget_Name" />
                                            <asp:TemplateField HeaderText="SB_Name" SortExpression="SB_Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SB_Name") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SB_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                <asp:Label ID="lbltxttotal" runat="server" Text="Total"/>
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount" SortExpression="SB_Amount">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                <asp:Label ID="lblTotal" runat="server" />
                                                </FooterTemplate>
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
                                    <asp:SqlDataSource ID="SB" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT [SB_ID],[SubBudgets].[Budget_ID],[Budget_Name], 
[SB_Amount], [SB_Name] FROM [SubBudgets],[Budgets] 
WHERE  [Activity_ID]=@Activity_ID
AND [SubBudgets].[Budget_ID] =[Budgets].[Budget_ID] ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView2" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Join Volunteer">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="VJAUnedit" 
                                        ForeColor="#333333" GridLines="None" Height="181px" Width="700px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Volunteer Joined Activity ID" InsertVisible="False" 
                                                ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                                SortExpression="V_ID" />
                                            <asp:BoundField DataField="VJA_Status" HeaderText="Joined  Status" 
                                                SortExpression="VJA_Status" />
                                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" 
                                                SortExpression="V_Name" />
                                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer LastName" 
                                                SortExpression="V_LastName" />
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
                                    <asp:SqlDataSource ID="VJAUnedit" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" SelectCommand="SELECT [VJA_ID], [VolunteerJoinActivities].[V_ID], 
[VJA_Status],[V_Name], [V_LastName] FROM [VolunteerJoinActivities], 
[Volunteer] WHERE  [Activity_ID] =@Activity_ID  AND [VolunteerJoinActivities].[V_ID] = [Volunteer].[V_ID]
">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DetailsView4" Name="Activity_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="GADetailNotEdit" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                            
                            
                        SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status], [Activity_Type] FROM [Activities] WHERE ([Activity_ID] = @Activity_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="Activity_ID" 
                                    PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
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
    </table>
</asp:Content>
