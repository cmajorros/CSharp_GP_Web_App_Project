<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarActivityDetail.aspx.cs" Inherits="WebApplication3.Training.CarActivityDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 157px;
        }
        .style9
        {
            width: 851px;
        }
        .style10
        {
            color: #333333;
        }
        .style13
        {
            width: 200px;
        }
        .style15
        {
            width: 210px;
        }
        .style16
        {
            width: 171px;
        }
        .style17
        {
            width: 220px;
        }
        .style19
        {
            width: 527px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
                        Width="669px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Status" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="End Date" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <br />
                    <strong>
                    <asp:LinkButton ID="Edit" runat="server" CssClass="style10" ForeColor="#333333" 
                        onclick="Edit_Click">Edit</asp:LinkButton>
                    </strong><span class="style10">&nbsp;&nbsp; </span><strong>
                    <asp:LinkButton ID="CancelAct" runat="server" CssClass="style10" 
                        ForeColor="#333333">Cancel Activity</asp:LinkButton>
                    </strong>
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
                <asp:Panel ID="Panel2" runat="server">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="PanelDetail" runat="server" GroupingText="Training Detail" 
                                Visible="False">
                                <table cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            Activity ID</td>
                                        <td class="style19">
                                            <asp:Label ID="lblID" runat="server" Text="Label"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Training Name</td>
                                        <td class="style19">
                                            <asp:TextBox ID="txtName" runat="server" Height="22px" Width="211px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            Start Date</td>
                                        <td class="style19">
                                            <asp:TextBox ID="txtStartDate" runat="server" Height="21px" ReadOnly="True" 
                                                Width="140px"></asp:TextBox>
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                ImageUrl="~/icon/calendar.png" onclick="ImageButton1_Click" />
                                            <asp:Calendar ID="Calendar1" runat="server" 
                                                onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                                            </asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;End Date</td>
                                        <td class="style19">
                                            <asp:TextBox ID="txtEndDate" runat="server" Height="21px" ReadOnly="True" 
                                                Width="140px"></asp:TextBox>
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="26px" 
                                                ImageUrl="~/icon/calendar.png" Width="26px" />
                                            <asp:Calendar ID="Calendar2" runat="server" 
                                                onselectionchanged="Calendar2_SelectionChanged" Visible="False"></asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Place</td>
                                        <td class="style19">
                                            <asp:TextBox ID="txtPlace" runat="server" Width="211px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Province</td>
                                        <td class="style19">
                                            <asp:DropDownList ID="ddlProvince" runat="server" 
                                                DataSourceID="SqlDataSourceProvince" DataTextField="PROVINCE_ENGNAME" 
                                                DataValueField="PROVINCE_ENGNAME">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceProvince" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                SelectCommand="SELECT [PROVINCE_ENGNAME] FROM [province]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Training Type</td>
                                        <td class="style19">
                                            <asp:DropDownList ID="ddlTTY" runat="server" DataSourceID="SqlDataSourceTTY" 
                                                DataTextField="TTY_Name" DataValueField="TTY_ID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceTTY" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Training Team</td>
                                        <td class="style19">
                                            <asp:DropDownList ID="ddlTT" runat="server" datasourceid="SqlDataSourceTT0" 
                                                DataTextField="TT_Name" DataValueField="TT_ID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceTT0" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                SelectCommand="SELECT [TT_ID], [TT_Name] FROM [TrainingTeams]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Training Category</td>
                                        <td class="style19">
                                            <asp:DropDownList ID="ddlTC" runat="server" DataSourceID="SqlDataSourceTC" 
                                                DataTextField="TC_Name" DataValueField="TC_ID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceTC" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                SelectCommand="SELECT [TC_ID], [TC_Name] FROM [TrainingCatagories]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            Training Equipment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td class="style19">
                                            <asp:LinkButton ID="AddEquip" runat="server" ForeColor="#333333" 
                                                onclick="AddEquip_Click">Add more equipment</asp:LinkButton>
                                            <br />
                                            <asp:GridView ID="GVEquip" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="EN_ID" 
                                                DataSourceID="SqlDataSourceTrainingEquipment" ForeColor="#333333" 
                                                GridLines="None" onrowdatabound="GVEquip_RowDataBound" Width="537px">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ShowEditButton="True" />
                                                    <asp:TemplateField ShowHeader="False">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                                CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="EN_ID" HeaderText="ID" InsertVisible="False" 
                                                        ReadOnly="True" SortExpression="EN_ID" />
                                                    <asp:BoundField DataField="E_ID" HeaderText="Equipment ID" 
                                                        SortExpression="E_ID" />
                                                    <asp:TemplateField HeaderText="Equipment Name" SortExpression="E_Name">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("E_Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                                                DataSourceID="SqlDataSourceE" DataTextField="E_Name" DataValueField="E_ID" 
                                                                SelectedValue='<%# Bind("E_ID") %>'>
                                                            </asp:DropDownList>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="ET_ID" HeaderText="Equipment Type ID" 
                                                        SortExpression="ET_ID" />
                                                    <asp:BoundField DataField="ET_Name" HeaderText="Equipment Type Name" 
                                                        SortExpression="ET_Name" />
                                                    <asp:BoundField DataField="EN_Pieces" HeaderText="Pieces" 
                                                        SortExpression="EN_Pieces" />
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
                                            <asp:SqlDataSource ID="SqlDataSourceTrainingEquipment" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                DeleteCommand="DELETE EquipmentNeeds WHERE EN_ID =@EN_ID" 
                                                SelectCommand="SELECT EquipmentNeeds.EN_ID, EquipmentNeeds.EN_Pieces, EquipmentNeeds.E_ID, Equipments.E_Name, Equipments.ET_ID, EquipmentTypes.ET_Name FROM EquipmentNeeds , Equipments ,  EquipmentTypes  WHERE Activity_ID =@Activity_ID AND EquipmentNeeds.E_ID = Equipments.E_ID AND Equipments.ET_ID = EquipmentTypes.ET_ID" 
                                                UpdateCommand="Update EquipmentNeeds SET EN_Pieces = @EN_Pieces, E_ID = @E_ID WHERE EN_ID =@EN_ID">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="EN_ID" />
                                                </DeleteParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="Activity_ID" SessionField="CarACActivity_ID" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="EN_Pieces" />
                                                    <asp:Parameter Name="E_ID" />
                                                    <asp:Parameter Name="EN_ID" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:Panel ID="PanelMoreEquip" runat="server" Visible="False">
                                                <table cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td class="style13">
                                                            Equipment Type</td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlET" runat="server" DataSourceID="SqlDataSourceET" 
                                                                DataTextField="ET_Name" DataValueField="ET_ID" AutoPostBack="True" 
                                                                Height="22px" Width="189px">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceET" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                                SelectCommand="SELECT [ET_ID], [ET_Name] FROM [EquipmentTypes]">
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            Equipment Name</td>
                                                        <td>
                                                            <asp:DropDownList ID="ddle" runat="server" AutoPostBack="True" 
                                                                DataSourceID="SqlDataSourceE" DataTextField="E_Name" DataValueField="E_ID" 
                                                                Height="22px" onselectedindexchanged="ddle_SelectedIndexChanged" 
                                                                Width="190px" onload="ddle_Load">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceE" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                                
                                                                SelectCommand="SELECT [E_ID], [E_Name] FROM [Equipments] WHERE ([ET_ID] = @ET_ID)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlET" Name="ET_ID" 
                                                                        PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            Pieces</td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlPiece" runat="server" Width="112px">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
                                                            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="26px" 
                                                                onclick="Button2_Click" Text="Cancel" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style13">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            Training Level</td>
                                        <td class="style19">
                                            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#333333" 
                                                onclick="LinkButton3_Click">Add more training level</asp:LinkButton>
                                            <br />
                                            <asp:GridView ID="GVTL" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="TL_ID" DataSourceID="SqlDataSourceTL" 
                                                ForeColor="#333333" GridLines="None" onrowdatabound="GVTL_RowDataBound" 
                                                Width="533px">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ShowEditButton="True" />
                                                    <asp:TemplateField ShowHeader="False">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                                CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="TL_ID" HeaderText="Training Level  ID" ItemStyle-HorizontalAlign ="Center" 
                                                        InsertVisible="False" ReadOnly="True" SortExpression="TL_ID" >
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Level_ID" HeaderText="Level ID" 
                                                        SortExpression="Level_ID" />
                                                    <asp:TemplateField HeaderText="Level Name" SortExpression="Level_Name">
                                                        <EditItemTemplate>
                                                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                                                DataSourceID="SqlDataSourceLevel" DataTextField="Level_Name" 
                                                                DataValueField="Level_ID" SelectedValue='<%# Bind("Level_ID") %>'>
                                                            </asp:DropDownList>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Level_Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
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
                                            <asp:SqlDataSource ID="SqlDataSourceTL" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                DeleteCommand="DELETE TrainingLevels WHERE TL_ID =@TL_ID" 
                                                SelectCommand="SELECT TrainingLevels.TL_ID, TrainingLevels.Level_ID, TrainingLevels.Activity_ID, Levels.Level_Name FROM TrainingLevels INNER JOIN Levels ON TrainingLevels.Level_ID = Levels.Level_ID WHERE Activity_ID =@Activity_ID" 
                                                UpdateCommand="UPDATE TrainingLevels SET Level_ID =@Level_ID WHERE TL_ID =@TL_ID">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="TL_ID" />
                                                </DeleteParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="Activity_ID" SessionField="CarACActivity_ID" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Level_ID" />
                                                    <asp:Parameter Name="TL_ID" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:Panel ID="PanelMoreTLevel" runat="server" Visible="False">
                                                <table cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td class="style15">
                                                            Level Name</td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlLevel" runat="server" 
                                                                DataSourceID="SqlDataSourceLevel" DataTextField="Level_Name" 
                                                                DataValueField="Level_ID">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceLevel" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                                SelectCommand="SELECT [Level_ID], [Level_Name] FROM [Levels] WHERE ([TTY_ID] = @TTY_ID)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlTTY" Name="TTY_ID" 
                                                                        PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style15">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style15">
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Save" />
                                                            &nbsp;
                                                            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Cancel" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            Training Budget</td>
                                        <td class="style19">
                                            <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#333333" 
                                                onclick="LinkButton4_Click">Add more budget</asp:LinkButton>
                                            <br />
                                            <asp:GridView ID="GVBudget" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="SB_ID" DataSourceID="SqlDataSourceBudget" 
                                                ForeColor="#333333" GridLines="None" onrowdatabound="GVBudget_RowDataBound" 
                                                ShowFooter="True" Width="537px">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ShowEditButton="True" />
                                                    <asp:TemplateField ShowHeader="False">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                                CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="SB_ID" HeaderText="SubBudget ID" 
                                                        InsertVisible="False" ItemStyle-HorizontalAlign="Center" ReadOnly="True" 
                                                        SortExpression="SB_ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Budget_ID" HeaderText="Budget ID" 
                                                        SortExpression="Budget_ID" />
                                                    <asp:TemplateField HeaderText="Budget Name" SortExpression="Budget_Name">
                                                        <FooterTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text="Total"></asp:Label>
                                                        </FooterTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Budget_Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                                DataSourceID="SqlDataSourceBudgetName" DataTextField="Budget_Name" 
                                                                DataValueField="Budget_ID" SelectedValue='<%# Bind("Budget_ID") %>'>
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceBudgetName" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                                SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets]">
                                                            </asp:SqlDataSource>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Amount" ItemStyle-HorizontalAlign="Right" 
                                                        SortExpression="SB_Amount">
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                                                            &nbsp; THB
                                                        </FooterTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblAmount" runat="server" 
                                                                Text='<%# Bind("SB_Amount", "{0:N}") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SB_Amount") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemStyle HorizontalAlign="Right" />
                                                    </asp:TemplateField>
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
                                            <asp:SqlDataSource ID="SqlDataSourceBudget" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                DeleteCommand="DELETE SubBudgets WHERE SB_ID =@SB_ID" 
                                                SelectCommand="SELECT [SB_ID],[SubBudgets].[Budget_ID],[Budget_Name], [SB_Amount]  FROM [SubBudgets],[Budgets] WHERE ([Activity_ID] = @Activity_ID) AND [SubBudgets].[Budget_ID] = [Budgets].[Budget_ID]" 
                                                UpdateCommand="Update SubBudgets SET Budget_ID = @Budget_ID WHERE SB_ID =@SB_ID">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="SB_ID" />
                                                </DeleteParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="Activity_ID" SessionField="CarACActivity_ID" 
                                                        Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Budget_ID" />
                                                    <asp:Parameter Name="SB_ID" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <br />
                                            <asp:Panel ID="PanelMoreBudget" runat="server" Visible="False">
                                                <table cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td class="style17">
                                                            Budget Type</td>
                                                        <td class="style16">
                                                            <asp:DropDownList ID="ddlBT" runat="server" DataSourceID="SqlDataSourceBT" 
                                                                DataTextField="BT_Name" DataValueField="BT_ID">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceBT" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                                SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]">
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            &nbsp;</td>
                                                        <td class="style16">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            Budget Name</td>
                                                        <td class="style16">
                                                            <asp:DropDownList ID="ddlBudget" runat="server" 
                                                                DataSourceID="SqlDataSourceBudgetSelect" DataTextField="Budget_Name" 
                                                                DataValueField="Budget_ID">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSourceBudgetSelect" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                                SelectCommand="SELECT [Budget_ID], [Budget_Name] FROM [Budgets] WHERE ([BT_ID] = @BT_ID)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlBT" Name="BT_ID" 
                                                                        PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            &nbsp;</td>
                                                        <td class="style16">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            Amount</td>
                                                        <td class="style16">
                                                            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            &nbsp;</td>
                                                        <td class="style16">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            &nbsp;</td>
                                                        <td class="style16">
                                                            <asp:Button ID="btnSaveB" runat="server" onclick="btnSaveB_Click" Text="Save" 
                                                                style="height: 26px" />
                                                            &nbsp;
                                                            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Cancel" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style17">
                                                            &nbsp;</td>
                                                        <td class="style16">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
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
