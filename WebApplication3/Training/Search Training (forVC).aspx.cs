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
    public partial class Search_Training__forVC_ : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelSearch.Visible = true;

            
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            PanelSearchResult.Visible = true;
            string findIDName;
            findIDName = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Status, Activity_Type,Activities.TTY_ID,TTY_Name FROM Activities, TrainingTypes WHERE Activity_Type = 'Training' AND Activity_Status = 'Starting' AND Activities.TTY_ID = TrainingTypes.TTY_ID AND (Activity_ID like'%" + txtSearch.Text + "%' Or Activity_Name like'%" + txtSearch.Text + "%');";
            DataTable dt = dbconn.QueryExecuteScalar(findIDName);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
            
           
        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            PanelDetail.Visible = true;
            PanelSelectVolunteer.Visible = true;
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
            //Label3.Visible = true;
            //btnCancelOldV.Visible = true;
            //BtnSaveOldV.Visible = true;
           
            int ACTID = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            PanelOldV.Visible = false;
            PanelNewV.Visible = false;
            PanelSearch.Visible = false;
            string oldStaff;
            oldStaff = "Select TeamMembers.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email From Volunteer, TeamMembers,Activities WHERE TeamMembers.V_ID = Volunteer.V_ID AND Activities.TT_ID = TeamMembers.TT_ID AND Activities.Activity_ID = " + ACTID + ";";
            DataTable dt2 = dbconn.QueryExecuteScalar(oldStaff);
            Label2.Text = dt2.Rows.Count.ToString();

            string findnew = "SELECT VolunteerJoinActivities.V_ID, V_Name, V_LastName , V_MobileNo1, V_MobileNo2,V_Email From VolunteerJoinActivities, Volunteer,Activities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activity_Name = 'NVDA' UNION SELECT TeamMembers.V_ID,V_Name, V_LastName , V_MobileNo1,  V_MobileNo2,V_Email FROM Volunteer ,TeamMembers,Activities WHERE TeamMembers.V_ID = Volunteer.V_ID AND TeamMembers.TT_ID <> Activities.TT_ID AND Activity_ID = " + ACTID + " AND V_Status <> 'Deactive' ;";

            DataTable dt = dbconn.QueryExecuteScalar(findnew);
            lblNew.Text = dt.Rows.Count.ToString();

        }

       

        protected void BtnSaveNV_Click(object sender, EventArgs e)
        {
          /*  string insertPost = "insert into Positions(PT_ID,Position_NoOfVolunteer,Activity_ID) VALUES (2," + ddlNumNew.SelectedValue + ", " + DetailsView1.SelectedValue+ ");";
             dbconn.QueryExecuteScalar(insertPost);*/
            
            
            // string findMaxPost = "SELECT MAX(Position_ID) AS MAXPost FROM Positions;";
            // DataTable dt =  dbconn.QueryExecuteScalar(findMaxPost);

           //  int maxPost = Convert.ToInt32(dt.Rows[0]["MAXPost"]);

            CheckBox chkbox = new CheckBox();
             foreach (GridViewRow grdRow in GridView2.Rows)
             {
                 chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chkNew")), typeof(CheckBox));
                 if (chkbox.Checked)
                 {
                    
                     string keyID = (string)GridView2.DataKeys[grdRow.RowIndex].Value.ToString();
                     string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values ("+keyID+",'Selected',"+DetailsView1.SelectedValue+") ;";
                     dbconn.QueryExecuteScalar(sqlSelectVolunteer);
                   
                 }
                 
                
             }
             dbconn.Close();
             GridView2.Enabled = false;
             BtnSaveNV.Enabled = false;
             

        }

       

        protected void NewV_Click(object sender, EventArgs e)
        {
              int ACTID = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
         
             PanelNewV.Visible = true;
             PanelOldV.Visible = true;
             PanelSearch.Visible = false;
            
             string findnew = "SELECT VolunteerJoinActivities.V_ID, V_Name, V_LastName , V_MobileNo1, V_MobileNo2,V_Email From VolunteerJoinActivities, Volunteer,Activities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activity_Name = 'NVDA' UNION SELECT TeamMembers.V_ID,V_Name, V_LastName , V_MobileNo1,  V_MobileNo2,V_Email FROM Volunteer ,TeamMembers,Activities WHERE TeamMembers.V_ID = Volunteer.V_ID AND TeamMembers.TT_ID <> Activities.TT_ID AND Activity_ID = " + ACTID + " AND V_Status <> 'Deactive' ;";
            
             DataTable dt = dbconn.QueryExecuteScalar(findnew);
             GridView2.DataSource = dt;
             GridView2.DataBind();
        }

        protected void btnSaveOldV_Click(object sender, EventArgs e)
        {
           

            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridView4.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridView4.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }

            }
            dbconn.Close();
            btnSaveOldV.Enabled = false;
            GridView4.Enabled = false;
        }

        protected void showTM_Click(object sender, EventArgs e)
        {
            int ACTID = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            PanelOldV.Visible = true;
            PanelNewV.Visible = false;
            PanelSearch.Visible = false;
            string oldStaff;
            oldStaff = "Select TeamMembers.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email From Volunteer, TeamMembers,Activities WHERE TeamMembers.V_ID = Volunteer.V_ID AND Activities.TT_ID = TeamMembers.TT_ID AND Activities.Activity_ID = " + ACTID + ";";
            DataTable dt2 = dbconn.QueryExecuteScalar(oldStaff);
            GridView4.DataSource = dt2;
            GridView4.DataBind();
            dbconn.Close();

            PanelOldV.Visible = true;
        }

        protected void btnCancelOldV_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelOldV_Click1(object sender, EventArgs e)
        {
            PanelOldV.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            PanelNewV.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/firstPage/Welcome ActionTeam.aspx");
               
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            invite();
        }

        private void invite()
        {
            string Join = "SELECT V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + DetailsView1.DataKey.Value.ToString() + ";";
            DataTable dt = dbconn.QueryExecuteScalar(Join);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    Session["Activity_ID"] = DetailsView1.DataKey.Value.ToString();
                    Response.Redirect("~/Campaign MGT/CampaignInvitationMail.aspx");
                   
                }
                else
                {
                    MessageBox.Show("Sorry! You cannot sent invitation mail at this time. Please select volunteer to join activity first");
                }
            }
            catch
            {
                MessageBox.Show("Sorry! You cannot sent invitation mail at this time. Please select volunteer to join activity first");

            }
        }
        }
    }
