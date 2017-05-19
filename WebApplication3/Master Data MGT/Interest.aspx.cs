using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Master_Data_MGT
{
    public partial class Interest : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {


            Panel1.Visible = true;
            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete interest " +
                    DataBinder.Eval(e.Row.DataItem, "Interest_ID") + "')");
                }
            }
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string SqlInsertCT;
            SqlInsertCT = "insert into Interests (Interest_Name) Values ('" + TextBox1.Text + "');";
            dbconn.QueryExecuteScalar(SqlInsertCT);
            dbconn.Close();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

       
    }
}