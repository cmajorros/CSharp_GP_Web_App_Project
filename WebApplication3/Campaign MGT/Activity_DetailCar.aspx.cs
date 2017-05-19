using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Campaign_MGT
{
    public partial class Activity_DetailCar : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Session["CarCamActivity_ID"].ToString();
            string Detail = "SELECT Activity_ID, Activity_Name,Activity_Status,Activity_Type, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province FROM Activities WHERE Activity_ID = " + ID + ";";
            DataTable dt = dbconn.QueryExecuteScalar(Detail);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();

            if (dt.Rows[0]["Activity_Type"].ToString() == "Campaign" && dt.Rows[0]["Activity_Status"].ToString() == "Starting")
            {
                Edit.Visible = true;
                Cancel.Visible = true;
            }
            else
            {
                Edit.Visible = false;
                Cancel.Visible = false;
            }
             dbconn.Close();


        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            PanelCamDetail.Visible = true;
            PanelDetail.Visible = false;
            string ID = Session["CarCamActivity_ID"].ToString();
            string CamDetail = "SELECT Activity_ID, Activity_Name, Activity_Place, Activity_Province, AT_ID, CAMP_ID, Activity_StartDate, Activity_EndDate, Activity_Type FROM Activities WHERE Activity_ID = "+ID+";";
            DataTable dt = dbconn.QueryExecuteScalar(CamDetail);
            lblID.Text = dt.Rows[0]["Activity_ID"].ToString();
            txtName.Text = dt.Rows[0]["Activity_Name"].ToString();
            txtPlace.Text = dt.Rows[0]["Activity_Place"].ToString();
            ddlAT.SelectedValue = dt.Rows[0]["AT_ID"].ToString();
            ddlCT.SelectedValue = dt.Rows[0]["CAMP_ID"].ToString();
            ddlProvince.SelectedValue = dt.Rows[0]["Activity_Province"].ToString();
            txtStartDate.Text = Convert.ToDateTime(dt.Rows[0]["Activity_StartDate"]).ToString("dd/MM/yyyy");
            txtEndDate.Text = Convert.ToDateTime(dt.Rows[0]["Activity_EndDate"]).ToString("dd/MM/yyyy");

            dbconn.Close();
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
            
            txtEndDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PanelBudget.Visible = false;
        }

        protected void AddMoreBudget_Click(object sender, EventArgs e)
        {
            PanelBudget.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
             string ID = Session["CarCamActivity_ID"].ToString();
            int Amount;
            if (!Int32.TryParse(txtAmount.Text, out Amount))
            {
                MessageBox.Show("Please insert Amount of budget in correct format");
            }

            string InsertNewBudget = "INSERT INTO SubBudgets VALUES SB_Amount = " + Amount + ", Activity_ID = " + ID + ", Budget_ID = " + ddlBudget.SelectedValue + ";";
            dbconn.QueryExecuteScalar(InsertNewBudget);
            dbconn.Close();
            txtAmount.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string SubYear = txtStartDate.Text.Substring(6, 4);
            string SubMonth = txtStartDate.Text.Substring(3, 2);
            string SubDate = txtStartDate.Text.Substring(0, 2);
            string Date = SubYear + "-" + SubMonth + "-" + SubDate;

            string SubYearE = txtEndDate.Text.Substring(6, 4);
            string SubMonthE = txtEndDate.Text.Substring(3, 2);
            string SubDateE = txtEndDate.Text.Substring(0, 2);
            string DateE = SubYearE + "-" + SubMonthE + "-" + SubDateE;

            string UPDATEActivity = "UPDATE Activities SET Activity_Name = '" + txtName.Text + "',Activity_Place = '" + txtPlace.Text + "', Activity_StartDate = '" + Date + "', Activity_EndDate = '" + DateE + "', Activity_Province = '" + ddlProvince.SelectedValue + "', CAMP_ID = "+ddlCT.SelectedValue+", AT_ID = "+ddlAT.SelectedValue+" WHERE Activity_ID = " + lblID.Text + ";";
            dbconn.QueryExecuteScalar(UPDATEActivity);
            dbconn.Close();
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/firstPage/Welcome Campaigner.aspx");
        }

        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            string ID = Session["CarCamActivity_ID"].ToString();
            string CancelCam = "Update Activities SET Activity_Status ='Cancel' WHERE Activity_ID = "+ID+" ;";
            dbconn.QueryExecuteScalar(CancelCam);
            dbconn.Close();
        }
    }
}