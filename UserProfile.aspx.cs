using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["UserName"]))
        {
            Response.Redirect("/");
        }

        string UserNameString = Request.QueryString["UserName"];

        MembershipUser currentUser = Membership.GetUser(UserNameString);
        Guid currentUserId = (Guid)currentUser.ProviderUserKey;

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {


            var UserQuery = (
                from u in DataContext.UserProfiles
                where u.UserIDfk == currentUserId
                select u).FirstOrDefault();

            UserName.InnerText = UserQuery.Name;
            UserLastName.InnerText = UserQuery.LastName;
            string Ava = UserQuery.Avatar; ;

            string UAva = Ava.Substring(3);
            UserAvatar.ImageUrl = UAva;
            UserAbout.InnerText = UserQuery.About;
            UserWebSite.Text = UserQuery.WebSite;
            UserWebSite.NavigateUrl = "http://" + UserQuery.WebSite;
            UserEmail.InnerText = UserQuery.Email;
            UserMessenger.InnerText = UserQuery.Messenger;

            if (currentUser.IsOnline) UserOnline.InnerText = "انلاین است"; else UserOnline.InnerText = "افلاین است";
            RegisterDate.InnerText = currentUser.CreationDate.ToString();
            LastActivity.InnerText = currentUser.LastLoginDate.ToString();
        }

    }
}