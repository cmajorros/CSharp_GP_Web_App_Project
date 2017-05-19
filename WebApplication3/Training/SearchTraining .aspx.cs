using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Training
{
    public partial class SearchTraining : System.Web.UI.Page
    {

        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelSResult.Visible = false;
            PanelDetail.Visible = false; 
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelDetail.Visible = true;
            Int32 id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            string findTT = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province,  TT_Name, TTY_Name,TC_Name, Activity_Status FROM Activities, TrainingTypes, TrainingTeams,TrainingCatagories WHERE Activities.Activity_ID = " + id + " AND Activities.TT_ID = TrainingTeams.TT_ID AND Activities.TTY_ID = TrainingTypes.TTY_ID AND Activities.TC_ID = TrainingCatagories.TC_ID ;";
            DataTable dt = dbconn.QueryExecuteScalar(findTT);
            
            if (dt.Rows[0]["Activity_Status"].ToString() == "Starting")
            {

                btnDelete.Visible = true;
                btnEdit.Visible = true;
            }
            else
            {
                btnEdit.Visible = false;
                btnDelete.Visible = false; 
            }

            Session["Train_ID"] = id.ToString(); 
            dbconn.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PanelSResult.Visible = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Training/TrainingDetail.aspx"); 
  
        }
        int total = 0;
        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int ActID = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);

            string CancelActivity;
            CancelActivity = "UPDATE Activities SET Activity_Status = 'Cancel' WHERE Activity_ID = " + ActID + "";
            dbconn.QueryExecuteScalar(CancelActivity);
            dbconn.Close();
            //  MessageBox.Show("Activity ID " + ActID + " has been removed.");
            Response.Redirect("~/Campaign MGT/Search Campaign.aspx");
        }
    }
}