using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class ReportTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CrystalDecisions.CrystalReports.Engine.ReportDocument report = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            report.Load(Server.MapPath(@"~/Sample.rpt"));
            report.SetParameterValue("start", bdpStart.SelectedDate.ToString("dd/MM/yyyy"));
            report.SetParameterValue("End", bdpEnd.SelectedDate.ToString("dd/MM/yyyy"));
            CrystalReportViewer1.ReportSource = report;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}