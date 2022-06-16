using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Verification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["ID"]))

            StatusMessage.Text = "مشکلی در فعال سازی وجود دارد، لطفا لینک فعال سازی مورد نظر را بررسی کنید یا با ادمین تماس بگیرید.";

        else
        {
            Guid userId;
            try
            {
                userId = new Guid(Request.QueryString["ID"]);
            }

            catch
            {
                StatusMessage.Text = "آیدی یوزر مورد نظر در فرمت مناسبی قرار ندارد.";

                return;
            }

            MembershipUser usr = Membership.GetUser(userId);
            if (usr == null)
                StatusMessage.Text = "نام کاربری مورد نظر یافت نشد.";
            else
            {
                // Approve the user
                usr.IsApproved = true;

                Membership.UpdateUser(usr);
                StatusMessage.Text = "نام کاربری با موفقیت فعال سازی شد. " + "<a href=\"Login.aspx\">ورود</a>";

            }
        }

    }

}