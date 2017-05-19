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
   
    public partial class Change_Password : System.Web.UI.Page
    {
         clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
             Response.Redirect("~/Account/ChangePassword.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string username;
            username = Convert.ToString(Session["user"]);
            string finduserID;
            finduserID = "Select User_ID FROM Users WHERE User_Name = ('"+username+"');";
           DataTable dt = dbconn.QueryExecuteScalar(finduserID); 
            string UserID = Convert.ToString(dt.Rows[0]["User_ID"]);
                string UpdateNewPwd;
                UpdateNewPwd = "UPDATE Users SET User_Password = '" + TextBox1.Text + "' WHERE User_ID = '" + UserID+ "'; ";
                dbconn.QueryExecuteNonQuery(UpdateNewPwd);
                dbconn.Close();
                Response.Redirect("~/Account/Password Successfully Change.aspx");
            }
            
        }
     }
        
    


