<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageLevel.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.ManageLevel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 114px;
        }
        .style9
        {
            width: 114px;
            height: 67px;
        }
        .style10
        {
            height: 67px;
        }
        .style11
        {
            height: 67px;
            font-size: large;
            color: #99CC00;
        }
        .style12
        {
            width: 120px;
        }
        .style13
        {
            width: 390px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style9">
            </td>
            <td class="style11">
                <strong>Manage Levels</strong></td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Level_ID" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                    Width="531px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Level_ID" HeaderText="Level ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Level_ID" />
                        <asp:BoundField DataField="Level_Name" HeaderText="Level Name" 
                            SortExpression="Level_Name" />
                        <asp:BoundField DataField="TTY_ID" HeaderText="Training Type ID" 
                            SortExpression="TTY_ID" />
                        <asp:TemplateField HeaderText="Training Type Name" SortExpression="TTY_Name">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource2" DataTextField="TTY_Name" DataValueField="TTY_ID" 
                                    SelectedValue='<%# Bind("TTY_ID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]">
                                </asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TTY_Name") %>'></asp:Label>
                            </ItemTemplate>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE Levels WHERE Level_ID =@Level_ID" SelectCommand="SELECT Level_ID, Level_Name, Levels.TTY_ID, TTY_Name FROM Levels, TrainingTypes WHERE Levels.TTY_ID = TrainingTypes.TTY_ID 
ORDER BY TTY_Name" 
                    UpdateCommand="UPDATE Levels SET Level_Name = @Level_Name WHERE (Level_ID = @Level_ID)">
                    <DeleteParameters>
                        <asp:Parameter Name="Level_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Level_Name" />
                        <asp:Parameter Name="Level_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style12">
                                Training Type
                            </td>
                            <td class="style13">
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource3" DataTextField="TTY_Name" DataValueField="TTY_ID" 
                                    Height="22px" ValidationGroup="a" Width="167px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [TTY_Name], [TTY_ID] FROM [TrainingTypes]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style13">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                Level Name</td>
                            <td class="style13">
                                <asp:TextBox ID="TextBox1" runat="server" Height="21px" ValidationGroup="a" 
                                    Width="173px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Please Insert Level Name" 
                                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style13">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;&nbsp; &nbsp;</td>
                            <td class="style13">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Confirm" 
                                    ValidationGroup="a" />
                                &nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style13">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
