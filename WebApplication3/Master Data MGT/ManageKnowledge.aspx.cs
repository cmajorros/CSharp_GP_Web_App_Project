using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication3.Master_Data_MGT
{
    public partial class ManageKnowledge : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string CurrentFileName = FileUpload1.FileName;
          
            string CurrentPath = Server.MapPath("~/TrainingSourceDownload/");
            if (TextBox1.Text != "")
            {
                try
                {
                    if (FileUpload1.HasFile)
                    {
                        CurrentPath += CurrentFileName;
                        FileUpload1.SaveAs(CurrentPath);
                        string insert = "INSERT INTO LessonKnowledges(LL_ID,K_Name,K_File) VALUES (" + DropDownList3.SelectedValue + ",'" + TextBox1.Text + "','" + CurrentFileName + "');";
                        dbconn.QueryExecuteScalar(insert);
                        GridView1.DataBind();
                        TextBox1.Text = "";
                        MessageBox.Show("Knowledge for Lesson has been successfully add");

                    }
                   

                    dbconn.Close();
                }
                catch
                {
                    MessageBox.Show("Please select file to upload");
                }

            }
            else
            {
                MessageBox.Show("Plese enter file name before confirm submitting");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                {
                    LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");
                    l.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure you want to delete this Knowledge ')");
                }
            }
        }
    }
}