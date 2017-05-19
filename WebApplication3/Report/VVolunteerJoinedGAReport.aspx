<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VVolunteerJoinedGAReport.aspx.cs" Inherits="WebApplication3.Report.VVolunteerJoinedGAReport" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 96px;
        }
        .style9
        {
            width: 742px;
        }
        .style10
        {
            width: 203px;
        }
        .style11
        {
            width: 69px;
        }
        .style12
        {
            width: 193px;
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
                <asp:Panel ID="PanelSearch" runat="server" GroupingText="Report Period">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                Start Date&nbsp;
                            </td>
                            <td class="style10">
                                <BDP:BasicDatePicker ID="BasicDatePicker1" runat="server" 
                                    DateFormat="yyyy-MM-dd" ValidationGroup="a" />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="BasicDatePicker1" ErrorMessage="Please select start date" 
                                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style11">
                                End Date
                            </td>
                            <td class="style12">
                                <BDP:BasicDatePicker ID="BasicDatePicker2" runat="server" 
                                    DateFormat="yyyy-MM-dd" ValidationGroup="a" />
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="BasicDatePicker2" ErrorMessage="Please select end date" 
                                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Result" 
                                    ValidationGroup="a" />
                            </td>
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
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBySDate" 
                    
                    TypeName="WebApplication3.ReportDataSetTableAdapters.VVolnteerJoinGAReportTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="BasicDatePicker1" Name="SDate" 
                            PropertyName="SelectedDate" Type="String" />
                        <asp:ControlParameter ControlID="BasicDatePicker2" Name="EDate" 
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
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="863px" 
                    Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
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
