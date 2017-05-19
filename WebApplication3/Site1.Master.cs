using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace WebApplication3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           lblUserName.Text = Convert.ToString(Session["user"]);
            Label1.Text = Convert.ToString(Session["Role"]);
            if (Label1.Text == "1")
            {
                MenuTest.Visible = true;
            }
            else if (Label1.Text == "2")
            {
                MenuV.Visible = true;
            }
            else if (Label1.Text == "3")
            {
                MenuAC.Visible = true;
            }
            else if ((Label1.Text == "4") || (Label1.Text == "9") || (Label1.Text == "10") || (Label1.Text == "11"))
            {
                MenuC.Visible = true;
            }
            else if (Label1.Text == "5")
            {
                MenuCD.Visible = true;
            }
            
            
        }

        protected void MenuAdmin_MenuItemClick(object sender, MenuEventArgs e)
        {
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("Role");
            Response.Redirect("~/General/Home.aspx");
        }
            

            


         
           
                    
     }



 }


    

       
    
