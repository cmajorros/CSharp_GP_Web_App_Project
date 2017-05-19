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

//using System.Net.Mail;


namespace WebApplication3.Media
{
    public partial class add_Media : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  if (!IsPostBack)
              { 
              txtTo.Text = "";
              string findEmail = "SELECT VolunteerInterests.V_ID,V_Email FROM Volunteer,VolunteerInterests WHERE (V_Email <> '' OR V_EMAIL <> '-' OR V_Email IS NOT NULL ) AND(VolunteerInterests.V_ID = Volunteer.V_ID) AND (VolunteerInterests.Interests_ID = 1)AND (VolunteerInterests.V_ID NOT IN (Select V_ID FROM SentMedias WHERE CM_ID = 1));";
              DataTable dt = dbconn.QueryExecuteScalar(findEmail);
              int NumEmail = dt.Rows.Count;
              string Email; 
              for (int i = 1; i <= NumEmail; i++)
              {
                  Email = dt.Rows[i]["V_Email"].ToString() + ",";
                  txtTo.Text = Email;
              }

              dbconn.Close();

              }*/
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string search = "SELECT CM_ID, CM_Name, MT_Name, CT_Name FROM CampaignerMedias, MediaTypes, ChannalTypes WHERE  CampaignerMedias.CT_ID = ChannalTypes.CT_ID AND  CampaignerMedias.MT_ID = MediaTypes.MT_ID AND (CM_ID like '%" + TextBox1.Text + "%' OR CM_Name like '%" + TextBox1.Text + "%');";
            DataTable dt = dbconn.QueryExecuteScalar(search);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
            PanelSearchResult.Visible = true;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            string deleteCM = "Delete FROM CampaignerMedias WHERE CM_ID = " + DetailsView1.DataKey.Value.ToString() + ";";
            MessageBox.Show("Campaigner Media has been deleted successfully");
            TextBox1.Text = "";
            PanelSearch.Visible = true;
            PanelDetail.Visible = false;
            PanelSearchResult.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelDetail.Visible = true;
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            PanelSendMedia.Visible = true;
            string findEmail = "SELECT VolunteerInterests.V_ID,V_Email FROM Volunteer,VolunteerInterests WHERE (V_Email <> '' OR V_EMAIL <> '-' OR V_Email IS NOT NULL ) AND(VolunteerInterests.V_ID = Volunteer.V_ID) AND (VolunteerInterests.Interests_ID = 1)AND (VolunteerInterests.V_ID NOT IN (Select V_ID FROM SentMedias WHERE CM_ID = 1));";
            DataTable dt = dbconn.QueryExecuteScalar(findEmail);
            int NumEmail = dt.Rows.Count;
            string Email;
            for (int i = 1; i < NumEmail; i++)
            {
                Email = dt.Rows[i]["V_Email"].ToString() + ",";
                txtTo.Text += Email;

            }
            //string Campaigner = Session["User"].ToString();
            string Subject = "Check this out Campaigner have something for you";
            txtSubject.Text = Subject;


        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            txtGetLink.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string findURL = "SELECT FileURL,Method FROM CampaignerMedias WHERE CM_ID = " + DetailsView1.DataKey.Value.ToString() + ";";
            DataTable dt = dbconn.QueryExecuteScalar(findURL);
            string URL = dt.Rows[0]["FileURL"].ToString();
            string Method = dt.Rows[0]["Method"].ToString();
            if (Method == "From your PC")
            {

                txtGetLink.Text = "http://www.gvolunteer.co.th/MediaSource/" + URL;

            }
            else
            {
                txtGetLink.Text = URL;
            }
            dbconn.Close();

        }

        protected void ddlInterest_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlInterest_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtTo.Text = "";
            string findEmail = "SELECT VolunteerInterests.V_ID,V_Email FROM Volunteer,VolunteerInterests WHERE (V_Email <> '' OR V_EMAIL <> '-' OR V_Email IS NOT NULL ) AND(VolunteerInterests.V_ID = Volunteer.V_ID) AND (VolunteerInterests.Interests_ID = 1)AND (VolunteerInterests.V_ID NOT IN (Select V_ID FROM SentMedias WHERE CM_ID = 1));";
            DataTable dt = dbconn.QueryExecuteScalar(findEmail);
            int NumEmail = dt.Rows.Count;
            string Email;
            for (int i = 1; i < NumEmail; i++)
            {
                Email = dt.Rows[i]["V_Email"].ToString() + ",";
                txtTo.Text += Email;

            }


        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string findURL = "SELECT FileURL,Method FROM CampaignerMedias WHERE CM_ID = " + DetailsView1.DataKey.Value.ToString() + ";";
            DataTable dt = dbconn.QueryExecuteScalar(findURL);
            string URL = dt.Rows[0]["FileURL"].ToString();
            string Method = dt.Rows[0]["Method"].ToString();
            if (Method == "From your PC")
            {

                txtMessage.Text = "http://www.gvolunteer.co.th/MediaSource/" + URL;

            }
            else
            {
                txtMessage.Text = URL;
            }
            dbconn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
         /*   //Add TooDB
               string SentVID = "SELECT VolunteerInterests.V_ID,V_Email FROM Volunteer,VolunteerInterests WHERE (V_Email <> '' OR V_EMAIL <> '-' OR V_Email IS NOT NULL ) AND(VolunteerInterests.V_ID = Volunteer.V_ID) AND (VolunteerInterests.Interests_ID = 1)AND (VolunteerInterests.V_ID NOT IN (Select V_ID FROM SentMedias WHERE CM_ID = "+DetailsView1.DataKey.Value.ToString()+"));";
                 DataTable dt1 = dbconn.QueryExecuteScalar(SentVID);
                 int NumEmail = dt1.Rows.Count;
                 for (int i = 1; i<NumEmail; i++)
                 {
                     string V_ID = dt1.Rows[i]["V_ID"].ToString();
                     string Insert = "INSERT INTO SentMedias(V_ID, CM_ID) VALUES (" + V_ID + "," + DetailsView1.DataKey.Value.ToString() + ");";
                     dbconn.QueryExecuteScalar(Insert);

                 }

             
            */
            //sendMail

            string findMail = "SELECT VolunteerInterests.V_ID,V_Email FROM Volunteer,VolunteerInterests WHERE (V_Email <> '' OR V_EMAIL <> '-' OR V_Email IS NOT NULL ) AND(VolunteerInterests.V_ID = Volunteer.V_ID) AND (VolunteerInterests.Interests_ID = 1)AND (VolunteerInterests.V_ID NOT IN (Select V_ID FROM SentMedias WHERE CM_ID = " + DetailsView1.DataKey.Value.ToString() + "));";
           
            DataTable dt = dbconn.QueryExecuteScalar(findMail);
            int row = dt.Rows.Count;
            //string Emailuser;
            for (int i = 1; i <= row - 1; i++)
            {

                try
                {

                    MailMessage Email = new MailMessage();
                    Email.From = new MailAddress("ros.cmajorros@gmail.com", "Admin");
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
                    MessageBox.Show("Your Campaign Media have sent successfully");

                }
                catch
                {
                    MessageBox.Show("You cannot sent Media at this time, Please try again later");
                }

            }
            dbconn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            PanelSendMedia.Visible = false;
        }
    }
}