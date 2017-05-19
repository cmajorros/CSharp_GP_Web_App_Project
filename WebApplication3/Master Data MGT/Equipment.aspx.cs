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
    public partial class Equipment : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

          protected void Confirm_Click(object sender, EventArgs e)
        {
          
         

              int piece;

              if (!Int32.TryParse(TextBox2.Text, out piece))
              {
                  MessageBox.Show("Please insert No.of Equipment again !! ");
              }
              else
              {

                  string insertBT;
                  insertBT = "INSERT INTO Equipments (E_Name, E_Piece, ET_ID) Values ('" + TextBox1.Text + "','" + piece + "','" + DropDownList1.SelectedValue + "');";
                  dbconn.QueryExecuteScalar(insertBT);
                  dbconn.Close();
                  Response.Redirect("~/Master Data MGT/Equipment.aspx");
              }

        }

          protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
          {
              if (e.Row.RowType == DataControlRowType.DataRow)
              {
                  {
                      LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                      l.Attributes.Add("onclick", "javascript:return " +
                      "confirm('Are you sure you want to delete this Equipment " +
                      DataBinder.Eval(e.Row.DataItem, "E_ID") + "')");
                  }
              }
          }

          protected void Cancel_Click(object sender, EventArgs e)
          {
              Panel1.Visible = false;

          }

          protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
          {
              Panel1.Visible = true;
          }

        

        

          }
}