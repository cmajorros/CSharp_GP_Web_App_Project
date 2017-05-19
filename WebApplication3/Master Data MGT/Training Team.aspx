<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Training Team.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style8
    {
        width: 100%;
    }
        

        .style9
    {
            width: 224px;
        }
    .style10
    {
        width: 163px;
    }
        .style17
    {
            width: 258px;
        }
        .style33
        {
            width: 224px;
            font-size: medium;
            color: #99CC00;
            text-align: right;
        }
        .style34
        {
            width: 163px;
            text-decoration: underline;
            color: #99CC00;
        }
        .style29
        {
            width: 224px;
            height: 17px;
        }
        .style32
        {
            height: 17px;
        }
        .style35
        {
            font-size: large;
            color: #99CC00;
            text-align: center;
        }
        .style36
        {
            text-decoration: underline;
            color: #99CC00;
        }
        .style37
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style35" colspan="2">
                <strong>Manage Training Team</strong></td>
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
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/icon/plus.png" 
                    ToolTip="Add new training team" onclick="ImageButton9_Click" />
            </td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style32" colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AllowPaging="True" AutoGenerateColumns="False" 
                    DataKeyNames="TT_ID" DataSourceID="SqlDataSource1" 
                    onrowdatabound="GridView1_RowDataBound" Width="395px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TT_ID" HeaderText="Training Team ID" ItemStyle-HorizontalAlign ="Center"
                            InsertVisible="False" ReadOnly="True" SortExpression="TT_ID" />
                        <asp:BoundField DataField="TT_Name" HeaderText="Training Team Name" 
                            SortExpression="TT_Name" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE FROM [TrainingTeams] WHERE [TT_ID] = @TT_ID" 
                    SelectCommand="SELECT [TT_ID], [TT_Name] FROM [TrainingTeams]" 
                    UpdateCommand="UPDATE [TrainingTeams] SET TT_Name = @TT_Name WHERE [TT_ID] = @TT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="TT_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TT_Name" />
                        <asp:Parameter Name="TT_ID" />
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
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="684px">
                    <span class="style37"><span class="style36">Add more training team </span>
                    <br />
                    <br />
                    <br />
                    Training Team Name&nbsp;&nbsp;</span><asp:TextBox ID="TextBox1" runat="server" 
                        CssClass="style37" ValidationGroup="a" Width="179px"></asp:TextBox>
                    <span class="style37">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                        ErrorMessage="Please insert training team name" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Button1" runat="server" CssClass="style37" 
                        onclick="Button1_Click" Text="Confirm" ValidationGroup="a" />
                    <span class="style37">&nbsp;&nbsp; </span>
                    <asp:Button ID="Button2" runat="server" CssClass="style37" 
                        onclick="Button2_Click" Text="Cancel" />
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
