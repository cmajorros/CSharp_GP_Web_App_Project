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
    public partial class insert_new_ga : System.Web.UI.Page
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
            dr["Budget Type"] = BT.SelectedItem.Text.ToString();
            dr["Budget ID"] = ddlBudget.SelectedValue;
            dr["Budget Name"] = ddlBudget.SelectedItem.Text.ToString();
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
           string FindMaXID = "SELECT MAX(V_ID) As MAXID FROM Volunteer; ";
           DataTable dtNew = dbconn.QueryExecuteScalar(FindMaXID);
           int max = Convert.ToInt32(dtNew.Rows[0]["MAXID"]);
          lblID.Text = (max + 1).ToString();
           dbconn.Close();

       }
       

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string StartDate;
            StartDate = bdpStartDate.SelectedDate.ToString("yyyy-MM-dd");

            string EndDate;
            EndDate = bdpEndDate.SelectedDate.ToString("yyyy-MM-dd");

            string insertCam;
            insertCam = "INSERT INTO Activities (Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province,Activity_Status,Activity_Type) VALUES ('" + txtName.Text + "','" + StartDate + "','" + EndDate + "','" + txtPlace.Text + "','" + ddlProvince.SelectedValue + "','Starting','General Activity');";
            dbconn.QueryExecuteScalar(insertCam);
           
            
          
            //insert Activity Budget 

         string findActivityID;
            findActivityID = "Select max(Activity_ID) as maxaid from Activities";
            DataTable AID = dbconn.QueryExecuteScalar(findActivityID);
            int ID = Convert.ToInt32(AID.Rows[0]["maxaid"]);
            MessageBox.Show(dt.Rows.Count.ToString ()); 
            string insertBudget;
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                insertBudget = "insert into SubBudgets(Budget_ID,SB_Amount,Activity_ID) ";
                insertBudget += "VALUES (";
                insertBudget += "," + Convert.ToInt32(dt.Rows[i]["Budget ID"]);
                insertBudget += "," + Convert.ToDouble(dt.Rows[i]["Amount"]) + "," + ID + ");";
                            
                dbconn.QueryExecuteScalar(insertBudget);
                
            }
            dbconn.Close();
           
            MessageBox.Show("New General Activity was added ");
            Response.Redirect("~/Volunteer MGT/insert new ga.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void add0_Click(object sender, EventArgs e)
        {

            AddToDataTable();
            Panel4.Visible = true;
            BindGrid();
            Double total = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                total += Convert.ToDouble(dt.Rows[i]["Amount"]);

            }
            Label2.Text = total.ToString("#,###.00");

            txtAmount.Text = "";
           
        }

        protected void bdpStartDate_SelectionChanged(object sender, EventArgs e)
        {

        }

        
    }
}