<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DWTest.aspx.cs" Inherits="WebApplication3.DWTest" %>
<%@ Register assembly="DundasWebOlapDataProviderAdomdNet" namespace="Dundas.Olap.Data.AdomdNet" tagprefix="DODPN" %>
<%@ Register assembly="DundasWebUIControls" namespace="Dundas.Olap.WebUIControls" tagprefix="DOCWC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 83px;
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
                <DODPN:AdomdNetDataProvider ID="AdomdNetDataProvider1" runat="server" 
                    ConnectionString="Data Source=SIROROS-PC\SIROROS; Integrated Security=SSPI;Initial Catalog=GPTEST; ">
                </DODPN:AdomdNetDataProvider>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <DOCWC:OlapClient ID="OlapClient1" runat="server" 
                    DataProviderID="AdomdNetDataProvider1" height="540px" width="900px">
                </DOCWC:OlapClient>
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
