using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Report
{
    public partial class VolunteerJoinedActivityByYear : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int start = Convert.ToInt32(DropDownList1.SelectedValue);
            int End = Convert.ToInt32(DropDownList2.SelectedValue);
            if (End < start)
            {
                MessageBox.Show("End Year cannot less than Start Year");

            }
            else
            {
                ReportViewer1.LocalReport.Refresh();
            }
        }
    }
}