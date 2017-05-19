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
    public partial class WebForm1 : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
           
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void txtOriName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
           
 
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnConfirm_Click1(object sender, EventArgs e)
        {
          /*  int Zip;

            if (!Int32.TryParse(txtZipCode.Text, out Zip))
            {
                lblzip.Visible = true;
            }
            else
            {
                lblzip.Visible = false;
            }
            if (lstOccupation.SelectedValue == "Enter Career")
            {
                lblCareer.Visible = true;
            }
            else
            {
                lblCareer.Visible = false;
            }

            */
                     
            string findmax = "SELECT max(V_ID) as maxvid FROM [Volunteer]";

            DataTable obj = dbconn.QueryExecuteScalar(findmax); //change to DT
            int MaxVID = Convert.ToInt32(obj.Rows[0]["maxvid"]);
            int newid = MaxVID; 


            string BDate;
            BDate = dpkBDate.SelectedDate.ToString("yyyy-MM-dd");


            String Sickness;
            if (rblSickness.SelectedValue == "No")
            {
                txtSickness.Enabled = false;
                Sickness = rblSickness.SelectedValue;
            }
            else
            {
                Sickness = txtSickness.Text;
            }

            /*
             string sqladdtest;
             sqladdtest = "insert into volunteer (v_salutation,V_Status, v_name,v_lastname,V_EngName,V_EngLastname,V_Nickname,V_Gender,V_BDate,V_Address,V_Province,V_Postcode,V_MobileNo1,V_MobileNo2,V_HomeNo,V_Sickness,V_ContactPerson,V_ContactNo,V_Email,V_Education,V_Edumajor,V_Workplace,V_Expected,V_Reason) values ('" + rblSalutation.SelectedValue + "','New','" + txtThaiName.Text + "','" + txtThaiLastName.Text+ "','" + txtEngName.Text + "','" + txtEngLastName.Text + "','" + txtNickName.Text + "','" + rblGender.SelectedValue + "','" + BDate + "','" + txtAddress.Text + "','" + lstProvince.SelectedItem + "','" + txtZipCode.Text.ToString() + "','" + txtMobile1.Text + "','" + txtMobile2.Text + "','" + txtHomePhone.Text + "','" + Sickness + "','" + txtContactPerson.Text + "','" + txtContactNo.Text + "','" + txtEmail.Text + "','" + rblEduLevel.SelectedValue + "','" + lstEduMajor.SelectedValue + "','" + txtWrokplace.Text + "','" + txtExpected.Text + "','" + txtReason.Text + "');";

           
             dbconn.QueryExecuteScalar(sqladdtest);

            */


             int i;

               for (i = 0; i <= this.cblInterest.Items.Count - 1; i++)
               {
                   if (this.cblInterest.Items[i].Selected == true)
                   {

                       string sqlVInterest;
                       sqlVInterest = "INSERT INTO [VolunteerInterests] ([Interests_ID],[V_ID]) VALUES ( " + cblInterest.Items[i].Value + ", " + newid + ");";


                       dbconn.QueryExecuteScalar(sqlVInterest);

                   }
               }
             
              //add Volunteer Joined Time

           

              int a;

              for (a = 0; a <= this.cblJoinedTime.Items.Count - 1; a++)
              {
                  if (this.cblJoinedTime.Items[a].Selected == true)
                  {

                      string sqlVJT;
                      sqlVJT = "insert into VolunteerJoinedTime (JT_ID, V_ID) values (" + cblJoinedTime.Items[a].Value + "," + newid + ");";



                      dbconn.QueryExecuteScalar(sqlVJT);

                  }
                  //add Volunteer Joined Area

                  string area;

                  if (rblJoinArea.SelectedValue == "3")
                  {
                      area = ddlJoinedArea.SelectedValue;
                  }
                  else if (rblJoinArea.SelectedValue == "1")
                  {
                      area = "Bangkok and Nearby";
                  }
                  else
                  {
                      area = "Everywhere";
                  }
                

                  string sqlVJA;
                  sqlVJA = "insert into VolunteerJoinedAreas (VJA_Name, JA_ID, V_ID) values ('" + area + "'," + rblJoinArea.SelectedValue + "," + newid + ");";


                  dbconn.QueryExecuteScalar(sqlVJA);

              }
             

              if ((ddlProgramming.SelectedValue != "Level") || (ddlProgramming.SelectedValue != "No"))
              {
                  string sqlSkillDB;
                  sqlSkillDB = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlProgramming.SelectedValue + "','11'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlSkillDB);
              }
              else if ((ddlProgramming.SelectedValue == "Level") || (ddlProgramming.SelectedValue == "No"))

              { 
            
              }


             if ((ddlProgramming.SelectedValue != "Level") || (ddlProgramming.SelectedValue != "No"))
              {
                  string sqlSkillDB;
                  sqlSkillDB = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlProgramming.SelectedValue + "','11'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlSkillDB);
              }
             else if ((ddlProgramming.SelectedValue == "Level") || (ddlProgramming.SelectedValue == "No"))
             { 
           
             }


              if ((ddlPhotographing.SelectedValue != "Level") || (ddlPhotographing.SelectedValue != "No"))
              {
                  string sqlSkillPhoto;
                  sqlSkillPhoto = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlPhotographing.SelectedValue + "','2'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlSkillPhoto);
              }
              else if ((ddlPhotographing.SelectedValue == "Level") || (ddlPhotographing.SelectedValue == "No"))
              { 
            
              }

              if ((ddlCopyWriting.SelectedValue != "Level") || (ddlCopyWriting.SelectedValue != "No"))
              {
                  string sqlCopyWriting;
                  sqlCopyWriting = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlCopyWriting.SelectedValue + "','4'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlCopyWriting);
              }

              else if ((ddlCopyWriting.SelectedValue == "Level") || (ddlCopyWriting.SelectedValue == "No"))
              { }

              if ((ddlBoat.SelectedValue != "Level") || (ddlBoat.SelectedValue != "No"))
              {
                  string sqlBoat;
                  sqlBoat = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlBoat.SelectedValue + "','6'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlBoat);
              }
              else if ((ddlBoat.SelectedValue == "Level") || (ddlBoat.SelectedValue == "No"))
              { }


              if ((ddlClimb.SelectedValue != "Level") || (ddlClimb.SelectedValue != "No"))
              {
                  string sqlClimb;
                  sqlClimb = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlClimb.SelectedValue + "','10'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlClimb);
              }
              else if ((ddlClimb.SelectedValue == "Level") || (ddlClimb.SelectedValue == "No"))
              { }

              if ((ddlMediaProduction.SelectedValue != "Level") || (ddlMediaProduction.SelectedValue != "No"))
              {
                  string sqlMediaProduction;
                  sqlMediaProduction = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlMediaProduction.SelectedValue + "','1'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlMediaProduction);
              }
              else if ((ddlMediaProduction.SelectedValue == "Level") || (ddlMediaProduction.SelectedValue == "No"))
              { }

               MessageBox.Show("Succeed");
            
              if ((ddlExhibition.SelectedValue != "Level") || (ddlExhibition.SelectedValue != "No"))
              {
                  string sqlExhibition;
                  sqlExhibition = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlExhibition.SelectedValue + "','3'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlExhibition);
              }
              else if ((ddlExhibition.SelectedValue == "Level") || (ddlExhibition.SelectedValue == "No"))
              {}
            

              if ((ddlGraphicDesign.SelectedValue != "Level") || (ddlGraphicDesign.SelectedValue != "No"))
              {
                  string sqlGraphicDesign;
                  sqlGraphicDesign = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlGraphicDesign.SelectedValue + "','12'," + newid + ");";
                  dbconn.QueryExecuteScalar(sqlGraphicDesign);
              }

              else if ((ddlGraphicDesign.SelectedValue == "Level") || (ddlGraphicDesign.SelectedValue == "No")) {}


              if ((Panel2.Visible == true) && (ddlLangLevel1.SelectedValue != "Level"))
              {

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel1.SelectedValue + "','" + ddlLang1.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
              else { }
              if ((Panel3.Visible == true) && (ddlLangLevel2.SelectedValue != "Level"))
              {
                

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel2.SelectedValue + "','" + ddlLang2.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
              else { }
              if ((Panel4.Visible == true) && (ddlLangLevel3.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel3.SelectedValue + "','" +ddlLang3.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
              else { }
               if ((Panel5.Visible == true) && (ddlLangLevel4.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel4.SelectedValue + "','" +ddlLang4.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
               else { }
                if ((Panel6.Visible == true) && (ddlLangLevel5.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel5.SelectedValue + "','" +ddlLang5.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
                else { }
               if ((Panel7.Visible == true) && (ddlLangLevel6.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel6.SelectedValue + "','" +ddlLang6.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
               else { }
              if ((Panel8.Visible == true) && (ddlLangLevel7.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel7.SelectedValue + "','" +ddlLang7.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
              else { }
            
               if ((Panel9.Visible == true) && (ddlLangLevel8.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel8.SelectedValue + "','" +ddlLang8.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
               else { }

               if ((Panel10.Visible == true) && (ddlLangLevel9.SelectedValue != "Level"))
              {
               

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel9.SelectedValue + "','" +ddlLang9.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
               else { }

              if ((ddlLangLevel10.SelectedValue != "Level"))
              {
                

                  string sqlLangLevel1;
                  sqlLangLevel1 = "insert into VolunteerSkills(VS_Level,SI_ID, V_ID) values ('" + ddlLangLevel10.SelectedValue + "','" + ddlLang10.SelectedValue + "','" + newid + "');";
                  dbconn.QueryExecuteScalar(sqlLangLevel1);
              }
              else { }

                  dbconn.Close();

               
        }
                    
        protected void rblSickness_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblSickness.SelectedValue == "Yes")
            {
                txtSickness.Enabled = true;
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
             if ((ddlLangLevel1.SelectedValue == "Level") || (ddlLangLevel1.SelectedValue == "No"))
              {

                  lblLangErr1.Visible = true;
              }
              else
              {
                  btnadd.Visible = false;
                  Panel2.Visible = true;
                  lblLangErr1.Visible = false;
              }


        }

        protected void cblInterest_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnadd2_Click(object sender, EventArgs e)
        {
           
            if ((ddlLangLevel2.SelectedValue == "Level") || (ddlLangLevel2.SelectedValue == "No"))
            {

                lblLangErr2.Visible = true;
            }
            else
            {
                btnadd2.Visible = false;
                Panel3.Visible = true;
                lblLangErr2.Visible = false;
            }
        }

        protected void btnadd3_Click(object sender, EventArgs e)
        {
           
            if ((ddlLangLevel3.SelectedValue == "Level") || (ddlLangLevel3.SelectedValue == "No"))
            {

                lblLangErr3.Visible = true;
            }
            else
            {
                btnadd3.Visible = false;
                Panel4.Visible = true;
                lblLangErr3.Visible = false;
            }
            
                             
           
        }

        protected void btnadd4_Click(object sender, EventArgs e)
        {

           
            if ((ddlLangLevel4.SelectedValue == "Level") || (ddlLangLevel4.SelectedValue == "No"))
            {

                lblLangErr4.Visible = true;
            }
            else
            {
                btnadd4.Visible = false;
                Panel5.Visible = true;
                lblLangErr4.Visible = false;
            }
        }

        protected void btnadd5_Click(object sender, EventArgs e)
        {
         
            if ((ddlLangLevel5.SelectedValue == "Level") || (ddlLangLevel5.SelectedValue == "No"))
            {

                lblLangErr5.Visible = true;
            }
            else
            {
                btnadd5.Visible = false;
                Panel6.Visible = true;
                lblLangErr5.Visible = false;
            }
        }

        protected void btnadd6_Click(object sender, EventArgs e)
        {
          
            if ((ddlLangLevel6.SelectedValue == "Level") || (ddlLangLevel6.SelectedValue == "No"))
            {

                lblLangErr6.Visible = true;
            }
            else
            {
                btnadd6.Visible = false;
                Panel7.Visible = true;
                lblLangErr6.Visible = false;
            }
        }

        protected void btnadd7_Click(object sender, EventArgs e)
        {
          
            if ((ddlLangLevel7.SelectedValue == "Level") || (ddlLangLevel7.SelectedValue == "No"))
            {

                lblLangErr7.Visible = true;
            }
            else
            {
                btnadd7.Visible = false;
                Panel8.Visible = true;
                lblLangErr7.Visible = false;
            }
        }

        protected void btnadd8_Click(object sender, EventArgs e)
        {
          
            if ((ddlLangLevel8.SelectedValue == "Level") || (ddlLangLevel8.SelectedValue == "No"))
            {

                lblLangErr8.Visible = true;
            }
            else
            {
                btnadd8.Visible = false;
                Panel9.Visible = true;
                lblLangErr8.Visible = false;
            }
        }
        protected void btnadd9_Click(object sender, EventArgs e)
        {
          
            if ((ddlLangLevel9.SelectedValue == "Level") || (ddlLangLevel9.SelectedValue == "No"))
            {

                lblLangErr9.Visible = true;
            }
            else
            {
                btnadd9.Visible = false;
                Panel10.Visible = true;
                lblLangErr9.Visible = false;
            }
           
        }

        protected void txtEngName_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void rblEduLevel_SelectedIndexChanged(object sender, EventArgs e)
        {

            if ((rblEduLevel.SelectedValue == "Bachelor") || (rblEduLevel.SelectedValue == "PostGrad"))
            {
                lstEduMajor.Enabled = true;
            }
            else 
            {
                lstEduMajor.Enabled = false;
            }
        }

        protected void rblJoinArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblJoinArea.SelectedValue == "3")
            {
                ddlJoinedArea.Enabled = true;
            }
        }

        protected void cblVehicleLic_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void rblEduLevel_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource6_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

       

    }
}
