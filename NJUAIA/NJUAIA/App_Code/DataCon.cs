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
/// DataCon类用来连接数据库
/// </summary>
public class DataCon
{
    public DataCon()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public SqlConnection getCon()
    {
        string sqlCon = "Data Source=LAPTOP-GQIBSEQ2;Database=NJUAIA;Integrated Security=True";
        SqlConnection myCon = new SqlConnection(sqlCon);
        return myCon;
    }

}