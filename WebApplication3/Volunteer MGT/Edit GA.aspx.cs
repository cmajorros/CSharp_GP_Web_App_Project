using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Volunteer_MGT
{
    public partial class Edit_GA : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {
            string GAID = Session["GA_ID"].ToString();

            string ShowGA;

            ShowGA = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status FROM Activities WHERE Activity_ID = '" + GAID + "';";
            DataTable dt = dbconn.QueryExecuteScalar(ShowGA);
            lblID.Text = dt.Rows[0]["Activity_ID"].ToString();
            txtName.Text = dt.Rows[0]["Activity_Name"].ToString();

            // string s = dt.Rows[0]["Activity_StartDate"].ToString("dd/MM/yyyy");

            string s = dt.Rows[0]["Activity_StartDate"].ToString();
            bdpStartDate.SelectedValue = Convert.ToDateTime(s).ToString("dd-MM-yyyy");
            string endDate = dt.Rows[0]["Activity_EndDate"].ToString();
            bdpEndDate.SelectedValue = Convert.ToDateTime(endDate).ToString("dd-MM-yyyy"); 
            txtPlace.Text = dt.Rows[0]["Activity_Place"].ToString();
            ddlProvince.SelectedValue = dt.Rows[0]["Activity_Province"].ToString();
            lblStatus.Text = dt.Rows[0]["Activity_Status"].ToString();
            dbconn.Close();

            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            
            string SDate = bdpStartDate.SelectedDate.ToString("yyyy-mm-dd");
            string EDate = bdpEndDate.SelectedDate.ToString("yyyy-mm-dd");
            int ID = Convert.ToInt32(Session["GA_ID"]);
            string updateGA;

            updateGA = "UPDATE [Activities] SET [Activity_Name] = '"+txtName.Text+"', [Activity_StartDate] = '" + SDate + "', [Activity_EndDate] = '" + EDate + "', [Activity_Place] = '" + txtPlace.Text + "', [Activity_Province] = '" + ddlProvince.SelectedValue + "' WHERE [Activity_ID] =" + ID + ";";

            dbconn.QueryExecuteScalar(updateGA);
            dbconn.Close();
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Volunteer MGT/GA Search Result.aspx");

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

        protected void btnAddSB_Click(object sender, EventArgs e)
        {
            int Amount;
            if (!Int32.TryParse(txtAmount.Text , out Amount))
            {
            MessageBox.Show("Please insert number of amount");
            }


            string insertSB;
            insertSB = "insert into SubBudgets ( Budget_ID, SB_Amount) VALUES ('" + ddlBudget.SelectedValue + "','" + Amount + "');";
            dbconn.QueryExecuteScalar(insertSB);
            dbconn.Close();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            txtAmount.Text = "";
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel3.Visible = true;
        }
    }
}