using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.MIS
{
    public partial class MISSummaryActivity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Label2.Text = DropDownList1.SelectedValue;
                Label6.Text = DropDownList1.SelectedValue;
                Label5.Text = DropDownList1.SelectedValue;
                Label7.Text = DropDownList1.SelectedValue;

            }
            else
            {
                Label2.Text = DropDownList1.SelectedValue;
                Label6.Text = DropDownList1.SelectedValue;
                Label5.Text = DropDownList1.SelectedValue;
                Label7.Text = DropDownList1.SelectedValue;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = DropDownList1.SelectedValue;
            Label6.Text = DropDownList1.SelectedValue;
            Label5.Text = DropDownList1.SelectedValue;
            Label7.Text = DropDownList1.SelectedValue;
        }
        int total = 0;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NumActivity"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblTotal = (Label)e.Row.FindControl("lblTotal");
                lblTotal.Text = total.ToString();
            }
        }
    }
}