<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageLessons.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.ManageLessons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 141px;
        }
        .style9
        {
            width: 826px;
        }
        .style10
        {
            width: 826px;
            color: #99CC00;
            font-size: large;
            height: 64px;
        }
        .style11
        {
            width: 141px;
            height: 64px;
        }
        .style12
        {
            height: 64px;
        }
        .style13
        {
            width: 152px;
        }
        .style14
        {
            width: 152px;
            height: 66px;
        }
        .style15
        {
            height: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style11">
                </td>
            <td class="style10">
                <strong>Manage Lessons</strong></td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="LL_ID" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" onrowdatabound="GridView1_RowDataBound" 
                    Width="636px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TTY_ID" HeaderText="Training Type ID" />
                        <asp:BoundField DataField="TTY_Name" HeaderText="Training Type Name" />
                        <asp:BoundField DataField="Level_ID" HeaderText="Level ID" />
                        <asp:BoundField DataField="Level_Name" HeaderText="Level Name" />
                        <asp:BoundField DataField="LL_ID" HeaderText="Lesson for Level ID" />
                        <asp:BoundField DataField="LL_Name" HeaderText="Lesson for Level Name" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE FROM LevelLessons WHERE (LL_ID = @LL_ID)" 
                    SelectCommand="SELECT LevelLessons.LL_ID, LevelLessons.Level_ID, Levels.Level_Name, Levels.TTY_ID, TrainingTypes.TTY_Name, LevelLessons.LL_Name FROM LevelLessons INNER JOIN Levels ON LevelLessons.Level_ID = Levels.Level_ID INNER JOIN TrainingTypes ON Levels.TTY_ID = TrainingTypes.TTY_ID ORDER BY TTY_Name" 
                    UpdateCommand="UPDATE LevelLessons SET Level_ID = @Level_ID, LL_Name = @LL_Name WHERE (LL_ID = @LL_ID)">
                    <DeleteParameters>
                        <asp:Parameter Name="LL_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Level_ID" />
                        <asp:Parameter Name="LL_Name" />
                        <asp:Parameter Name="LL_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style13">
                                Training Type </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="TTY_Name" DataValueField="TTY_ID" 
                                    Height="22px" ValidationGroup="a" Width="199px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]">
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
                                Level</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource3" DataTextField="Level_Name" 
                                    DataValueField="Level_ID" Height="22px" ValidationGroup="a" Width="198px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [Level_ID], [Level_Name] FROM [Levels] WHERE ([TTY_ID] = @TTY_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="TTY_ID" 
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
                                Lesson</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="202px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Please insert lesson name" 
                                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                &nbsp; </td>
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
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Confirm" 
                                    ValidationGroup="a" />
                                &nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
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
