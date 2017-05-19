using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Volunteer_MGT
{
    public partial class Edit_Delete_GA : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {
            //string id = Request.QueryString["id"];
            string id = Session["GA_ID"].ToString();
           

            if (id != null) 
            {
                Label2.Text = id.ToString();
            }
            else
            {
                Label2.Text = "ERROR";
            }

            string findStatus;
            findStatus = "SELECT Activity_Status FROM Activities WHERE Activity_ID = '"
                + id + "';";
            string Status = dbconn.QueryExecuteScalar(findStatus).ToString();


            if (Status == "End")
            {
                Edit.Visible = false;
                Delete.Visible = false;
            }
            else
            {
                Edit.Visible = true;
                Delete.Visible = true;
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_DataBound(object sender, EventArgs e)
        {
           
        }
    }
}