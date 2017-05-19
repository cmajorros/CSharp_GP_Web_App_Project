<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Campaign Management.aspx.cs" Inherits="WebApplication3.Campaign_MGT.Campaign_Management" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style30
        {
            font-size: small;
        }
    .style9
    {
            width: 504px;
        }
    .style10
    {
        width: 163px;
    }
    .style17
    {
            width: 258px;
        }
        .style38
        {
            color: #99CC00;
            font-size: medium;
        }
        .style15
    {
        width: 170px;
        text-align: right;
    }
    .style16
    {
            text-align: right;
            width: 258px;
        }
    .style19
    {
            width: 504px;
            height: 17px;
        }
    .style21
    {
            width: 258px;
            height: 17px;
        }
    .style22
    {
        height: 17px;
    }
        .style25
        {
            width: 170px;
            height: 16px;
        }
        .style26
        {
            width: 258px;
            height: 16px;
        }
        .style13
    {
        width: 170px;
        height: 18px;
    }
    .style18
    {
        height: 18px;
        width: 258px;
    }
        .style39
        {
            width: 163px;
            font-size: medium;
            color: #99CC00;
        }
        .style8
    {
        width: 100%;
    }
        .style44
        {
            font-size: large;
            color: #99CC00;
            }
        .style45
        {
            color: #808080;
            font-size: small;
        }
        .style46
        {
            color: #333333;
            font-size: small;
        }
        .style31
        {
            color: #99CC00;
        }
        .style48
        {
            width: 170px;
        }
        .style49
        {
            width: 170px;
            height: 17px;
        }
        .style50
        {
            text-align: right;
        }
        .style51
        {
            text-align: right;
            padding-right: 10px;
            width: 504px;
        }
        .style52
        {
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style44" colspan="3">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Campaign Management&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style50">
                &nbsp;&nbsp; Search&nbsp;&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="219px"></asp:TextBox>
&nbsp;
                <asp:ImageButton ID="lblSearch" runat="server" Height="28px" 
                ImageUrl="~/icon/search.png" Width="29px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="PanelCamDetail" runat="server">
                    <div>
                        <strong><span class="style38">Campaign Detail<br /> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;
                        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/icon/save_as.png" 
                            ToolTip="save" />
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton7" runat="server" 
                            ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
                        &nbsp;
                        <asp:ImageButton ID="ImageButton8" runat="server" 
                            ImageUrl="~/icon/Editing/edit.png" onclick="ImageButton8_Click" 
                            ToolTip="edit" />
                        &nbsp;<asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/icon/plus.png" 
                            ToolTip="new" />
                        &nbsp;&nbsp; </span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="style31"><span class="style5">Status</span><span class="style30">&nbsp;&nbsp;
                        </span></span><span class="style30">
                        <asp:RadioButton ID="rdoStatusStaring" runat="server" Text="Starting" />
                        &nbsp;
                        <asp:RadioButton ID="rdoStatusEnd" runat="server" Text="End" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="first" runat="server" 
                            ImageUrl="~/icon/Arrows/left_circular.png" onclick="ImageButton2_Click" 
                            ToolTip="first" />
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="Previous" runat="server" ImageUrl="~/icon/Arrows/left.png" 
                            onclick="Previous_Click" ToolTip="nect" />
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblRow" runat="server" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="next" runat="server" ImageUrl="~/icon/Arrows/right.png" 
                            onclick="next_Click" ToolTip="previous" />
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="last" runat="server" 
                            ImageUrl="~/icon/Arrows/right_circular.png" onclick="last_Click" 
                            ToolTip="last" />
                        <br />
                        </span></strong>
                        <table cellpadding="0" cellspacing="0" class="style1">
                            <tr>
                                <td class="style25">
                                    Activity ID
                                </td>
                                <strong>
                                <td class="style25">
                                    <asp:TextBox ID="txtID" runat="server" Width="213px"></asp:TextBox>
                                </td>
                                <td class="style52">
                                    </td>
                                </strong>
                            </tr>
                            <tr>
                                <td class="style15">
                                    &nbsp;</td>
                                <td class="style16">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    Campaign Name</td>
                                <td class="style17">
                                    <asp:TextBox ID="txtname" runat="server" Width="216px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style49">
                                    Campaign Start Date</td>
                                <td class="style21">
                                    <BDP:BasicDatePicker ID="bdpStartDate" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style49">
                                </td>
                                <td class="style21">
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    Campaign End Date</td>
                                <td class="style17">
                                    <BDP:BasicDatePicker ID="bdpEndDate" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    Campaign Place</td>
                                <td class="style17">
                                    <asp:TextBox ID="txtPlace" runat="server" Width="212px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    Campaign Province</td>
                                <td class="style17">
                                    <asp:DropDownList ID="ddlProvice" runat="server" DataSourceID="Province" 
                                        DataTextField="PROVINCE_NAME" DataValueField="PROVINCE_NAME">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Province" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [PROVINCE_NAME] FROM [province]"></asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style25">
                                </td>
                                <td class="style26">
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    Campaign Type</td>
                                <td class="style17">
                                    <asp:DropDownList ID="ddlCTType" runat="server" DataSourceID="CT" 
                                        DataTextField="CAMP_Name" DataValueField="CAMP_ID">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="CT" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [CAMP_Name], [CAMP_ID] FROM [CampaignTypes]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Action Type</td>
                                <td class="style18">
                                    <asp:DropDownList ID="ddlATTYPE" runat="server" DataSourceID="AT" 
                                        DataTextField="AT_Name" DataValueField="AT_ID">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="AT" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                                        SelectCommand="SELECT [AT_ID], [AT_Name] FROM [ActionTypes]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style48">
                                    &nbsp;</td>
                                <td class="style17">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        
                    </div>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style22" colspan="3" id="pai">
                <asp:Panel ID="CamBudget" runat="server">
                    <br />
                    <strong><span class="style38">Campaign Budgets&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton20" runat="server" 
                        ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton18" runat="server" 
                        ImageUrl="~/icon/save_as.png" ToolTip="save " />
                    &nbsp;&nbsp;
                    <br />
                    <br />
                    </span></strong><span class="style46">Budget Name</span><span class="style38"><strong>&nbsp;
                    </strong></span><strong>
                    <asp:TextBox ID="txtbudgetName" runat="server" Width="231px"></asp:TextBox>
                    &nbsp;
                    <br />
                    <br />
                    </strong>Amount <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Width="228px"></asp:TextBox>
                    &nbsp; </strong>THB<strong><br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BudgetAdd" runat="server" Text="Add" Width="54px" />
                    <br />
                    </strong>
                    <asp:GridView ID="GridView2" runat="server" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged" 
                        ShowHeaderWhenEmpty="True" Width="299px">
                    </asp:GridView>
                    <strong>Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="True" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp; THB </strong>
                </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style38" colspan="3">
                <asp:Panel ID="PanelPosition" runat="server">
                    <strong>Position Needs<br /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style38">
                    <asp:ImageButton ID="ImageButton21" runat="server" 
                        ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
                    </span>&nbsp; <span class="style38">
                    <asp:ImageButton ID="ImageButton19" runat="server" 
                        ImageUrl="~/icon/save_as.png" ToolTip="save" />
                    </span>
                    <br />
                    </strong><span class="style46">Position Name</span><strong> &nbsp;<asp:TextBox 
                        ID="txtPositionName" runat="server" Width="231px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<br /><br /></strong><span class="style46">No. of need&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong><asp:DropDownList 
                        ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">Select No. of Volunteer </asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                        <asp:ListItem Value="13"></asp:ListItem>
                        <asp:ListItem Value="14"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="16"></asp:ListItem>
                        <asp:ListItem Value="17"></asp:ListItem>
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem Value="22"></asp:ListItem>
                        <asp:ListItem Value="23"></asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem Value="25"></asp:ListItem>
                        <asp:ListItem Value="26"></asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>51</asp:ListItem>
                        <asp:ListItem>52</asp:ListItem>
                        <asp:ListItem>53</asp:ListItem>
                        <asp:ListItem>54</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                        <asp:ListItem>59</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                    </asp:DropDownList>
                    </span><strong>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnadd" runat="server" Text="Add" Width="64px" />
                    &nbsp;
                    <br />
                    </strong>
                    <asp:GridView ID="GridView3" runat="server" CssClass="style45" Enabled="False" 
                        Height="131px" ShowHeaderWhenEmpty="True" Width="342px">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="PanelQualification" runat="server">
                    <strong><span class="style38">Quailfications</span></strong><br />
                    <asp:GridView ID="GridView4" runat="server" Enabled="False">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="PanelSelectV" runat="server">
                    <span class="style38"><strong>Selected Volunteers</strong></span><br />
                    <asp:GridView ID="GridView5" runat="server" Enabled="False" 
                        onselectedindexchanged="GridView5_SelectedIndexChanged">
                    </asp:GridView>
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
            </td>
            <td class="style22" colspan="3">
                <asp:Panel ID="PanelExpectJoin" runat="server">
                    <span class="style38"><strong>Confirm Volunteers</strong></span><br />
                    <asp:GridView ID="GridView6" runat="server">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style51">
                &nbsp;</td>
            <td class="style10">
                <asp:ImageButton ID="ImageButton14" runat="server" 
                    ImageUrl="~/icon/Arrows/left_circular.png" ToolTip="first" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton15" runat="server" 
                    ImageUrl="~/icon/Arrows/left.png" ToolTip="nect" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton16" runat="server" 
                    ImageUrl="~/icon/Arrows/right.png" ToolTip="previous" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton17" runat="server" 
                    ImageUrl="~/icon/Arrows/right_circular.png" ToolTip="last" />
            </td>
            <td class="style17">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton10" runat="server" 
                    ImageUrl="~/icon/save_as.png" ToolTip="save" />
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton11" runat="server" 
                    ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
&nbsp;
                <asp:ImageButton ID="ImageButton12" runat="server" 
                    ImageUrl="~/icon/Editing/edit.png" ToolTip="edit" />
&nbsp;<asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/icon/plus.png" 
                    ToolTip="new" />
&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
