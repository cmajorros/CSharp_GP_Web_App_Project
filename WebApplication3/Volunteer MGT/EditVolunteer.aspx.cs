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
    public partial class EditVolunteer : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string findV = "SELECT V_ID, V_Name, V_Lastname,V_EngName,V_EngLastName,V_Status FROM Volunteer WHERE V_ID like '%" + TextBox1.Text + "%' or V_Name like '%" + TextBox1.Text + "%' ;";
           DataTable dt = dbconn.QueryExecuteScalar(findV);
           GridView1.DataSource = dt;
           GridView1.DataBind();
           dbconn.Close();
           PanelSearchResult.Visible = true;
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
          
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelDetail.Visible = true;
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
        }
    }
}