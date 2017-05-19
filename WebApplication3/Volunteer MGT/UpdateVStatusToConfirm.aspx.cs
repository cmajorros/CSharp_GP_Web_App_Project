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
    public partial class UpdateVStatusToConfirm : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string findIDName;
            findIDName = "SELECT Activity_ID, Activity_Name, Activity_StartDate, Activity_EndDate, Activity_Status,Activity_Place,Activity_Province, Activity_Type FROM Activities WHERE Activity_Status = 'Starting' AND Activity_Type = 'General Activity' AND (Activity_ID like'%" + txtSearch.Text + "%' Or Activity_Name like'%" + txtSearch.Text + "%');";
            DataTable dt = dbconn.QueryExecuteScalar(findIDName);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            dbconn.Close();
            PanelSearchResult.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            CheckBox chkbox = new CheckBox();
            foreach (GridViewRow grdRow in GridView2.Rows)
            {
                chkbox = (CheckBox)Convert.ChangeType(((CheckBox)grdRow.FindControl("CheckBox1")), typeof(CheckBox));
                if (chkbox.Checked)
                {
                    string keyID = (string)GridView2.DataKeys[grdRow.RowIndex].Value.ToString();
                    JV.UpdateParameters["VJA_ID"].DefaultValue = keyID;
                    JV.Update();


                   
                }
            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelDetail.Visible = true;
           
            if (GridView2.Rows.Count != 0)
            {

                PanelSelected.Visible = true;
            }
            else
            {
                NoV.Visible = true;
            }
            PanelSearch.Visible = false;
            PanelSearchResult.Visible = false;
        }

        
    }
}