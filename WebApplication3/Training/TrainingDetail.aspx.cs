using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Training
{
    public partial class TrainingDetail : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack == true)
            {
                string TrainID = Session["Train_ID"].ToString();
                string ShowGA = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status,TTY_ID, TT_ID, TC_ID FROM Activities WHERE Activity_ID = '" + TrainID + "';";
                DataTable dt = dbconn.QueryExecuteScalar(ShowGA);
                lblID.Text = dt.Rows[0]["Activity_ID"].ToString();
                txtName.Text = dt.Rows[0]["Activity_Name"].ToString();
                txtPlace.Text = dt.Rows[0]["Activity_Place"].ToString();
                ddlProvince.SelectedValue = dt.Rows[0]["Activity_Province"].ToString();
                ddltc.SelectedValue = dt.Rows[0]["TC_ID"].ToString();
                ddltt.SelectedValue = dt.Rows[0]["TT_ID"].ToString();

                string s = dt.Rows[0]["Activity_StartDate"].ToString();
                txtStartDate.Text = Convert.ToDateTime(s).ToString("dd/MM/yyyy");
                string endDate = dt.Rows[0]["Activity_EndDate"].ToString();
                txtEndDate.Text = Convert.ToDateTime(endDate).ToString("dd/MM/yyyy");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            txtStartDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = true;

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Calendar2.Visible = false;
            txtEndDate.Text = Calendar2.SelectedDate.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string TrainID = Session["Train_ID"].ToString();
            int Amount;
            if (!Int32.TryParse(txtAmount.Text, out Amount))
            {
                MessageBox.Show("Please insert Amount of SubBudget in correct format!");
            }
            string insertSB;
            insertSB = "insert into SubBudgets ( SB_Amount, Budget_ID, Activity_ID) VALUES (" + Amount + ",'" + ddlBudget.SelectedValue + "'," + TrainID + ");";

            dbconn.QueryExecuteScalar(insertSB);
            dbconn.Close();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Panel3.Visible = true;
        }

        int total = 0;
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this record " +
                    DataBinder.Eval(e.Row.DataItem, "SB_ID") + "')");
                }
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total.ToString("0,000.00");
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            string SubYear = txtStartDate.Text.Substring(6, 4);
            string SubMonth = txtStartDate.Text.Substring(3, 2);
            string SubDate = txtStartDate.Text.Substring(0, 2);
            string Date = SubYear + "-" + SubMonth + "-" + SubDate;

            string SubYearE = txtEndDate.Text.Substring(6, 4);
            string SubMonthE = txtEndDate.Text.Substring(3, 2);
            string SubDateE = txtEndDate.Text.Substring(0, 2);
            string DateE = SubYearE + "-" + SubMonthE + "-" + SubDateE;

            string UPDATEActivity = "UPDATE Activities SET Activity_Name = '" + txtName.Text + "',Activity_Place = '" + txtPlace.Text + "', Activity_StartDate = '" + Date + "', Activity_EndDate = '" + DateE + "', Activity_Province = '" + ddlProvince.SelectedValue + "', TT_ID = " + ddltt.SelectedValue + ", TC_ID = " + ddltc.SelectedValue + ",TTY_ID = " + ddlTTY.SelectedValue + " WHERE Activity_ID = " + lblID.Text + ";";
            dbconn.QueryExecuteScalar(UPDATEActivity);
            dbconn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/firstPage/Welcome ActionTeam.aspx");
        }
    }
}