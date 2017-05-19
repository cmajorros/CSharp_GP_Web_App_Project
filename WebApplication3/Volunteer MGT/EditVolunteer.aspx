<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditVolunteer.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.EditVolunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            width: 82px;
        }
        .style10
        {
            margin-right: 1px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PanelSearch" runat="server" 
                    GroupingText="Search" Height="113px" Width="891px">
                    Search by Volunteer ID or Name&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" 
    ontextchanged="TextBox1_TextChanged" OnClick="this.value=''"
                    Width="216px"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/search.png" 
    onclick="ImageButton1_Click" />
                </asp:Panel>
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
                <asp:Panel ID="PanelSearchResult" runat="server" GroupingText="Search Result" 
                    Visible="False" Width="890px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="V_ID" ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="767px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" />
                            <asp:BoundField DataField="V_Name" HeaderText="Volunteer Name (Thai)" />
                            <asp:BoundField DataField="V_LastName" HeaderText="Volunteer LastName (Thai)" />
                            <asp:BoundField DataField="V_EngName" HeaderText="Volunteer Name (English)" />
                            <asp:BoundField DataField="V_EngLastName" 
                                HeaderText="Volunteer Last Name (English)" />
                            <asp:BoundField DataField="V_Status" HeaderText="Voluteer Status" />
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
                <asp:Panel ID="PanelDetail" runat="server" GroupingText="Volunteer Detail" 
                    Visible="False" Width="871px">
                    <asp:DetailsView ID="DetailsView1" runat="server" 
    Height="22px" Width="842px" AutoGenerateRows="False" CellPadding="4" CssClass="style10" 
                        DataKeyNames="V_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="White" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="V_ID" HeaderText="Volunteer ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="V_ID" />
                            <asp:BoundField DataField="V_Status" HeaderText="Status" ReadOnly="True" 
                                SortExpression="V_Status" />
                            <asp:BoundField DataField="V_StartDate" DataFormatString="{0:d}" 
                                HeaderText="Start Date" ReadOnly="True" SortExpression="V_StartDate" />
                            <asp:BoundField DataField="V_DeactiveDate" DataFormatString="{0:d}" 
                                HeaderText="Deactive Date" ReadOnly="True" SortExpression="V_DeactiveDate" />
                            <asp:TemplateField HeaderText="Salutation" SortExpression="V_Salutation">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("V_Salutation") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("V_Salutation") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("V_Salutation") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="V_Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("V_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("V_Name") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("V_Name") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="LastName" SortExpression="V_LastName">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("V_LastName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("V_LastName") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("V_LastName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="English Name" SortExpression="V_EngName">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("V_EngName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("V_EngName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("V_EngName") %>' 
                                        Width="600px"></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="English LastName" SortExpression="V_EngLastName">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("V_EngLastName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("V_EngLastName") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("V_EngLastName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nick Name" SortExpression="V_NickName">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("V_NickName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("V_NickName") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("V_NickName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="V_Gender">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("V_Gender") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("V_Gender") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("V_Gender") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Marital Status" SortExpression="V_MaritalStatus">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("V_MaritalStatus") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("V_MaritalStatus") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("V_MaritalStatus") %>' 
                                        Width="600px"></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date of Birth" SortExpression="V_BDate">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("V_BDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("V_BDate") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" 
                                        Text='<%# Bind("V_BDate", "{0:d}") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="V_Address">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("V_Address") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("V_Address") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("V_Address") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Province" SortExpression="V_Province">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("V_Province") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("V_Province") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("V_Province") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Zipcode" SortExpression="V_Postcode">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("V_Postcode") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("V_Postcode") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("V_Postcode") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile No.1" SortExpression="V_MobileNo1">
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("V_MobileNo1") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("V_MobileNo1") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("V_MobileNo1") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile No.2" SortExpression="V_MobileNo2">
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("V_MobileNo2") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("V_MobileNo2") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("V_MobileNo2") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Home Telephone No." SortExpression="V_HomeNo">
                                <ItemTemplate>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("V_HomeNo") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("V_HomeNo") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("V_HomeNo") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="V_Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("V_Email") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("V_Email") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("V_Email") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Occupation" SortExpression="V_Occupation">
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("V_Occupation") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("V_Occupation") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("V_Occupation") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Education" SortExpression="V_Education">
                                <ItemTemplate>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("V_Education") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("V_Education") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("V_Education") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Workplace" SortExpression="V_Workplace">
                                <ItemTemplate>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Bind("V_Workplace") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("V_Workplace") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("V_Workplace") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Major" SortExpression="V_EduMajor">
                                <ItemTemplate>
                                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("V_EduMajor") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("V_EduMajor") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("V_EduMajor") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sickness" SortExpression="V_Sickness">
                                <ItemTemplate>
                                    <asp:Label ID="Label21" runat="server" Text='<%# Bind("V_Sickness") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("V_Sickness") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("V_Sickness") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact Person Phone No." 
                                SortExpression="V_ContactNo">
                                <ItemTemplate>
                                    <asp:Label ID="Label22" runat="server" Text='<%# Bind("V_ContactNo") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("V_ContactNo") %>' 
                                        Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("V_ContactNo") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact Person" SortExpression="V_Contactperson">
                                <ItemTemplate>
                                    <asp:Label ID="Label23" runat="server" Text='<%# Bind("V_Contactperson") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox23" runat="server" 
                                        Text='<%# Bind("V_Contactperson") %>' Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox23" runat="server" 
                                        Text='<%# Bind("V_Contactperson") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Experience" SortExpression="V_Experience">
                                <ItemTemplate>
                                    <asp:Label ID="Label24" runat="server" Text='<%# Bind("V_Experience") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox24" runat="server" Enabled="False" 
                                        Text='<%# Bind("V_Experience") %>' TextMode="MultiLine" Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("V_Experience") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Expected" SortExpression="V_Expected">
                                <ItemTemplate>
                                    <asp:Label ID="Label25" runat="server" Text='<%# Bind("V_Expected") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox25" runat="server" Enabled="False" 
                                        Text='<%# Bind("V_Expected") %>' TextMode="MultiLine" Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox25" runat="server" Text='<%# Bind("V_Expected") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Reason" SortExpression="V_Reason">
                                <ItemTemplate>
                                    <asp:Label ID="Label26" runat="server" Text='<%# Bind("V_Reason") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox26" runat="server" Enabled="False" 
                                        Text='<%# Bind("V_Reason") %>' TextMode="MultiLine" Width="600px"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox26" runat="server" Text='<%# Bind("V_Reason") %>'></asp:TextBox>
                                </InsertItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Joined Time">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJT_ID" DataSourceID="SqlJT" ForeColor="#333333" 
                                        GridLines="None" Width="600px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJT_ID" HeaderText="Volunteer Joined Time ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VJT_ID" />
                                            <asp:BoundField DataField="JT_ID" HeaderText="Joined Time ID" 
                                                SortExpression="JT_ID" />
                                            <asp:BoundField DataField="JT_Name" HeaderText="Joined Time Name" 
                                                SortExpression="JT_Name" />
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
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJT_ID" DataSourceID="SqlJT" ForeColor="#333333" 
                                        GridLines="None" Width="601px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" />
                                            <asp:BoundField DataField="VJT_ID" HeaderText="Volunteer Joined Time ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VJT_ID" />
                                            <asp:BoundField DataField="JT_ID" HeaderText="Joined Time ID" 
                                                SortExpression="JT_ID" />
                                            <asp:TemplateField HeaderText="Joined Time Name" SortExpression="JT_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("JT_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="JT" 
                                                        DataTextField="JT_Name" DataValueField="JT_ID" 
                                                        SelectedValue='<%# Bind("JT_ID") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="JT" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                        SelectCommand="SELECT [JT_ID], [JT_Name] FROM [JoiningTimes]">
                                                    </asp:SqlDataSource>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
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
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Join Area">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="VolunteerJoinArea" 
                                        ForeColor="#333333" GridLines="None" Width="599px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Volunteer Joined Area" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="JA_ID" HeaderText="Join Area ID" 
                                                SortExpression="JA_ID" />
                                            <asp:BoundField DataField="JA_Name" HeaderText="Joined Area Name" 
                                                SortExpression="JA_Name" />
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
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VJA_ID" DataSourceID="VolunteerJoinArea" 
                                        ForeColor="#333333" GridLines="None" Width="600px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" />
                                            <asp:BoundField DataField="VJA_ID" HeaderText="Volunteer Joined Area ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VJA_ID" />
                                            <asp:BoundField DataField="JA_ID" HeaderText="Join Area ID" 
                                                SortExpression="JA_ID" />
                                            <asp:TemplateField HeaderText="Joined Area Name" SortExpression="JA_Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("JA_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="JA" 
                                                        DataTextField="JA_Name" DataValueField="JA_ID" 
                                                        SelectedValue='<%# Bind("JA_ID") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="JA" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                                        SelectCommand="SELECT [JA_ID], [JA_Name] FROM [JoinedAreas]">
                                                    </asp:SqlDataSource>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
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
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Interests">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VI_ID" DataSourceID="SqlInterest" 
                                        ForeColor="#333333" GridLines="None" Width="599px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VI_ID" HeaderText="Volunteer Interest ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VI_ID" />
                                            <asp:BoundField DataField="Interests_ID" HeaderText="Interest ID" 
                                                SortExpression="Interests_ID" />
                                            <asp:BoundField DataField="Interest_Name" HeaderText="Interest Name" 
                                                SortExpression="Interest_Name" />
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
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VI_ID" DataSourceID="SqlInterest" 
                                        ForeColor="#333333" GridLines="None" Width="600px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VI_ID" HeaderText="Volunteer Interest ID" 
                                                InsertVisible="False" ReadOnly="True" SortExpression="VI_ID" />
                                            <asp:BoundField DataField="Interests_ID" HeaderText="Interest ID" 
                                                SortExpression="Interests_ID" />
                                            <asp:BoundField DataField="Interest_Name" HeaderText="Interest Name" 
                                                SortExpression="Interest_Name" />
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
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Skill ">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="VS_ID" DataSourceID="SqlDataSourceSkill" 
                                        ForeColor="#333333" GridLines="None" Width="599px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="VS_ID" HeaderText="Volunteer Skill ID" 
                                                ReadOnly="True" SortExpression="VS_ID" />
                                            <asp:BoundField DataField="SI_ID" HeaderText="Skill Item ID" 
                                                SortExpression="SI_ID" />
                                            <asp:BoundField DataField="VS_Level" HeaderText="Level" 
                                                SortExpression="VS_Level" />
                                            <asp:BoundField DataField="SI_Name" HeaderText="Skill Item Name" 
                                                SortExpression="SI_Name" />
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
                                    <asp:SqlDataSource ID="SqlDataSourceSkill" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT VolunteerSkills.VS_ID, VolunteerSkills.SI_ID, VolunteerSkills.VS_Level, SkillItems.SI_Name FROM VolunteerSkills INNER JOIN SkillItems ON VolunteerSkills.SI_ID = SkillItems.SI_ID INNER JOIN Skills ON SkillItems.Skill_ID = Skills.Skill_ID WHERE (VolunteerSkills.V_ID = @V_ID)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView1" Name="V_ID" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Activity History">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataSourceID="ActivityHistory" ForeColor="#333333" 
                                        GridLines="None" Width="599px">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="Activity_ID" HeaderText="Activity ID" 
                                                SortExpression="Activity_ID" />
                                            <asp:BoundField DataField="Activity_Name" HeaderText="Activity Name" 
                                                SortExpression="Activity_Name" />
                                            <asp:BoundField DataField="Activity_StartDate" DataFormatString="{0:d}" 
                                                HeaderText="StartDate" SortExpression="Activity_StartDate" />
                                            <asp:BoundField DataField="Activity_EndDate" DataFormatString="{0:d}" 
                                                HeaderText="EndDate" SortExpression="Activity_EndDate" />
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
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                        SelectCommand="SELECT * FROM [Volunteer] WHERE ([V_ID] = @V_ID)" 
                        UpdateCommand="UPDATE Volunteer SET V_Name = @V_Name, V_LastName = @V_LastName, V_NickName = @V_NickName, V_Gender = @V_Gender, V_Address = @V_Address, V_Province = @V_Province, V_Sickness = @V_Sickness, V_Contactperson = @V_Contactperson, V_Email = @V_Email, V_Education = @V_Education, V_Occupation = @V_Occupation, V_EduMajor = @V_EduMajor, V_Experience = @V_Experience, V_Workplace = @V_Workplace, V_EngName = @V_EngName, V_EngLastName = @V_EngLastName, V_Reason = @V_Reason, V_ContactNo = @V_ContactNo, V_Postcode = @V_Postcode, V_MobileNo1 = @V_MobileNo1, V_HomeNo = @V_HomeNo, V_MobileNo2 = @V_MobileNo2, V_MaritalStatus = @V_MaritalStatus WHERE (V_ID = @V_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="V_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="V_Name" />
                            <asp:Parameter Name="V_LastName" />
                            <asp:Parameter Name="V_NickName" />
                            <asp:Parameter Name="V_Gender" />
                            <asp:Parameter Name="V_Address" />
                            <asp:Parameter Name="V_Province" />
                            <asp:Parameter Name="V_Sickness" />
                            <asp:Parameter Name="V_Contactperson" />
                            <asp:Parameter Name="V_Email" />
                            <asp:Parameter Name="V_Education" />
                            <asp:Parameter Name="V_Occupation" />
                            <asp:Parameter Name="V_Edumajor" />
                            <asp:Parameter Name="V_Experience" />
                            <asp:Parameter Name="V_Workplace" />
                            <asp:Parameter Name="V_EngName" />
                            <asp:Parameter Name="V_EngLastName" />
                            <asp:Parameter Name="V_Reason" />
                            <asp:Parameter Name="V_ContactNo" />
                            <asp:Parameter Name="V_Postcode" />
                            <asp:Parameter Name="V_MobileNo1" />
                            <asp:Parameter Name="V_HomeNo" />
                            <asp:Parameter Name="V_MobileNo2" />
                            <asp:Parameter Name="V_MaritalStatus" />
                            <asp:Parameter Name="V_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
                <asp:SqlDataSource ID="ActivityHistory" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT VolunteerJoinActivities.Activity_ID, Activities.Activity_Name, Activities.Activity_StartDate, Activities.Activity_EndDate, VolunteerJoinActivities.VJA_Status FROM VolunteerJoinActivities INNER JOIN Activities ON VolunteerJoinActivities.Activity_ID = Activities.Activity_ID WHERE V_ID =@V_ID AND Activity_Status = 'End' AND  VJA_Status ='Joined'">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="V_ID" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="VolunteerJoinArea" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [VJA_ID], [VolunteerJoinedAreas].[JA_ID], [JA_Name] FROM [VolunteerJoinedAreas], [JoinedAreas] WHERE [V_ID] =@V_ID AND [VolunteerJoinedAreas].[JA_ID] = [JoinedAreas].[JA_ID]" 
                    UpdateCommand="UPDATE [VolunteerJoinedAreas] SET [JA_ID] = @JA_ID WHERE [VJA_ID] =@VJA_ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="V_ID" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="JA_ID" />
                        <asp:Parameter Name="VJA_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlInterest" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [VI_ID], [VolunteerInterests].[Interests_ID],[Interest_Name] FROM [VolunteerInterests], [Interests] WHERE [VolunteerInterests].[Interests_ID] = [Interests].[Interest_ID] AND [V_ID] =@V_ID ">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="V_ID" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlJT" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [VJT_ID], [VolunteerJoinedTime].[JT_ID], [JoiningTimes].[JT_Name] FROM [JoiningTimes],[VolunteerJoinedTime] WHERE [V_ID] =@V_ID AND [JoiningTimes].[JT_ID] = [VolunteerJoinedTime].[JT_ID]" 
                    UpdateCommand="UPDATE VolunteerJoinedTime SET [JT_ID] =@JT_ID WHERE [VJT_ID] =@VJT_ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="V_ID" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="JT_ID" />
                        <asp:Parameter Name="VJT_ID" />
                    </UpdateParameters>
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
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
