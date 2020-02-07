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

public partial class personList_personal2 : System.Web.UI.Page
{
    private object window;
    DataOperate sqlBind = new DataOperate();
    DataCon myCon = new DataCon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("/members/Tech-department1.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string P_str_filePath = "", P_str_fileExtName = "", P_str_mFileName, P_str_mPath;
        if ("" != uploadImg.FileName)
        {
            P_str_filePath = uploadImg.PostedFile.FileName;//获取文件路径
            P_str_fileExtName = P_str_filePath.Substring(P_str_filePath.LastIndexOf(".") + 1);//获得扩展名
            try
            {
                P_str_mPath = Server.MapPath("/images/");//保存到指定的路径
                P_str_mFileName = P_str_filePath.Substring(P_str_filePath.LastIndexOf("\\") + 1);//获得文件的名称
                uploadImg.PostedFile.SaveAs(P_str_mPath + P_str_mFileName);//保存到指定的路径
                string com = "update MEMBERS set PHOTO='/images/" + (P_str_mFileName) + "',TEL='" + this.telephone.Text + "',QQ='"+this.QQ.Text+"',WECHAT='"+this.wechat.Text+"',INTRO='"+this.intro.Text+"' where MID=00020030";
                sqlData da = new sqlData();
                da.ExceSQL(com);
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
        }
        Response.Redirect("/members/Tech-department1.aspx");
    }
}