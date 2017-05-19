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
    public partial class Search__Campaign_VC_ : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
             

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = GridView1.SelectedRow.Cells[1].Text;
            
            string SearchType = "SELECT AT_ID FROM Activities WHERE Activity_ID = " + id + ";";
            DataTable dt = dbconn.QueryExecuteScalar(SearchType);
            string AT = dt.Rows[0]["AT_ID"].ToString();
            if (AT == "1")
            {
                PanelHardAction.Visible = true;               
            }
            else if (AT == "2")
            {
                PanelColdAction.Visible = true;              
            }
            else
            {
                PanelBoth.Visible = true;               
            }
            PanelCamDetail.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;
             
            
         

            string ActivityID = GridView1.SelectedRow.Cells[1].Text;
            string MostActive1 = "SELECT Top 15 CountVolunteerJoinActivity.V_ID ,NoJoin, V_Name, V_LastName,V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer, CountVolunteerJoinActivity WHERE CountVolunteerJoinActivity.V_ID = Volunteer.V_ID AND CountVolunteerJoinActivity.V_ID NOT IN (SELECT V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ") ORDER BY NoJoin DESC;";
            DataTable dtMostActive1 = dbconn.QueryExecuteScalar(MostActive1);
            GridViewMostActive1.DataSource = dtMostActive1;
            GridViewMostActive1.DataBind();

            lblMostActive.Text = GridViewMostActive1.Rows.Count.ToString();

          
           
                lblMostActive2.Text = GridViewMostActive1.Rows.Count.ToString();
           
            string NVDA2 = "SELECT VolunteerJoinActivities.V_ID, V_Name, V_LastName , V_MobileNo1, V_MobileNo2,V_Email From VolunteerJoinActivities, Volunteer,Activities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activity_Name = 'NVDA'  AND V_Status <> 'Deactive';";
            DataTable dtNVDA2 = dbconn.QueryExecuteScalar(NVDA2);
            GridViewNVDA1.DataSource = dtNVDA2;
            GridViewNVDA1.DataBind();
           
            lblNVDA.Text = GridViewNVDA1.Rows.Count.ToString();

            PanelMostActive3.Visible = true;
          //  string ActivityID = DetailsView1.DataKey.Value.ToString();
            string MostActive3 = "SELECT Top 15 CountVolunteerJoinActivity.V_ID ,NoJoin, V_Name, V_LastName, V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer, CountVolunteerJoinActivity WHERE CountVolunteerJoinActivity.V_ID = Volunteer.V_ID AND CountVolunteerJoinActivity.V_ID not in(SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ") ORDER BY NoJoin DESC ;";
            DataTable dtMostActive3 = dbconn.QueryExecuteScalar(MostActive3);
            GridViewMostActive3.DataSource = dtMostActive3;
            GridViewMostActive3.DataBind();
  
            lblMostActive3.Text = GridViewMostActive3.Rows.Count.ToString();

            string NVDA3 = "SELECT VolunteerJoinActivities.V_ID, V_Name, V_LastName , V_MobileNo1, V_MobileNo2,V_Email From VolunteerJoinActivities, Volunteer,Activities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activity_Name = 'NVDA'  AND V_Status <> 'Deactive';";
            DataTable dtNVDA3 = dbconn.QueryExecuteScalar(NVDA3);
            GridviewNVDA3.DataSource = dtNVDA3;
            GridviewNVDA3.DataBind();
            lblNVDA3.Text = GridviewNVDA3.Rows.Count.ToString();
            dbconn.Close();
           
            ddlSkillType.Items.Add(new ListItem("กรุณาเลือกประเภททักษะ", "0"));
            ddlSkill.Items.Add(new ListItem("กรุณาเลือกทักษะ", "0"));
            ddlSI1.Items.Add(new ListItem("กรุณาเลือกรายการทักษะ", "0"));
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel2.Visible = true;
            
        }

        protected void btnTT_Click(object sender, EventArgs e)
        {
            PanelTT1.Visible = true;
            string TT2 = "SELECT TeamMembers.V_ID, V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email ,TP_Name  FROM TeamMembers,TeamPositions,Volunteer WHERE TeamMembers.TT_ID = " + ddlTT.SelectedValue + " AND TeamMembers.V_ID = Volunteer.V_ID and TeamMembers.TP_ID = TeamPositions.TP_ID ; ";
            DataTable dtTT2 = dbconn.QueryExecuteScalar(TT2);
            GridViewTT2.DataSource = dtTT2;
            GridViewTT2.DataBind();
            dbconn.Close();
            lblTT.Text = GridViewTT2.Rows.Count.ToString();
        }

        protected void btnNVDA_Click(object sender, EventArgs e)
        {
            PanelNVDA1.Visible = true;
            string NVDA2 = "SELECT VolunteerJoinActivities.V_ID, V_Name, V_LastName , V_MobileNo1, V_MobileNo2,V_Email From VolunteerJoinActivities, Volunteer,Activities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activity_Name = 'NVDA'  AND V_Status <> 'Deactive';";
            DataTable dtNVDA2 = dbconn.QueryExecuteScalar(NVDA2);
            GridViewNVDA1.DataSource = dtNVDA2;
            GridViewNVDA1.DataBind();
            dbconn.Close();
        }

        protected void btnMostActive_Click(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            PanelMostActive1.Visible = true;
            string MostActive1 = "SELECT Top 15 CountVolunteerJoinActivity.V_ID ,NoJoin, V_Name, V_LastName,V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer, CountVolunteerJoinActivity WHERE CountVolunteerJoinActivity.V_ID = Volunteer.V_ID and CountVolunteerJoinActivity.V_ID not in(SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = "+ActivityID+" ) ORDER BY NoJoin DESC   ;";
            DataTable dtMostActive1 = dbconn.QueryExecuteScalar(MostActive1);
            GridViewMostActive1.DataSource = dtMostActive1;
            GridViewMostActive1.DataBind();
            dbconn.Close();
            lblMostActive.Text = GridViewMostActive1.Rows.Count.ToString();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            PanelMostActive2.Visible = true;
            
           

        }

        protected void btnArea_Click(object sender, EventArgs e)
        {
            PanelArea2.Visible = true;
        }

        protected void btnInterest_Click(object sender, EventArgs e)
        {
            PanelInterest2.Visible = true;
        }

        protected void btnSkill_Click(object sender, EventArgs e)
        {
            PanelSkill2.Visible = true;
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Skill1 = "SI_Name,ST_NAME, Skill_Name, VolunteerSkills.V_ID,V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email FROM Volunteer, VolunteerSkills,SkillItems,SkillTypes,Skills WHERE VolunteerSkills.SI_ID = "+ddlSkill.SelectedValue+" AND VolunteerSkills.V_ID = Volunteer.V_ID AND VolunteerSkills.SI_ID = SkillItems.SI_ID AND SkillItems.Skill_ID = Skills.Skill_ID AND Skills.ST_ID = SkillTypes.ST_ID AND VolunteerSkills.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = "+ActivityID+");";
            DataTable dtSkill1 = dbconn.QueryExecuteScalar(Skill1);
            GridViewSkill1.DataSource = dtSkill1;
            GridViewSkill1.DataBind();
            dbconn.Close();
            lblSkill1.Text = GridViewSkill1.Rows.Count.ToString();
        }

        protected void btnTT2_Click(object sender, EventArgs e)
        {
            PanelTT2.Visible = true;
            //lblTT2.Text = GridViewTT2.Rows.Count.ToString();

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            PanelMostActive3.Visible = true;
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string MostActive3 = "SELECT Top 15 CountVolunteerJoinActivity.V_ID ,NoJoin, V_Name, V_LastName, V_MobileNo1, V_MobileNo2, V_Email FROM Volunteer, CountVolunteerJoinActivity WHERE CountVolunteerJoinActivity.V_ID = Volunteer.V_ID AND CountVolunteerJoinActivity.V_ID not in(SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ") ORDER BY NoJoin DESC ;";
            DataTable dtMostActive3 = dbconn.QueryExecuteScalar(MostActive3);
            GridViewMostActive3.DataSource = dtMostActive3;
            GridViewMostActive3.DataBind();
            dbconn.Close();
        }

        protected void btnInterest3_Click(object sender, EventArgs e)
        {
            PanelInterest3.Visible = true;

        }

        protected void btnArea3_Click(object sender, EventArgs e)
        {
            PanelArea3.Visible = true;
        }

        protected void btnTT3_Click(object sender, EventArgs e)
        {
            PanelTT3.Visible = true;
        }

        protected void btnSkill3_Click(object sender, EventArgs e)
        {
            PanelSkill3.Visible = true;
        }

        protected void btnNVDA3_Click(object sender, EventArgs e)
        {
            PanelNVDA3.Visible = true;
            string NVDA3 = "SELECT VolunteerJoinActivities.V_ID, V_Name, V_LastName , V_MobileNo1, V_MobileNo2,V_Email From VolunteerJoinActivities, Volunteer,Activities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activity_Name = 'NVDA'  AND V_Status <> 'Deactive';";
            DataTable dtNVDA3 = dbconn.QueryExecuteScalar(NVDA3);
            GridviewNVDA3.DataSource = dtNVDA3;
            GridviewNVDA3.DataBind();
            dbconn.Close();

        }

        protected void SaveTT1_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewTT2.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewTT2.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            dbconn.Close();
        }

        protected void CancelTT1_Click(object sender, EventArgs e)
        {
            PanelTT1.Visible = false;
        }

        protected void CancelNVDA1_Click(object sender, EventArgs e)
        {
            PanelNVDA1.Visible = false;
        }

        protected void CancelMostActive1_Click(object sender, EventArgs e)
        {
            PanelMostActive1.Visible = false;
        }

        protected void CancelMostActive2_Click(object sender, EventArgs e)
        {
            PanelMostActive2.Visible = false;
        }

        protected void CancelArea2_Click(object sender, EventArgs e)
        {
            PanelArea2.Visible = false;
        }

        protected void CancelInterest2_Click(object sender, EventArgs e)
        {
            PanelInterest2.Visible = false;
        }

        protected void CancelSkill2_Click(object sender, EventArgs e)
        {
            PanelSkill2.Visible = false;
        }

        protected void CancelTT2_Click(object sender, EventArgs e)
        {
            PanelTT2.Visible = false;
        }

        protected void CancelMostActive3_Click(object sender, EventArgs e)
        {
            PanelMostActive3.Visible = false;
        }

        protected void CancelInterest3_Click(object sender, EventArgs e)
        {
            PanelInterest3.Visible = false;
        }

        protected void CancelArea3_Click(object sender, EventArgs e)
        {
            PanelArea3.Visible = false;
        }

        protected void CancelTT3_Click(object sender, EventArgs e)
        {
            PanelTT3.Visible = false;
        }

        protected void CancelSkill3_Click(object sender, EventArgs e)
        {
            PanelSkill3.Visible = false;
        }

        protected void CancelNVDA3_Click(object sender, EventArgs e)
        {
            PanelNVDA3.Visible = false;
        }

        protected void ddlArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Area1 = "SELECT VolunteerJoinedAreas.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email  from VolunteerJoinedAreas, Volunteer WHERE VolunteerJoinedAreas.V_ID = Volunteer.V_ID  AND JA_ID = " + ddlArea.SelectedValue + " AND VolunteerJoinedAreas.V_ID not in(SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = "+ActivityID+");";

            DataTable dtArea1 = dbconn.QueryExecuteScalar(Area1);
            GridViewArea1.DataSource = dtArea1;
            GridViewArea1.DataBind();
            dbconn.Close();

            int numRow = GridViewArea1.Rows.Count;
            lblArea1.Text = numRow.ToString();
        }

        protected void ddlInterest_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string interest1 = "SELECT VolunteerInterests.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email from VolunteerInterests, Volunteer WHERE VolunteerInterests.V_ID = Volunteer.V_ID  AND Interests_ID = " + ddlInterest.SelectedValue + " AND VolunteerInterests.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ") ;";
            DataTable dtInterest1 = dbconn.QueryExecuteScalar(interest1);
            GridviewInterest1.DataSource = dtInterest1;
            GridviewInterest1.DataBind();
            dbconn.Close();
            lblInterest.Text = GridviewInterest1.Rows.Count.ToString();
        }

        protected void ddlSkill_SelectedIndexChanged(object sender, EventArgs e)
        {

            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Skill1 = "SI_Name,ST_NAME, Skill_Name, VolunteerSkills.V_ID,V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email FROM Volunteer, VolunteerSkills,SkillItems,SkillTypes,Skills WHERE VolunteerSkills.SI_ID = " + ddlSkill.SelectedValue + " AND VolunteerSkills.V_ID = Volunteer.V_ID AND VolunteerSkills.SI_ID = SkillItems.SI_ID AND SkillItems.Skill_ID = Skills.Skill_ID AND Skills.ST_ID = SkillTypes.ST_ID AND VolunteerSkills.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ");";
            DataTable dtSkill1 = dbconn.QueryExecuteScalar(Skill1);
            GridViewSkill1.DataSource = dtSkill1;
            GridViewSkill1.DataBind();
            dbconn.Close();

            lblSkill1.Text = GridViewSkill1.Rows.Count.ToString();
        }

        protected void ddlSkillType_SelectedIndexChanged(object sender, EventArgs e)
        {

            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Skill1 = "SI_Name,ST_NAME, Skill_Name, VolunteerSkills.V_ID,V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email FROM Volunteer, VolunteerSkills,SkillItems,SkillTypes,Skills WHERE VolunteerSkills.SI_ID = " + ddlSkill.SelectedValue + " AND VolunteerSkills.V_ID = Volunteer.V_ID AND VolunteerSkills.SI_ID = SkillItems.SI_ID AND SkillItems.Skill_ID = Skills.Skill_ID AND Skills.ST_ID = SkillTypes.ST_ID AND VolunteerSkills.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ");";
            DataTable dtSkill1 = dbconn.QueryExecuteScalar(Skill1);
            GridViewSkill1.DataSource = dtSkill1;
            GridViewSkill1.DataBind();
            dbconn.Close();
            lblSkill1.Text = GridViewSkill1.Rows.Count.ToString();
        }

        protected void ddlTT1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string TT1 = "SELECT TeamMembers.V_ID, V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email ,TP_Name  FROM TeamMembers,TeamPositions,Volunteer WHERE TeamMembers.TT_ID = 4 AND TeamMembers.V_ID = Volunteer.V_ID and TeamMembers.TP_ID = TeamPositions.TP_ID AND  TeamMembers.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = "+ActivityID+"); ";
            DataTable dtTT1 = dbconn.QueryExecuteScalar(TT1);
            GridViewTT1.DataSource = dtTT1;
            GridViewTT1.DataBind();
            dbconn.Close();
            lblTT2.Text = GridViewTT1.Rows.Count.ToString();
        }

        protected void ddlTT_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string TT2 = "SELECT TeamMembers.V_ID, V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email ,TP_Name  FROM TeamMembers,TeamPositions,Volunteer WHERE TeamMembers.TT_ID = " + ddlTT.SelectedValue + " AND TeamMembers.V_ID = Volunteer.V_ID and TeamMembers.TP_ID = TeamPositions.TP_ID AND TeamMembers.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + "); ";
            DataTable dtTT2 = dbconn.QueryExecuteScalar(TT2);
            GridViewTT2.DataSource = dtTT2;
            GridViewTT2.DataBind();
            dbconn.Close();
            lblTT.Text = GridViewTT2.Rows.Count.ToString();
        }

        protected void PanelHardAction_Load(object sender, EventArgs e)
        {
            
        }

        protected void PanelBoth_Load(object sender, EventArgs e)
        {
            

           
        }

        protected void ddlInterest3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string interest3 = "SELECT VolunteerInterests.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email from VolunteerInterests, Volunteer WHERE VolunteerInterests.V_ID = Volunteer.V_ID  AND Interests_ID = " + ddlInterest3.SelectedValue + " AND VolunteerInterests.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ");";
            DataTable dtInterest3 = dbconn.QueryExecuteScalar(interest3);
            GridviewInterest3.DataSource = dtInterest3;
            GridviewInterest3.DataBind();
            lblInterest3.Text = GridviewInterest3.Rows.Count.ToString();
            dbconn.Close();
        }

        protected void ddlArea3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Area3 = "SELECT VolunteerJoinedAreas.V_ID, V_Name, V_LastName, V_MobileNo1,V_MobileNo2, V_Email  from VolunteerJoinedAreas, Volunteer WHERE VolunteerJoinedAreas.V_ID = Volunteer.V_ID  AND JA_ID = " + ddlArea3.SelectedValue + " AND VolunteerJoinedAreas.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ");";
            DataTable dtArea3 = dbconn.QueryExecuteScalar(Area3);
            GridViewArea3.DataSource = dtArea3;
            GridViewArea3.DataBind();

            dbconn.Close();
            lblArea3.Text = GridViewArea3.Rows.Count.ToString();
        }

        protected void ddlTT3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string TT3 = "SELECT TeamMembers.V_ID, V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email ,TP_Name  FROM TeamMembers,TeamPositions,Volunteer WHERE TeamMembers.TT_ID = " + ddlTT3.SelectedValue + " AND TeamMembers.V_ID = Volunteer.V_ID and TeamMembers.TP_ID = TeamPositions.TP_ID AND TeamMembers.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + "); ";
            DataTable dtTT3 = dbconn.QueryExecuteScalar(TT3);
            GridViewTT3.DataSource = dtTT3;
            GridViewTT3.DataBind();
            lblTT3.Text = GridViewTT3.Rows.Count.ToString();
            dbconn.Close();
        }

        protected void ddlSkillType3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Skill3 = "SELECT SI_Name,ST_NAME, Skill_Name, VolunteerSkills.V_ID,  V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email FROM Volunteer, VolunteerSkills,SkillItems,SkillTypes,Skills WHERE VolunteerSkills.SI_ID = " + ddlSkill3.SelectedValue + " AND VolunteerSkills.V_ID = Volunteer.V_ID AND VolunteerSkills.SI_ID = SkillItems.SI_ID AND SkillItems.Skill_ID = Skills.Skill_ID AND Skills.ST_ID = SkillTypes.ST_ID AND NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = "+ActivityID+");";
            DataTable dtSkill3 = dbconn.QueryExecuteScalar(Skill3);
            GridViewSkill3.DataSource = dtSkill3;
            GridViewSkill3.DataBind();
            
            dbconn.Close();
            lblSkill3.Text = GridViewSkill3.Rows.Count.ToString();
        }

        protected void ddlSkill3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Skill3 = "SELECT SI_Name,ST_NAME, Skill_Name, VolunteerSkills.V_ID,  V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email FROM Volunteer, VolunteerSkills,SkillItems,SkillTypes,Skills WHERE VolunteerSkills.SI_ID = " + ddlSkill3.SelectedValue + " AND VolunteerSkills.V_ID = Volunteer.V_ID AND VolunteerSkills.SI_ID = SkillItems.SI_ID AND SkillItems.Skill_ID = Skills.Skill_ID AND Skills.ST_ID = SkillTypes.ST_ID VolunteerSkills.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ");";
            DataTable dtSkill3 = dbconn.QueryExecuteScalar(Skill3);
            GridViewSkill3.DataSource = dtSkill3;
            GridViewSkill3.DataBind();
            dbconn.Close();
            lblSkill3.Text = GridViewSkill3.Rows.Count.ToString();
        }

        protected void ddlSkill_Load(object sender, EventArgs e)
        {
        
        }

        protected void SaveMostActive2_Click(object sender, EventArgs e)
        {
            //int maxPost = Convert.ToInt32(dt.Rows[0]["MAXPost"]);

            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewMostActive1.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewMostActive1.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }

            GridViewMostActive1.DataBind();
            dbconn.Close();

            
            
        }

        protected void SaveArea2_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewArea1.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewArea1.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            dbconn.Close();
            GridViewArea1.DataBind();
            
        }

        protected void SaveInterest2_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridviewInterest1.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridviewInterest1.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            dbconn.Close();
            GridviewInterest1.DataBind();
        }

        protected void SaveSkill2_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewSkill1.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewSkill1.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            dbconn.Close();
            GridViewSkill1.DataBind();
        }

        protected void SaveTT2_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewTT1.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewTT1.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            dbconn.Close();
            GridViewTT1.DataBind();
        }

        protected void SaveNVDA1_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewNVDA1.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewNVDA1.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            dbconn.Close();
            GridViewNVDA1.DataBind();
        }

        protected void SaveMostActive1_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewNVDA2.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewNVDA2.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridViewNVDA2.DataBind();
            dbconn.Close();
           
        }

        protected void SaveMostActive3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewMostActive3.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewMostActive3.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridViewMostActive3.DataBind();
            dbconn.Close();
        }

        protected void SaveInterest3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridviewInterest3.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridviewInterest3.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridviewInterest3.DataBind();
            dbconn.Close();
        }

        protected void SaveArea3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewArea3.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewArea3.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridViewArea3.DataBind();
            dbconn.Close();
        }

        protected void SaveTT3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewTT3.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewTT3.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridViewTT3.DataBind();
            dbconn.Close();
        }

        protected void SaveSkill3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridViewSkill3.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridViewSkill3.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridViewSkill3.DataBind();
            dbconn.Close();
        }

        protected void SaveNVDA3_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridviewNVDA3.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("chk")), typeof(CheckBox));
                if (chkbox.Checked)
                {

                    string keyID = (string)GridviewNVDA3.DataKeys[grdRow.RowIndex].Value.ToString();
                    string sqlSelectVolunteer = "Insert into VolunteerJoinActivities(V_ID,VJA_Status,Activity_ID) Values (" + keyID + ",'Selected'," + DetailsView1.SelectedValue + ") ;";
                    dbconn.QueryExecuteScalar(sqlSelectVolunteer);

                }


            }
            GridviewNVDA3.DataBind();
            dbconn.Close();
        }

        protected void PanelColdAction_Load(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
         //   lblSearchResult.Text = GridView1.Rows.Count.ToString() + " result was found.";
        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           // lblSearchResult.Text = GridView1.Rows.Count.ToString() + " result was found.";
        }

        protected void ddlSI1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ActivityID = DetailsView1.DataKey.Value.ToString();
            string Skill1 = "SI_Name,ST_NAME, Skill_Name, VolunteerSkills.V_ID,V_Name, V_LastName,V_MobileNo1, V_MobileNo2,V_Email FROM Volunteer, VolunteerSkills,SkillItems,SkillTypes,Skills WHERE VolunteerSkills.SI_ID = " + ddlSI1.SelectedValue + " AND VolunteerSkills.V_ID = Volunteer.V_ID AND VolunteerSkills.SI_ID = SkillItems.SI_ID AND SkillItems.Skill_ID = Skills.Skill_ID AND Skills.ST_ID = SkillTypes.ST_ID AND VolunteerSkills.V_ID NOT IN (SELECT VolunteerJoinActivities.V_ID FROM VolunteerJoinActivities WHERE Activity_ID = " + ActivityID + ");";
            DataTable dtSkill1 = dbconn.QueryExecuteScalar(Skill1);
            GridViewSkill1.DataSource = dtSkill1;
            GridViewSkill1.DataBind();
            dbconn.Close();

            lblSkill1.Text = GridViewSkill1.Rows.Count.ToString();
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
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

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            invite();
        }

       
    }
}