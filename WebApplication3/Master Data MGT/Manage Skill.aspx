<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manage Skill.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style9
    {
            width: 209px;
        }
    .style10
    {
        width: 163px;
    }
        .style17
    {
            width: 258px;
        }
        .style8
    {
        width: 100%;
    }
        .style33
    {
        width: 275px;
        font-size: large;
        color: #99CC00;
        text-align: left;
    }
        .style35
        {
            text-decoration: underline;
            color: #99CC00;
        }
        .style36
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
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Manage Skill</strong></td>
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
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" ToolTip="Add new skill" />
            </td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AllowPaging="True" AutoGenerateColumns="False" 
                    DataKeyNames="Skill_ID" DataSourceID="Skill" 
                    onrowdatabound="GridView1_RowDataBound" Width="489px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Skill_ID" HeaderText="Skill ID" ItemStyle-HorizontalAlign ="Center"
                            InsertVisible="False" ReadOnly="True" SortExpression="Skill_ID" />
                        <asp:BoundField DataField="Skill_Name" HeaderText="Skill Name" 
                            SortExpression="Skill_Name" />
                        <asp:BoundField DataField="ST_ID" HeaderText="Skill Type ID" ItemStyle-HorizontalAlign ="Center"
                            SortExpression="ST_ID" />
                        <asp:TemplateField HeaderText="Skill Type Name" SortExpression="ST_Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ST_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="ST" 
                                    DataTextField="ST_Name" DataValueField="ST_ID" 
                                    SelectedValue='<%# Bind("ST_ID") %>'>
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
                <asp:SqlDataSource ID="Skill" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE FROM [Skills]  WHERE [Skill_ID] = @Skill_ID" SelectCommand="SELECT [Skill_ID],[Skill_Name],[Skills].[ST_ID],[ST_Name]
FROM [Skills], [SkillTypes]
WHERE ([Skills].[ST_ID] = [SkillTypes].[ST_ID])
ORDER BY [ST_Name]" UpdateCommand="UPDATE Skills SET [Skill_Name] =@Skill_Name, [ST_ID] =@ST_ID 
WHERE [Skill_ID] = @Skill_ID ">
                    <DeleteParameters>
                        <asp:Parameter Name="Skill_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Skill_Name" />
                        <asp:Parameter Name="ST_ID" />
                        <asp:Parameter Name="Skill_ID" />
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
                    <span class="style35">A<span class="style36">dd more skill</span></span><span 
                        class="style36"><br />
                    <br />
                    Skill Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style36" 
                        ValidationGroup="a" Width="144px"></asp:TextBox>
                    <span class="style36">&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please insert skill name" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Skill Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style36" 
                        DataSourceID="ST" DataTextField="ST_Name" DataValueField="ST_ID" 
                        ValidationGroup="a">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ST" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [ST_ID], [ST_Name] FROM [SkillTypes]">
                    </asp:SqlDataSource>
                    <span class="style36">
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Confirm" runat="server" CssClass="style36" 
                        onclick="Confirm_Click" Text="Confirm" ValidationGroup="a" />
                    <span class="style36">&nbsp; </span>
                    <asp:Button ID="Cancel" runat="server" CssClass="style36" 
                        onclick="Cancel_Click" Text="Cancel" />
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
