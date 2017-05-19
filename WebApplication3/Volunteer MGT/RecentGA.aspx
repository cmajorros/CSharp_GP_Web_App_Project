<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RecentGA.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style8
    {
        width: 82px;
    }
    .style9
    {
            width: 314px;
        }
    .style10
    {
        width: 314px;
        font-size: medium;
        color: #99CC00;
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
                <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
&nbsp;
                <asp:ImageButton ID="lblSearch" runat="server" Height="28px" 
                ImageUrl="~/icon/search.png" Width="29px" />
            </td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
            <td class="style10">
                <strong>Recent&nbsp; General Activities !</strong></td>
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
&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            &nbsp;</td>
            <td class="style9">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
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
