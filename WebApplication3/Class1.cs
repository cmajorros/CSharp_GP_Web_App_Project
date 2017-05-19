using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class clsDatabase1 : System.Web.UI.Page /*connect*/
{
    private SqlConnection objConn1;
    private SqlCommand objCmd1;
    private SqlTransaction Trans1;
    private String strConnString1;

    public clsDatabase1()
    {
        //strConnString = System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"];
        strConnString1 = WebConfigurationManager.ConnectionStrings["ProvinceConnectionString"].ConnectionString;
    }

    public SqlDataReader QueryDataReader(String strSQL)
    {
        SqlDataReader dtReader;
        objConn1 = new SqlConnection();
        objConn1.ConnectionString = strConnString1;
        objConn1.Open();

        objCmd1 = new SqlCommand(strSQL, objConn1);
        dtReader = objCmd1.ExecuteReader();
        return dtReader; //*** Return DataReader ***//
    }

    public DataSet QueryDataSet(String strSQL)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter dtAdapter = new SqlDataAdapter();
        objConn1 = new SqlConnection();
        objConn1.ConnectionString = strConnString1;
        objConn1.Open();

        objCmd1 = new SqlCommand();
        objCmd1.Connection = objConn1;
        objCmd1.CommandText = strSQL;
        objCmd1.CommandType = CommandType.Text;

        dtAdapter.SelectCommand = objCmd1;
        dtAdapter.Fill(ds);
        return ds;   //*** Return DataSet ***//
    }

    public DataTable QueryDataTable(String strSQL)
    {
        SqlDataAdapter dtAdapter;
        DataTable dt = new DataTable();
        objConn1 = new SqlConnection();
        objConn1.ConnectionString = strConnString1;
        objConn1.Open();

        dtAdapter = new SqlDataAdapter(strSQL, objConn1);
        dtAdapter.Fill(dt);
        return dt; //*** Return DataTable ***//
    }

    public Boolean QueryExecuteNonQuery(String strSQL)
    {
        objConn1 = new SqlConnection();
        objConn1.ConnectionString = strConnString1;
        objConn1.Open();

        try
        {
            objCmd1 = new SqlCommand();
            objCmd1.Connection = objConn1;
            objCmd1.CommandType = CommandType.Text;
            objCmd1.CommandText = strSQL;

            objCmd1.ExecuteNonQuery();
            return true; //*** Return True ***//
        }
        catch (Exception)
        {
            return false; //*** Return False ***//
        }
    }


    public Object QueryExecuteScalar(String strSQL)
    {
        Object obj;
        objConn1 = new SqlConnection();
        objConn1.ConnectionString = strConnString1;
        objConn1.Open();

        try
        {
            objCmd1 = new SqlCommand();
            objCmd1.Connection = objConn1;
            objCmd1.CommandType = CommandType.Text;
            objCmd1.CommandText = strSQL;

            obj = objCmd1.ExecuteScalar();  //*** Return Scalar ***//
            return obj;
        }
        catch (Exception)
        {
            return null; //*** Return Nothing ***//
        }
    }

    public void TransStart()
    {
        objConn1 = new SqlConnection();
        objConn1.ConnectionString = strConnString1;
        objConn1.Open();
        Trans1 = objConn1.BeginTransaction(IsolationLevel.ReadCommitted);
    }


    public void TransExecute(String strSQL) /* สำหรับ insert ข้อมูล*/
    {
        objCmd1 = new SqlCommand();
        objCmd1.Connection = objConn1;
        objCmd1.Transaction = Trans1;
        objCmd1.CommandType = CommandType.Text;
        objCmd1.CommandText = strSQL;
        objCmd1.ExecuteNonQuery();
    }


    public void TransRollBack()
    {
        Trans1.Rollback();
    }

    public void TransCommit()
    {
        Trans1.Commit();
    }

    public void Close()
    {
        objConn1.Close();
        objConn1 = null;
    }
}