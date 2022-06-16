using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseDetail : System.Web.UI.Page
{
    int CourseID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["CourseID"]))
        {
            Response.Redirect("/");
        }

        CourseID = int.Parse(Request.QueryString["CourseID"]);

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            Course CourseTable = new Course();

            var CourseQuery = (
                from p in DataContext.Courses 
                where p.CourseID == CourseID 
                select p).First();

            CourseDetailHeader.InnerText = CourseQuery.CourseTitle;
            CourseDate.InnerText = CourseQuery.CourseDateStart + "  " + CourseQuery.CourseDateEnd;
            CourseRegister.NavigateUrl = "Users/CourseRegister.aspx?CourseID=" + CourseID;
            CourseDetailPicture.ImageUrl = CourseQuery.CoursePicture;
            CourseDetailContent.InnerHtml = HttpUtility.HtmlDecode(CourseQuery.CourseDES);
            Page.Title = "آموزش میکروتیک - " + "دوره ها - " + CourseQuery.CourseTitle;

        }

    }


}