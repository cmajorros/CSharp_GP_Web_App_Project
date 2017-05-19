<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SendInvitationMail.aspx.cs" Inherits="WebApplication3.Training.SendInvitationMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 84px;
        }
        .style9
        {
            width: 687px;
        }
        .style10
        {
            font-size: x-small;
        }
        .style11
        {
            font-size: medium;
            color: #99CC00;
        }
        .style12
        {
            width: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
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
                <span class="style10">
            </td>
            <td class="style9">
                </span><strong><span class="style11">&nbsp;Training Invition Mail </span>
                </strong>
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
                <asp:Panel ID="Panel1" runat="server">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style12">
                                TO :&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="22px" TextMode="MultiLine" 
                                    Width="501px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                CC:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="MultiLine" 
                                    Width="501px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                Subject :
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="22px" TextMode="MultiLine" 
                                    Width="501px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12" valign="top">
                                Message
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Height="292px" TextMode="MultiLine" 
                                    Width="501px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Send Email" />
                                &nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
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
