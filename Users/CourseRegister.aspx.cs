using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Web.Security;
public partial class Users_CourseRegister : System.Web.UI.Page
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

            var CourseQuery = (
                from c in DataContext.Courses
                where c.CourseID == CourseID
                select c).FirstOrDefault();

            string EndDate = CourseQuery.CourseDateEnd;
            string[] DateArray = EndDate.Split('/');
            int Day, Month, Year;
            Day = int.Parse(DateArray[0]);
            Month = int.Parse(DateArray[1]);
            Year = int.Parse(DateArray[2]);

            PersianCalendar Percal = new PersianCalendar();
            DateTime EndDateConvert = new DateTime(Year, Month, Day, Percal);
            DateTime NowTime = DateTime.Now;

            if (EndDateConvert < NowTime)
            {
                Response.Redirect("CourseTimeWindow.aspx");

            }

            for (int i = 1320; i < 1380; i++)
            {
                YearDropDown.Items.Add(i.ToString());
            }

            for (int i = 1; i <= 31; i++)
            {
                DayDropDown.Items.Add(i.ToString());
            }

        }
    }

    protected void SubmitRegistration_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {


            MembershipUser currentUser = Membership.GetUser();
            Guid currentUserId = (Guid)currentUser.ProviderUserKey;

            using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
            {

                CourseRegister CourseRegTable = new CourseRegister();
                CourseRegTable.CourseIDfk = CourseID;
                CourseRegTable.UserIDfk = currentUserId;
                CourseRegTable.FirtName = FirstName.Text;
                CourseRegTable.LastName = LastName.Text;
                CourseRegTable.FatherName = FatherName.Text;

                CourseRegTable.Gender = Convert.ToBoolean(int.Parse(GenerRadioButton.SelectedValue));

                CourseRegTable.BirthDate =
                    DayDropDown.SelectedValue + "/" + MonthDropDown.SelectedValue + "/" + YearDropDown.SelectedValue;

                CourseRegTable.PhoneNumber = PhoneNumber.Text;
                CourseRegTable.CellNumber = CellNumber.Text;
                CourseRegTable.Email = Email.Text;
                CourseRegTable.Occupation = Occupation.Text;
                CourseRegTable.LastDegree = LastDegree.SelectedValue;

                CourseRegTable.ShoShenasname = SodourShenasname.Text;
                CourseRegTable.SodourShenasname = SodourShenasname.Text;
                CourseRegTable.ShoMeli = ShoMeli.Text;
                CourseRegTable.Address = Address.Text;

                if (MTCNACheckBox.Checked && !MTCRECheckBox.Checked) CourseRegTable.PassedPrerequisite = MTCNACheckBox.Text;
                if (MTCRECheckBox.Checked && !MTCNACheckBox.Checked) CourseRegTable.PassedPrerequisite = MTCRECheckBox.Text;

                if (MTCNACheckBox.Checked && MTCRECheckBox.Checked)
                    CourseRegTable.PassedPrerequisite = MTCRECheckBox.Text + " | " + MTCNACheckBox.Text;

                CourseRegTable.PrerequisiteNumber = "MTCNA=" + MTCNANumber.Text + " | " + "MTCRE=" + MTCRENumber.Text;
                CourseRegTable.Resume = Resume.Text;

                DataContext.CourseRegisters.Add(CourseRegTable);
                DataContext.SaveChanges();

                RegSucMessage.Visible = true;
            }
        }

    }
}