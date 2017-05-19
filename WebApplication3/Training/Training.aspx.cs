using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.Training
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void lblSearch_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Training/Training Search Result.aspx");
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {

        }

       

        
    }
}