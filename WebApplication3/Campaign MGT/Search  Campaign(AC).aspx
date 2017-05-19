<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search  Campaign(AC).aspx.cs" Inherits="WebApplication3.Campaign_MGT.Search__Campaign_VC_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 89px;
        }
        .style9
        {
            width: 89px;
           
           
        }
       
        .style11
        {
            width: 53px;
        }
        .style12
        {
            width: 53px;
            text-align: right;
        }
        .style14
        {
            width: 102px;
            text-align: right;
        }
        .style16
        {
            width: 59px;
            text-align: right;
        }
        .style23
        {
            width: 160px;
        }
        .style27
        {
            width: 133px;
            text-align: right;
        }
        .style29
        {
            margin-right: 0px;
        }
        .style30
        {
            width: 170px;
        }
        .style31
        {
            margin-right: 33px;
        }
        .style32
        {
            width: 276px;
        }
                        
        .style21
        {
            width: 175px;
        }
        .style24
        {
            width: 136px;
        }
        .style25
        {
            width: 37px;
            text-align: right;
        }
        .style22
        {
            width: 212px;
        }
        .style35
        {
            width: 150px;
        }
        .style36
        {
            width: 132px;
        }
        .style38
        {
            width: 223px;
        }
        .style39
        {
            height: 16px;
        }
        .style40
        {
            height: 16px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style9">
            </td>
            <td class="style10" colspan="3">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Search" Width="752px">
                    Search by Campaign ID or Name&nbsp;
                    <asp:TextBox ID="txtSearch" runat="server" OnClick="this.value=''" 
                        Width="231px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/search.png" 
                        onclick="ImageButton1_Click" />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
                    </asp:ScriptManagerProxy>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="Panel2" runat="server" GroupingText="Search Result" 
                    Width="752px" Visible="False">
                    <strong>&nbsp;&nbsp;
                    <br />
                    </strong>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Activity_ID" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" ondatabinding="GridView1_DataBinding" 
                        onrowdatabound="GridView1_RowDataBound" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="630px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                HeaderText="StartDate" SortExpression="Activity_StartDate" />
                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                HeaderText="EndDate" SortExpression="Activity_EndDate" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Activity Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="CAMP_Name" HeaderText="Campaign Name" 
                                SortExpression="CAMP_Name" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        onselected="SqlDataSource1_Selected" 
                        SelectCommand="SELECT Activity_ID, Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status, CAMP_Name  FROM Activities, CampaignTypes WHERE (Activity_Type = 'Campaign') AND (Activity_ID LIKE '%' + @Activity_ID + '%') AND Activities.CAMP_ID = CampaignTypes.CAMP_ID AND (Activity_Status = 'Starting') OR (Activity_Name LIKE '%' + @Activity_Name + '%') ">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_ID" 
                                PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtSearch" Name="Activity_Name" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <asp:Panel ID="PanelCamDetail" runat="server" GroupingText="Campaign Detail" 
                    Width="844px" Visible="False">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
     Width="729px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        AutoGenerateRows="False" DataKeyNames="Activity_ID" 
                        DataSourceID="SqlDataSource2">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                ReadOnly="True" SortExpression="Activity_ID" />
                            <asp:BoundField DataField="AT_ID" HeaderText="Action Type ID" 
                                SortExpression="AT_ID" />
                            <asp:BoundField DataField="AT_Name" 
                                HeaderText="Action Type Name" SortExpression="AT_Name" />
                            <asp:BoundField DataField="Activity_Name" 
                                HeaderText="Activity Name" SortExpression="Activity_Name" />
                            <asp:BoundField DataField="Activity_StartDate" HeaderText="Start Date" 
                                SortExpression="Activity_StartDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_EndDate" HeaderText="End Date" 
                                SortExpression="Activity_EndDate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Activity_Place" HeaderText="Place" 
                                SortExpression="Activity_Place" />
                            <asp:BoundField DataField="Activity_Province" HeaderText="Province" 
                                SortExpression="Activity_Province" />
                            <asp:BoundField DataField="Activity_Status" HeaderText="Status" 
                                SortExpression="Activity_Status" />
                            <asp:BoundField DataField="CAMP_ID" HeaderText="Campaign ID" 
                                SortExpression="CAMP_ID" />
                            <asp:BoundField DataField="CAMP_Name" HeaderText="Campaign Name" 
                                SortExpression="CAMP_Name" />
                            <asp:BoundField DataField="Activity_Type" HeaderText="Activity Type" 
                                SortExpression="Activity_Type" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        
                        
                        SelectCommand="SELECT [Activity_ID], [Activities].[AT_ID],[AT_Name], [Activity_Name], [Activity_StartDate], [Activity_EndDate], [Activity_Place], [Activity_Province], [Activity_Status],[Activities].[CAMP_ID],[CAMP_Name], [Activity_Type] FROM [Activities],[ActionTypes], [CampaignTypes] WHERE ([Activities].[CAMP_ID] = [CampaignTypes].[CAMP_ID]) AND ([Activity_ID] = @Activity_ID) AND ([Activities].[AT_ID]= [ActionTypes].[AT_ID])">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Activity_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                </td>
            <td colspan="3" class="style35">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="PanelColdAction" runat="server" CssClass="style31" 
                            GroupingText="Select Volunteer"  Visible="False" 
                            Width="887px" onload="PanelColdAction_Load">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="style23">
                                        Most Activite Volunteer&nbsp;
                                    </td>
                                    <td class="style36">
                                        &nbsp;</td>
                                    <td class="style38">
                                        &nbsp;</td>
                                    <td class="style16">
                                        <asp:Label ID="lblMostActive2" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style32">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" 
                                            onclick="LinkButton3_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelMostActive2" runat="server" Visible="False">
                                            <br />
                                            <asp:GridView ID="GridViewMostActive1" runat="server" 
                                                AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                                                GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox14" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveMostActive2" runat="server" Text="Save" 
                                                    onclick="SaveMostActive2_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelMostActive2" runat="server" 
                                                    onclick="CancelMostActive2_Click" Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23" valign="top">
                                        Volunteer Area</td>
                                    <td class="style36" valign="top">
                                        <asp:DropDownList ID="ddlArea" runat="server" DataSourceID="SqlDataSourceArea" 
                                            DataTextField="JA_Name" DataValueField="JA_ID" Height="22px" Width="181px" 
                                            onselectedindexchanged="ddlArea_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceArea" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [JA_ID], [JA_Name] FROM [JoinedAreas]">
                                        </asp:SqlDataSource>
                                    </td>
                                    <td valign="top" class="style38">
                                        &nbsp;</td>
                                    <td class="style16" valign="top">
                                        <asp:Label ID="lblArea1" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style32" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnArea" runat="server" 
                                            onclick="btnArea_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelArea2" runat="server" Visible="False">
                                            <br />
                                            <asp:GridView ID="GridViewArea1" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox16" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveArea2" runat="server" Text="Save" 
                                                    onclick="SaveArea2_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelArea2" runat="server" onclick="CancelArea2_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23" valign="top">
                                        Volunteer Interest
                                    </td>
                                    <td class="style36" valign="top">
                                        <asp:DropDownList ID="ddlInterest" runat="server" 
                                            DataSourceID="SqlDataSourceInterest" DataTextField="Interest_Name" 
                                            DataValueField="Interest_ID" Height="22px" Width="181px" 
                                            onselectedindexchanged="ddlInterest_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceInterest" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [Interest_ID], [Interest_Name] FROM [Interests]">
                                        </asp:SqlDataSource>
                                    </td>
                                    <td valign="top" class="style38">
                                        &nbsp;</td>
                                    <td class="style16" valign="top">
                                        <asp:Label ID="lblInterest" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style32" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnInterest" 
                                            runat="server" onclick="btnInterest_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelInterest2" runat="server" Visible="False">
                                            <br />
                                            <asp:GridView ID="GridviewInterest1" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox18" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveInterest2" runat="server" Text="Save" 
                                                    onclick="SaveInterest2_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelInterest2" runat="server" onclick="CancelInterest2_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr valign="top">
                                    <td valign="top">
                                        Volunteer Skill</td>
                                    <td class="style36" valign="top">
                                        <asp:DropDownList ID="ddlSkillType" runat="server" 
                                            DataSourceID="SqlDataSourceST" DataTextField="ST_Name" DataValueField="ST_ID" 
                                            Height="22px" Width="145px" AutoPostBack="True" 
                                            onselectedindexchanged="ddlSkillType_SelectedIndexChanged">
                                           
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceST" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [ST_ID], [ST_Name] FROM [SkillTypes]">
                                        </asp:SqlDataSource>
                                    </td>
                                    <td class="style38">
                                        &nbsp;<asp:DropDownList ID="ddlSkill" runat="server" 
                                            DataSourceID="SqlDataSourceSkill" DataTextField="Skill_Name" 
                                            DataValueField="Skill_ID" 
                                            onload="ddlSkill_Load" 
                                            onselectedindexchanged="ddlSkill_SelectedIndexChanged" Height="22px" 
                                            AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="ddlSI1" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="SI_Name" DataValueField="SI_ID" 
                                            onselectedindexchanged="ddlSI1_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        &nbsp;</td>
                                    <td class="style16" valign="top">
                                        <asp:Label ID="lblSkill1" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style32" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnSkill" runat="server" 
                                            onclick="btnSkill_Click">Show Detail</asp:LinkButton>
                                        <asp:SqlDataSource ID="SqlDataSourceSkill" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [Skill_Name], [Skill_ID] FROM [Skills] WHERE ([ST_ID] = @ST_ID)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlSkillType" Name="ST_ID" 
                                                    PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        </td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelSkill2" runat="server" Visible="False">
                                            <br />
                                            <asp:GridView ID="GridViewSkill1" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox20" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveSkill2" runat="server" Text="Save" 
                                                    onclick="SaveSkill2_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelSkill2" runat="server" onclick="CancelSkill2_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style23">
                                        Training Team
                                    </td>
                                    <td class="style36">
                                        <asp:DropDownList ID="ddlTT1" runat="server" 
                                            DataSourceID="SqlDataSourceTT" DataTextField="TT_Name" DataValueField="TT_ID" 
                                            Height="22px" Width="181px" 
                                            onselectedindexchanged="ddlTT1_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style38">
                                        &nbsp;</td>
                                    <td class="style16">
                                        <asp:Label ID="lblTT2" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style32">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnTT2" runat="server" 
                                            onclick="btnTT2_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelTT2" runat="server" Visible="False">
                                            <br />
                                            <div>
                                                <asp:GridView ID="GridViewTT1" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Select">
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox22" runat="server" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chk" runat="server" />
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                        <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveTT2" runat="server" Text="Save" onclick="SaveTT2_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelTT2" runat="server" onclick="CancelTT2_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style39">
                                    </td>
                                    <td class="style40" colspan="4">
                                        <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">Send Invitation Email </asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="PanelHardAction" runat="server" GroupingText="Select Volunteer" 
                            Visible="False" Width="903px" CssClass="style29" 
                            onload="PanelHardAction_Load">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="style30" valign="top">
                                        Training Team
                                    </td>
                                    <td valign="top">
                                        <asp:DropDownList ID="ddlTT" runat="server" Height="22px" Width="181px" 
                                            DataSourceID="SqlDataSourceTT" DataTextField="TT_Name" 
                                            DataValueField="TT_ID" AutoPostBack="True" 
                                            onselectedindexchanged="ddlTT_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceTT" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                            SelectCommand="SELECT [TT_ID], [TT_Name] FROM [TrainingTeams]">
                                        </asp:SqlDataSource>
                                        &nbsp;&nbsp; &nbsp;</td>
                                    <td class="style12" valign="top">
                                        <asp:Label ID="lblTT" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style14" valign="top">
                                        People</td>
                                    <td class="style27" valign="top">
                                        &nbsp;<asp:LinkButton ID="btnTT" runat="server" onclick="btnTT_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style30">
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelTT1" runat="server" Visible="False">
                                            <br />
                                            <asp:GridView ID="GridViewTT2" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveTT1" runat="server" Text="Save" onclick="SaveTT1_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelTT1" runat="server" Text="Cancel" 
                                                    onclick="CancelTT1_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style30">
                                        NVDA Trained Volunteer</td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style12">
                                        <asp:Label ID="lblNVDA" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        People</td>
                                    <td class="style27">
                                        <asp:LinkButton ID="btnNVDA" runat="server" onclick="btnNVDA_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style30">
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelNVDA1" runat="server" Visible="False">
                                        <br />
                                            <asp:GridView ID="GridViewNVDA1" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveNVDA1" runat="server" Text="Save" 
                                                    onclick="SaveNVDA1_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelNVDA1" runat="server" Text="Cancel" 
                                                    onclick="CancelNVDA1_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style30">
                                        Most Active Volunteer (Passed NVDA Training)&nbsp;
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style12">
                                        <asp:Label ID="lblMostActive" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style14">
                                        People</td>
                                    <td class="style27">
                                        <asp:LinkButton ID="btnMostActive" runat="server" onclick="btnMostActive_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style30">
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelMostActive1" runat="server" Visible="False">
                                        <br />
                                            <asp:GridView ID="GridViewNVDA2" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="V_ID">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveMostActive1" runat="server" Text="Save" 
                                                    onclick="SaveMostActive1_Click" />
                                                &nbsp;
                                                <asp:Button ID="CancelMostActive1" runat="server" Text="Cancel" 
                                                    onclick="CancelMostActive1_Click" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style30">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
<br />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="PanelBoth" runat="server" GroupingText="Select Volunteer" 
                            onload="PanelBoth_Load" Visible="False" Width="822px">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        Most Active Volunteer</td>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Label ID="lblMostActive3" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style22">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton8" runat="server" 
                                            onclick="LinkButton8_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelMostActive3" runat="server" Visible="False">
                                        <br />
                                            <asp:GridView ID="GridViewMostActive3" runat="server" 
                                                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="V_ID" 
                                                ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk0" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveMostActive3" runat="server" onclick="SaveMostActive3_Click" 
                                                    Text="Save" />
                                                &nbsp;
                                                <asp:Button ID="CancelMostActive3" runat="server" 
                                                    onclick="CancelMostActive3_Click" Text="Cancel" />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Volunteer Interest</td>
                                    <td class="style21">
                                        <asp:DropDownList ID="ddlInterest3" runat="server" Height="22px" 
                                            onselectedindexchanged="ddlInterest3_SelectedIndexChanged" Width="160px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Label ID="lblInterest3" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style22">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnInterest3" runat="server" 
                                            onclick="btnInterest3_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelInterest3" runat="server" Visible="False">
                                        <br />
                                            <asp:GridView ID="GridviewInterest3" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox4" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk1" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveInterest3" runat="server" onclick="SaveInterest3_Click" 
                                                    Text="Save" />
                                                &nbsp;
                                                <asp:Button ID="CancelInterest3" runat="server" onclick="CancelInterest3_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Volunteer Area</td>
                                    <td class="style21">
                                        <asp:DropDownList ID="ddlArea3" runat="server" 
                                            DataSourceID="SqlDataSourceInterest" DataTextField="Interest_Name" 
                                            DataValueField="Interest_ID" Height="22px" 
                                            onselectedindexchanged="ddlArea3_SelectedIndexChanged" Width="160px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Label ID="lblArea3" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style22">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnArea3" runat="server" 
                                            onclick="btnArea3_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelArea3" runat="server">
                                        <br />
                                            <asp:GridView ID="GridViewArea3" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox6" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk2" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveArea3" runat="server" onclick="SaveArea3_Click" 
                                                    Text="Save" />
                                                &nbsp;
                                                <asp:Button ID="CancelArea3" runat="server" onclick="CancelArea3_Click" 
                                                    Text="Cancel" />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Training Team</td>
                                    <td class="style21">
                                        <asp:DropDownList ID="ddlTT3" runat="server" DataSourceID="SqlDataSourceTT" 
                                            DataTextField="TT_Name" DataValueField="TT_ID" Height="22px" 
                                            onselectedindexchanged="ddlTT3_SelectedIndexChanged" Width="160px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Label ID="lblTT3" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style22">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnTT3" runat="server" 
                                            onclick="btnTT3_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelTT3" runat="server" Visible="False">
                                        <br />
                                            <asp:GridView ID="GridViewTT3" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox8" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk3" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveTT3" runat="server" onclick="SaveTT3_Click" Text="Save" />
                                                &nbsp;
                                                <asp:Button ID="CancelTT3" runat="server" onclick="CancelTT3_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Volunteer Skill
                                    </td>
                                    <td class="style21">
                                        <asp:DropDownList ID="ddlSkillType3" runat="server" 
                                            DataSourceID="SqlDataSourceST" DataTextField="ST_Name" DataValueField="ST_ID" 
                                            Height="22px" onselectedindexchanged="ddlSkillType3_SelectedIndexChanged" 
                                            Width="160px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style24">
                                        <asp:DropDownList ID="ddlSkill3" runat="server" 
                                            DataSourceID="SqlDataSourceSkill" DataTextField="Skill_Name" 
                                            DataValueField="Skill_ID" Height="22px" 
                                            onselectedindexchanged="ddlSkill3_SelectedIndexChanged" Width="160px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style25">
                                        <asp:Label ID="lblSkill3" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style22">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnSkill3" runat="server" 
                                            onclick="btnSkill3_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelSkill3" runat="server">
                                        <br />
                                            <asp:GridView ID="GridViewSkill3" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox10" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk4" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveSkill3" runat="server" onclick="SaveSkill3_Click" 
                                                    Text="Save" />
                                                &nbsp;
                                                <asp:Button ID="CancelSkill3" runat="server" onclick="CancelSkill3_Click" 
                                                    Text="Cancel" />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        NVDA Trained Volunteer</td>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Label ID="lblNVDA3" runat="server" Text="0"></asp:Label>
                                    </td>
                                    <td class="style22">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;People&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="btnNVDA3" runat="server" 
                                            onclick="btnNVDA3_Click">Show Detail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="4">
                                        <asp:Panel ID="PanelNVDA3" runat="server" Visible="False">
                                        <br />
                                            <asp:GridView ID="GridviewNVDA3" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Select">
                                                        <EditItemTemplate>
                                                            <asp:CheckBox ID="CheckBox12" runat="server" />
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chk5" runat="server" />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="V_Name" HeaderText="Name (Thai)" />
                                                    <asp:BoundField DataField="V_Lastname" HeaderText="Last Name (Thai)" />
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
                                            <div>
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="SaveNVDA3" runat="server" onclick="SaveNVDA3_Click" 
                                                    Text="Save" />
                                                &nbsp;
                                                <asp:Button ID="CancelNVDA3" runat="server" onclick="CancelNVDA3_Click" 
                                                    Text="Cancel" />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style22">
                                        <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click">Send invitation mail</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [SI_Name] FROM [SkillItems] WHERE ([Skill_ID] = @Skill_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSkill" Name="Skill_ID" 
                            PropertyName="SelectedValue" Type="Int32" />
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
