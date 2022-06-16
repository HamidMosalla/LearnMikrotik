using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MiscellaneousDetail : System.Web.UI.Page
{
    int MiscellaneousPostID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["PostID"]))
        {
            Response.Redirect("/");
        }

        MiscellaneousPostID = int.Parse(Request.QueryString["PostID"]);

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {

            var MiscellaneousQuery = (
                from p in DataContext.Posts
                from m in DataContext.Miscellaneous
                where p.PostID == MiscellaneousPostID && m.PostIDfk == MiscellaneousPostID
                select new { p, m }).First();

            MiscellaneousDetailHeader.InnerText = MiscellaneousQuery.p.PostTitle;
            MiscellaneousDetailDate.InnerText = MiscellaneousQuery.p.PostDate;
            MiscellaneousDetailSummary.InnerText = MiscellaneousQuery.m.MsSummary;
            MiscellaneousDetailPicture.ImageUrl = MiscellaneousQuery.p.PostPicture;
            MiscellaneousDetailContent.InnerHtml = HttpUtility.HtmlDecode(MiscellaneousQuery.m.MsContent);

            //Request.UrlReferrer != Request.Url !Page.IsPostBack
            if (!Page.IsPostBack)
            {
                var PageHit = (
                    from h in DataContext.HitCounters
                    where h.PostIDfk == MiscellaneousPostID
                    select h).FirstOrDefault();

                PageHit.Counter += 1;
                DataContext.SaveChanges();
            }
            Page.Title = "آموزش میکروتیک - " + "گوناگون - " + MiscellaneousQuery.p.PostTitle;

        }

    }
    protected void MiscellaneousRating_Load(object sender, EventArgs e)
    {
        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {


            var SpcVote = (
                from v in DataContext.Ratings
                where v.PostIDfk == MiscellaneousPostID
                select v).FirstOrDefault();

            if (SpcVote.RatingPreValue != 0) MiscellaneousRating.CurrentRating = SpcVote.RatingPreValue / SpcVote.TotalVoter;
        }
    }
    protected void MiscellaneousRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var SpcVote = (
                from v in DataContext.Ratings
                where v.PostIDfk == MiscellaneousPostID
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

            UserComment.PostIDfk = MiscellaneousPostID;
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