using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Linq;
using System.IO;

public partial class personList_person1 : System.Web.UI.Page
{
    private object window;
    DataOperate sqlBind = new DataOperate();
    DataOperate sqlBind_info = new DataOperate();
    DataCon myCon = new DataCon();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }




    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("/members/Tech-department1");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlstr = "select * from MEMBERS where MID=00020030" ;
        SqlConnection sqlconn = myCon.getCon();
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
        SqlDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if (this.passwordNow.Text.ToString() != this.cpasswordNow.Text.ToString())
        {
            Response.Write(@"<script language='javascript'>alert('Please input same password!');
                                    location='signup1.aspx'</script>");
        }
        else
        {
            string sqlstr_signup_baseinfo = "update MEMBERS set EDU='"                                                                                                                                                                                                            
                              + this.education.Text + "',COLLEGE='" + this.college.Text + "' where MID=00020030";
            string sqlstr_signup = "update LOGINFO set PASSWORD='" + this.cpasswordNow.Text + "' where MID=00020030";
            sqlBind.DataCom(sqlstr_signup);
            sqlBind_info.DataCom(sqlstr_signup_baseinfo);
            read.Close();
            sqlconn.Close();
            Response.Redirect("/members/Tech-department_change.aspx");
        }
    }
}