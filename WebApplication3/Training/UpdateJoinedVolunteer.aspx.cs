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
    public partial class UpdateJoinedVolunteer : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            string findIDName;
            findIDName = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Status, Activity_Type,Activities.TTY_ID,TTY_Name,Activities.TT_ID, TT_Name FROM Activities, TrainingTypes,TrainingTeams WHERE Activity_Type = 'Training' AND Activities.TT_ID = TrainingTeams.TT_ID AND Activity_Status = 'Starting' AND Activities.TTY_ID = TrainingTypes.TTY_ID AND (Activity_ID like'%" + txtSearch.Text + "%' Or Activity_Name like'%" + txtSearch.Text + "%');";
            DataTable dt = dbconn.QueryExecuteScalar(findIDName);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
            PanelSearchResult.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
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
                   
                    string extend = "UPDATE Volunteer SET V_Status = 'Active', V_DeactiveDate = (SELECT DATEADD(Day,365,Activity_EndDate) as newDeactivedate FROM Activities WHERE Activity_ID = " + GridView1.SelectedRow.Cells[1].ToString() + ") WHERE V_ID = " + keyID + ";";
                    dbconn.QueryExecuteScalar(extend);

                    string CheckTM = "SELECT V_ID, TT_ID FROM TeamMembers WHERE TT_ID = " + GridView1.SelectedRow.Cells[8].Text + " AND V_ID = " + keyID + "; ";
                    DataTable TM = dbconn.QueryExecuteScalar(CheckTM);
                    try
                    {
                        if (TM.Rows.Count == 1)
                        {

                        }
                    }
                    catch
                    {
                        string TMDate = DateTime.Now.Date.ToString("yyyy-MM-dd");
                        string AddnewTM = "INSERT INTO TeamMembers(V_ID,TT_ID,TM_Date) VALUES (" + keyID + "," + GridView1.SelectedRow.Cells[8].Text + ", '"+TMDate+"');";
                        dbconn.QueryExecuteScalar(AddnewTM); 
                    }
                }
            }
            
            string CloseActivity = "UPDATE Activities SET Activity_Status = 'End' WHERE Activity_ID = " + GridView1.SelectedRow.Cells[1].ToString() + ";";
            dbconn.QueryExecuteScalar(CloseActivity);
            dbconn.Close();
            PanelDone.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelDetail.Visible = true;
          
            
            if (GridView2.Rows.Count != 0)
            {

                Panel1.Visible = true;
            }
            else
            {
                NoV.Visible = true;
            }
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false; 
        }
    }
}