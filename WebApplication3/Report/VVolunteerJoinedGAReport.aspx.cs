using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Report
{
    public partial class VVolunteerJoinedGAReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToDateTime(BasicDatePicker1.SelectedDate.Date) > Convert.ToDateTime(BasicDatePicker2.SelectedDate.Date))
            {
                MessageBox.Show("Please select End Date or Start Date Again");
            }
            ReportViewer1.LocalReport.Refresh();
        }
    }
}