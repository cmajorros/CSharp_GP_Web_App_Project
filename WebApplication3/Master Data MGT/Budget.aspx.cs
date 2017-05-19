using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication3.Master_Data_MGT
{
    public partial class Budget : System.Web.UI.Page

    {

        clsDatabase dbconn = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            
             

                string NewBudget = "insert into Budgets (Budget_Name, BT_ID) Values ('" + TextBox1.Text + "','" +DropDownList2.SelectedValue+ "');";
                dbconn.QueryExecuteScalar(NewBudget);
                dbconn.Close();
               // Response.Redirect("~/Master Data MGT/Budget.aspx");
                GridView1.DataBind();
            
            
        }

       

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            
           /* string update;
            update = "UPDATE BudgetTypes SET [BT_Name] = @BT_Name WHERE [BT_ID] = '"+DropDownList3.SelectedValue+"';";
            dbconn.QueryExecuteNonQuery(update);
            dbconn.Close();
            Response.Redirect("~/Master Data MGT/Budget.aspx");*/

        }

        protected void BT_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this Budget " +
                    DataBinder.Eval(e.Row.DataItem, "Budget_ID") + "')");
                }
            }
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        

       
    }
}