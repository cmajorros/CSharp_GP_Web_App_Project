﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApplication3.firstPage
{
    public partial class Welcome_Volunteer_Coordinator : System.Web.UI.Page
    {
       

       
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            DayPilotMonth1.StartDate = MonthPicker1.StartDate;
            DayPilotMonth1.DataBind();
        }

        protected void DayPilotMonth1_Disposed(object sender, EventArgs e)
        {

        }

        protected void DayPilotMonth1_EventClick(object sender, DayPilot.Web.Ui.Events.EventClickEventArgs e)
        {
            Session["CarVCActivity_ID"] = e.Value.ToString();
            Response.Redirect("~/Volunteer MGT/ActivityDetail.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["GVActivity_ID"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("~/Volunteer MGT/ActivityDetailGV.aspx");
        }
    }
}