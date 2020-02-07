using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Linq;

/// <summary>
/// sqlData 的摘要说明
/// </summary>
public class sqlData
{
    private SqlConnection sqlcon;
    private SqlCommand sqlcom;
    private SqlDataAdapter sqldata;
    public sqlData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        string sqlCon = "Data Source=LAPTOP-GQIBSEQ2;Database=NJUAIA;Integrated Security=True";
        sqlcon = new SqlConnection(sqlCon);
        sqlcon.Open();
    }
    /// <summary>
    /// 此方法实现数据绑定到GridView上
    /// </summary>
    /// <param name="dl">要绑定的控件</param>
    /// <param name="SqlCom">要执行的sql语句</param>
    /// <returns></returns>
    public bool BindData(GridView dl,string SqlCom)
    {
        dl.DataSource = this.ExceDS(SqlCom);
        try
        {
            dl.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            sqlcon.Close();
        }
    }
    /// <summary>
    /// 此方法用来执行sql语句
    /// </summary>
    /// <param name="SqlCom">要执行的sql语句</param>
    /// <returns></returns>
    public bool ExceSQL(string SqlCom)
    {
        sqlcom = new SqlCommand(SqlCom, sqlcon);
        try
        {
            sqlcom.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
        finally {
            sqlcon.Close();
        }
    }
    /// <summary>
    /// 返回dataset
    /// </summary>
    /// <param name="SqlCom"></param>
    /// <returns></returns>
    public DataSet ExceDS(string SqlCom)
    {
        try
        {
            sqlcom = new SqlCommand(SqlCom, sqlcon);
            sqldata = new SqlDataAdapter();
            sqldata.SelectCommand = sqlcom;
            DataSet ds = new DataSet();
            sqldata.Fill(ds);
            return ds;
        }
        finally
        {
            sqlcon.Close();
        }
    }
    public SqlDataReader ExceRead(string SqlCom)
    {
        sqlcom = new SqlCommand(SqlCom, sqlcon);
        SqlDataReader read = sqlcom.ExecuteReader();
        return read;
    }

}