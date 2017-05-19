using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Master_Data_MGT
{
    public partial class ManageMediaChannel : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string check = "SELECT MT_ID, CT_ID FROM MediaChannels WHERE MT_ID = " + DropDownList2.SelectedValue + " AND CT_ID = " + DropDownList1.SelectedValue + ";";
                DataTable dt = dbconn.QueryExecuteScalar(check);
                if (dt.Rows.Count == 1)
                {
                    MessageBox.Show("Sorry you have selected Channal for this Media already !!");
                }
                else
                {
                    string insert = "INSERT INTO MediaChannels (MT_ID,CT_ID) Values (" + DropDownList2.SelectedValue + "," + DropDownList1.SelectedValue + ");";
                    dbconn.QueryExecuteScalar(insert);
                    GridView1.DataBind();
                    MessageBox.Show("Channal for Media has been added successfully");
                    Panel1.Visible = false;
                }
            }
            catch
            {
                string insert = "INSERT INTO MediaChannels (MT_ID,CT_ID) Values (" + DropDownList2.SelectedValue + "," + DropDownList1.SelectedValue + ");";
                dbconn.QueryExecuteScalar(insert);
                GridView1.DataBind();
                MessageBox.Show("Channal for Media has been added successfully");
                Panel1.Visible = false; 
            }
            dbconn.Close();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }
    }
}