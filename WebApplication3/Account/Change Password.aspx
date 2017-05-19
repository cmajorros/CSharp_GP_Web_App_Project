<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="WebApplication3.Account.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style22
        {
            width: 100%;
        }
        .style23
        {
            width: 135px;
        }
        .style24
        {
            width: 168px;
        }
        .style25
        {
            width: 168px;
            font-size: medium;
            color: #99CC00;
        }
        .style29
        {
            width: 135px;
            height: 4px;
        }
        .style30
        {
            width: 168px;
            height: 4px;
        }
        .style31
        {
            height: 4px;
        }
        .style26
        {
            width: 135px;
            height: 36px;
        }
        .style27
        {
            width: 168px;
            height: 36px;
        }
        .style28
        {
            height: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style22">
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style25">
            <strong>Change Password </strong>
        </td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                Enter your new password</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="195px" TextMode="Password" 
                ValidationGroup="A"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style29">
        </td>
        <td class="style30">
        </td>
        <td class="style31">
        </td>
    </tr>
    <tr>
        <td class="style26">
        </td>
        <td class="style27">
                Retype your password
            </td>
        <td class="style28">
            <asp:TextBox ID="TextBox2" runat="server" Width="193px" TextMode="Password" 
                ValidationGroup="A"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                ErrorMessage="CompareValidator" ForeColor="Red" ValidationGroup="A">Your password does not match</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                &nbsp;</td>
        <td>
&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                &nbsp;</td>
        <td>
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" 
                    onclick="btnConfirm_Click" style="height: 26px" ValidationGroup="A" />
&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                onclick="btnCancel_Click" ValidationGroup="A" />
        </td>
    </tr>
    <tr>
        <td class="style23">
                &nbsp;</td>
        <td class="style24">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>
