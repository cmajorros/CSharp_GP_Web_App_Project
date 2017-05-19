<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageKnowledge.aspx.cs" Inherits="WebApplication3.Master_Data_MGT.ManageKnowledge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .style8
        {
            width: 141px;
        }
        .style9
        {
            width: 826px;
        }
        .style10
        {
            width: 826px;
            color: #99CC00;
            font-size: large;
              height: 64px;
          }
          .style11
          {
              width: 141px;
              height: 64px;
          }
          .style12
          {
              height: 64px;
          }
          .style13
          {
              width: 132px;
          }
          .style15
          {
              color: #FF0000;
          }
          .style16
          {
              width: 389px;
          }
          .style17
          {
              color: #333333;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style11">
                </td>
            <td class="style10">
                <strong>Manage Knowledge</strong></td>
            <td class="style12">
                </td>
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
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="LK_ID" 
                    DataSourceID="SqlDataSource1" Width="793px" 
                    onrowdatabound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LK_ID" HeaderText="Knowledge for Lesson ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="LK_ID" 
                            ItemStyle-HorizontalAlign ="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LL_ID" HeaderText="Lesson for Level ID" 
                            SortExpression="LL_ID" ItemStyle-HorizontalAlign ="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LL_Name" HeaderText="Level for Lesson Name" 
                            SortExpression="LL_Name" />
                        <asp:BoundField DataField="Level_ID" HeaderText="Level ID" 
                            SortExpression="Level_ID" ItemStyle-HorizontalAlign ="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Level_Name" HeaderText="Level Name" 
                            SortExpression="Level_Name" />
                        <asp:BoundField DataField="TTY_ID" HeaderText="Training Type ID" 
                            SortExpression="TTY_ID" ItemStyle-HorizontalAlign ="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="TTY_Name" HeaderText="Training Type Name" 
                            SortExpression="TTY_Name" />
                        <asp:BoundField DataField="K_Name" HeaderText="Knowledge Name" 
                            SortExpression="K_Name" />
                        <asp:BoundField DataField="K_File" HeaderText="File" SortExpression="K_File" />
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
                    DeleteCommand="DELETE FROM LessonKnowledges WHERE (LK_ID = @LK_ID)" 
                    SelectCommand="SELECT LessonKnowledges.LK_ID, LessonKnowledges.LL_ID, LevelLessons.LL_Name, LevelLessons.Level_ID, Levels.Level_Name, Levels.TTY_ID, TrainingTypes.TTY_Name, LessonKnowledges.K_Name, LessonKnowledges.K_File FROM LevelLessons INNER JOIN LessonKnowledges ON LevelLessons.LL_ID = LessonKnowledges.LL_ID INNER JOIN Levels ON LevelLessons.Level_ID = Levels.Level_ID INNER JOIN TrainingTypes ON Levels.TTY_ID = TrainingTypes.TTY_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="LK_ID" />
                    </DeleteParameters>
                </asp:SqlDataSource>
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
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style13">
                                Training Type </td>
                            <td class="style16">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="TTY_Name" DataValueField="TTY_ID" 
                                    Height="22px" Width="168px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [TTY_ID], [TTY_Name] FROM [TrainingTypes]">
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
                                Level </td>
                            <td class="style16">
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource3" DataTextField="Level_Name" 
                                    DataValueField="Level_ID" Height="22px" Width="168px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [Level_ID], [Level_Name] FROM [Levels] WHERE ([TTY_ID] = @TTY_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="TTY_ID" 
                                            PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
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
                                Lesson</td>
                            <td class="style16">
                                <asp:DropDownList ID="DropDownList3" runat="server" 
                                    DataSourceID="SqlDataSource4" DataTextField="LL_Name" DataValueField="LL_ID" 
                                    Height="22px" Width="168px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                    SelectCommand="SELECT [LL_ID], [LL_Name] FROM [LevelLessons] WHERE ([Level_ID] = @Level_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList2" Name="Level_ID" 
                                            PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
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
                                Knowledge</td>
                            <td class="style16">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                &nbsp;<span class="style15"><br />
                                </span><span class="style17">* Please insert file type such as .docx, .doc, 
                                .xls, .xlsx , .MPEG, .flv or Video file</span></td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                Knowledge Name</td>
                            <td class="style16">
                                <asp:TextBox ID="TextBox1" runat="server" Height="21px" 
                                    Width="172px"></asp:TextBox>
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
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Confirm" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
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
