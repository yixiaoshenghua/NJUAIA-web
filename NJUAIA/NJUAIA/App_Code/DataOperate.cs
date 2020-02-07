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
/// DataOperate类操作数据库
/// </summary>
public class DataOperate
{
    public DataOperate()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 生成DataCon类的一个对象，用来调用其方法
    /// </summary>
    DataCon dataCon = new DataCon();
    /// <summary>
    /// DataCom方法用来执行SqlCommand中的SQL语句
    /// </summary>
    /// <param name="sqlstr">SQL字符串</param>
    /// <returns>操作是否成功</returns>
    public bool DataCom(string sqlstr)
    {
        SqlConnection sqlconn = dataCon.getCon();
        sqlconn.Open();
        SqlCommand sqlcomm = new SqlCommand(sqlstr, sqlconn);//SqlCommand类表示要对SQL Sever执行一个SQL语句
        try
        {
            sqlcomm.ExecuteNonQuery();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            sqlconn.Close();
        }
    }
    /// <summary>
    /// gvBind方法用来将SqlDataAdapter中SQL语句的执行结果绑定到GridView上
    /// </summary>
    /// <param name="gv">GridView控件ID</param>
    /// <param name="sqlstr">SQL字符串</param>
    /// <returns>操作是否成功</returns>
    public bool gvBind(GridView gv,string sqlstr)
    {
        SqlConnection sqlconn = dataCon.getCon();
        sqlconn.Open();
        SqlDataAdapter sqldataadapter = new SqlDataAdapter(sqlstr, sqlconn);//SqlDataAdapter类表示要对SQL Server数据库执行的一个SQL语句，然后填充数据集
        DataSet mydataset = new DataSet();
        sqldataadapter.Fill(mydataset);
        gv.DataSource = mydataset;
        try
        {
            gv.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            sqlconn.Close();
        }
    }
    /// <summary>
    /// dataBind方法用来将SqlDataAdapter中SQL语句的执行结果绑定到DataList上
    /// </summary>
    /// <param name="dl">DataList控件ID</param>
    /// <param name="sqlstr">SQL字符串</param>
    /// <returns>操作是否成功</returns>
    public bool dataBind(DataList dl,string sqlstr)
    {
        SqlConnection sqlconn = dataCon.getCon();
        sqlconn.Open();
        SqlDataAdapter myadapter = new SqlDataAdapter(sqlstr, sqlconn);
        DataSet mydataset = new DataSet();
        myadapter.Fill(mydataset);
        dl.DataSource = mydataset;
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
            sqlconn.Close();
        }
    }
}