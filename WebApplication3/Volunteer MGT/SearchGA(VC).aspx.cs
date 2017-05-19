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
    public partial class SearchGA_VC_ : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            PanelSearchResult.Visible = true;
            string findIDName;
            findIDName = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate,Activity_Status, Activity_Status, Activity_Type FROM Activities WHERE (Activity_ID like'%"+txtSearch.Text+"%' Or Activity_Name like'%"+txtSearch.Text+"%') AND Activity_Type = 'General Activity' AND Activity_Status = 'Starting';";
            DataTable dt = dbconn.QueryExecuteScalar(findIDName);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelGADetail.Visible = true;
            PanelSearchResult.Visible = false;
            Panel1.Visible = false;
            PanelSelectVolunteer.Visible = true;
           
            string MostActive = "SELECT Top 15 CountVolunteerJoinActivity.V_ID ,NoJoin, V_Name, V_LastName, V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer, CountVolunteerJoinActivity WHERE CountVolunteerJoinActivity.V_ID = Volunteer.V_ID ORDER BY NoJoin DESC ;";
            DataTable dtMostActive = dbconn.QueryExecuteScalar(MostActive);
            try
            {
                lblMostActive.Text = Convert.ToInt32(dtMostActive.Rows.Count).ToString();
            }
            catch
            {
                lblMostActive.Text = "0";
            }
            gvMostActive.DataSource = dtMostActive;
            gvMostActive.DataBind();

            
            string NewV = "SELECT V_ID , V_Name, V_LastName, V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer WHERE V_Status = 'New'; ";
            DataTable dtNewV = dbconn.QueryExecuteScalar(NewV);

            try
            {

                lblNew.Text = Convert.ToInt32(dtNewV.Rows.Count).ToString();
            }

            catch
            {
                lblNew.Text = "0";
            }

            gvNew.DataSource = dtNewV;
            gvNew.DataBind();

            string ActiveV = "SELECT V_ID , V_Name, V_LastName,V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer WHERE V_Status = 'Active';";
            DataTable dtActiveV = dbconn.QueryExecuteScalar(ActiveV);
            try
            {
                lblActive.Text = Convert.ToInt32(dtActiveV.Rows.Count).ToString();
            }
            catch
            {
                lblActive.Text = "0";
            }
                gvActive.DataSource = dtActiveV;
            gvActive.DataBind();

            string Deactive = "SELECT V_ID , V_Name, V_LastName, V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer WHERE V_Status = 'Deactive';";
            DataTable dtDeactive = dbconn.QueryExecuteScalar(Deactive);
            try
            {
                lblDeactive.Text = Convert.ToInt32(dtDeactive.Rows.Count).ToString();
            }
            catch
            {
                lblDeactive.Text = "0";
            }
            gvDeactive.DataSource = dtDeactive;
            gvDeactive.DataBind();

            string AllV = "SELECT V_ID, V_Name, V_Status, V_Lastname, V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer ORDER BY V_Status, V_Name ; ";
            DataTable dtAllV = dbconn.QueryExecuteScalar(AllV);
            try
            {
                lblAllVolunteer.Text = Convert.ToInt32(dtAllV.Rows.Count).ToString();
            }
            catch
            {
                lblAllVolunteer.Text = "0";
            }
            gvAllV.DataSource = dtAllV;
            gvAllV.DataBind();

            string VInterest = "SELECT VolunteerInterests.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email from VolunteerInterests, Volunteer WHERE VolunteerInterests.V_ID = Volunteer.V_ID AND Interests_ID = " + ddlVInterest.SelectedValue + ";";
            DataTable dtVInterest = dbconn.QueryExecuteScalar(VInterest);
            try
            {
                lblVInterest.Text = Convert.ToInt32(dtVInterest.Rows.Count).ToString();
            }
            catch
            {
                lblVInterest.Text = "0";
            }
            gvVInterest.DataSource = dtVInterest;
            gvVInterest.DataBind();

            string VArea = "SELECT VolunteerJoinedAreas.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email  from VolunteerJoinedAreas, Volunteer WHERE VolunteerJoinedAreas.V_ID = Volunteer.V_ID  AND JA_ID = "+ddlVArea.SelectedValue+" AND V_Status = 'Active';";
            DataTable dtVArea = dbconn.QueryExecuteScalar(VArea);
            try
            {
                lblVArea.Text = Convert.ToInt32(dtVArea.Rows.Count).ToString();
            }
            catch
            {
                lblVArea.Text = "0";
            }
            gvVArea.DataSource = dtVArea;
            gvVArea.DataBind(); 
            dbconn.Close();



        }

        protected void btnMostActive_Click(object sender, EventArgs e)
        {
           PanelMostActiveResult.Visible = true;
            
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            PanelNewResult.Visible = true;
            
        }

        protected void btnActive_Click(object sender, EventArgs e)
        {
           PanelActiveResult.Visible = true;
            
        }

        protected void btnDeActive_Click(object sender, EventArgs e)
        {
           PanelDeactiveResult.Visible = true;
           

        }

        protected void btnAll_Click(object sender, EventArgs e)
        {
            PanelAllResult.Visible = true;
            PanelAll.Visible = true;
           
        }

        protected void btnVInterest_Click(object sender, EventArgs e)
        {
            PanelVInterestResult.Visible = true;
            
        }

        protected void btnVarea_Click(object sender, EventArgs e)
        {
            PanelVAreaResult.Visible = true;
            
        }

        protected void btnCancelMostActive_Click(object sender, EventArgs e)
        {
            PanelMostActiveResult.Visible = false;
        }

        protected void btnCancelNew_Click(object sender, EventArgs e)
        {
            PanelNewResult.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            PanelActiveResult.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PanelDeactiveResult.Visible = false;
        }

        protected void btnCancelAllV_Click(object sender, EventArgs e)
        {
            PanelAllResult.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            PanelVAreaResult.Visible = false;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
           PanelVInterestResult.Visible = false;
        }

        protected void ddlVArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            string VArea = "SELECT VolunteerJoinedAreas.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email  from VolunteerJoinedAreas, Volunteer WHERE VolunteerJoinedAreas.V_ID = Volunteer.V_ID  AND JA_ID = " + ddlVArea.SelectedValue + "AND V_Status = 'Active';";
            DataTable dtVArea = dbconn.QueryExecuteScalar(VArea);
            lblArea.Text = ddlVArea.SelectedItem.Text;
            try
            {
                lblVArea.Text = Convert.ToInt32(dtVArea.Rows.Count).ToString();
            }
            catch
            {
                lblVArea.Text = "0";
            }
            gvVArea.DataSource = dtVArea;
            gvVArea.DataBind();
            dbconn.Close();
        }

        protected void ddlVInterest_SelectedIndexChanged(object sender, EventArgs e)
        {
            string VInterest = "SELECT VolunteerInterests.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email from VolunteerInterests, Volunteer WHERE VolunteerInterests.V_ID = Volunteer.V_ID AND Interests_ID = " + ddlVInterest.SelectedValue + "AND V_Status = 'Active' ;";
            DataTable dtVInterest = dbconn.QueryExecuteScalar(VInterest);
            try
            {
                lblVInterest.Text = Convert.ToInt32(dtVInterest.Rows.Count).ToString();
            }
            catch
            {
                lblVInterest.Text = "0";
            }
            gvVInterest.DataSource = dtVInterest;
            gvVInterest.DataBind();
            dbconn.Close();
        }

        protected void btnSaveMostActive_Click(object sender, EventArgs e)
        {
            
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in gvMostActive.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvMostActive.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }
            }
            dbconn.Close();
        }

        protected void gvMostActive_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            
           
        }

        protected void gvMostActive_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void gvMostActive_DataBound(object sender, EventArgs e)
        {
           
        }

        protected void gvMostActive_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
        }

        protected void gvMostActive_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void gvActive_DataBound(object sender, EventArgs e)
        {
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in gvActive.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvActive.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }


            }
            dbconn.Close();
            
   
        }

        protected void btnSaveNew_Click(object sender, EventArgs e)
        {
            
             CheckBox chkbox = new CheckBox();
             foreach (GridViewRow grdRow in gvNew.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvNew.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }
        }

            dbconn.Close();
        
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
         CheckBox chkbox = new CheckBox();
         foreach (GridViewRow grdRow in gvDeactive.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvDeactive.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }
        }
            dbconn.Close();
        }

        protected void btnSaveAllV_Click(object sender, EventArgs e)
        {
            
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in gvAllV.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvAllV.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }
            }
            dbconn.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in gvVArea.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvVArea.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }
            }
            dbconn.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in gvVInterest.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)gvVInterest.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);


                }
            }
            dbconn.Close();
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

        protected void Button11_Click(object sender, EventArgs e)
        {
            invite();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/firstPage/Welcome Volunteer Coordinator.aspx");
        }
    }
}
