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
    public partial class Edit__Delete_Training : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            string CamID = Session["Cam_ID"].ToString();

            string ShowGA;

            ShowGA = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status,CAMP_ID FROM Activities WHERE Activity_ID = '" + CamID + "';";
           // ShowGA = "select * from Activities where Activity_ID=" + CamID;
            DataTable dt = dbconn.QueryExecuteScalar(ShowGA);
            lblID.Text = dt.Rows[0]["Activity_ID"].ToString();
            txtName.Text = dt.Rows[0]["Activity_Name"].ToString();

            string  s =   dt.Rows[0]["Activity_StartDate"].ToString ();
            bdpStartDate.SelectedValue = Convert.ToDateTime(s).ToString("dd-MM-yyyy");
            string endDate = dt.Rows[0]["Activity_EndDate"].ToString();
            bdpEndDate.SelectedValue = Convert.ToDateTime(endDate).ToString("dd-MM-yyyy"); 

            txtPlace.Text = dt.Rows[0]["Activity_Place"].ToString();
            ddlProvince.SelectedValue = dt.Rows[0]["Activity_Province"].ToString();
            lblStatus.Text = dt.Rows[0]["Activity_Status"].ToString();
            ddlCAMP.SelectedValue = dt.Rows[0]["CAMP_ID"].ToString();
           
            dbconn.Close();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int ID;
            ID = Convert.ToInt32(Session["Cam_ID"]);
            string StartDate = bdpStartDate.SelectedDate.ToString("yyyy-MM-dd");
            string EndDate = bdpEndDate.SelectedDate.ToString("yyyy-MM-dd");
            string SaveCAMP;
            SaveCAMP = "UPDATE Activities SET Activity_Name = '" + txtName.Text + "', Activity_Place = '" + txtPlace.Text + "', Activity_StartDate = '" + StartDate + "', Activity_EndDate='" + EndDate + "', Activity_Province = '" + ddlProvince.SelectedValue + "', CAMP_ID = '" + ddlCAMP.SelectedValue + "' WHERE Activity_ID =" + ID + ";";
            dbconn.QueryExecuteScalar(SaveCAMP);
            dbconn.Close();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string insertSB;
            int amount;
            if (!Int32.TryParse(txtAmount.Text, out amount))
            {
                MessageBox.Show("Please insert Amount of SubBudget in correct format");
            }
            insertSB = "insert into SubBudgets (SB_Name, SB_Amount, Activity_ID,Budget_ID) VALUES ('" + txtSBName.Text + "'," + amount + "," + Convert.ToInt32(Session["Cam_ID"]) + ",'"+ddlBudget.SelectedValue+"');";
            dbconn.QueryExecuteScalar(insertSB);
            dbconn.Close();
            GridView2.DataBind();
        }
       
        int total = 0;

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total.ToString();
            }
        }
    }
}