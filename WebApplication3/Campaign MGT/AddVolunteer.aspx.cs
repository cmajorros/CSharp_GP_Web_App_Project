using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Campaign_MGT
{
    public partial class AddVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMoreCri1_Click(object sender, EventArgs e)
        {
            PanelCri2.Visible = true;
        }

        protected void btnMoreCri2_Click(object sender, EventArgs e)
        {
            PanelCri3.Visible = true;
        }

        protected void btnMoreCri3_Click(object sender, EventArgs e)
        {
            PanelC4i4.Visible = true;
        }

        protected void btnMoreCri4_Click(object sender, EventArgs e)
        {
            Panelcri5.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* if (DropDownList1.SelectedValue == "Personal Data")
            { 
           
            }

            if (DropDownList1.SelectedValue == "General Skill")
            {

            }
            if (DropDownList1.SelectedValue == "Language Skill")
            {

            }
            if (DropDownList1.SelectedValue == "Computer Skill")
            {

            }
            if (DropDownList1.SelectedValue == "Interest")
            {

            }
            if (DropDownList1.SelectedValue == "Joined Area")
            {

            }
            if (DropDownList1.SelectedValue == "Training Team")
            {

            }
           */

           
        }
    }
}