<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TTrainedVolunteerReport.aspx.cs" Inherits="WebApplication3.Training.TTrainedVolunteerReport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" GroupingText="Training Period">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    Start Date
                    <BDP:BasicDatePicker ID="BasicDatePicker1" runat="server" 
                    DateFormat="yyyy-MM-dd" ValidationGroup="a" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="BasicDatePicker1" ErrorMessage="Please select start date" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp;End Date
                    <BDP:BasicDatePicker ID="BasicDatePicker2" runat="server" 
                    DateFormat="yyyy-MM-dd" ValidationGroup="a" />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="BasicDatePicker2" ErrorMessage="Please select end date" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                    &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="width: 56px" Text="Result" ValidationGroup="a" />
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByDate" 
                    
    TypeName="WebApplication3.ReportDataSetTableAdapters.TTrainedVolunteerReportTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="BasicDatePicker1" Name="StartDate" 
                            PropertyName="SelectedDate" Type="String" />
                            <asp:ControlParameter ControlID="BasicDatePicker2" Name="EndDate" 
                            PropertyName="SelectedDate" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="929px">
                    <LocalReport ReportPath="Report\VVolunteerJoinedGA.rdlc">
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
