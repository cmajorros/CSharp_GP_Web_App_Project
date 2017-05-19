<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageMediaChannel.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.ManageMediaChannel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 120px;
        }
        .style9
        {
            color: #99CC00;
            font-size: large;
        }
        .style10
        {
            width: 120px;
            height: 17px;
        }
        .style11
        {
            height: 17px;
        }
        .style12
        {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <strong>Manage Media Channel</strong></td>
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
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/plus.png" 
                    onclick="ImageButton1_Click" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="MC_ID" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" ForeColor="#333333" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MC_ID" HeaderText="Media Channel ID"  
                            InsertVisible="False" ReadOnly="True" SortExpression="MC_ID" 
                            ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="CT_ID" HeaderText="Channel Type ID" 
                            SortExpression="CT_ID" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="CT_Name" HeaderText="Channel Type Name" 
                            SortExpression="CT_Name" />
                        <asp:BoundField DataField="MT_ID" HeaderText="Media Type ID" 
                            SortExpression="MT_ID" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="MT_Name" HeaderText="Media Type Name" 
                            SortExpression="MT_Name" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#99CC00" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    DeleteCommand="DELETE FROM MediaChannels WHERE (MC_ID = @MC_ID)" 
                    SelectCommand="SELECT MediaChannels.*, ChannalTypes.CT_Name, MediaTypes.MT_Name FROM MediaTypes INNER JOIN MediaChannels ON MediaTypes.MT_ID = MediaChannels.MT_ID INNER JOIN ChannalTypes ON MediaChannels.CT_ID = ChannalTypes.CT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="MC_ID" />
                    </DeleteParameters>
                </asp:SqlDataSource>
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
            <td class="style10">
                </td>
            <td class="style11">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style12">
                                Media Type</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource3" DataTextField="MT_Name" DataValueField="MT_ID" 
                                    Height="21px" Width="149px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [MT_ID], [MT_Name] FROM [MediaTypes]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                Channel Type</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource2" DataTextField="CT_Name" DataValueField="CT_ID" 
                                    Height="21px" Width="150px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [CT_ID], [CT_Name] FROM [ChannalTypes]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Confirm" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style11">
                </td>
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
