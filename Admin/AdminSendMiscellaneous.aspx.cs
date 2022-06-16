using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

public partial class Admin_AdminSendMiscellaneous : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitArticle_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            using (LearnMikrotik_DatabaseEntities LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
            {


                Post AdminPost = new Post();
                Miscellaneou Miscellaneous = new Miscellaneou();
                Rating ArticleRate = new Rating();
                HitCounter PageHit = new HitCounter();


                AdminPost.PostType = "Miscellaneous";
                AdminPost.PostTitle = MiscellaneousPostTitle.Text;
                AdminPost.PostDate = PersianDatetime.GetPersianDatetime();


                if (MiscellaneousPicture.HasFile)
                {
                    string FileName = Path.GetFileName(MiscellaneousPicture.PostedFile.FileName);
                    MiscellaneousPicture.SaveAs(Server.MapPath("../Images/MiscellaneousPicture/" + FileName));
                    AdminPost.PostPicture = "Images/MiscellaneousPicture/" + FileName;
                }
                else
                {
                    AdminPost.PostPicture = DBNull.Value.ToString();
                }
                Miscellaneous.PostIDfk = AdminPost.PostID;
                Miscellaneous.MsSummary = MiscellaneousSummary.Text;
                Miscellaneous.MsContent = HttpUtility.HtmlEncode(MiscellaneousEditor.Content);


                ArticleRate.PostIDfk = AdminPost.PostID;
                ArticleRate.TotalVoter = 0;
                ArticleRate.RatingPreValue = 0;
                ArticleRate.RatingResult = 0;

                PageHit.PostIDfk = AdminPost.PostID;
                PageHit.Counter = 0;

                LearnMikrotikDataModel.Posts.Add(AdminPost);
                LearnMikrotikDataModel.Miscellaneous.Add(Miscellaneous);
                LearnMikrotikDataModel.Ratings.Add(ArticleRate);
                LearnMikrotikDataModel.HitCounters.Add(PageHit);

                LearnMikrotikDataModel.SaveChanges();
                NewsPostMessage.Visible = true;
            }
        }
    }
}