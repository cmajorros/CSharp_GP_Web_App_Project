<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchMedia.aspx.cs" Inherits="WebApplication3.Media.add_Media" %>
<%@ Import Namespace="System.Web.Mail"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 92px;
        }
        .style9
        {
            width: 566px;
        }
        .style10
        {
            margin-left: 37px;
        }
        .style11
        {
            color: #333333;
        }
        .style12
        {
            width: 147px;
        }
        .style13
        {
            width: 185px;
        }
        .style14
        {
            width: 185px;
            height: 16px;
        }
        .style15
        {
            height: 16px;
            width: 376px;
        }
        .style16
        {
            width: 376px;
        }
        .style17
        {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="PanelSearch" runat="server" GroupingText="Search" Width="683px">
                    Please insert Campaigner Media ID or Name&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="182px"  OnClick="this.value=''" ></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/icon/search.png" onclick="ImageButton1_Click" />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="PanelSearchResult" runat="server" GroupingText="Search Result" 
                    Visible="False" Width="678px">
                    <asp:GridView ID="GridView1" runat="server" 
    CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                        CssClass="style10" DataKeyNames="CM_ID" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="CM_ID" HeaderText="Campaigner Media ID" />
                            <asp:BoundField DataField="CM_Name" HeaderText="Campaigner Media Name" />
                            <asp:BoundField DataField="MT_Name" HeaderText="Media Type" />
                            <asp:BoundField DataField="CT_Name" HeaderText="Channel Type" />
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
                </asp:Panel>
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Media Detail" 
                    Visible="False" Width="678px">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
    CellPadding="4" ForeColor="#333333" GridLines="None" Height="50px" 
    Width="590px" AutoGenerateRows="False" DataKeyNames="CM_ID" DataSourceID="SqlDataSource1">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="CM_ID" HeaderText="Campaigner Media ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="CM_ID" />
                            <asp:BoundField DataField="CM_Name" HeaderText="Campainger Media Name" 
                                SortExpression="CM_Name" />
                            <asp:BoundField DataField="MT_Name" HeaderText="Media Type Name" 
                                SortExpression="MT_Name" />
                            <asp:BoundField DataField="CT_Name" HeaderText="Channel Type Name" 
                                SortExpression="CT_Name" />
                            <asp:BoundField DataField="Method" HeaderText="Method" 
                                SortExpression="Method" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        DeleteCommand="DELETE FROM CampaignerMedias WHERE (CM_ID = @CM_ID)" 
                        SelectCommand="SELECT CampaignerMedias.*, ChannalTypes.CT_Name, MediaTypes.MT_Name FROM CampaignerMedias INNER JOIN ChannalTypes ON CampaignerMedias.CT_ID = ChannalTypes.CT_ID INNER JOIN MediaTypes ON CampaignerMedias.MT_ID = MediaTypes.MT_ID WHERE CM_ID =@CM_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="CM_ID" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="CM_ID" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                        ForeColor="#333333" onclick="LinkButton4_Click">Send Media</asp:LinkButton>
                    <strong>&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="style11" 
                        ForeColor="#333333" onclick="LinkButton5_Click">Get Link</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CssClass="style11" 
                        ForeColor="#333333" onclick="LinkButton3_Click" 
                        onclientclick="return confirm('Are you sure you want to delete this Campaigner Media?')">Delete</asp:LinkButton>
                    &nbsp;</strong></asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Get Public Link" 
                    Visible="False" Width="672px">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style12">
                                Get link
                            </td>
                            <td>
                                <asp:TextBox ID="txtGetLink" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Get Link" />
                            </td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                    Text="Close" />
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="PanelSendMedia" runat="server" GroupingText="Send Media" 
                    Visible="False" Width="667px">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style13">
                                Select Volunteer Interest</td>
                            <td class="style16">
                                <asp:DropDownList ID="ddlInterest" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Interest_Name" 
                                    DataValueField="Interest_ID" 
                                    onselectedindexchanged="ddlInterest_SelectedIndexChanged" 
                                    ontextchanged="ddlInterest_TextChanged">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [Interest_ID], [Interest_Name] FROM [Interests]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                To :</td>
                            <td class="style16">
                                <asp:TextBox ID="txtTo" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                Subject :</td>
                            <td class="style16">
                                <asp:TextBox ID="txtSubject" runat="server" Width="403px" Height="22px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                            </td>
                            <td class="style15">
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" valign="top">
                                Message :</td>
                            <td class="style16">
                                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                                    Text="Attach Media" />
                                <br />
                                <br />
                                <asp:TextBox ID="txtMessage" runat="server" Height="322px" TextMode="MultiLine" 
                                    Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Send" />
                                &nbsp;
                                <asp:Button ID="Button5" runat="server" Text="Cancel" onclick="Button5_Click" />
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
    </table>
</asp:Content>
