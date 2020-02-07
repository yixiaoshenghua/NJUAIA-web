using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

/// <summary>
/// ValidCode 的摘要说明
/// </summary>
public class ValidCode
{
    public ValidCode()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 生成四位验证码
    /// </summary>
    /// <returns>返回4位ASCII字符串组成的验证码</returns>
    public string getValidCode()
    {
        byte[] bytes = new byte[100];
        Random randObj = new Random();
        int code;

        for (int i=0;i<4;i++)
        {
            code = randObj.Next(44, 122);
            bytes[i] = Convert.ToByte(code);
        }
        ASCIIEncoding ascii = new ASCIIEncoding();
        string validateCode = ascii.GetString(bytes, 0, 4);
        return validateCode.ToString();
    }
}