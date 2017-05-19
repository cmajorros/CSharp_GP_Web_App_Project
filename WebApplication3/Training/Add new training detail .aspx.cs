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
    public partial class Add_new_training_detail : System.Web.UI.Page
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
            dr["Budget Type"] = ddlBudgetType.SelectedItem.Text.ToString();
            dr["Budget ID"] = BT.SelectedValue;
            dr["Budget Name"] = BT.SelectedItem.Text.ToString();
            dr["Amount"] = txtAmount.Text;
            dt.Rows.Add(dr);
        }
        private void BindGrid()
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
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

           
            
            
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Training/Add new training detail .aspx");
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            
            string StartDate; 
            StartDate = dbpStartDate.SelectedDate.ToString("yyyy-MM-dd");

            string EndDate; 
            EndDate = bdpEnddate.SelectedDate.ToString("yyyy-MM-dd");

            string insertCam;
            insertCam = "INSERT INTO Activities (Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province,Activity_Status,Activity_Type,TTY_ID,TT_ID,TC_ID,TL_ID) VALUES ('" + txtName.Text + "','" + StartDate + "','" + EndDate + "','" + txtPlace.Text + "','" + ddlProvince.SelectedValue + "','Starting', 'Training','"+ddlTTY.SelectedValue+"','"+ddlTT.SelectedValue+"','"+ddlTC.SelectedValue+"','"+ddlTL.SelectedValue+"');";
            dbconn.QueryExecuteScalar(insertCam);
            dbconn.Close();
            Response.Redirect("~/Traing/Add new Training .aspx");

            string findActivityID;
            findActivityID = "Select max(Activity_ID) as maxaid from Activities";
            DataTable AID = dbconn.QueryExecuteScalar(findActivityID);
            int ID = Convert.ToInt32(AID.Rows[0]["maxaid"]);
            MessageBox.Show(dt.Rows.Count.ToString());
            string insertBudget;
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                insertBudget = "insert into SubBudgets(Budget_ID,SB_Amount,Activity_ID) ";
                insertBudget += "VALUES(";
                insertBudget += "," + Convert.ToInt32(dt.Rows[i]["Budget ID"]);
                insertBudget += "," + Convert.ToDouble(dt.Rows[i]["Amount"]) + "," + ID + ");";

                dbconn.QueryExecuteScalar(insertBudget);

            }
            dbconn.Close();

            MessageBox.Show("New General Activity was added ");
            Response.Redirect("~/Volunteer MGT/insert new ga.aspx");

        }

        protected void add_Click(object sender, EventArgs e)
        {
            Double Amount;
            if (!Double.TryParse(txtAmount.Text , out Amount))
            {
            MessageBox.Show ("Please insert amount in correct format");
            }
            AddToDataTable();
            BindGrid();
            Panel4.Visible = true;

            Double total = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                total += Convert.ToDouble(dt.Rows[i]["Amount"]);

            }
            Label2.Text = total.ToString("");
            txtAmount.Text = "";
           
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            txtAmount.Text = "";
           
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dt.Rows.RemoveAt(e.RowIndex);
            GridView1.DataSource = dt;
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

        protected void btnAddEquip_Click(object sender, EventArgs e)
        {

        }
       private void MakeTabelEquip()
        {
            dt.Columns.Add("Budget Type");
            dt.Columns.Add("Budget ID");
            dt.Columns.Add("Budget Name");
            dt.Columns.Add("Amount");
        }
        private void AddToDataTableEquip()
        {
            DataRow dr = dt.NewRow();
            dr["Budget Type"] = ddlBudgetType.SelectedItem.Text.ToString();
            dr["Budget ID"] = 
                BT.SelectedValue;
            dr["Budget Name"] = BT.SelectedItem.Text.ToString();
            dr["Amount"] = txtAmount.Text;
            dt.Rows.Add(dr);
        }
        private void BindGridEquip()
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            selectEquip();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        private void selectEquip()
        {
            string NumEquip = "SELECT E_Piece FROM Equipments WHERE E_ID = " + DropDownList2.SelectedValue + ";";
            DataTable dtE = dbconn.QueryExecuteScalar(NumEquip);
            int Num = Convert.ToInt32(dtE.Rows[0]["E_Piece"]);

            for (int i = 1; i <= Num; ++i)
            {
                DropDownList3.Items.Insert(0, new ListItem(i.ToString(), i.ToString()));
            }
        }
    } 
}