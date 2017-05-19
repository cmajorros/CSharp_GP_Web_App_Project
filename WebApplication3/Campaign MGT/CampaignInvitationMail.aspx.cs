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


namespace WebApplication3.Campaign_MGT
{
    public partial class CampaignInvitationMail : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Session["Activity_ID"].ToString();
            string findMail = "Select V_Email FROM Volunteer,VolunteerJoinActivities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND Activity_ID = " + ID + " AND V_Email IS NOT NULL;";
            DataTable dt = dbconn.QueryExecuteScalar(findMail);
            int row = dt.Rows.Count;
            string Email;
            for (int i = 1; i <= row-1; i++)
            {
                Email = dt.Rows[i]["V_Email"].ToString() + ",";
                txtTo.Text += Email;
                
            }
            string Detail = "SELECT VolunteerJoinActivities.Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province FROM VolunteerJoinActivities, Activities WHERE VolunteerJoinActivities.Activity_ID = Activities.Activity_ID AND Activities.Activity_ID = "+ID+";";
            DataTable dtAct = dbconn.QueryExecuteScalar(Detail);

            string ActID = dtAct.Rows[0]["Activity_ID"].ToString();
            string ActName = dtAct.Rows[0]["Activity_Name"].ToString();
            string Start = Convert.ToDateTime(dtAct.Rows[0]["Activity_StartDate"]).ToString("dd/MM/yyyy");
            string End = Convert.ToDateTime(dtAct.Rows[0]["Activity_EndDate"]).ToString("dd/MM/yyyy");
            string Place = dtAct.Rows[0]["Activity_Place"].ToString();
            string Province = dtAct.Rows[0]["Activity_Province"].ToString();

            txtMessage.Text = "Dear Volunteers," + Environment.NewLine + "       We would like to invite you to join Activity  " + ActName + Environment.NewLine +Environment.NewLine+ "Place : " + Place + "," + Province + Environment.NewLine + "Start From " + Start + "To" + End + Environment.NewLine + "       If you are interest and able to join us, Please contact us at 023334444 or Invite@Gvolunteer.co.th." + Environment.NewLine  +Environment.NewLine+ "Best Regard," + Environment.NewLine + "Volunteer Management Team" + Environment.NewLine + Environment.NewLine + Environment.NewLine  +Environment.NewLine + "เรียนอาสาสมัคร"+Environment.NewLine+ "ทางองค์กรขอเชิญชวนท่านเข้าร่วมกิจกรรม " + ActName + " สถานที่ " + Place + Province + " ในวันที่ " + Start + " ถึงวันที่ " + End + Environment.NewLine + "         หากท่านมีความสนในที่จะเข้าร่วมกิจกรรมและสามารถเข้าร่วมได้ กรุณาตอบกลับที่อีเมล์ Invite@GVolunteer.co.th หรือที่ 023334444" + Environment.NewLine + "ทางองค์กรขอขอบพรุะคุณท่านอย่างสูง ที่ให้การตอบรับและสนับสนุนองค์กรด้วยดีเสมอมา" + Environment.NewLine +Environment.NewLine+ "ด้วยความนับถือ"+Environment.NewLine +"งานอาสาสมัคร";
           
            txtSubject.Text = "เชิญอาสาสมัครเข้าร่วมกิจกรรม G Volunteer invite you to join Activity";
            dbconn.Close();
 
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ID = Session["Activity_ID"].ToString();
            string findMail = "Select V_Email FROM Volunteer,VolunteerJoinActivities WHERE VolunteerJoinActivities.V_ID = Volunteer.V_ID AND Activity_ID = " + ID + " AND V_Email IS NOT NULL;";
            DataTable dt = dbconn.QueryExecuteScalar(findMail);
            int row = dt.Rows.Count;
            //string Emailuser;
            for (int i = 1; i <= row - 1; i++)
            {

                try
                {

                    MailMessage Email = new MailMessage();
                    Email.From = new MailAddress("ros.cmajor@gmail.com", "Admin");
                    Email.To.Add(new MailAddress(dt.Rows[i]["V_Email"].ToString()));
                    Email.Subject = txtSubject.Text;
                    Email.Body = txtMessage.Text;
                    Email.Priority = MailPriority.Normal;
                    SmtpClient MailClient = new SmtpClient("smtp.gmail.com");
                    MailClient.Port = 587;
                    MailClient.Credentials = new System.Net.NetworkCredential("ros.cmajor@gmail.com", "beethophenno.5");
                    MailClient.EnableSsl = true;
                    MailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                    MailClient.Send(Email);
                    Panel1.Visible = false;
                    MessageBox.Show("Your Invitation Mail have sent successfully");
                                        

                }
                catch
                {
                    MessageBox.Show("Sorry, Your invitation mail cannot sent. Please try again");
                }

            }
        }
    }
}