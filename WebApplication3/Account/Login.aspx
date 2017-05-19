<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Account.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
        .style23
        {
            width: 87px;
        }
        .style24
        {
            width: 87px;
            height: 17px;
        }
        .style25
        {
            height: 17px;
        }
        .style26
        {
            width: 186px;
        }
        .style27
        {
            width: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="0" cellspacing="0" class="style22">
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" GroupingText="User Login" Width="563px">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                UserName</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtUserName" runat="server" Width="205px"></asp:TextBox>
                            </td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                Password</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="205px"></asp:TextBox>
                            </td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lblWarning" runat="server" ForeColor="Red" 
                                    Text="Your User ID or Password invalid" Visible="False"></asp:Label>
                            </td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp; &nbsp;</td>
                            <td>
                                <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                                    Text="Login" />
                                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="btnCancle" runat="server" onclick="btnCancle_Click" 
                                    Text="Cancle" />
                            </td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
