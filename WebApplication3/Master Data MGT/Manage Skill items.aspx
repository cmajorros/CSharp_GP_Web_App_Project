<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manage Skill items.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.Manage_Skill_items" %>
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
            width: 258px;
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
            width: 258px;
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
        .style35
        {
            color: #99CC00;
            font-size: large;
        }
        .style36
        {
            width: 275px;
            height: 16px;
        }
        .style37
        {
            width: 163px;
            height: 16px;
        }
        .style38
        {
            width: 258px;
            height: 16px;
        }
        .style39
        {
            height: 16px;
        }
        .style40
        {
            color: #99CC00;
            text-decoration: underline;
        }
        .style41
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
            <td colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    class="style35">Manage Skill Items</span></strong></td>
        </tr>
        <tr>
            <td class="style36">
                </td>
            <td class="style37">
                </td>
            <td class="style38">
                </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="style29">
                </td>
            <td class="style30">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" ToolTip="Add more skill item" />
                </td>
            <td class="style31">
                </td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="SI_ID" 
                    DataSourceID="SI" onrowdatabound="GridView1_RowDataBound" 
                    AllowPaging="True" PageSize="20" Width="501px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SI_ID" HeaderText="Skill Item ID" InsertVisible="False" ItemStyle-HorizontalAlign ="Center"
                            ReadOnly="True" SortExpression="SI_ID" />
                        <asp:BoundField DataField="SI_Name" HeaderText="Skill Item Name" 
                            SortExpression="SI_Name" />
                        <asp:BoundField DataField="Skill_ID" HeaderText="Skill ID"  ItemStyle-HorizontalAlign ="Center"
                            SortExpression="Skill_ID" />
                        <asp:TemplateField HeaderText="Skill Name" SortExpression="Skill_Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Skill_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList5" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="Skill_Name" 
                                    DataValueField="Skill_ID" SelectedValue='<%# Bind("Skill_ID") %>'>
                                </asp:DropDownList>
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
                <asp:SqlDataSource ID="SI" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE [SkillItems] WHERE SI_ID =@SI_ID" SelectCommand="SELECT [SI_ID], [SI_Name], [SkillItems].[Skill_ID], 
             [Skill_Name] 
FROM [Skills],[SkillItems]
WHERE ([SkillItems].[Skill_ID] = [Skills].[Skill_ID]) 
ORDER BY [Skill_Name]" UpdateCommand="UPDATE SkillItems 
SET SI_Name =@SI_Name, Skill_ID = @Skill_ID
WHERE SI_ID =@SI_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="SI_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SI_Name" />
                        <asp:Parameter Name="Skill_ID" />
                        <asp:Parameter Name="SI_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <span class="style41"><span class="style40">Add more skill item </span>
                    <br />
                    <br />
                    Skill item name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style41" 
                        ValidationGroup="A" Width="144px"></asp:TextBox>
                    <span class="style41">&nbsp;&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" 
                        ErrorMessage="Please insert skill item name" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [Skill_ID], [Skill_Name] FROM [Skills]">
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    Skill name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style41" 
                        DataSourceID="SqlDataSource1" DataTextField="Skill_Name" 
                        DataValueField="Skill_ID" ValidationGroup="A">
                    </asp:DropDownList>
                    <span class="style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Confirm" runat="server" CssClass="style41" 
                        onclick="Confirm_Click" PostBackUrl="~/Master Data MGT/Manage Skill items.aspx" 
                        Text="Confirm" ValidationGroup="A" />
                    <span class="style41">&nbsp;&nbsp; </span>
                    <asp:Button ID="Button1" runat="server" CssClass="style41" 
                        onclick="Button1_Click" Text="Cancel" />
                    <br />
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
