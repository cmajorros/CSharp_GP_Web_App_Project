using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication3.Media
{
    public partial class NewMedia : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                MessageBox.Show("Plese Enter Media Name");
            }
            if (RadioButtonList2.SelectedValue == "Online Shared File" && TextBox2.Text == "")
            {
                MessageBox.Show("Please insert URL for online shared file");
            }
            if (TextBox1.Text != "")
            {
                try
                {
                    if (RadioButtonList2.SelectedValue == "From your PC")
                    {
                        string CurrentFileName = FileUpload2.FileName;

                        string CurrentPath = Server.MapPath("~/MediaSource/");
                        string FullPath = "MediaSource /"+CurrentFileName;

                        if (FileUpload2.HasFile)
                        {
                            CurrentPath += CurrentFileName;
                            FileUpload2.SaveAs(CurrentPath);
                            string insert = "INSERT INTO CampaignerMedias (MT_ID,CT_ID,CM_Name, FileURL,Method) VALUES (" + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + ",'" + TextBox1.Text + "','" +FullPath+ "','"+RadioButtonList2.SelectedValue+"');";
                            dbconn.QueryExecuteScalar(insert);
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            FileUpload2.Enabled = false;
                            TextBox2.Enabled = false;
                            MessageBox.Show("New Campaign Media has been added successfully");

                        }
                        else
                        {
                            MessageBox.Show("Incomplete");
                        }

                    }
                    else
                    {
                        string insert = "INSERT INTO CampaignerMedias (MT_ID,CT_ID,CM_Name, FileURL,Method) VALUES (" + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','"+RadioButtonList2.SelectedValue+"');";
                        dbconn.QueryExecuteScalar(insert);
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        FileUpload2.Enabled = false;
                        TextBox2.Enabled = false;
                        MessageBox.Show("New Campaign Media has been added successfully");
                    }
                } 
                catch
                {
                    MessageBox.Show("Please select Attach file method");
                }

            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList2.SelectedValue == "Online Shared File")
            {
                FileUpload2.Enabled = false;
                TextBox2.Enabled = true;
            }
            else if (RadioButtonList2.SelectedValue == "From your PC")
            {
                FileUpload2.Enabled = true;
                TextBox2.Enabled = false;
            }
            else
            {
                FileUpload2.Enabled = false;
                TextBox2.Enabled = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Media/NewMedia.aspx");
        }
    }
}