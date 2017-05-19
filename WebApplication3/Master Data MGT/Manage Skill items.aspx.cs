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
    public partial class Manage_Skill_items : System.Web.UI.Page
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
                    "confirm('Are you sure you want to delete skill item" +
                    DataBinder.Eval(e.Row.DataItem, "SI_ID") + "')");
                }
            }
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string insert;
            insert = "Insert INTO SkillItems (SI_Name, Skill_ID) VALUES ('" + TextBox1.Text + "','" + DropDownList4.SelectedValue + "');";
            dbconn.QueryExecuteScalar(insert);
            dbconn.Close();
            GridView1.DataBind();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }
    }
}