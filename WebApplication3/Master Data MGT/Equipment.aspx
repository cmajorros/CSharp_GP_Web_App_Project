<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Equipment.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.Equipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style9
    {
            width: 275px;
        }
    .style10
    {
        width: 163px;
    }
        .style17
    {
            width: 210px;
        }
        .style29
        {
            width: 275px;
            height: 17px;
        }
        .style30
        {
            width: 163px;
            height: 17px;
        }
        .style31
        {
            width: 210px;
            height: 17px;
        }
        .style32
        {
            height: 17px;
        }
        .style8
    {
        width: 100%;
    }
        .style33
        {
            font-size: large;
            color: #99CC00;
        }
        .style34
        {
            width: 163px;
            color: #99CC00;
            text-decoration: underline;
        }
        .style35
        {
            color: #99CC00;
        }
        .style36
        {
            color: #333333;
        }
        .style37
        {
            text-decoration: underline;
        }
        .style38
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33" colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Manage Equipment</strong></td>
        </tr>
        <tr>
            <td class="style33" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" ToolTip="Add more equipment" />
                <asp:SqlDataSource ID="budget" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE [Equipments] WHERE [E_ID] = @E_ID" SelectCommand="SELECT [E_ID],[E_Name],[E_Piece],[Equipments].[ET_ID],[ET_Name] 
                    FROM [Equipments],[EquipmentTypes] 
                    WHERE ([Equipments].[ET_ID]=[EquipmentTypes].[ET_ID]) 
                    ORDER BY [ET_Name] ,[E_ID]
" UpdateCommand="UPDATE Equipments SET E_Name = @E_Name, ET_ID = @ET_ID WHERE (E_ID = @E_ID)">
                    <DeleteParameters>
                        <asp:Parameter Name="E_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="E_Name" />
                        <asp:Parameter Name="ET_ID" />
                        <asp:Parameter Name="E_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="E_ID" 
                    DataSourceID="budget" ForeColor="#333333" GridLines="None" 
                    onrowdatabound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="E_ID" HeaderText="Equipment ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="E_ID" ItemStyle-HorizontalAlign = "Center"/>
                        <asp:BoundField DataField="E_Name" HeaderText="Equipment Name" 
                            SortExpression="E_Name" />
                        <asp:BoundField DataField="E_Piece" HeaderText="Pieces" 
                            SortExpression="E_Piece" />
                        <asp:BoundField DataField="ET_ID" HeaderText="Equipment Type ID" ItemStyle-HorizontalAlign ="Center" 
                            SortExpression="ET_ID" />
                        <asp:TemplateField HeaderText="Equipment Type Name" SortExpression="ET_Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ET_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ET_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
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
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style35" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <span class="style38"><span class="style37">Add more equipment</span><br />
                    <br class="style36" />
                    </span>
                    <span class="style36"><span class="style38">Equipment Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="A" Width="144px" 
                        CssClass="style38"></asp:TextBox>
                    <span class="style38">&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Insert equipment name" 
                        ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Pieces&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="A" Width="143px" 
                        CssClass="style38"></asp:TextBox>
                    <span class="style38">&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" 
                        ErrorMessage="Please insert no. pieces of equipment" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Equipment Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="BT" 
                        DataTextField="ET_Name" DataValueField="ET_ID" ValidationGroup="A" 
                        CssClass="style38">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="BT" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [ET_ID], [ET_Name] FROM [EquipmentTypes]">
                    </asp:SqlDataSource>
                    <span class="style38">
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Confirm" runat="server" onclick="Confirm_Click" Text="Confirm" 
                        ValidationGroup="A" CssClass="style38" />
                    <span class="style38">&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="Cancel" 
                        CssClass="style38" />
                    </span>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style31">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
            &nbsp;&nbsp;&nbsp;
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
