using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RegisterUser_CreatingUser(object sender, LoginCancelEventArgs e)
    {

        string trimmedUserName = RegisterUser.UserName.Trim();
        if (RegisterUser.UserName.Length != trimmedUserName.Length)
        {
            // پیغام خطا را نمایش میدهد.
            InvalidUserNameOrPasswordMessage.Text = "در نام کاربری نمیتواند فاصله وجود داشته باشد.";
            InvalidUserNameOrPasswordMessage.Visible = true;

            // پروسه ی ایجاد نام کاربری را متوقف میکند
            e.Cancel = true;
        }


        Recaptcha.RecaptchaControl myRecaptcha = (Recaptcha.RecaptchaControl)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("Recaptcha");
        Literal CapErr = RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("RecaptchaError") as Literal;
        myRecaptcha.Validate();
        if (!myRecaptcha.IsValid)
        {
            CapErr.Text = "محتویات وارد شده با تصویر مطابقت ندارد، لطفا دوباره تلاش کنید.";
            e.Cancel = true;
        }


        //نام کاربری به عنوان ایمیل فرستاده میشود
        RegisterUser.Email = RegisterUser.UserName;
    }
    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {

        // یوزر آیدی کاربری که هم اکنون ثبت نام کرده را بیرون میکشد
        MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
        Guid newUserId = (Guid)newUser.ProviderUserKey;

        using (LearnMikrotik_DatabaseEntities LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
        {
            UserProfile UserProf = new UserProfile();

            UserProf.UserIDfk = newUserId;
            UserProf.Name = DBNull.Value.ToString();
            UserProf.LastName = DBNull.Value.ToString();
            UserProf.WebSite = DBNull.Value.ToString();
            UserProf.About = DBNull.Value.ToString();
            UserProf.Email = DBNull.Value.ToString();
            UserProf.Messenger = DBNull.Value.ToString();

            LearnMikrotikDataModel.UserProfiles.Add(UserProf);
            LearnMikrotikDataModel.SaveChanges();
        }
    }
    protected void RegisterUser_SendingMail(object sender, MailMessageEventArgs e)
    {
        // Get the UserId of the just-added user
        MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);

        Guid newUserId = (Guid)newUser.ProviderUserKey;

        // Determine the full verification URL (i.e., http://yoursite.com/Verification.aspx?ID=...)
        string urlBase = Request.Url.GetLeftPart(UriPartial.Authority) +
             Request.ApplicationPath;

        string verifyUrl = "/Verification.aspx?ID=" + newUserId.ToString();
        string fullUrl = urlBase + verifyUrl;

        // Replace <%VerificationUrl%> with the appropriate URL and querystring
        e.Message.Body = e.Message.Body.Replace("<%VerificationUrl%>", fullUrl);

    }
    protected void RegisterUser_ActiveStepChanged(object sender, EventArgs e)
    {

        // آیا به مرحله ی پایانی رسیده ایم؟
        if (RegisterUser.ActiveStep.Title == "Complete")
        {

            WizardStep UserSettings = RegisterUser.FindControl("UserSettings") as WizardStep;

            // یک رفرنس از تکست باکس ایجاد میکند
            TextBox Name = UserSettings.FindControl("Name") as TextBox;
            TextBox LastName = UserSettings.FindControl("LastName") as TextBox;
            TextBox WebSite = UserSettings.FindControl("WebSite") as TextBox;
            TextBox About = UserSettings.FindControl("About") as TextBox;
            TextBox Email = UserSettings.FindControl("Email") as TextBox;
            TextBox Messenger = UserSettings.FindControl("Messenger") as TextBox;

            // رکورد جدول یوزرپروفایل همان یوزر را اپدیت میکند
            // یوزر آیدی یوزر تازه اد شده را بیرون میکشد
            MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
            Guid newUserId = (Guid)newUser.ProviderUserKey;


            using (LearnMikrotik_DatabaseEntities LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
            {

                var UserProf = (
                    from u in LearnMikrotikDataModel.UserProfiles 
                    where u.UserIDfk == newUserId 
                    select u).FirstOrDefault();

                if (UserProf != null)
                {
                    UserProf.UserIDfk = newUserId;
                    UserProf.Name = Name.Text.Trim();
                    UserProf.LastName = LastName.Text.Trim();
                    UserProf.WebSite = WebSite.Text.Trim();
                    UserProf.About = About.Text.Trim();
                    UserProf.Email = Email.Text.Trim();
                    UserProf.Messenger = Messenger.Text.Trim();

                    LearnMikrotikDataModel.SaveChanges();
                }

            }
        }



    }
}
