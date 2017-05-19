<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageChanal.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.ManageMedia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 168px;
        }
        .style9
        {
            width: 787px;
        }
        .style10
        {
            width: 150px;
        }
        .style11
        {
            width: 787px;
            color: #99CC00;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                <strong>Manage Channel Type</strong></td>
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
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" 
                    AutoGenerateColumns="False" DataKeyNames="CT_ID" DataSourceID="SqlDataSource2" 
                    Width="450px" Height="145px" onrowdatabound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True">
                        <ItemStyle ForeColor="#333333" />
                        </asp:CommandField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CT_ID" HeaderText="Channel Type ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CT_ID" 
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="CT_Name" HeaderText="Channel Type Name" 
                            SortExpression="CT_Name" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [CT_ID], [CT_Name] FROM [ChannalTypes]" 
                    DeleteCommand="DELETE FROM ChannalTypes WHERE (CT_ID = @CT_ID)" 
                    UpdateCommand="UPDATE ChannalTypes SET CT_Name = @CT_Name WHERE CT_ID =@CT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="CT_ID" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CT_Name" />
                        <asp:Parameter Name="CT_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style10">
                                Chanal Name
                            </td>
                            <td>
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="143px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Confirm" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
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
