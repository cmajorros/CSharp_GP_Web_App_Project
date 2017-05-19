<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User MGT.aspx.cs" Inherits="WebApplication3.Account.User_MGT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style18
        {
            height: 17px;
            text-align: left;
            width: 106px;
        }
        .style19
        {
            width: 88px;
        }
        .style20
        {
            width: 106px;
            text-align: left;
        }
        .style21
        {
            width: 106px;
        }
        .style22
        {
            width: 88px;
            height: 64px;
        }
        .style23
        {
            width: 106px;
            height: 64px;
        }
        .style24
        {
            height: 64px;
        }
        .style25
        {
            height: 17px;
            width: 466px;
        }
        .style26
        {
            width: 466px;
        }
        .style27
        {
            height: 64px;
            width: 466px;
        }
        .style28
        {
            color: #808080;
        }
        .style29
        {
            text-align: center;
        }
        .style30
        {
            color: #99CC00;
            font-size: medium;
        }
        .style31
        {
            color: #99CC00;
            font-size: large;
        }
        .style32
        {
            width: 88px;
            height: 39px;
        }
        .style33
        {
            width: 106px;
            text-align: left;
            height: 39px;
        }
        .style34
        {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel3" runat="server">
                    <strong><span class="style30">
                    <br />
                    </span><span class="style31">Manage Users </span></strong><br />
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                        onclick="ImageButton1_Click" ToolTip="Add new user" />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_ID" 
                        DataSourceID="User" ForeColor="#333333" GridLines="None" 
                        onrowdatabound="GridView1_RowDataBound" Width="798px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="User_ID" HeaderText="User ID" ReadOnly="True" 
                                SortExpression="User_ID" />
                            <asp:BoundField DataField="User_Name" HeaderText="User Name" 
                                SortExpression="User_Name" />
                            <asp:BoundField DataField="User_LastName" HeaderText="User Last Name" 
                                SortExpression="User_LastName" />
                            <asp:TemplateField HeaderText="User Password" SortExpression="User_Password">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" 
                                        Text='<%# Bind("User_Password") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("User_Password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="User_Email" HeaderText="User Email" 
                                SortExpression="User_Email" />
                            <asp:BoundField DataField="Role_ID" HeaderText="Role ID" 
                                SortExpression="Role_ID" />
                            <asp:TemplateField HeaderText="Role Name" SortExpression="Role_Name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Role" 
                                        DataTextField="Role_Name" DataValueField="Role_ID" 
                                        SelectedValue='<%# Bind("Role_ID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Role" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [Role_ID], [Role_Name] FROM [Roles]">
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Role_Name") %>'></asp:Label>
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
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style33">
                </td>
            <td class="style34">
                </td>
            <td class="style34">
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <asp:Panel ID="Panel1" runat="server" Width="653px" GroupingText="User Detail" 
                    Visible="False">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style18">
                                User Name&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="txtUserName" runat="server" ValidationGroup="A" Width="185px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Name" runat="server" 
                                    ControlToValidate="txtUserName" ErrorMessage="Please insert user name" 
                                    ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                User Lastname&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="style26">
                                <asp:TextBox ID="txtUserLastname" runat="server" ValidationGroup="A" 
                                    Width="185px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Lastname" runat="server" 
                                    ControlToValidate="txtUserLastname" ErrorMessage="Please insert Lastname" 
                                    ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                User Email&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="style26">
                                <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="A" Width="185px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Email" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="Please insert Email" ForeColor="Red" 
                                    ValidationGroup="A"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                User Role&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="style26">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Roles" 
                                    DataTextField="Role_Name" DataValueField="Role_ID" ValidationGroup="A">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Roles" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [Role_ID], [Role_Name] FROM [Roles]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                Password&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="style26">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                                    ValidationGroup="A" Width="180px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Pass" runat="server" 
                                    ControlToValidate="txtPassword" ErrorMessage="Please insert password" 
                                    ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Retype Password&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtRepass" runat="server" TextMode="Password" 
                                    ValidationGroup="A" Width="177px"></asp:TextBox>
                                <asp:CompareValidator ID="Match" runat="server" ControlToCompare="txtPassword" 
                                    ControlToValidate="txtRepass" ErrorMessage="Your Password is mismatch" 
                                    ForeColor="Red" ValidationGroup="A"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                            </td>
                            <td class="style27">
                                <asp:Button ID="btnConfirm" runat="server" onclick="btnConfirm_Click" 
                                    Text="Confirm" ValidationGroup="A" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                <asp:Panel ID="Panel2" runat="server" Visible="False" Width="641px">
                    <div class="style29">
                        <span class="style28"><strong>
                        <br />
                        <span class="style5">New user has been created successfully .</span><br />
                        </strong></span>
                    </div>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                </td>
            <td class="style23">
                </td>
            <td class="style24">
                &nbsp;</td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td colspan="2">
                <asp:SqlDataSource ID="User" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="Delete FROM Users WHERE User_ID =@User_ID " 
                    SelectCommand="SELECT Users.User_ID, Users.Role_ID, Users.User_Name, Users.User_LastName, Users.User_Password, Users.User_Email, Roles.Role_Name FROM Users INNER JOIN Roles ON Users.Role_ID = Roles.Role_ID" UpdateCommand="UPDATE Users SET [User_LastName] =@User_LastName, [User_Email] =@User_Email, [Role_ID] =@Role_ID
WHERE [User_ID] =@User_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="User_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="User_LastName" />
                        <asp:Parameter Name="User_Email" />
                        <asp:Parameter Name="Role_ID" />
                        <asp:Parameter Name="User_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
