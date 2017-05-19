<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReportTest.aspx.cs" Inherits="WebApplication3.ReportTest" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </p>
    <BDP:BasicDatePicker ID="bdpStart" runat="server" DateFormat="dd/MM/yyyy" />
&nbsp;&nbsp;
    <BDP:BasicDatePicker ID="bdpEnd" runat="server" DateFormat="dd/MM/yyyy" />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="Sample.rpt">
        </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" EnableParameterPrompt="False" 
        ReportSourceID="CrystalReportSource1" />
</asp:Content>
