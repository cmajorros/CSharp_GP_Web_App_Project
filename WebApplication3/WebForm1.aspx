<%@ Import Namespace="System.Data"%>
<%@ Import Namespace="System.Data.SqlClient"%>
<%@ Import Namespace="System.Web.Configuration"%>
<%@ Page Language="C#" Debug="true" %>
<script runat="server">

	SqlConnection objConn;
	SqlCommand objCmd;

    void Page_Load(object sender,EventArgs e)
	{
		String strConnString;
		//strConnString = "Server=localhost;Uid=Siroros-PC\\Siroros;PASSWORD=;database=GP;Max Pool Size=400;Connect Timeout=600;";
        strConnString = WebConfigurationManager.ConnectionStrings["GPConnectionString"].ConnectionString;
        objConn = new SqlConnection(strConnString);
		objConn.Open();

		if(objConn.State == ConnectionState.Open)
		{
			this.lblText.Text = "SQL Server Connected";
		}
		else
		{
			this.lblText.Text = "SQL Server Connect Failed";
		}
    }
	
	void Page_UnLoad()
	{
		objConn.Close();
		objConn = null;
	}

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }




</script>
<html>
<head>
<title>ThaiCreate.Com ASP.NET - SQL Server</title>
</head>
<body>
	<form id="form1" runat="server">
    <asp:Label id="lblText" runat="server"></asp:Label>
	<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="User_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="User_ID" HeaderText="User_ID" ReadOnly="True" 
                SortExpression="User_ID" />
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                SortExpression="User_Name" />
            <asp:BoundField DataField="User_Lastname" HeaderText="User_Lastname" 
                SortExpression="User_Lastname" />
            <asp:BoundField DataField="User_Email" HeaderText="User_Email" 
                SortExpression="User_Email" />
            <asp:BoundField DataField="Role_ID" HeaderText="Role_ID" 
                SortExpression="Role_ID" />
            <asp:BoundField DataField="User_Password" HeaderText="User_Password" 
                SortExpression="User_Password" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
        SelectCommand="SELECT * FROM [System_User]"></asp:SqlDataSource>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
	<asp:Button ID="Button1" runat="server" 
        Text="Button" 
        onclick="return confirm('Are you sure you want to delete?');" />
	</form>
</body>
</html>
