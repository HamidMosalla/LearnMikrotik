using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

public partial class Users_UserSendArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void SubmitArticle_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {



            MembershipUser currentUser = Membership.GetUser();
            Guid currentUserId = (Guid)currentUser.ProviderUserKey;

            using (LearnMikrotik_DatabaseEntities LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
            {


                Post AdminPost = new Post();
                Article AdminArticle = new Article();
                Rating ArticleRate = new Rating();
                HitCounter PageHit = new HitCounter();


                AdminPost.PostType = "Article";
                AdminPost.PostTitle = ArticlePostTitle.Text;
                AdminPost.PostDate = PersianDatetime.GetPersianDatetime();

                if (ArticlePicture.HasFile)
                {
                    string FileName = Path.GetFileName(ArticlePicture.PostedFile.FileName);
                    ArticlePicture.SaveAs(Server.MapPath("../Images/ArticlePicture/" + FileName));
                    AdminPost.PostPicture = "Images/ArticlePicture/" + FileName;
                }
                else
                {
                    AdminPost.PostPicture = DBNull.Value.ToString();
                }

                AdminArticle.PostIDfk = AdminPost.PostID;
                AdminArticle.UserIDfk = currentUserId;
                AdminArticle.ArticleSummary = ArticleSummary.Text;
                AdminArticle.ArticleContent = HttpUtility.HtmlEncode(ArticleEditor.Content);
                AdminArticle.ArticleVisible = false;

                ArticleRate.PostIDfk = AdminPost.PostID;
                ArticleRate.TotalVoter = 0;
                ArticleRate.RatingPreValue = 0;
                ArticleRate.RatingResult = 0;

                PageHit.PostIDfk = AdminPost.PostID;
                PageHit.Counter = 0;

                LearnMikrotikDataModel.Posts.Add(AdminPost);
                LearnMikrotikDataModel.Articles.Add(AdminArticle);
                LearnMikrotikDataModel.Ratings.Add(ArticleRate);
                LearnMikrotikDataModel.HitCounters.Add(PageHit);

                LearnMikrotikDataModel.SaveChanges();

                NewsPostMessage.Visible = true;

            }
        }
    }

}