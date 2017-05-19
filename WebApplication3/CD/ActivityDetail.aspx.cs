using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.CD
{
    public partial class ActivityDetail : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Session["ActivityIDTest"].ToString();
            string selectAct = "SELECT * FROM Activities WHERE Activity_ID = " + ID + ";";
            DataTable dt = dbconn.QueryExecuteScalar(selectAct);
            string CheckType = dt.Rows[0]["Activity_Type"].ToString();
            
            if (CheckType == "Campaign")
            {
                string ID1 = Session["ActivityIDTest"].ToString();
                DetailsView1.Visible = true;
                string CampaignDetail = "SELECT Activity_ID, Activities.AT_ID, Activity_Type, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Type Activity_Province, Activity_Status, Activities.CAMP_ID, AT_Name, CAMP_Name FROM Activities ,ActionTypes , CampaignTypes  WHERE Activities.AT_ID = ActionTypes.AT_ID AND Activities.CAMP_ID = CampaignTypes.CAMP_ID  AND Activities.Activity_Type = 'Campaign' AND Activities.Activity_ID = " + ID1 + ";";
                DataTable dt2 = dbconn.QueryExecuteScalar(CampaignDetail);
                DetailsView1.DataSource = dt2;
                DetailsView1.DataBind();
                
            }

            else if (CheckType == "Training")
            {
                string ID1 = Session["ActivityIDTest"].ToString();
                DetailsView2.Visible = true;
                string TrainDetail = "SELECT Activity_ID, Activities.AT_ID, Activity_Name, Activity_StartDate,Activity_Type, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status, Activities.TTY_ID, Activities.TT_ID, Activities.TC_ID,TTY_Name, TT_Name, TC_Name FROM Activities , TrainingCatagories , TrainingTeams , TrainingTypes WHERE Activities.Activity_Type = 'Training' AND Activities.Activity_ID = "+ID1+" AND Activities.TTY_ID = TrainingTypes.TTY_ID AND Activities.TT_ID = TrainingTeams.TT_ID AND Activities.TC_ID = TrainingCatagories.TC_ID ;";
                DataTable dt3 = dbconn.QueryExecuteScalar(TrainDetail);
                DetailsView2.DataSource = dt3;
                DetailsView2.DataBind();
                
            }

            else
            {
                string ID1 = Session["ActivityIDTest"].ToString();
                DetailsView3.Visible = true;
                string GADetail = "SELECT Activity_ID,Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place,Activity_Province, Activity_Status, Activity_Type FROM Activities WHERE Activity_Type = 'General Activity' AND Activity_ID = "+ID1+";";
                DataTable dt4 = dbconn.QueryExecuteScalar(GADetail);
                DetailsView3.DataSource = dt4;
                DetailsView3.DataBind();
                
            }
            
            dbconn.Close();

        }
        int total = 0;
        protected void GridViewSB1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total.ToString("0,000.00");
            }
        }
        int total2 = 0;
        protected void GridViewSB2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total2 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total2.ToString("0,000.00");
            }
        }
        int total3 = 0;
        protected void GridViewSB3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total3 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total3.ToString("0,000.00");
            }
        }
       
    }
}