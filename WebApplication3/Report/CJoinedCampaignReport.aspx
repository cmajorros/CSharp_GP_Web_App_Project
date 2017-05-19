<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CJoinedCampaignReport.aspx.cs" Inherits="WebApplication3.Report.CJoinedCampaignReport" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 90px;
        }
        .style9
        {
            width: 849px;
        }
        .style10
        {
            width: 90px;
            height: 17px;
        }
        .style11
        {
            width: 849px;
            height: 17px;
        }
        .style12
        {
            height: 17px;
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
            <td class="style10">
            </td>
            <td class="style11">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Campaign Period" 
                    onload="Panel1_Load">
                    Start Date
                    <BDP:BasicDatePicker ID="BasicDatePicker3" runat="server" 
                        DateFormat="yyyy-MM-dd" ValidationGroup="a" />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="BasicDatePicker3" ErrorMessage="Please select start date" 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp;End Date
                    <BDP:BasicDatePicker ID="BasicDatePicker4" runat="server" 
                        DateFormat="yyyy-MM-dd" ValidationGroup="a" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="BasicDatePicker4" ErrorMessage="Please select end date " 
                        ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    <asp:Button ID="Result" runat="server" onclick="Result_Click" Text="Result" />
                </asp:Panel>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByDate" 
                    TypeName="WebApplication3.ReportDataSetTableAdapters.CJoinedCampaignVolunteerTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="BasicDatePicker3" Name="StartDate" 
                            PropertyName="SelectedDate" Type="String" />
                        <asp:ControlParameter ControlID="BasicDatePicker4" Name="EndDate" 
                            PropertyName="SelectedDate" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="849px">
                    <LocalReport ReportPath="Report\JoinedCampaignReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
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
