<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestCode.aspx.cs" Inherits="WebApplication3.TestCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style15
        {
            width: 1100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="0" cellspacing="0" class="style15">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="191px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Momo" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="185px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="P'Nuch" />
                <br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="AD">Admin</asp:ListItem>
                    <asp:ListItem Value="HR">Human Resource</asp:ListItem>
                    <asp:ListItem Value="MD">Managing Director</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                ///&nbsp; Case C0001<br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
