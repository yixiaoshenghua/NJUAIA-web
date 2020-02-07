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

public partial class signup_signup1 : System.Web.UI.Page
{
    private object window;
    DataOperate sqlBind = new DataOperate();
    DataOperate sqlBind_info = new DataOperate();
    DataOperate sqlBind_updateAIA = new DataOperate();
    DataCon myCon = new DataCon();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void testUserID(object sender,EventArgs e)
    {
        string sqlstr = "select * from MEMBERS where MID=" + this.userID.Text.ToString();
        SqlConnection sqlconn = myCon.getCon();
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
        SqlDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if (read.HasRows)
        {
            if (this.userID.Text.Trim() == read["MID"].ToString().Trim())
            {
                Response.Write(@"<script language='javascript'>alert('had registered before!');
                                    location='signup1.aspx'</script>");
            }
        }
        else if(this.password.Text.ToString()!=this.cpassword.Text.ToString())
        {
            Response.Write(@"<script language='javascript'>alert('Please input same password!');
                                    location='signup1.aspx'</script>");
        }
        else
        {
            string sqlstr_signup_baseinfo = "insert into MEMBERS(MID,NAME,DEPARTMENT,POS)values('"
                              + userID.Text + "','" + Name.Text +"','技术部','部员')";
            string sqlstr_signup = "insert into LOGINFO(MID,PASSWORD)values('"+ 
                userID.Text + "','" + password.Text + "')";
            string sqlupdateAIA = "update AIA set MEMNUM=MEMNUM+1 where PID='0002'";
            sqlBind.DataCom(sqlstr_signup);
            sqlBind_info.DataCom(sqlstr_signup_baseinfo);
            sqlBind_updateAIA.DataCom(sqlupdateAIA);
            read.Close();
            sqlconn.Close();
            Response.Redirect("/members/Tech-department_login.aspx");
        }
    }
}