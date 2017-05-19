using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication3
{
    public partial class TestCode : System.Web.UI.Page
    {
        clsDatabase dbconn = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            /////////////// Case INV-550001/////////////////////////
            string PreCode = "INV-";
            int cutDBYEAR;
            string currentYear;
            int newCode;
            string newcodewithform;
            string SubYear;
            string Newfullcode;
            string fullFormatDB;
            string cutYearDB;
            int cutCurYear;
            string oldcode;
            string SuboldCode;
            int convertOldcode;

            string findmax = "SELECT MAX(Test_ID) as MAXID FROM test;";
            DataTable dt = dbconn.QueryExecuteScalar(findmax);
            try
            {
                if (dt.Rows.Count == 0)
                {
                    SubYear = DateTime.Now.Year.ToString();
                    currentYear = SubYear.Substring(2, 2).ToString();
                    newCode = 1;
                    newcodewithform = newCode.ToString("0000");

                    Newfullcode = PreCode + currentYear + newcodewithform;
                    TextBox1.Text = Newfullcode;
                    //return Newfullcode;
                }
                else if (dt.Rows.Count > 0)
                {
                    fullFormatDB = Convert.ToString(dt.Rows[0]["MAXID"]);
                    cutYearDB = fullFormatDB.Substring(4, 2).ToString();
                    cutDBYEAR = Convert.ToInt32(cutYearDB);

                    SubYear = DateTime.Now.Year.ToString();
                    currentYear = SubYear.Substring(2, 2).ToString();
                    cutCurYear = Convert.ToInt32(currentYear);


                    // yearNow = Convert.ToInt32(DateTime.Now.Year);
                    if (cutCurYear > cutDBYEAR)
                    {


                        newCode = 1;
                        newcodewithform = newCode.ToString("0000");
                        Newfullcode = PreCode + cutCurYear + newcodewithform;
                        TextBox1.Text = Newfullcode;
                    }
                    else // case yeardb == curYear
                    {
                        oldcode = dt.Rows[0]["MAXID"].ToString();
                        SuboldCode = oldcode.Substring(6, 4).ToString();
                        convertOldcode = Convert.ToInt32(SuboldCode);
                        newCode = convertOldcode + 1;
                        newcodewithform = newCode.ToString("0000");
                        Newfullcode = PreCode + cutCurYear + newcodewithform;
                        TextBox1.Text = Newfullcode;
                    }


                }
                dbconn.Close();

            }
            catch
            {
                SubYear = DateTime.Now.Year.ToString();
                currentYear = SubYear.Substring(2, 2).ToString();
                newCode = 1;
                newcodewithform = newCode.ToString("0000");

                Newfullcode = PreCode + currentYear + newcodewithform;
                TextBox1.Text = Newfullcode;
            }
            */
            /////Case PK Name of code is more than 1 Style of Value Ex  MD001 , HR001  and Working by Select Value from dropdown list then Value of Code will show on textbox //////
           /* string Post = DropDownList1.SelectedValue;
            string FindMAXID;
            string CurPostID;
            string CutCurPostID;
            int IDNOW;
            int newID;
            string TransID;
            string FullNewID;
            FindMAXID = "SELECT MAX(TEST2_ID) as MAXEMPID FROM TEST2 WHERE TEST2_ID like '%"+Post+"%';";

            DataTable dt2 = dbconn.QueryExecuteScalar(FindMAXID);
            try
            {
                if (dt2.Rows.Count > 0)
                {
                    CurPostID = dt2.Rows[0]["MAXEMPID"].ToString();
                    CutCurPostID = CurPostID.Substring(2, 4);
                    IDNOW = Convert.ToInt32(CutCurPostID);
                    newID = IDNOW + 1;
                    TransID = newID.ToString("0000");
                    FullNewID = Post + TransID;
                    TextBox2.Text = FullNewID.ToString();
                }
            }
            catch
            {
                FullNewID = Post + "0001";
                TextBox2.Text = FullNewID;
            }
            dbconn.Close();
            */
            ////////Alpabet+Num Code EX C0001////////////
            string Cus = "C";
            string FULLCusID;
            string CutCusID;
            int CUSID;
            int newCUSID;
            string TransCUSID;
            string NewFullID;

            string findCus = "SELECT MAX(Cus_ID) AS MAXCUS FROM Customer ;";
            DataTable dt3 = dbconn.QueryExecuteScalar(findCus);
            try
            {
                FULLCusID = dt3.Rows[0]["MAXCUS"].ToString();
                CutCusID = FULLCusID.Substring(1, 4);
                CUSID = Convert.ToInt32(CutCusID);
                newCUSID = CUSID + 1;
                TransCUSID = newCUSID.ToString("0000");
                NewFullID = Cus + TransCUSID;
                TextBox3.Text = NewFullID;
            }
            catch
            {
                NewFullID = "C0001";
                TextBox3.Text = NewFullID;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}