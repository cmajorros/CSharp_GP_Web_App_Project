using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication3
{
    public partial class testmail2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {

                MailMessage Email = new MailMessage();
                Email.From = new MailAddress("siroros_okdaika@hotmail.com", "Admin");
                Email.To.Add(new MailAddress("ros.cmajor@gmail.com"));
                Email.Subject = "test";
                Email.Body = "Test 1234";
                Email.Priority = MailPriority.Normal;
                SmtpClient MailClient = new SmtpClient("localhost");
                MailClient.Credentials = new System.Net.NetworkCredential("siroros_okdaika@hotmail.com", "beethophenno.5");
                MailClient.Send(Email);
                MessageBox.Show("done");
            }
            catch {
                MessageBox.Show("Error");
            }

        }
    }
}