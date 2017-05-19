<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddVolunteer.aspx.cs" Inherits="WebApplication3.Campaign_MGT.AddVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" GroupingText="Search" Width="752px">
                    <asp:TextBox ID="txtSearch" runat="server" Width="231px" OnClick="this.value=''">Please insert Campaign ID or Name</asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/icon/search.png" />
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" GroupingText="Search Result" 
                    Width="752px">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Width="591px">
                        <AlternatingRowStyle BackColor="White" />
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
                </asp:Panel>
                <asp:Panel ID="PanelPositionNeed" runat="server" GroupingText="Position Needs" 
                    Width="751px">
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Width="590px">
                        <AlternatingRowStyle BackColor="White" />
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
                </asp:Panel>
                <asp:Panel ID="PanelAddVolunteer" runat="server" GroupingText="Add Volunteer " 
                    Width="747px">
                    <asp:Panel ID="PanelPost1" runat="server">
                        <br />
                        Position Name&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Width="191px"></asp:TextBox>
                        <br />
                        <br />
                        No. of Need&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Width="191px"></asp:TextBox>
                        &nbsp; people<br />
                        <br />
                        Criteria 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="109px">
                            <asp:ListItem Value="0">Select Criteria </asp:ListItem>
                            <asp:ListItem>Personal Data</asp:ListItem>
                            <asp:ListItem>General Skill </asp:ListItem>
                            <asp:ListItem>Language Skill</asp:ListItem>
                            <asp:ListItem>Computer Skill</asp:ListItem>
                            <asp:ListItem>Interest </asp:ListItem>
                            <asp:ListItem>Joined Area</asp:ListItem>
                            <asp:ListItem>Training Team</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="ddlItem" runat="server" Height="24px" Width="105px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlSubItem" runat="server" Height="21px" Width="98px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnMoreCri1" runat="server" onclick="btnMoreCri1_Click" 
                            Text="Add more criteria" />
                        <br />
                        <asp:Panel ID="PanelCri2" runat="server" Visible="False">
                            <br />
                            Criteria 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="23px" Width="109px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList5" runat="server" Height="24px" Width="105px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList6" runat="server" Height="21px" Width="98px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Button ID="btnMoreCri2" runat="server" onclick="btnMoreCri2_Click" 
                                Text="Add more criteria" />
                            <br />
                            <br />
                            <asp:Panel ID="PanelCri3" runat="server">
                                Criteria 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList7" runat="server" Height="23px" Width="109px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList8" runat="server" Height="24px" Width="105px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList9" runat="server" Height="21px" Width="98px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                <asp:Button ID="btnMoreCri3" runat="server" onclick="btnMoreCri3_Click" 
                                    Text="Add more criteria" />
                                <br />
                                <br />
                                <asp:Panel ID="PanelC4i4" runat="server">
                                    Criteria 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList10" runat="server" Height="23px" 
                                        Width="109px">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList11" runat="server" Height="24px" 
                                        Width="105px">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList12" runat="server" Height="21px" Width="98px">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnMoreCri4" runat="server" onclick="btnMoreCri4_Click" 
                                        Text="Add more criteria" />
                                    <br />
                                    <br />
                                    <asp:Panel ID="Panelcri5" runat="server">
                                        Criteria 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList13" runat="server" Height="23px" 
                                            Width="109px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList14" runat="server" Height="24px" 
                                            Width="105px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList15" runat="server" Height="21px" Width="98px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                    </asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
                        </asp:Panel>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnFindV" runat="server" Text="Find Volunteer" Width="112px" />
                        <br />
                        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                            GridLines="None" Width="599px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CheckBoxField HeaderText="Select Volunteer" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSave" runat="server" Text="Save" />
                        &nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                    </asp:Panel>
                </asp:Panel>
                <br />
                <br />
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
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
