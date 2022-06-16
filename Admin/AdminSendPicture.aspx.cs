using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminSendPicture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitPicture_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {



            using (LearnMikrotik_DatabaseEntities Datacontext = new LearnMikrotik_DatabaseEntities())
            {


                Post AdminPost = new Post();
                Picture PictureTable = new Picture();
                Rating PictureRate = new Rating();
                HitCounter PageHit = new HitCounter();

                AdminPost.PostType = "Picture";
                AdminPost.PostTitle = PicturePostTitle.Text;
                AdminPost.PostDate = PersianDatetime.GetPersianDatetime();
                HttpPostedFile FirstPic;
                FirstPic = Request.Files[0];
                AdminPost.PostPicture = "Images/Picture/" + FirstPic.FileName.ToString();

                PictureTable.PostIDfk = AdminPost.PostID;
                PictureTable.PictureDES = PicturesSummary.Text;
                PictureRate.PostIDfk = AdminPost.PostID;
                PictureRate.TotalVoter = 0;
                PictureRate.RatingPreValue = 0;
                PictureRate.RatingResult = 0;

                PageHit.PostIDfk = AdminPost.PostID;
                PageHit.Counter = 0;

                Datacontext.Posts.Add(AdminPost);
                Datacontext.Pictures.Add(PictureTable);
                Datacontext.Ratings.Add(PictureRate);
                Datacontext.HitCounters.Add(PageHit);
                Datacontext.SaveChanges();


                for (int i = 0; i < Request.Files.Count; i++)
                {
                    HttpPostedFile picFiles = Request.Files[i];
                    PicturesURL PictureURLTable = new PicturesURL();
                    PictureURLTable.PicturePostIDfk = AdminPost.PostID;
                    picFiles.SaveAs(Server.MapPath("../Images/Picture/" + picFiles.FileName));
                    PictureURLTable.PictureURL = "Images/Picture/" + picFiles.FileName;
                    PicturePostMessage.Text += "<br /> File : <b>" + picFiles.FileName + "</b> uploaded successfully ! \n";
                    Datacontext.PicturesURLs.Add(PictureURLTable);
                    Datacontext.SaveChanges();
                }

                PicturePostMessage.Visible = true;
            }
        }

    }

}