<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manage Role.aspx.cs" Inherits="WebApplication3.Security.Manage_Role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            color: #99CC00;
            font-size: large;
            text-align: right;
            width: 213px;
        }
        .style12
        {
            width: 176px;
        }
        .style9
        {
            width: 213px;
        }
        .style10
        {
            width: 213px;
            height: 17px;
        }
        .style13
        {
            width: 176px;
            height: 17px;
        }
        .style11
        {
            height: 17px;
        }
        .style14
        {
            width: 264px;
        }
        .style15
        {
            height: 17px;
            width: 264px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                <strong>Manage Role</strong></td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="219px"></asp:TextBox>
&nbsp;
                <asp:ImageButton ID="lblSearch" runat="server" Height="28px" 
                ImageUrl="~/icon/search.png" Width="29px" />
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style13">
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/icon/Arrows/left_circular.png" ToolTip="first" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/icon/Arrows/left.png" ToolTip="nect" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/icon/Arrows/right.png" ToolTip="previous" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/icon/Arrows/right_circular.png" ToolTip="last" />
            </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/icon/save_as.png" 
                    ToolTip="save" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton7" runat="server" 
                    ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
&nbsp;
                <asp:ImageButton ID="ImageButton8" runat="server" 
                    ImageUrl="~/icon/Editing/edit.png" ToolTip="edit" />
&nbsp;<asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/icon/plus.png" 
                    ToolTip="new" />
&nbsp;&nbsp;
            </td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                Role ID</td>
            <td class="style14">
                <asp:TextBox ID="TextBox3" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                Role Name</td>
            <td class="style14">
                <asp:TextBox ID="TextBox4" runat="server" Width="237px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                Right ID</td>
            <td class="style14">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
