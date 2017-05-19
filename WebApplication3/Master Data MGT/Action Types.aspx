<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Action Types.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.Action_Types" %>
<%@ Register assembly="DotNetSources.Web.UI.Buttons" namespace="DotNetSources.Web.UI.Buttons" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style9
    {
            width: 230px;
        }
    .style10
    {
            width: 147px;
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
            width: 230px;
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
            width: 85px;
        }
        .style34
        {
            width: 85px;
            height: 17px;
        }
        .style35
        {
            width: 230px;
            text-align: right;
        }
        .style36
        {
            width: 230px;
            color: #99CC00;
            font-size: medium;
        }
        .style37
        {
            width: 85px;
            height: 7px;
        }
        .style38
        {
            width: 230px;
            height: 7px;
        }
        .style39
        {
            width: 147px;
            height: 7px;
        }
        .style40
        {
            width: 258px;
            height: 7px;
        }
        .style41
        {
            height: 7px;
        }
        .style44
        {
            width: 147px;
            height: 17px;
        }
        .style45
        {
            width: 258px;
            height: 17px;
        }
        .style47
        {
            color: #99CC00;
            text-decoration: underline;
        }
        .style48
        {
            color: #99CC00;
        }
        .style49
        {
            color: #333333;
        }
        .style50
        {
            text-decoration: underline;
        }
        .style51
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style52
        {
            width: 85px;
            height: 26px;
        }
        .style53
        {
            width: 230px;
            height: 26px;
        }
        .style54
        {
            width: 147px;
            height: 26px;
        }
        .style55
        {
            width: 258px;
            height: 26px;
        }
        .style56
        {
            height: 26px;
        }
        .style57
        {
            width: 85px;
            height: 29px;
        }
        .style58
        {
            width: 230px;
            height: 29px;
        }
        .style59
        {
            height: 29px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
            <td class="style36">
                <strong>Manage Action Type</strong></td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style52">
                </td>
            <td class="style53">
                </td>
            <td class="style54">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton2_Click" ToolTip="Add more action type" />
            </td>
            <td class="style55">
                &nbsp;</td>
            <td class="style56">
                </td>
        </tr>
        <tr>
            <td class="style57">
                </td>
            <td class="style58">
                
            </td>
            <td class="style59" colspan="3">
                <div id="DivPrint">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AT_ID" 
                    DataSourceID="ActionType" ForeColor="#333333" GridLines="None" 
                    onrowdeleted="GridView1_RowDeleted" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onrowcommand="GridView1_RowCommand" 
                    onrowdatabound="GridView1_RowDataBound" Width="425px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                          <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField>
                        <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" 
                        CommandArgument='<%# Eval("AT_ID") %>' 
                        CommandName="Delete" runat="server">
                        Delete</asp:LinkButton>
                        </ItemTemplate>
                            <ControlStyle Font-Underline="True" ForeColor="Black" />
                            <ItemStyle Font-Underline="True" ForeColor="Black" />
                        </asp:TemplateField>
                        
                        <asp:BoundField DataField="AT_ID" HeaderText="Action Type ID" ReadOnly="True" 
                            SortExpression="AT_ID" />
                        <asp:BoundField DataField="AT_Name" HeaderText="Action Type Name" 
                            SortExpression="AT_Name" />
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
                <asp:SqlDataSource ID="ActionType" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [AT_ID],[AT_Name] FROM [ActionTypes]" 
                    UpdateCommand="UPDATE ActionTypes SET AT_Name = @AT_Name WHERE [AT_ID] =@AT_ID"
                    DeleteCommand = "DELETE FROM ActionTypes WHERE [AT_ID] =@AT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="AT_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="AT_Name" />
                        <asp:Parameter Name="AT_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
            </td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style48" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="567px">
                    <span class="style50">Add More Action Type</span><br /> <span class="style49">
                    Action Type Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="style51" 
                        ValidationGroup="a" Width="158px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please Insert Action Type's Name" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style51">&nbsp;</span></span><asp:Button 
                        ID="Button1" runat="server" CssClass="style51" onclick="Button1_Click" 
                        Text="Confirm" ValidationGroup="a" />
                    <span class="style51">&nbsp;&nbsp;&nbsp; </span>
                    <asp:Button ID="Button2" runat="server" CssClass="style51" 
                        onclick="Button2_Click" Text="Cancel" />
                </asp:Panel>
            </td>
            </tr>
        <tr>
            <td class="style37">
                </td>
            <td class="style38">
                </td>
            <td class="style39">
                </td>
            <td class="style40">
                </td>
            <td class="style41">
                </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td class="style29">
                </td>
            <td class="style47">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style39">
                </td>
            <td class="style40">
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style45">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style10" valign="top">
                &nbsp;</td>
            <td class="style17" valign="top">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>
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
            <td class="style33">
                &nbsp;</td>

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
