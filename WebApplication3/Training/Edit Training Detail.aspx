<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit Training Detail.aspx.cs" Inherits="WebApplication3.Training.Edit_Training_Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 196px;
        }
        .style9
        {
            width: 196px;
            height: 17px;
        }
        .style10
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
            <td>
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
                &nbsp;Search by Training ID or Name&nbsp;
                <asp:TextBox ID="txtSearch" runat="server"  OnClick="this.value=''"
                    ontextchanged="txtSearch_TextChanged" Width="179px" Height="24px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon/search.png" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
            </td>
            <td class="style10">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Activity_ID" DataSourceID="seachResult" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Activity_ID" HeaderText="Activity_ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                        <asp:BoundField DataField="Activity_Name" HeaderText="Activity_Name" 
                            SortExpression="Activity_Name" />
                        <asp:BoundField DataField="Activity_StartDate" HeaderText="Activity_StartDate" 
                            SortExpression="Activity_StartDate" />
                        <asp:BoundField DataField="Activity_EndDate" HeaderText="Activity_EndDate" 
                            SortExpression="Activity_EndDate" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="seachResult" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate] FROM [Activities]
WHERE Activity_Type =@Activity_Type 
AND [Activity_ID] LIKE '%' +@Activity_ID +'%' OR  [Activity_Name] LIKE '%' +@Activity_Name +'%' ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Training" Name="Activity_Type" />
                        <asp:ControlParameter ControlID="txtSearch" Name="Activity_ID" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtSearch" Name="Activity_Name" 
                            PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
