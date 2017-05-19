using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Account
{
    public partial class User_MGT : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            txtPassword.Text = "";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this record " +
                    DataBinder.Eval(e.Row.DataItem, "User_ID") + "')");
                }
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
         /*   string findUserName;
            findUserName ="Select User_Name FROM Users WHERE User_Name = '"+txtUserName.Text+"';";

            DataTable Find = dbconn.QueryExecuteScalar(findUserName);
            string Nameexist;
           Nameexist = Find.Rows[0]["User_Name"].ToString();
            */
            

            string SqlInsertAT;
            SqlInsertAT = "insert into Users (Role_ID, User_Name, User_LastName, User_Password, User_Email) Values ('" + DropDownList2.SelectedValue + "','"+txtUserName.Text+"','"+txtUserLastname.Text+"','"+txtPassword.Text+"','"+txtEmail.Text+"');";
            dbconn.QueryExecuteScalar(SqlInsertAT);
            dbconn.Close();

            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
            

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true; 
        }
    }
}