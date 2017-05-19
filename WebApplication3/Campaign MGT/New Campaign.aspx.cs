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
    public partial class WebForm1 : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        DataTable dt;

        private void MakeDataTable()
        {

            dt.Columns.Add("Budget Type");
            dt.Columns.Add("Budget ID");
            dt.Columns.Add("Budget Name");
            dt.Columns.Add("Amount");
        }
        private void AddToDataTable()
        {
            DataRow dr = dt.NewRow();

            dr["Budget Type"] = ddlBT.SelectedItem.Text;
            dr["Budget ID"] = ddlBudget.SelectedValue;
            dr["Budget Name"] = ddlBudget.SelectedItem.Text;
            dr["Amount"] = txtAmount.Text;
            dt.Rows.Add(dr);
        }
        private void BindGrid()
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                dt = new DataTable();
                MakeDataTable();
            }
            else
            {
                dt = (DataTable)ViewState["DataTable"];
            }
            ViewState["DataTable"] = dt; 
             string Maxid = "SELECT MAX(Activity_ID) as MAXID FROM Activities;";
             DataTable dt2 = dbconn.QueryExecuteScalar(Maxid);
            int newid = Convert.ToInt32(dt2.Rows[0]["Maxid"]) + 1;
            lblID.Text = newid.ToString();



        }


        protected void btnClear_Click(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {

           
            



           
        }

      

        protected void Cancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Campaign MGT/New Campaign.aspx");
        }

       

        protected void clear0_Click(object sender, EventArgs e)
        {
           
            txtAmount.Text = "";
        }

        protected void add0_Click(object sender, EventArgs e)
        {
            Double Amount;
            if (!Double.TryParse(txtAmount.Text, out Amount))
            {
                MessageBox.Show("Please insert amount in correct format");
            }
            AddToDataTable();
            BindGrid();
            Panel4.Visible = true;

            Double total = 0 ;
            for (int i = 0; i < dt.Rows.Count ; i++)            
            {
               total += Convert.ToDouble(dt.Rows[i]["Amount"]);
                
            }
            Label2.Text = total.ToString();
            txtAmount.Text = "";
            
           
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dt.Rows.RemoveAt(e.RowIndex);
            GridView2.DataSource = dt;
            BindGrid();
            Double total = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            
            {
                total += Convert.ToDouble(dt.Rows[i]["Amount"]);

            }
            Label2.Text = total.ToString();

            if (dt.Rows.Count == 0)
            {
                Panel4.Visible = false;
            }
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {

            string StartDate;
            StartDate = bdpStartDate.SelectedDate.ToString("yyyy-MM-dd");

            string EndDate;
            EndDate = bdpStartDate.SelectedDate.ToString("yyyy-MM-dd");

            string insertCam;
            insertCam = "INSERT INTO Activities (Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province,Activity_Status,CAMP_ID,Activity_Type) VALUES ('" + txtName.Text + "','" + StartDate + "','" + EndDate + "','" + txtPlace.Text + "','" + ddlProvince.SelectedValue + "','Starting','" + DropDownList1.SelectedValue + "', + 'Campaign');";
            dbconn.QueryExecuteScalar(insertCam);

            string findActivityID;
            findActivityID = "Select max(Activity_ID) as maxaid from Activities";
            DataTable AID = dbconn.QueryExecuteScalar(findActivityID);
            int ID = Convert.ToInt32(AID.Rows[0]["maxaid"]);
            MessageBox.Show(dt.Rows.Count.ToString());
            string insertBudget;
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                insertBudget = "insert into SubBudgets(Budget_ID,SB_Amount,Activity_ID) ";
                insertBudget += "VALUES(" + dt.Rows[i]["Budget ID"].ToString() + ",i" + Convert.ToDouble(dt.Rows[i]["Amount"]) + "," + ID + ");";

                dbconn.QueryExecuteScalar(insertBudget);

            }
            dbconn.Close();

            MessageBox.Show("New General Activity was added ");
            Response.Redirect("~/Volunteer MGT/insert new ga.aspx");
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        

       
    }
}