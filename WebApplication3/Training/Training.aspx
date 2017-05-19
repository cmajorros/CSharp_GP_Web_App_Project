<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Training.aspx.cs" Inherits="WebApplication3.Training.WebForm1" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .style9
    {
            width: 275px;
        }
    .style10
    {
        width: 163px;
    }
    .style17
    {
            width: 258px;
        }
    .style19
    {
            width: 275px;
            height: 17px;
        }
    .style20
    {
        width: 163px;
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
        .style28
        {
            text-align: right;
            width: 258px;
            color: #99CC00;
        }
        .style30
        {
            font-size: small;
        }
        .style31
        {
            color: #99CC00;
        }
        .style32
        {
            color: #99CC00;
            font-size: large;
        }
        .style38
        {
            color: #99CC00;
            font-size: medium;
        }
        .style40
        {
            width: 275px;
            height: 15px;
        }
        .style41
        {
            width: 163px;
            height: 15px;
            color: #99CC00;
            font-size: medium;
        }
        .style42
        {
            width: 258px;
            height: 15px;
        }
        .style43
        {
            height: 15px;
        }
        .style45
        {
            text-align: left;
        }
        .style46
        {
            color: #333333;
            font-size: small;
        }
        .style47
        {
            color: #808080;
            font-size: small;
        }
        .style48
        {
            color: #808080;
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
        <td class="style32" colspan="3">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Training Management</strong></td>
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
        <td class="style28">
            Search&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="219px"></asp:TextBox>
&nbsp;
                <asp:ImageButton ID="lblSearch" runat="server" Height="28px" 
                ImageUrl="~/icon/search.png" Width="29px" onclick="lblSearch_Click" />
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
            <asp:ImageButton ID="ImageButton2" runat="server" 
                ImageUrl="~/icon/Arrows/left_circular.png" ToolTip="first" />
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" 
                ImageUrl="~/icon/Arrows/left.png" ToolTip="nect" />
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" 
                ImageUrl="~/icon/Arrows/right.png" ToolTip="previous" />
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" 
                ImageUrl="~/icon/Arrows/right_circular.png" ToolTip="last" />
        </td>
        <td class="style17">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/icon/save_as.png" 
                ToolTip="save" />
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton7" runat="server" 
                ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
&nbsp;
            <asp:ImageButton ID="ImageButton8" runat="server" 
                ImageUrl="~/icon/Editing/edit.png" ToolTip="edit" />
&nbsp;<asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/icon/plus.png" 
                ToolTip="new" onclick="ImageButton9_Click" />
&nbsp;&nbsp; </td>
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
        <td colspan="3">
            <asp:Panel ID="PanelTrainDetail" runat="server">
                <div class="style45">
                    <strong><span class="style38">Training Detail<br /> </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style30">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <span class="style31"><span class="style5">Status</span><span class="style30">&nbsp;&nbsp;
                    </span></span><span class="style30">
                    <asp:RadioButton ID="rdoStatusStaring" runat="server" Text="Starting" />
                    &nbsp;
                    <asp:RadioButton ID="rdoStatusEnd" runat="server" Text="End" />
                    </span>
                    <br />
                    </strong>Activity ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTID" runat="server" CssClass="bold" Width="213px"></asp:TextBox>
                    <br />
                    <br />
                    Training Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtTName" runat="server" CssClass="bold" Width="216px"></asp:TextBox>
                    <br />
                    <br />
                    Training Start Date&nbsp;&nbsp;&nbsp;
                    <BDP:BasicDatePicker ID="bdpStart" runat="server" />
                    <br />
                    <br />
                    Training End Date&nbsp;&nbsp;&nbsp;&nbsp;
                    <BDP:BasicDatePicker ID="bdpEnd" runat="server" />
                    <br />
                    <br />
                    Training Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPlace" runat="server" CssClass="bold" Width="212px"></asp:TextBox>
                    <br />
                    <br />
                    Training Province&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlProvince" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    Training Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlTTY" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    Training Team&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlTT" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    Training Catagory&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlTC" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                    Training&nbsp; Level&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlTL" runat="server">
                    </asp:DropDownList>
                    <br />
                </div>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td colspan="3">
            <asp:Panel ID="TrainBudget" runat="server">
                <br />
                <span class="style38"><strong>Training</strong></span> <strong>
                <span class="style38">&nbsp;Budgets&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton20" runat="server" 
                    ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="Save" runat="server" ImageUrl="~/icon/save_as.png" 
                    ToolTip="save " />
                &nbsp;&nbsp;
                <br />
                <br />
                </span></strong><span class="style46">Budget Name</span><span class="style38"><strong>&nbsp;
                </strong></span><strong>
                <asp:TextBox ID="txtbudgetName" runat="server" Width="209px"></asp:TextBox>
                &nbsp;
                <br />
                <br />
                </strong>Amount <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Width="207px"></asp:TextBox>
                &nbsp; </strong>THB<strong><br /> </strong>
                <asp:GridView ID="GridView10" runat="server">
                </asp:GridView>
                <strong>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BudgetAdd" runat="server" Text="Add" Width="54px" />
                <br />
                <br />
                </strong><strong>Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="True" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp; THB </strong>
            </asp:Panel>
        </td>
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
            <asp:Panel ID="PanelQuification" runat="server">
                <span class="style5"><span class="style31"><strong>Qualification</strong></span>
                </span>
                <br />
                <br />
                No. of New team staff&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlNewStaff" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                No. of Old member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlOldStaff" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <br />
                <br />
                <asp:GridView ID="GridView3" runat="server">
                </asp:GridView>
            </asp:Panel>
        </td>
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
            <asp:Panel ID="PanelSelectV" runat="server">
                <span class="style38"><strong>Selected Volunteers<br /> </strong></span>
                <br />
                <asp:GridView ID="GridView11" runat="server">
                </asp:GridView>
                <br />
            </asp:Panel>
        </td>
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
            <asp:Panel ID="PanelExpectJoin" runat="server">
                <span class="style38"><strong>Confirm Volunteers<br /> </strong></span>
                <br />
                <asp:GridView ID="GridView7" runat="server">
                </asp:GridView>
            </asp:Panel>
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
        <td class="style38" colspan="3">
            <asp:Panel ID="PanelTrainGear" runat="server">
                <strong>Training Gears</strong><br /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <strong><span class="style38">
                <asp:ImageButton ID="ImageButton21" runat="server" 
                    ImageUrl="~/icon/Editing/delete.png" ToolTip="delete" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="Save0" runat="server" ImageUrl="~/icon/save_as.png" 
                    ToolTip="save " />
                &nbsp;&nbsp; </span></strong>
                <br />
                <span class="style47">Training Gear&nbsp;&nbsp;&nbsp; </span><span class="style46">
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="style48">
                </asp:DropDownList>
                </span><span class="style47">
                <br />
                <br />
                </span><span class="style46"><span class="style47">Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="style48">
                </asp:DropDownList>
                <span class="style47">&nbsp;&nbsp;&nbsp;&nbsp; Pieces<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Add" runat="server" Text="Add" />
                &nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;<asp:GridView ID="GridView9" runat="server">
                </asp:GridView>
                </span>
            </asp:Panel>
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
        <td class="style19">
        </td>
        <td class="style22" colspan="3">
            <asp:Panel ID="PanelTSource" runat="server">
                <span class="style38"><strong>Training Source of Knowledge</strong></span><br />
                <asp:GridView ID="GridView12" runat="server">
                </asp:GridView>
            </asp:Panel>
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
        <td class="style40">
            </td>
        <td class="style41">
            </td>
        <td class="style42">
            </td>
        <td class="style43">
            </td>
    </tr>
    <tr>
        <td class="style19">
            </td>
        <td class="style20">
            </td>
        <td class="style21">
            </td>
        <td class="style22">
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
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
&nbsp;&nbsp; </td>
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
