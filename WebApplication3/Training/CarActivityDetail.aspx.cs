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
    public partial class CarActivityDetail : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
                string ID = Session["CarACActivity_ID"].ToString();
                string searchTraining = "SELECT Activity_ID, Activity_Name,Activity_Status,Activity_Type, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province FROM Activities WHERE Activity_ID = " + ID + ";";
                DataTable dt = dbconn.QueryExecuteScalar(searchTraining);
                if ((dt.Rows[0]["Activity_Status"].ToString() == "Starting") && (dt.Rows[0]["Activity_Type"].ToString()) == "Training")
                {
                    Edit.Visible = true;
                    CancelAct.Visible = true;

                }

                else
                {
                    Edit.Visible = false;
                    CancelAct.Visible = false;
                }

                DetailsView1.DataSource = dt;
                DetailsView1.DataBind();


                dbconn.Close();
               

            }
            else 
            {
                ddlPiece.Items.Clear();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtStartDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            string ID = Session["CarACActivity_ID"].ToString();
            string searchTraining = "SELECT Activity_ID, Activity_Name,Activity_Status, Activity_StartDate, Activity_EndDate, Activity_Place, Activity_Province, TT_ID, TTY_ID, TC_ID FROM Activities WHERE Activity_ID = " + ID + ";";
            DataTable dt = dbconn.QueryExecuteScalar(searchTraining);
            lblID.Text = dt.Rows[0]["Activity_ID"].ToString();
             txtName.Text = dt.Rows[0]["Activity_Name"].ToString();
             txtStartDate.Text = Convert.ToDateTime(dt.Rows[0]["Activity_StartDate"]).ToString("dd/MM/yyyy");
             txtEndDate.Text = Convert.ToDateTime(dt.Rows[0]["Activity_EndDate"]).ToString("dd/MM/yyyy");
             txtPlace.Text = dt.Rows[0]["Activity_Place"].ToString();
             ddlProvince.SelectedValue = dt.Rows[0]["Activity_Province"].ToString();
             ddlTT.SelectedValue = dt.Rows[0]["TT_ID"].ToString();
             ddlTC.SelectedValue = dt.Rows[0]["TC_ID"].ToString();
             ddlTTY.SelectedValue = dt.Rows[0]["TTY_ID"].ToString();

             
             dbconn.Close();
            Panel1.Visible = false;
            PanelDetail.Visible = true;

        }

        protected void AddEquip_Click(object sender, EventArgs e)
        {
            PanelMoreEquip.Visible = true;
            //string ET = "SELECT [ET_ID], [ET_Name] FROM [EquipmentTypes];";
           // DataTable dtET = dbconn.QueryExecuteScalar(ET);
           // int NumET = Convert.ToInt32(dtET.Rows.Count);
          /*  string Equip = ddle.SelectedValue.ToString();

          string MAXPiece = "SELECT E_Piece From Equipments WHERE E_ID = " + ddle.SelectedValue + ";";
            DataTable dt = dbconn.QueryExecuteScalar(MAXPiece);
            int countItem = Convert.ToInt32(dt.Rows.Count);
            for (int i = 0 ; i <= countItem ; i++)
            {
              ddlPiece.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            dbconn.Close();*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PanelMoreEquip.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           string ID = Session["CarACActivity_ID"].ToString();
          
           string insertE = "INSERT INTO EquipmentNeeds SET EN_Pieces ="+ddlPiece.SelectedValue+" , Activity_ID = " + ID + ";";
           dbconn.QueryExecuteScalar(insertE);
           dbconn.Close();
           GVEquip.DataBind();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            PanelMoreTLevel.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            PanelMoreTLevel.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ///////////////////////////////////////////////////////////
             string ID = Session["CarACActivity_ID"].ToString();
             string insertTL = "Insert INTO TrainingLevels Values Level_ID = " + ddlLevel.SelectedValue + ", Activity_ID = " + ID + ";";
             dbconn.QueryExecuteScalar(insertTL);
             dbconn.Close();
             GVTL.DataBind();
             
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            PanelMoreBudget.Visible = true;

        }

        protected void btnSaveB_Click(object sender, EventArgs e)
        {
            int Amount;

            if (txtAmount.Text != "" || !Int32.TryParse(txtAmount.Text, out Amount))
            {
                string InsertBudget = "INSERT INTO SubBudgets VALUES SB_Amount = " + txtAmount.Text + ", Budget_ID = " + ddlBudget.SelectedValue + ";";
                dbconn.QueryExecuteScalar(InsertBudget);
                dbconn.Close();
                GVBudget.DataBind();
            }
            else
            {
                MessageBox.Show("Please Insert Amount of Budget in correct format");
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            PanelMoreBudget.Visible = false;
            txtAmount.Text = "";
        }

        protected void GVEquip_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this Equipment " +
                    DataBinder.Eval(e.Row.DataItem, "EN_ID") + "')");
                }
            }
        }

        protected void GVTL_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this Training Level ? " +
                    DataBinder.Eval(e.Row.DataItem, "TL_ID") + "')");
                }
            }
        }
        int total = 0;
        protected void GVBudget_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SB_Amount"));
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTotal");
                lblamount.Text = total.ToString("0,000.00");
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this Budget? " +
                    DataBinder.Eval(e.Row.DataItem, "SB_ID") + "')");
                }
            }
        }

        protected void ddle_SelectedIndexChanged(object sender, EventArgs e)
        {
            string MAXPiece = "SELECT E_Piece From Equipments WHERE E_ID = "+ddle.SelectedValue+" ;";
            DataTable dt1 = dbconn.QueryExecuteScalar(MAXPiece);
            int countItem = Convert.ToInt32(dt1.Rows[0]["E_Piece"]);
            for (int i = 1; i <= countItem; i++)
            {
                ddlPiece.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            dbconn.Close();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Calendar2.Visible = false;
            txtEndDate.Text = Calendar2.SelectedDate.ToShortDateString();
        }

        protected void ddle_Load(object sender, EventArgs e)
        {

        }

       
    }
}
