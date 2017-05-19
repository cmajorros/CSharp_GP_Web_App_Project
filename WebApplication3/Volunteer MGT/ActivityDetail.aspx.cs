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
    public partial class ActivityDetail : System.Web.UI.Page
    {

        clsDatabase dbconn = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Session["CarVCActivity_ID"].ToString();

            string Search = "SELECT Activity_ID,Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status, Activity_Type FROM Activities WHERE Activity_ID = " + ID + ";";
            DataTable dt = dbconn.QueryExecuteScalar(Search);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
          
            if ((dt.Rows[0]["Activity_Status"].ToString() == "Starting") && (dt.Rows[0]["Activity_Type"].ToString() == "General Activity"))
            {
                Edit.Visible = true;
                Delete.Visible = true;
            }
            else
            {
                Edit.Visible = false;
                Delete.Visible = false;
            }

            dbconn.Close();
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            
            string GA_ID = Session["CarVCActivity_ID"].ToString();
            string Search = "SELECT Activity_ID,Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, Activity_Status, Activity_Type FROM Activities WHERE Activity_ID = " + GA_ID + ";";
            DataTable dt = dbconn.QueryExecuteScalar(Search);
            lblID.Text = dt.Rows[0]["Activity_ID"].ToString();
            txtActivity_Name.Text = Convert.ToString(dt.Rows[0]["Activity_Name"]);
            ddlProvince.SelectedValue = dt.Rows[0]["Activity_Province"].ToString();
            
            
            /////////////////////////DATE not SHOW//////////////////
            string s = dt.Rows[0]["Activity_StartDate"].ToString();
           

            txtStartDate.Text = Convert.ToDateTime(s).ToString("dd/MM/yyyy");
            //Label3.Text = Convert.ToDateTime(s).ToString("dd-MM-yyyy");
            string endDate = dt.Rows[0]["Activity_EndDate"].ToString();
            txtEndDate.Text = Convert.ToDateTime(endDate).ToString("dd/MM/yyyy");


            txtPlace.Text = dt.Rows[0]["Activity_Place"].ToString();
            dbconn.Close();
            PanelDetail.Visible = false;
            Panel1.Visible = true;
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            

            string CancelActivity;
            CancelActivity = "UPDATE Activities SET Activity_Status = 'Cancel' WHERE Activity_ID = " + DetailsView1.DataKey + "";

            dbconn.QueryExecuteScalar(CancelActivity);
            dbconn.Close();
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string SubYear = txtStartDate.Text.Substring(6, 4);
            string SubMonth = txtStartDate.Text.Substring(3, 2);
            string SubDate = txtStartDate.Text.Substring(0, 2);
            string Date = SubYear + "-" + SubMonth + "-" + SubDate;

            string SubYearE = txtEndDate.Text.Substring(6, 4);
            string SubMonthE = txtEndDate.Text.Substring(3, 2);
            string SubDateE = txtEndDate.Text.Substring(0, 2);
            string DateE = SubYearE + "-" + SubMonthE + "-" + SubDateE;
            
            //string start = txtStartDate.Text.ToString("yyyy-MM-dd") ;
            //string End = bdpEndDate.SelectedDate.ToString("yyyy-MM-dd") ;

            string UPDATEActivity = "UPDATE Activities SET Activity_Name = '" + txtActivity_Name.Text + "', Activity_Place = '" + txtPlace.Text + "', Activity_StartDate = '" + Date + "', Activity_EndDate = '" + DateE + "', Activity_Province = '" + ddlProvince.SelectedValue + "' WHERE Activity_ID = "+lblID.Text+"; ";
            dbconn.QueryExecuteScalar(UPDATEActivity);
            dbconn.Close();

            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            PanelEditMoreBudget.Visible = true;
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
            insertSB = "insert into SubBudgets (Budget_ID, SB_Amount,Activity_ID) VALUES ('" + ddlBudget.SelectedValue + "','" + Amount + "','"+Session["CarVCActivity_ID"].ToString()+"');";
            dbconn.QueryExecuteScalar(insertSB);
            dbconn.Close();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtStartDate.Text = Calendar1.SelectedDate.ToShortDateString();

            Panel3.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtEndDate.Text = Calendar2.SelectedDate.ToShortDateString();

            Panel4.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            PanelEditMoreBudget.Visible = false;
        }

       
        }

    }


