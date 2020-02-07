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


public partial class index : System.Web.UI.Page
{
    DataOperate SqlBind = new DataOperate();
    DataOperate SqlBind2 = new DataOperate();
    DataOperate SqlBind3 = new DataOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string sqlstr = "select* from MEMBERS";
            this.MembersList.DataKeyNames = new string[] { "NAME" };
            SqlBind.gvBind(this.MembersList, sqlstr);
        }
    }

    protected void MembersList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from MEMBERS where NAME='" + this.MembersList.DataKeys[e.RowIndex].Value + "'";
        string sqlstr2 = "delete from LOGINFO where MID='00020030'";
        string sqlstr3 = "update AIA set MEMNUM=MEMNUM-1 where PID='0002'";
        SqlBind.DataCom(sqlstr);
        SqlBind2.DataCom(sqlstr2);
        SqlBind3.DataCom(sqlstr3);
        Response.Redirect("/members.aspx");
    }

    protected void MembersList_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            ((LinkButton)(e.Row.Cells[7].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
        }
    }

    protected void MembersList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        string sqlstr = "select * from MEMBERS where " + this.ddlCondition.SelectedValue + " like '%" + this.txtKeyWord.Text + "%'";
        SqlBind.gvBind(this.MembersList, sqlstr);
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("/members.aspx");
    }
}