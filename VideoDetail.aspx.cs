using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class VideoDetail : System.Web.UI.Page
{

    int VideoPostID;
    protected string InputValue { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["PostID"]))
        {
            Response.Redirect("/");
        }

        VideoPostID = int.Parse(Request.QueryString["PostID"]);

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {

            Video VideoTable = new Video();
            var VideoQuery = (
                from p in DataContext.Posts
                from v in DataContext.Videos
                where p.PostID == VideoPostID && v.PostIDfk == VideoPostID
                select new { p, v }).First();

            VideoDetailHeader.InnerText = VideoQuery.p.PostTitle;
            VideoDetailDate.InnerText = VideoQuery.p.PostDate;
            VideoDetailSummary.InnerHtml = HttpUtility.HtmlDecode(VideoQuery.v.VideoDES);

            NoVideoCapable.Attributes["src"] = VideoQuery.p.PostPicture;
            this.InputValue = VideoQuery.v.VideoUrl;
            VideoPlayer.Attributes["src"] = VideoQuery.v.VideoUrl;

            if (!Page.IsPostBack && Request.UrlReferrer != Request.Url)
            {
                var PageHit = (
                    from h in DataContext.HitCounters
                    where h.PostIDfk == VideoPostID
                    select h).FirstOrDefault();

                PageHit.Counter += 1;
                DataContext.SaveChanges();
            }

            Page.Title = "آموزش میکروتیک - " + "ویدئو - " + VideoQuery.p.PostTitle;

        }

    }
    protected void VideoRating_Load(object sender, EventArgs e)
    {
        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var SpcVote = (
                from v in DataContext.Ratings
                where v.PostIDfk == VideoPostID
                select v).FirstOrDefault();

            if (SpcVote.RatingPreValue != 0) VideoRating.CurrentRating = SpcVote.RatingPreValue / SpcVote.TotalVoter;
        }
    }
    protected void VideoRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {

            var SpcVote = (
                from v in DataContext.Ratings
                where v.PostIDfk == VideoPostID
                select v).FirstOrDefault();

            SpcVote.TotalVoter = SpcVote.TotalVoter + 1;
            SpcVote.RatingPreValue = SpcVote.RatingPreValue + Convert.ToInt32(e.Value);
            if (SpcVote.RatingPreValue != 0) SpcVote.RatingResult = (byte)(SpcVote.RatingPreValue / SpcVote.TotalVoter);
            DataContext.SaveChanges();
        }



    }
    protected void SubmitComment_Click(object sender, EventArgs e)
    {

        if (!Page.IsValid)
            return;

        // یوزری که هم اکنون به سایت لاگین کرده را شناسایی و یک رفرنس درست میکند
        MembershipUser currentUser = Membership.GetUser();
        Guid currentUserId = (Guid)currentUser.ProviderUserKey;
        TextBox CommentWebsite = (TextBox)LoginView1.FindControl("CommentWebsite");
        TextBox CommentText = (TextBox)LoginView1.FindControl("CommentText");
        TextBox CommentName = (TextBox)LoginView1.FindControl("CommentName");


        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            Comment UserComment = new Comment();
            UserComment.PostIDfk = VideoPostID;
            UserComment.UserIDfk = currentUserId;
            UserComment.CommentName = CommentName.Text;
            UserComment.CommentWebsite = "http://" + CommentWebsite.Text;
            UserComment.CommentEmail = currentUser.Email;
            UserComment.CommentText = CommentText.Text;
            UserComment.CommentDate = PersianDatetime.GetPersianDatetime();

            DataContext.Comments.Add(UserComment);
            DataContext.SaveChanges();
        }

        //تکست باکس حای ایمیل و نظر کاربر از مکحتوایی که وارد کرده خالی میشود این این امر بعد از ارسال به دیتابیس اتفاق میوفتد
        CommentWebsite.Text = string.Empty;
        CommentName.Text = string.Empty;
        CommentText.Text = string.Empty;
        //بعد از فشردن دکمه لیست ویوو دوباره به دیتابیس بایند میشود و کامنت تازه ثبت شده نمایش داده میشود   
        CommentList.DataBind();

    }
    protected void CommentList_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {
        int CommentID = Convert.ToInt32(CommentList.DataKeys[e.ItemIndex].Values[0].ToString());

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var CommentToBeDeleted = (
                from d in DataContext.Comments 
                where d.CommentID == CommentID 
                select d).FirstOrDefault();

            DataContext.Comments.Remove(CommentToBeDeleted);
            DataContext.SaveChanges();
        }

    }
    protected void CommentList_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        LinkButton DeleLinkButt = e.Item.FindControl("DeleteC") as LinkButton;
        DeleLinkButt.Visible = User.IsInRole("Administrator");
    }
}