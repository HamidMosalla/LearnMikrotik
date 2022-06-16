using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralServerError : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


         Exception ex = HttpContext.Current.Server.GetLastError();

        if(ex is HttpUnhandledException && ex.InnerException!=null){
            ex = ex.InnerException;
        }

        if (ex == null) error.InnerText = "به نظر میرسد خطایی وجود ندارد یا لااقل گزارش نشده";

        else if (ex is System.Data.SqlClient.SqlException)
            error.InnerText = "خطایی در برقرار ارتباط با بانک اطلاعاتی پیش آمده، برای حل مشکل لطفا با مدیریت سایت تماس بگیرید";
        else if (ex is ApplicationException)
            error.InnerText = String.Concat("برنامه با خطایی مواجه شده است: ", ex.Message);
        else
        {
            error.InnerText = "خطایی در اجرای برنامه پیش آمده، برای حل مشکل لطفا با مدیریت سایت تماس بگیرید";
            error.InnerHtml = String.Format("An unknown error occurred. I hope the following dump of exception information doesn't frighten you too much...<br /><br /><b>Exception:</b> {0}<br /><br /><b>Message:</b> {1}<br /><br /><b>Stack Trace:</b><br />{2}", ex.GetType().ToString(), ex.Message, ex.StackTrace.Replace(System.Environment.NewLine, "<br />"));
        }
               
        if (User.IsInRole("Administrator"))
        {
            error.InnerText = Server.GetLastError().InnerException.ToString();
            
        }
    }
}