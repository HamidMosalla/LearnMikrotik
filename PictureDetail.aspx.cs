using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class PictureDetail : System.Web.UI.Page
{
    int PicturePostID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["PostID"]))
        {
            Response.Redirect("/");
        }

        PicturePostID = int.Parse(Request.QueryString["PostID"]);

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {

            Picture PictureTable = new Picture();

            var ArticleQuery = (
                from p in DataContext.Posts
                from i in DataContext.Pictures
                where p.PostID == PicturePostID && i.PostIDfk == PicturePostID
                select new { p, i }).First();

            PictureDetailHeader.InnerText = ArticleQuery.p.PostTitle;
            PictureDetailDate.InnerText = ArticleQuery.p.PostDate;
            PictureDetailSummary.InnerText = ArticleQuery.i.PictureDES;

            if (!Page.IsPostBack && Request.UrlReferrer != Request.Url)
            {
                var PageHit = (
                    from h in DataContext.HitCounters
                    where h.PostIDfk == PicturePostID
                    select h).FirstOrDefault();

                PageHit.Counter += 1;
                DataContext.SaveChanges();
            }
            Page.Title = "آموزش میکروتیک - " + "مقالات - " + ArticleQuery.p.PostTitle;


        }
    }
    protected void PictureRating_Load(object sender, EventArgs e)
    {
        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var SpcVote = (
                from v in DataContext.Ratings
                where v.PostIDfk == PicturePostID
                select v).FirstOrDefault();

            if (SpcVote.RatingPreValue != 0) PictureRating.CurrentRating = SpcVote.RatingPreValue / SpcVote.TotalVoter;
        }
    }
    protected void PictureRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var SpcVote = (
                from v in DataContext.Ratings
                where v.PostIDfk == PicturePostID
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

            UserComment.PostIDfk = PicturePostID;
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