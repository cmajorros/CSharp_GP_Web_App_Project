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
    public partial class Training_Search_Result : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (txtSearch.Text != "")
            {
                PanelResultStart.Visible = true;
                if (DropDownList1.SelectedValue == "Starting")
                {
                    GridView1.Visible = true;
                    GridView2.Visible = false;

                }
                else if (DropDownList1.SelectedValue == "End")
                {

                    GridView2.Visible = true;
                    GridView1.Visible = false;
                }
            }


        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = GridView1.SelectedRow.Cells[1].Text;
            Session["GA_ID"] = id.ToString();
            //Response.Redirect("~/Volunteer MGT/Edit Delete GA.aspx");*/
            PanelResultStart.Visible = false;
            PanelResultEdit.Visible = true;
            PanelUnEdit.Visible = false;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelResultStart.Visible = false;
            PanelUnEdit.Visible = true;
            PanelResultEdit.Visible =false;
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Volunteer MGT/Edit GA.aspx");

        }
        int total = 0;
        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total.ToString();
            }
        }
        int total2 = 0;
        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total2 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total2.ToString();
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            


            string id = GridView1.SelectedRow.Cells[1].Text;
            
           

            string CancelActivity;
            CancelActivity = "UPDATE Activities SET Activity_Status = 'Cancel' WHERE Activity_ID = " + id+ "";
            dbconn.QueryExecuteScalar(CancelActivity);
            dbconn.Close();
           

        }

        

       

       

        
    }
}