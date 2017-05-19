using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace WebApplication3.Training
{
    public partial class SearchTraining_UpdateVStatus_ : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {

            string findIDName;
            findIDName = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Status, Activity_Type,Activities.TTY_ID,TTY_Name FROM Activities, TrainingTypes WHERE Activity_Type = 'Training' AND Activity_Status = 'Starting' AND Activities.TTY_ID = TrainingTypes.TTY_ID AND (Activity_ID like'%" + txtSearch.Text + "%' Or Activity_Name like'%" + txtSearch.Text + "%');";
            DataTable dt = dbconn.QueryExecuteScalar(findIDName);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
            PanelSearchResult.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
            PanelDetail.Visible = true;
            Panel1.Visible = true;
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
                }
            }
            DetailsView1.DataBind();
            PanelDone.Visible = true;
            Panel1.Visible = false;
            PanelDetail.Visible = false;

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            string findConfirmed = "SELECT VolunteerJoinActivities.V_ID, V_Email FROM VolunteerJoinActivities, Volunteer WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND VJA_Status = 'Confirmed' AND Activity_ID = " + DetailsView1.DataKey.Value.ToString() + ";";
            DataTable dt = dbconn.QueryExecuteScalar(findConfirmed);
            int NumVolunteer = dt.Rows.Count;

            string Key = DetailsView1.DataKey.Value.ToString();
            string selectSouce = "SELECT TrainingLevels.Activity_ID, TrainingLevels.Level_ID, LevelLessons.LL_ID, LessonKnowledges.LK_ID, LessonKnowledges.K_File, LessonKnowledges.K_Name  FROM LevelLessons INNER JOIN TrainingLevels ON LevelLessons.Level_ID = TrainingLevels.Level_ID INNER JOIN  LessonKnowledges ON LevelLessons.LL_ID = LessonKnowledges.LL_ID WHERE (TrainingLevels.Activity_ID = " + Key+ ");";

            DataTable dts = dbconn.QueryExecuteScalar(selectSouce);

            
      //      int NumSource = dts.Rows.Count;

            string Source;
         //string Allsource;



            if (dts.Rows.Count == 0)
            {
                MessageBox.Show("There is no any Training sources for this training. You need to add training source first");
            }
            else if (dts.Rows.Count >= 1)
                
                for ( int i = 0; i <= dts.Rows.Count-1; i++)
                {
                    string Kname = dts.Rows[i]["K_Name"].ToString();
                    string KFile = dts.Rows[i]["K_File"].ToString();
                    Source = Environment.NewLine + "ความรู้ที่งช้ในการฝึกทักษะเรื่อง " + dts.Rows[i]["K_Name"].ToString() + " สามารถเข้าไปศึกษาได้ที่  http://GVolunteer.co.th/TrainingSourceDownload/" + dts.Rows[i]["K_File"].ToString();
                    
                    TextBox1.Text +=Source;

                }
        

            string MailBody = "เรียน อาสาสมัคร" + Environment.NewLine + "       สำหรับการฝึกอบรมที่จะมาถึงนี้ มีสื่อการเรียนรู้ที่ใช้ในการฝึกอบรมทักษะ ดังต่อไปนี้ " + Environment.NewLine;

            {


                for (int i = 0; i <= NumVolunteer-1 ; i++)
                {

                    try
                    {
                       
                        MailMessage Email = new MailMessage();
                        Email.From = new MailAddress("ros.cmajor@gmail.com", "Admin");
                        Email.To.Add(new MailAddress(dt.Rows[i]["V_Email"].ToString()));
                        Email.Subject = "สื่อการเรียนรู้สำหรับการฝึกอบรมทักษะ";
                        Email.Body = "เรียน อาสาสมัคร" + Environment.NewLine + "       สำหรับการฝึกอบรมที่จะมาถึงนี้ มีสื่อการเรียนรู้ที่ใช้ในการฝึกอบรมทักษะ ดังต่อไปนี้ " + Environment.NewLine + TextBox1.Text +"ทางงานกิจกรรมอาสาสมัคร จึงทำการส่งสื่อการเรียนรู้มาเพื่อให้ท่านได้ทำการศึกษาและเข้าใจในกิจกรรมมากขึ้น"+Environment.NewLine+Environment.NewLine+"ขอขอบพระคุณท่านอย่างสูงสำหรับการให้ความสนับสนุนกับทางองค์กรด้วยดีเสมอมา"+Environment.NewLine+"ทีมกิจกกรรมอาสาสมัคร";
                        Email.Priority = MailPriority.Normal;
                        SmtpClient MailClient = new SmtpClient("smtp.gmail.com");
                        MailClient.Port = 587;
                        MailClient.Credentials = new System.Net.NetworkCredential("ros.cmajor@gmail.com", "beethophenno.5");
                        MailClient.EnableSsl = true;
                        MailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                        MailClient.Send(Email);
                        Panel1.Visible = false;
                        MessageBox.Show("Your Training Source Mail have sent successfully");


                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("You cannot sent Media source right now !!! Please try again later.");
                    }

                }
            }
        }
    }
}
