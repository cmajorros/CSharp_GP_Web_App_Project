<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Channel Type.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.Channel_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style9
    {
            width: 130px;
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
            width: 130px;
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
            width: 130px;
            text-align: right;
            font-size: medium;
            color: #99CC00;
            height: 54px;
        }
        .style35
        {
            text-decoration: underline;
            color: #99CC00;
            background-color: #FFFFFF;
        }
        .style36
        {
            height: 54px;
            font-size: medium;
            color: #99CC00;
        }
        .style38
        {
            height: 54px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style36" colspan="2">
                <strong>Manage Channel Type</strong></td>
            <td class="style38">
                </td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style32" colspan="3">
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/icon/plus.png" 
                    ToolTip="new" onclick="ImageButton9_Click" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                     AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CT_ID" 
                     DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                     onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound" 
                     onrowdeleted="GridView1_RowDeleted" onrowdeleting="GridView1_RowDeleting" 
                     Width="438px">
                     <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:CommandField ShowEditButton="True" />
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:LinkButton ID="LinkButton1" 
                                CommandArgument='<%# Eval("CT_ID") %>' 
                                CommandName="Delete" runat="server" ForeColor="#333333">
                                Delete</asp:LinkButton>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:BoundField DataField="CT_ID" HeaderText="Campaign Type ID" InsertVisible="False" 
                             ReadOnly="True" SortExpression="CT_ID" ItemStyle-HorizontalAlign = "Center"/>
                         <asp:BoundField DataField="CT_Name" HeaderText="Campaign Type Name" 
                             SortExpression="CT_Name" />
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
                     DeleteCommand="DELETE FROM ChannalTypes WHERE [CT_ID] =@CT_ID" 
                     SelectCommand="SELECT [CT_ID],[CT_Name] FROM [ChannalTypes]" 
                     UpdateCommand="UPDATE ChannalTypes SET CT_Name = @CT_Name WHERE [CT_ID] =@CT_ID">
                     <DeleteParameters>
                         <asp:Parameter Name="CT_ID" />
                     </DeleteParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="CT_Name"/>
                         <asp:Parameter Name="CT_ID" />
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
                    <span class="style35">Add more Channel Type</span><br />
                    <br />
                    &nbsp;Channel Type Name&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a" Width="211px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please insert channel type name" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Confirm" 
                        ValidationGroup="a" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
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
