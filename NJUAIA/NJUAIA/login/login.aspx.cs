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

public partial class login_login : System.Web.UI.Page
{
    private object window;
    DataOperate sqlBind = new DataOperate();
    DataCon myCon = new DataCon();
    ValidCode code = new ValidCode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            this.ValidateCode.Text = code.getValidCode().ToString();
        }
    }
    protected void log_btn_Click(object sender, EventArgs e)
    {
        SqlConnection sqlconn = myCon.getCon();
        SqlCommand sqlcom = sqlconn.CreateCommand();
        SqlCommand sqlcom_perm = sqlconn.CreateCommand();
        //验证码检验
        if (this.validCode.Text.Trim()!=this.ValidateCode.Text.Trim())
        {
            Response.Write("<script language=javascript>alert('验证码错误');location='javascript:history.go(-1)'</script>");
        }
        else
        {
            sqlconn.Open();
            sqlcom.CommandText = "select count(*) from LOGINFO where MID=" + this.userID.Text.ToString() + " and PASSWORD=" + this.password.Text.ToString();
            int countUser = Convert.ToInt32(sqlcom.ExecuteScalar());
            if (countUser > 0)
            {
                sqlcom_perm.CommandText = "select PERMISSION from MEMBERS where MID=" + this.userID.Text.ToString();
                int permission = Convert.ToInt16(sqlcom_perm.ExecuteScalar());
                if (permission == 3) Page.Response.Redirect("../members.aspx");//返回主页
                else Page.Response.Redirect("/members/Tech-department_login.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('用户名或密码有误!');location='javascript:history.go(-1)'</script>");
                return;
            }
            sqlconn.Close();
        }
    }

    protected void cancel_btn_Click(object sender, EventArgs e)
    {
        this.userID.Text = "";
        this.password.Text = "";
        this.validCode.Text = "";
        this.userID.Focus();
    }
}