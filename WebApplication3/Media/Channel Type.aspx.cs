using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication3.Master_Data_MGT
{
    
        
    public partial class Channel_Type : System.Web.UI.Page
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
                    "confirm('Are you sure you want to delete this campaign type " +
                    DataBinder.Eval(e.Row.DataItem, "CT_ID") + "')");
                }
            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string SqlInsertCT;
            SqlInsertCT = "insert into ChannalTypes (CT_Name) Values ('" + TextBox1.Text + "');";
            dbconn.QueryExecuteScalar(SqlInsertCT);
            dbconn.Close();
            GridView1.DataBind();
            // Response.Redirect("~/Master Data MGT/Channel Type.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

       

        

       
    }
}