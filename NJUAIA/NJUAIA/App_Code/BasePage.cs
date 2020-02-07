using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary> 
/// BasePage 的摘要说明 
/// </summary> 
public class BasePage : System.Web.UI.Page//根继承
{
    public BasePage()
    {
        // 
        // TODO: 在此处添加构造函数逻辑 
        // 
        this.Load += new EventHandler(BasePage_Load);
    }
    void BasePage_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("/login/login.aspx");
        }
    }
}