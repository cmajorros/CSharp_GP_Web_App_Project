using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Campaign_MGT
{
    public partial class Search_Campaign : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelSearch.Visible = true;
            PanelSearchResult.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PanelEDetail.Visible = false;
            PanelEnd.Visible = false;
            PanelSDetail.Visible = false;
            if (txtSearch.Text != "")
            {
                PanelSearchResult.Visible = true;
                if (ddlCamStatus.SelectedValue == "Starting")
                {

                    GVStart.Visible = true;
                    gvEnd.Visible = false;

                }
                else if (ddlCamStatus.SelectedValue == "End")
                {


                    gvEnd.Visible = true;
                    GVStart.Visible = false;

                }
                else
                {
                    PanelSearchResult.Visible = false;
                }
            }
        }

        protected void GVStart_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void gvEnd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void GVStart_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = GVStart.SelectedRow.Cells[1].Text;
            Session["Cam_ID"] = id.ToString();
            PanelSDetail.Visible = true;
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
        }

        protected void gvEnd_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelEDetail.Visible = true;
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
        }

        int total = 0;
        protected void GVSBudget_RowDataBound(object sender, GridViewRowEventArgs e)
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
        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void lblEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Campaign MGT/EditCampaign.aspx");
        }

        protected void lblDelete_Click(object sender, EventArgs e)
        {
            int ActID = Convert.ToInt32(GVStart.SelectedRow.Cells[1].Text);

            string CancelActivity;
            CancelActivity = "UPDATE Activities SET Activity_Status = 'Cancel' WHERE Activity_ID = " + ActID + "";
            dbconn.QueryExecuteScalar(CancelActivity);
            dbconn.Close();
          //  MessageBox.Show("Activity ID " + ActID + " has been removed.");
            Response.Redirect("~/Campaign MGT/Search Campaign.aspx");
        }
    }
}