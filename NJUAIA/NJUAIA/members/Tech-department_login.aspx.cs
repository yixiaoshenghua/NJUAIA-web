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

public partial class members_Tech_department_login : System.Web.UI.Page
{
    DataCon myCon = new DataCon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlstr = "select INTRO,PHOTO from MEMBERS where MID=00020001";
        SqlConnection sqlconn = myCon.getCon();
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
        SqlDataReader read = sqlcom.ExecuteReader();
        while (read.Read())
        {
            string intro = read["INTRO"].ToString();
            this.memberIntro01.Text = intro;
            string photo = read["PHOTO"].ToString();
            this.img01.ImageUrl = photo;
        };
        sqlconn.Close();
    }
}