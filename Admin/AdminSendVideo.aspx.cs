using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

public partial class Admin_AdminSendVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitVideo_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {


            MembershipUser currentUser = Membership.GetUser();
            Guid currentUserId = (Guid)currentUser.ProviderUserKey;

            using (LearnMikrotik_DatabaseEntities LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
            {


                Post AdminPost = new Post();
                Video AdminVideo = new Video();
                Rating ArticleRate = new Rating();
                HitCounter PageHit = new HitCounter();


                AdminPost.PostType = "Video";
                AdminPost.PostTitle = VideoPostTitle.Text;
                AdminPost.PostDate = PersianDatetime.GetPersianDatetime();


                if (VideoPicture.HasFile)
                {
                    string FileName = Path.GetFileName(VideoPicture.PostedFile.FileName);
                    VideoPicture.SaveAs(Server.MapPath("../Images/VideoPicture/" + FileName));
                    AdminPost.PostPicture = "Images/VideoPicture/" + FileName;
                }
                else
                {
                    AdminPost.PostPicture = DBNull.Value.ToString();
                }
                if (VideoUpload.HasFile)
                {
                    string FileName = Path.GetFileName(VideoUpload.PostedFile.FileName);
                    VideoUpload.SaveAs(Server.MapPath("../Videos/" + FileName));
                    AdminVideo.VideoUrl = "Videos/" + FileName;
                }
                else
                {
                    AdminPost.PostPicture = DBNull.Value.ToString();
                }



                AdminVideo.PostIDfk = AdminPost.PostID;
                AdminVideo.VideoDES = HttpUtility.HtmlEncode(VideoSummaryEditor.Content);
                ArticleRate.PostIDfk = AdminPost.PostID;
                ArticleRate.TotalVoter = 0;
                ArticleRate.RatingPreValue = 0;
                ArticleRate.RatingResult = 0;
                PageHit.PostIDfk = AdminPost.PostID;
                PageHit.Counter = 0;
                LearnMikrotikDataModel.Posts.Add(AdminPost);
                LearnMikrotikDataModel.Videos.Add(AdminVideo);
                LearnMikrotikDataModel.Ratings.Add(ArticleRate);
                LearnMikrotikDataModel.HitCounters.Add(PageHit);
                LearnMikrotikDataModel.SaveChanges();
                VideoPostMessage.Visible = true;
            }
        }
    }
}