using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserRegCourseDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["CourseRegisterID"]))
        {
            Response.Redirect("/");
        }

        int CourseRegisterID = int.Parse(Request.QueryString["CourseRegisterID"]);

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var CourseRegQuery = 
                (from c in DataContext.CourseRegisters
                 where c.CourseRegisterID == CourseRegisterID 
                 select c).FirstOrDefault();


            FirtName.InnerText = CourseRegQuery.FirtName;
            LastName.InnerText = CourseRegQuery.LastName;
            FatherName.InnerText = CourseRegQuery.FatherName;
            Gender.InnerText = CourseRegQuery.Gender ? Gender.InnerText = "زن" : Gender.InnerText = "مرد";
            BirthDate.InnerText = CourseRegQuery.BirthDate;
            PhoneNumber.InnerText = CourseRegQuery.PhoneNumber;
            CellNumber.InnerText = CourseRegQuery.CellNumber;
            Email.InnerText = CourseRegQuery.Email;
            Occupation.InnerText = CourseRegQuery.Occupation;
            LastDegree.InnerText = CourseRegQuery.LastDegree;
            ShoShenasname.InnerText = CourseRegQuery.ShoShenasname;
            SodourShenasname.InnerText = CourseRegQuery.SodourShenasname;
            ShoMeli.InnerText = CourseRegQuery.ShoMeli;
            Address.InnerText = CourseRegQuery.Address;
            PassedPrerequisite.InnerText = CourseRegQuery.PassedPrerequisite;
            PrerequisiteNumber.InnerText = CourseRegQuery.PrerequisiteNumber;
            Resume.InnerText = CourseRegQuery.Resume;
        }


    }
}