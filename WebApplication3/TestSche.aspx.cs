using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class TestSche : System.Web.UI.Page
    {
        clsDatabase conn = new clsDatabase();
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DayPilotMonth1.StartDate = MonthPicker1.StartDate;
            DayPilotMonth1.DataBind();
           
        }

        protected void DayPilotMonth1_EventMove(object sender, DayPilot.Web.Ui.Events.EventMoveEventArgs e)
        {
           
          
        }

        protected void DayPilotMonth1_EventClick(object sender, DayPilot.Web.Ui.Events.EventClickEventArgs e)
        {
            //EventDetail.ChangeMode(DetailsViewMode.Edit);
            SqlDataSource1.SelectParameters["id"].DefaultValue = e.Value;
            EventDetail.DataBind();
            EventDetail.Visible = true;
        }

        
    }
}