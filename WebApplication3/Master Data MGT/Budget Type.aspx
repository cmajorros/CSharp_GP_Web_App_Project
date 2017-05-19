<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Budget Type.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.Budget_Type" %>
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
        .style28
        {
            text-align: right;
            width: 258px;
            color: #99CC00;
        }
        .style29
        {
            width: 275px;
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
            color: #99CC00;
            text-decoration: underline;
            height: 31px;
        }
        .style34
        {
            width: 275px;
            height: 31px;
        }
        .style35
        {
            height: 31px;
        }
        .style36
        {
            width: 275px;
            color: #99CC00;
            font-size: medium;
        }
        .style37
        {
            text-decoration: underline;
            color: #99CC00;
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
            <td class="style36">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manage Budget Type</strong></td>
            <td class="style10">
                &nbsp;</td>
            <td class="style28">
                &nbsp;&nbsp;&nbsp;
            </td>
            <td>
&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style33" colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" />
            </td>
            <td class="style35">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td class="style33" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BT_ID" 
                    DataSourceID="BudgetType" ForeColor="#333333" GridLines="None" 
                    onrowdatabound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server">Delete</asp:LinkButton>
                            </ItemTemplate>
                            <FooterTemplate>
                                <table cellpadding="0" cellspacing="0" 
                                    style="margin:5px 0px; border:1px solid #A0A0A0;width:100%;height:100%">
                                    <tr>
                                        <td style="padding: 2px 4px; height: 17px; font-family: Segoe UI; font-style: normal; font-weight: normal; font-size: 9pt; text-decoration: none; background-color: buttonface; color: #102040; background-image: url(mvwres://Microsoft.Web.Design.Client, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a/TemplateHeaderBackground.gif); background-repeat: repeat-x; border-bottom: 1px solid #A0A0A0;">
                                            ItemTemplate
                                        </td>
                                    </tr>
                                    <tr style="">
                                        <td style="padding:4px;height:50px;vertical-align:top;">
                                            <asp:LinkButton ID="LinkButton2" runat="server">Delete</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                            <ControlStyle ForeColor="#333333" />
                            <ItemStyle ForeColor="#333333" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="BT_ID" HeaderText="Budget Type ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="BT_ID" />
                        <asp:BoundField DataField="BT_Name" HeaderText="Budget Type Name" 
                            SortExpression="BT_Name" />
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
                <asp:SqlDataSource ID="BudgetType" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE FROM BudgetTypes WHERE [BT_ID] =@BT_ID" 
                    SelectCommand="SELECT [BT_ID], [BT_Name] FROM [BudgetTypes]" 
                    UpdateCommand="UPDATE BudgetTypes SET [BT_Name] = @BT_Name WHERE [BT_ID] = @BT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="BT_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BT_Name" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style35">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td class="style33" colspan="2">
                &nbsp;</td>
            <td class="style35">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;
            </td>
            <td>
                &nbsp; &nbsp;</td>
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
            <td class="style32" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="547px">
                    <span class="style38"><span class="style37">Add more Budget type name<br />
                    </span>
                    <br />
                    Budget Type Name&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="style38" 
                        ValidationGroup="a" Width="191px"></asp:TextBox>
                    <span class="style38">&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                        ErrorMessage="Please insert budget type name" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Button1" runat="server" CssClass="style38" 
                        onclick="Button1_Click1" Text="Confirm" ValidationGroup="a" />
                    <span class="style38">&nbsp;&nbsp; </span>
                    <asp:Button ID="Button2" runat="server" CssClass="style38" 
                        onclick="Button2_Click1" Text="Cancel" />
                </asp:Panel>
            </td>
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
