using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_NewCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void SubmitCourse_Click(object sender, EventArgs e)
    {
        
 
    using (var LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
    {

        Course CourseTable = new Course();

        CourseTable.CourseTitle = CourseTitle.Text;
        CourseTable.CourseLocation = Location.Text;
        CourseTable.CourseDateStart = StartDay.SelectedValue + "/" + StartMonth.SelectedValue + "/" +
                                      StartYear.SelectedValue;
        CourseTable.CourseDateEnd = EndDay.SelectedValue + "/" + EndMonth.SelectedValue + "/" + EndYear.SelectedValue;

        if (CoursePicture.HasFile)
        {
            string FileName = Path.GetFileName(CoursePicture.PostedFile.FileName);
            CoursePicture.SaveAs(Server.MapPath("../Images/CoursePicture/" + FileName));
            CourseTable.CoursePicture = "Images/CoursePicture/" + FileName;
        }
        else
        {
            CourseTable.CoursePicture = DBNull.Value.ToString();
        }
        CourseTable.CourseDES = HttpUtility.HtmlEncode(CourseEditor.Content);

        LearnMikrotikDataModel.Courses.Add(CourseTable);
        LearnMikrotikDataModel.SaveChanges();
        CourseTitleLable.Visible = true;
    }

    }

    protected void StartMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        StartDay.Items.Clear();
        if (Convert.ToInt32(StartMonth.SelectedValue) <= 6)
        {
            for (int i = 1; i <= 31; i++) StartDay.Items.Add(i.ToString());
        }

        else if (Convert.ToInt32(StartMonth.SelectedValue) > 6 && Convert.ToInt32(StartMonth.SelectedValue) < 12)
        {
            for (int i = 1; i <= 30; i++)
            {
                StartDay.Items.Add(i.ToString());
            }
        }
        else if (Convert.ToInt32(StartMonth.SelectedValue) == 12)
        {
            for (int i = 1; i <= 29; i++)
            {
                StartDay.Items.Add(i.ToString());
            }
        }
            
                

    }

    protected void EndMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        EndDay.Items.Clear();
        if (Convert.ToInt32(EndMonth.SelectedValue) <= 6)
        {
            for (int i = 1; i <= 31; i++) EndDay.Items.Add(i.ToString());
        }

        else if (Convert.ToInt32(EndMonth.SelectedValue) > 6 && Convert.ToInt32(EndMonth.SelectedValue) < 12)
        {
            for (int i = 1; i <= 30; i++)
            {
                EndDay.Items.Add(i.ToString());
            }
        }
        else if (Convert.ToInt32(EndMonth.SelectedValue) == 12)
        {
            for (int i = 1; i <= 29; i++)
            {
                EndDay.Items.Add(i.ToString());
            }
        }

    }

}
