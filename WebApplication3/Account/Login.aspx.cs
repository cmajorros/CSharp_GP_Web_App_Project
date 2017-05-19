using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.IO;


namespace WebApplication3.Account
{

    public partial class WebForm2 : System.Web.UI.Page
    {
      clsDatabase dbconn = new clsDatabase();
       
      
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string UserName;
            string UserPassword;
            UserName = txtUserName.Text;
            UserPassword = txtPassword.Text;
            string Role;

          
            string sqlUsername = "SELECT User_Name, User_Password, Role_ID FROM Users WHERE User_Name = '"+UserName+"' AND User_Password = '"+ UserPassword +"'"; 
           
            DataTable  obj = dbconn.QueryExecuteScalar(sqlUsername);

            try
            {

                if ((UserName == obj.Rows[0]["User_Name"].ToString()) && (UserPassword != obj.Rows[0]["User_Password"].ToString()))
                {

                    lblWarning.Visible = true;
                }
                else if (UserName != obj.Rows[0]["User_Name"].ToString())
                {
                    lblWarning.Visible = true;
                }
                else
                {
                    Session["user"] = obj.Rows[0]["User_Name"].ToString();
                    Role = obj.Rows[0]["Role_ID"].ToString();
                    Session["Role"] = Role;
                    if (Role == "1")
                    {
                        Response.Redirect("~/firstPage/Welcome Admin.aspx");
                    }
                    else if (Role == "2")
                    {
                        Response.Redirect("~/firstPage/Welcome Volunteer Coordinator.aspx");
                    }
                    else if (Role == "3")
                    {
                        Response.Redirect("~/firstPage/Welcome ActionTeam.aspx");
                    }
                    else if (Role == "4")
                    {
                        Response.Redirect("~/firstPage/Welcome Campaigner.aspx");
                    }
                    else if (Role == "5")
                    {
                        Response.Redirect("~/firstPage/Welcome Campaigner.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/firstPage/Welcome Volunteer Coordinator.aspx");
                    }

                }
            }
            catch
            {
                MessageBox.Show("Your user id or password is invalid");
            }

              
           dbconn.Close();
        }  

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
        
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/General/Home.aspx");
        }
    }

    
}