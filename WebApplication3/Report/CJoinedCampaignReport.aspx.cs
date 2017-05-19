using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Report
{
    public partial class CJoinedCampaignReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Panel1_Load(object sender, EventArgs e)
        {
           
        }

        protected void Result_Click(object sender, EventArgs e)
        {
            if (Convert.ToDateTime(BasicDatePicker3.SelectedDate.Date) > Convert.ToDateTime(BasicDatePicker4.SelectedDate.Date))
            {
                MessageBox.Show("Please select End Date or Start Date Again");
            }
            ReportViewer1.LocalReport.Refresh();
        }
    }
}