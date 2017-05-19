<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MISActivityReport.aspx.cs" Inherits="WebApplication3.Report.MISActivityReport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 81px;
        }
        .style9
        {
            width: 81px;
            height: 17px;
        }
        .style10
        {
            height: 17px;
        }
        .style11
        {
            width: 875px;
        }
        .style12
        {
            height: 17px;
            width: 875px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                Activity Report</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style12">
                Select year
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="98px">
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Result" onclick="Button1_Click" />
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:ObjectDataSource ID="ObjectData" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByYear" 
                    TypeName="WebApplication3.ReportDataSetTableAdapters.MISActivity_ReportTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Year" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="845px" 
                    Font-Names="Verdana" Font-Size="8pt" Height="661px" 
                    InteractiveDeviceInfos="(Collection)" WaitMessageFont-Names="Verdana" 
                    WaitMessageFont-Size="14pt">
                    <LocalReport ReportPath="Report\MISActivityReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectData" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
