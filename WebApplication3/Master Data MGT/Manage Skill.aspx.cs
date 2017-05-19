using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Master_Data_MGT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this record " +
                    DataBinder.Eval(e.Row.DataItem, "Skill_ID") + "')");
                }
            }
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
                string Skills;
                Skills = "INSERT INTO Skills (Skill_Name, ST_ID) VALUES ('" + TextBox1.Text + "','" + DropDownList3.SelectedValue + "');";
                dbconn.QueryExecuteScalar(Skills);
                dbconn.Close();
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}