using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendEmail_Click(object sender, EventArgs e)
    {
        try
        {
            const string ToAddress = "vahid.shahbazian@gmail.com";
            MailMessage VMail = new MailMessage(UsersEmail.Text, ToAddress);
            VMail.Subject = Subject.Text;
            VMail.Body = Body.Text;
            VMail.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Send(VMail);
            MailSucMessage.Visible = true;
        }
        catch (SmtpException ee)
        {
            MailSucMessage.Text = ee.Message;

        }


    }
}