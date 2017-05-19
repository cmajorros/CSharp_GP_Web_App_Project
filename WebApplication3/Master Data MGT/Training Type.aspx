<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Training Type.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style8
    {
        width: 100%;
    }
        

        .style9
    {
            width: 234px;
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
            width: 234px;
            font-size: medium;
            color: #99CC00;
            text-align: right;
        }
        .style29
        {
            width: 234px;
            height: 17px;
        }
        .style32
        {
            height: 17px;
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
        .style37
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .style38
        {
            font-size: small;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style33">
                <strong>Manage Training Type</strong></td>
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
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/icon/plus.png" 
                    ToolTip="Add new training type" onclick="ImageButton9_Click" />
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
                    DataKeyNames="TTY_ID" DataSourceID="SqlDataSource1" 
                    onrowdatabound="GridView1_RowDataBound" Width="390px">
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
                        <asp:BoundField DataField="TTY_ID" HeaderText="Trainin Type ID" ItemStyle-HorizontalAlign ="Center" 
                            InsertVisible="False" ReadOnly="True" SortExpression="TTY_ID" />
                        <asp:BoundField DataField="TTY_Name" HeaderText="Training Type Name" 
                            SortExpression="TTY_Name" />
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
                    DeleteCommand="DELETE FROM [TrainingTypes] WHERE [TTY_ID] = @TTY_ID" 
                    SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]" 
                    UpdateCommand="UPDATE [TrainingTypes] SET TTY_Name = @TTY_Name WHERE [TTY_ID] = @TTY_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="TTY_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TTY_Name" />
                        <asp:Parameter Name="TTY_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <span class="style36"><span class="style35"><span class="style38">
                    <br />
                    <br />
                    Add more training type</span></span><span class="style38"><br />
                    <br />
                    Training Type Name&nbsp;&nbsp;</span></span><asp:TextBox ID="TextBox1" runat="server" 
                        CssClass="style37" ValidationGroup="a" Width="179px"></asp:TextBox>
                    <span class="style37">&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" 
                        ErrorMessage="Please insert training type" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp; &nbsp; &nbsp;<br />
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
