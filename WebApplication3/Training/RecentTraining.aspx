<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RecentTraining.aspx.cs" Inherits="WebApplication3.Training.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style8
    {
        width: 82px;
    }
    .style9
    {
        width: 200px;
    }
    .style10
    {
        width: 200px;
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
            <td class="style10">
                <strong>Recent Trainings</strong></td>
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
    </table>
</asp:Content>
