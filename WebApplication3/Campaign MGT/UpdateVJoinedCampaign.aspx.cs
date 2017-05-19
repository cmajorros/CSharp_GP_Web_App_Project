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
    public partial class UpdateVJoinedCampaign : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridView2.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {
                    string keyID = (string)GridView2.DataKeys[grdRow.RowIndex].Value.ToString();
                    JV.UpdateParameters["VJA_ID"].DefaultValue = keyID;
                    JV.Update();

                    string extend = "UPDATE Volunteer SET V_Status = 'Active', V_DeactiveDate = (SELECT DATEADD(Day,365,Activity_EndDate) as newDeactivedate FROM Activities WHERE Activity_ID = "+GridView1.SelectedRow.Cells[1].ToString()+") WHERE V_ID = "+keyID+";";
                    dbconn.QueryExecuteScalar(extend);
                  

                }
            }
            string CloseActivity = "UPDATE Activities SET Activity_Status = 'End' WHERE Activity_ID = " + GridView1.SelectedRow.Cells[1].ToString() + ";";
            dbconn.QueryExecuteScalar(CloseActivity);
            dbconn.Close();
            PanelDone.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


            string id = GridView1.SelectedRow.Cells[1].Text;
            string findCAMP = "SELECT Activity_ID,Activity_Place,Activity_Province, Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status, CAMP_Name  FROM Activities, CampaignTypes WHERE (Activities.CAMP_ID = CampaignTypes.CAMP_ID) AND (Activity_ID = " + id + ");";
            DataTable dt = dbconn.QueryExecuteScalar(findCAMP);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
            dbconn.Close();
            PanelDetail.Visible = true;
            if (GridView2.Rows.Count != 0)
            {
               
                PanelSelected.Visible = true;
            }
            else
            {
                NoV.Visible = true;
            }
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false; 
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string findCAMP = "SELECT Activity_ID,Activity_Place,Activity_Province, Activity_Name,Activity_StartDate, Activity_EndDate, Activity_Status, CAMP_Name  FROM Activities, CampaignTypes WHERE (Activity_Type = 'Campaign') AND  Activities.CAMP_ID = CampaignTypes.CAMP_ID AND (Activity_Status = 'Starting') AND ((Activity_ID LIKE '%" + txtSearch.Text + "%')  OR (Activity_Name LIKE '%" + txtSearch.Text + "%'));";
            DataTable dt = dbconn.QueryExecuteScalar(findCAMP);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
            PanelSearchResult.Visible = true;
        }
    }
}