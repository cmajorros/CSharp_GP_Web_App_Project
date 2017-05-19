﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search Training (forVC).aspx.cs" Inherits="WebApplication3.Training.Search_Training__forVC_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 102px;
        }
        .style12
        {
            width: 102px;
            height: 17px;
        }
        .style13
        {
            height: 17px;
        }
        .style10
        {
            width: 691px;
            height: 23px;
        }
        .style11
        {
            width: 211px;
        }
        .style15
        {
            margin-left: 60px;
            text-align: left;
        }
        .style14
        {
            text-decoration: underline;
        }
               
       
        .style18
        {
            text-align: left;
        }
        .style21
        {
            font-family: Tahoma;
        }
        .style22
        {
            width: 277px;
        }
        .style16
        {
            margin-top: 0px;
        }
       
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelSearch" runat="server" GroupingText="Search" Width="856px" 
                    Visible="False">
                    &nbsp; Search by Training ID or Name&nbsp;
                    <asp:TextBox ID="txtSearch" runat="server" Width="221px" 
                        OnClick="this.value=''" CssClass="style21"></asp:TextBox>
                    <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/icon/search.png" 
                        onclick="btnSearch_Click" />
                </asp:Panel>
                <asp:Panel ID="PanelSearchResult" runat="server" GroupingText="Search Result" 
                    Width="859px" Visible="False">
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataKeyNames="Activity_ID" ForeColor="#333333" GridLines="None" 
                            Height="102px" Width="697px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" />
                                <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" />
                                <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                    HeaderText="StartDate" />
                                <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                    HeaderText="EndDate" />
                                <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" />
                                <asp:BoundField DataField="TTY_Name" HeaderText="Training Type" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
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
                    </div>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Training Detail" 
                    Height="386px" Width="856px" Visible="False">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" Height="34px" Width="786px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="StartDate" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="EndDate" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                                SortExpression="Activity_Type" />
                            <asp:BoundField DataField="TTY_Name" HeaderText="Training Type " 
                                SortExpression="TTY_Name" />
                            <asp:BoundField DataField="TT_Name" HeaderText="Training Team" 
                                SortExpression="TT_Name" />
                            <asp:BoundField DataField="TC_Name" HeaderText="Trainin Catagory" 
                                SortExpression="TC_Name" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT [Activity_ID], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status], [Activities].[TTY_ID], [Activities]. [TT_ID],  [Activities].[TC_ID], [Activity_Type] , [TTY_Name], [TT_Name], [TC_Name]
FROM [Activities],TrainingTypes, TrainingCatagories, TrainingTeams WHERE ([Activity_ID] = @Activity_ID 
AND [Activities].[TTY_ID]= [TrainingTypes].[TTY_ID]  AND  [Activities]. [TT_ID] =  [TrainingTeams]. [TT_ID] 
AND [Activities].[TC_ID] = [TrainingCatagories].[TC_ID]  )">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                <asp:Panel ID="PanelSelectVolunteer" runat="server" 
                    GroupingText="Select Volunteer" Width="858px" Visible="False">
                    <table cellpadding="0" cellspacing="0" class="style10">
                        <tr>
                            <td class="style22">
                                Trained Volunteers&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="showTM" runat="server" onclick="showTM_Click">Show Detail</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    New Volunteer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblNew" 
                        runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; people&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="NewV" runat="server" onclick="NewV_Click">Show detail </asp:LinkButton>
                    <br />
                    <asp:Panel ID="PanelOldV" runat="server" CssClass="style15" Visible="False" 
                        Width="736px">
                        <div class="style18">
                            <span class="style14"><strong>New Volunteer Result</strong></span><br />
                            <br />
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None" 
                                Height="164px" Width="729px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" 
                                        HeaderText="Select Volunteer" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" />
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                        ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" />
                                    <asp:BoundField DataField="V_LastName" HeaderText="Volunteer Lastname" />
                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
                                    <asp:BoundField />
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
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                                ID="btnSaveOldV" runat="server" CssClass="style21" onclick="BtnSaveNV_Click" 
                                Text="Save" />
                            &nbsp;
                            <asp:Button ID="btnCancelOldV" runat="server" CssClass="style21" 
                                onclick="btnCancelOldV_Click1" Text="Cancel" />
                            <br />
                        </div>
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="PanelNewV" runat="server" CssClass="style15" Visible="False" 
                        Width="736px">
                        <div class="style18">
                            <span class="style14"><strong>New Volunteer Result</strong></span><br />
                            <br />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" CssClass="style16" DataKeyNames="V_ID" ForeColor="#333333" 
                                GridLines="None" Width="724px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" 
                                        HeaderText="Select Volunteer" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkNew" runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="V_ID" HeaderText="Vounteer ID" 
                                        ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name" />
                                    <asp:BoundField DataField="V_Lastname" HeaderText="Volunteer Lastname" />
                                    <asp:BoundField DataField="V_MobileNo1" HeaderText="Mobile No.1" />
                                    <asp:BoundField DataField="V_MobileNo2" HeaderText="Mobile No.2" />
                                    <asp:BoundField DataField="V_Email" HeaderText="Email" />
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
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                                ID="BtnSaveNV" runat="server" CssClass="style21" onclick="BtnSaveNV_Click" 
                                Text="Save" />
                            &nbsp;
                            <asp:Button ID="btnCancel" runat="server" CssClass="style21" 
                                onclick="btnCancel_Click" Text="Cancel" />
                            <br />
                        </div>
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Send Invitation Mail" />
&nbsp;<asp:Button ID="Button1" runat="server" CssClass="style21" Text="Exit " 
                        onclick="Button1_Click" Width="86px" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                <asp:Panel ID="PanelSelectV" runat="server">
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
