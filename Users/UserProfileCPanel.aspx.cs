using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Configuration;

public partial class Users_UserProfileCPanel : System.Web.UI.Page
{
    private int height;
    private int width;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser currentUser = Membership.GetUser();
            Guid currentUserId = (Guid)currentUser.ProviderUserKey;

            using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
            {


                var UserQuery = (
                    from u in DataContext.UserProfiles
                    where u.UserIDfk == currentUserId
                    select u).FirstOrDefault();

                if (UserQuery.Avatar == null) { UsersAvatarImage.ImageUrl = "../Images/UserAvatar/default_avatar.jpg"; }
                if (UserQuery.Avatar != null) { UsersAvatarImage.ImageUrl = UserQuery.Avatar; }

                UsersName.Text = UserQuery.Name;
                UsersLastName.Text = UserQuery.LastName;
                UsersAbout.Text = UserQuery.About;
                UsersWebSite.Text = UserQuery.WebSite;
                UsersEmail.Text = UserQuery.Email;
                UsersMessenger.Text = UserQuery.Messenger;
            }

            if (Page.IsPostBack)
            {
                height = Convert.ToInt32(ConfigurationManager.AppSettings.Get("RequiredHeight"));
                width = Convert.ToInt32(ConfigurationManager.AppSettings.Get("RequiredWidth"));
            }
        }


    }

    public bool ValidateFileDimensions()
    {
        using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(AvatarFileUpload.PostedFile.InputStream))
        {
            return (myImage.Height <= height && myImage.Width <= width);
        }
    }

    protected void SubmitChange_Click(object sender, EventArgs e)
    {

        MembershipUser currentUser = Membership.GetUser();
        Guid currentUserId = (Guid)currentUser.ProviderUserKey;

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {



            var UserQuery = (
                from u in DataContext.UserProfiles 
                where u.UserIDfk == currentUserId 
                select u).FirstOrDefault();

            UserQuery.Name = UsersName.Text;
            UserQuery.LastName = UsersLastName.Text;

            if (UserQuery.Avatar != null)
            {
                if (AvatarFileUpload.HasFile)
                {
                    if (AvatarFileUpload.PostedFile.ContentLength <= 153600)
                    {
                        string extension = Path.GetExtension(AvatarFileUpload.PostedFile.FileName);
                        if (extension.ToLower() == ".jpg"
                            || extension.ToLower() == ".jpeg"
                            || extension.ToLower() == ".gif" 
                            || extension.ToLower() == ".bmp")
                        {
                            if (ValidateFileDimensions())
                            {
                                File.Delete(Server.MapPath(UserQuery.Avatar));
                                string FileName = Path.GetFileName(AvatarFileUpload.PostedFile.FileName);
                                AvatarFileUpload.SaveAs(Server.MapPath("../Images/UserAvatar/" + FileName));
                                UserQuery.Avatar = "../Images/UserAvatar/" + FileName;
                            }
                            else { MessLabel.Visible = true; }
                        }
                        else { MessLabel.Visible = true; }
                    }
                    else { MessLabel.Visible = true; }
                }
            }


            if (UserQuery.Avatar == null)
            {
                if (AvatarFileUpload.HasFile)
                {
                    if (AvatarFileUpload.PostedFile.ContentLength <= 103600)
                    {
                        string extension = Path.GetExtension(AvatarFileUpload.PostedFile.FileName);
                        if (extension.ToLower() == ".jpg" 
                            || extension.ToLower() == ".jpeg" 
                            || extension.ToLower() == ".gif"
                            || extension.ToLower() == ".bmp")
                        {
                            if (ValidateFileDimensions())
                            {
                                string FileName = Path.GetFileName(AvatarFileUpload.PostedFile.FileName);
                                AvatarFileUpload.SaveAs(Server.MapPath("../Images/UserAvatar/" + FileName));
                                UserQuery.Avatar = "../Images/UserAvatar/" + FileName;
                            }
                            else { MessLabel.Visible = true; }
                        }
                        else { MessLabel.Visible = true; }
                    }
                    else { MessLabel.Visible = true; }
                }
            }







            UserQuery.About = UsersAbout.Text;
            UserQuery.WebSite = UsersWebSite.Text;
            UserQuery.Email = UsersEmail.Text;
            UserQuery.Messenger = UsersMessenger.Text;

            DataContext.SaveChanges();
            MessegeLabelSucc.Visible = true;
        }



    }
}