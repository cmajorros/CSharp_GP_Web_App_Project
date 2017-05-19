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
    
    public partial class Action_Types : System.Web.UI.Page
    {

        clsDatabase dbconn = new clsDatabase();



     protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

           

               
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this action type " +
                    DataBinder.Eval(e.Row.DataItem, "AT_ID") + "')");
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
          
        }

       

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
         
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string SqlInsertAT;
            SqlInsertAT = "insert into ActionTypes (AT_Name) Values ('" + TextBox2.Text + "');";
            dbconn.QueryExecuteScalar(SqlInsertAT);
                       
            dbconn.Close();
            GridView1.DataBind();
            MessageBox.Show("Action Type has been added successfully");
            Panel1.Visible = false;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            
        }
    }
}